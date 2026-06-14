You can load the following data into pandas DataFrame:

Tabular data, usually in the form of a CSV (comma separated value) file

Dictionary of lists

Lists of dictionaries

From a CSV File

Tabular data is often stored in CSV files. These are plain-text files where each line is a row and the values for each row are separated by commas, hence "Comma-Separated Values," or "CSV." There are a number of ways to load such files into Python, but pandas is by far the most robust and convenient.

We can read data from CSV files directly into a pandas DataFrame with the read_csv() function in the pandas package. read_csv() will generate column names from the first row of the file, and inspect the datatype of each column. If you know that a certain column in the CSV should be used as the index of the dataframe, you can specify this by passing the column number into the "index_col" argument of the read_csv() function. Here, we've specified that the first column should be used as indices. (See example below.)

From a dictionary of list

If you are working with data from other sources, there is a good chance that you will need to create your DataFrames from other data structures, such as dictionaries and NumPy arrays. To do so, you want to use the "DataFrame" class of the pandas package. You can create a DataFrame by passing a dictionary of lists or a list of dictionaries into the DataFrame class.

To demonstrate, here we have a dictionary where each value is a list, and the keys describe what the lists contain. Items in the list with the same index belong to the same record.

We pass this directly into pd.DataFrame() and pandas gives us a DataFrame where the columns are named after the keys of the original dictionary and each column contains the data in a list. This pattern can be convenient when your columns are already in NumPy arrays or lists, and you want to collect them into a DataFrame.

From a list of dictionaries

Other times, you may be starting with data stored as "records" where each observation is a dictionary of key:value pairs. This is especially common if you are getting data from a database, where your data is loaded into Python as a list of dictionaries. pandas can readily create DataFrames from this structure, as well. Pass the list of dictionaries into pd.DataFrame() and pandas will create a DataFrame where each dictionary becomes a row in the DataFrame.