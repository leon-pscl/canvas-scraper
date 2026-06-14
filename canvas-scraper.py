import os
from html import unescape
from html.parser import HTMLParser

import requests

TOKEN = "15205~Yc32WDFKwBu4wAtTRGWfDC3W6yAkntAAYyBNAah3YfwMzrQuXfX3MewUyxWtCXnt"
DOMAIN = "https://tip.instructure.com"  # e.g. https://dlsu.instructure.com

headers = {"Authorization": f"Bearer {TOKEN}"}


def get_all_pages(url, params=None):
    """Fetch all paginated results."""
    results = []
    while url:
        response = requests.get(url, headers=headers, params=params)
        response.raise_for_status()
        results.extend(response.json())
        url = response.links.get("next", {}).get("url")
        params = None  # only pass params on first request
    return results


def get_courses():
    return get_all_pages(
        f"{DOMAIN}/api/v1/courses",
        params={"per_page": 100, "state[]": ["available", "completed"]},
    )


def get_modules(course_id):
    return get_all_pages(f"{DOMAIN}/api/v1/courses/{course_id}/modules", params={"per_page": 100})


def get_module_items(course_id, module_id):
    return get_all_pages(
        f"{DOMAIN}/api/v1/courses/{course_id}/modules/{module_id}/items",
        params={"per_page": 100},
    )


def get_file_info(file_id):
    response = requests.get(f"{DOMAIN}/api/v1/files/{file_id}", headers=headers)
    if response.status_code == 200:
        return response.json()
    return None


def get_page_info(course_id, page_url):
    response = requests.get(
        f"{DOMAIN}/api/v1/courses/{course_id}/pages/{page_url}",
        headers=headers,
        params={"include[]": ["body"]},
    )
    if response.status_code == 200:
        return response.json()
    return None


def escape_markdown(text):
    return (
        text.replace("\\", "\\\\")
        .replace("[", "\\[")
        .replace("]", "\\]")
        .replace("(", "\\(")
        .replace(")", "\\)")
    )


class MarkdownExtractor(HTMLParser):
    def __init__(self):
        super().__init__()
        self.parts = []
        self.link_stack = []
        self.skip_depth = 0

    def handle_starttag(self, tag, attrs):
        if tag in {"script", "style"}:
            self.skip_depth += 1
        elif tag == "a":
            href = dict(attrs).get("href", "").strip()
            self.link_stack.append({"href": href, "text": []})
        elif tag in {"p", "div", "br", "li", "section", "article", "header", "footer"}:
            self.parts.append("\n")

    def handle_endtag(self, tag):
        if tag in {"script", "style"} and self.skip_depth > 0:
            self.skip_depth -= 1
        elif tag == "a" and self.link_stack:
            link = self.link_stack.pop()
            text = "".join(link["text"]).strip()
            href = link["href"]
            if text and href:
                self.parts.append(f"[{escape_markdown(text)}]({href})")
            elif text:
                self.parts.append(escape_markdown(text))
            elif href:
                self.parts.append(f"<{href}>")
        elif tag in {"p", "div", "li", "section", "article", "header", "footer"}:
            self.parts.append("\n")

    def handle_data(self, data):
        if self.skip_depth != 0 or not data:
            return

        if self.link_stack:
            self.link_stack[-1]["text"].append(data)
        elif data.strip():
            self.parts.append(data)

    def get_text(self):
        text = unescape("".join(self.parts))
        lines = [line.rstrip() for line in text.splitlines()]
        cleaned = []
        for line in lines:
            if line.strip():
                cleaned.append(line.strip())
            elif cleaned and cleaned[-1] != "":
                cleaned.append("")
        return "\n".join(cleaned).strip()


def sanitize_filename(name):
    invalid_chars = '<>:"/\\|?*'
    cleaned = "".join("_" if ch in invalid_chars else ch for ch in name)
    return cleaned.strip().strip(".")


def build_output_dir(base_dir, course_name, module_name, kind):
    return os.path.join(
        base_dir,
        sanitize_filename(course_name),
        sanitize_filename(module_name),
        kind,
    )


def download_file(file_info, save_dir):
    os.makedirs(save_dir, exist_ok=True)
    filename = file_info["display_name"]
    filepath = os.path.join(save_dir, filename)

    response = requests.get(file_info["url"], stream=True)
    response.raise_for_status()

    with open(filepath, "wb") as f:
        for chunk in response.iter_content(chunk_size=8192):
            f.write(chunk)

    print(f"       Downloaded: {filepath}")


def download_page(page_info, save_dir):
    os.makedirs(save_dir, exist_ok=True)

    title = page_info.get("title") or page_info.get("url") or "page"
    filename = f"{sanitize_filename(title)}.md"
    filepath = os.path.join(save_dir, filename)

    extractor = MarkdownExtractor()
    extractor.feed(page_info.get("body") or "")
    body = extractor.get_text()

    with open(filepath, "w", encoding="utf-8") as f:
        f.write(body or "")

    print(f"       Downloaded page: {filepath}")


def choose_courses(courses):
    if not courses:
        return []

    print("\nAvailable courses:")
    for idx, course in enumerate(courses, start=1):
        course_name = course.get("name", f"Course {course['id']}")
        print(f"{idx}. {course_name} (id: {course['id']})")

    raw = input(
        "\nEnter course numbers or course ids separated by commas, or press Enter for all: "
    ).strip()

    if not raw:
        return courses

    selected_ids = set()
    valid_ids = {course["id"] for course in courses}

    for part in raw.split(","):
        part = part.strip()
        if not part or not part.isdigit():
            continue

        value = int(part)
        if 1 <= value <= len(courses):
            selected_ids.add(courses[value - 1]["id"])
        elif value in valid_ids:
            selected_ids.add(value)

    return [course for course in courses if course["id"] in selected_ids]


def scrape_courses(courses):
    for course in courses:
        course_id = course["id"]
        course_name = course.get("name", f"Course {course_id}")
        print(f"\n{course_name}")

        modules = get_modules(course_id)
        if not modules:
            print("  (no modules)")
            continue

        for module in modules:
            module_name = module["name"]
            items = get_module_items(course_id, module["id"])
            print(f"\n  {module_name}")

            found_content = False
            file_dir = build_output_dir("downloads", course_name, module_name, "files")
            page_dir = build_output_dir("downloads", course_name, module_name, "pages")

            for item in items:
                item_type = item.get("type")

                if item_type == "File":
                    file_id = item.get("content_id")
                    file_info = get_file_info(file_id)
                    if not file_info:
                        continue

                    found_content = True
                    print(f"    [File] {file_info['display_name']}")
                    print(f"       Size : {file_info['size'] // 1024} KB")
                    print(f"       URL  : {file_info['url']}")
                    download_file(file_info, file_dir)

                elif item_type == "Page":
                    page_url = item.get("page_url")
                    if not page_url:
                        continue

                    page_info = get_page_info(course_id, page_url)
                    if not page_info:
                        continue

                    found_content = True
                    print(f"    [Page] {page_info['title']}")
                    print(f"       URL  : {page_info['html_url']}")
                    download_page(page_info, page_dir)

            if not found_content:
                print("    (no files or pages)")


def main():
    courses = get_courses()
    selected_courses = choose_courses(courses)

    if not selected_courses:
        print("No valid courses selected.")
        return

    scrape_courses(selected_courses)


if __name__ == "__main__":
    main()
