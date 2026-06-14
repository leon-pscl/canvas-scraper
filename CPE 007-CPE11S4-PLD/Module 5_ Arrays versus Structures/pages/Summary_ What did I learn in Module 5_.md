Array Indexing

In this module, we learned about array indexing operation as a natural feature of arrays.  The “C” language standard says: if any pointer is followed by an indexing operator, like this: t[I], it’s always taken as:     *(t + I) In particular, this means that the following expression (sic! – an expression involving two arguments!)      word[1] is treated by the compiler just like this one:      *(word + 1)

Using Pointers

We also learned the typical mistakes programmers involving the use of pointers, such as use of an uninitialized pointer, exceeding the size of the array, and the non-terminated strings. Sample codes are explored to give us idea of how to properly use pointers.

Arrays of Arrays

We learned here the multi-dimensional nature of arrays. To find any element of a two-dimensional array, we have to use two “coordinates”: a vertical (row number) one and a horizontal (column number) one. The “C” language doesn’t limit the size of the array's dimensions. Here, we show an example of a 3-dimensional array.

Memory allocations and deallocations

We learned how to use a pointer that points to nothing and ask what such a pointer may be useful for. This kind of pointer, which is of the type void *, is called an amorphous pointer to emphasize the fact that it can point to any value of any type. This means that a pointer of type void * cannot be subject to the dereference operator.

Very often,  the developer wants to have full control over how much memory is used and when exactly it is used. This is especially important when you don’t know in advance what the size of the data to be processed is. To manage the allocating and freeing of memory, the “C” language provides a set of specialized functions. Here we’ll show you two of them – we don’t need to go into too much depth, because you just need to understand the main rules. Using both functions, however, requires the inclusion of the header file stdlib.h. The first function is used to request access to the memory block of the specified size. The operating system can react in two ways: it either finds that there is free memory that could be given and our request is granted or, if the system is suffering from a shortage of memory, our request will be denied. When the allocated memory is no longer needed and/or utilized, it would be a good idea to return it to the operating system. We do this by using the second of these two functions.

Array pointers as multidimensional arrays

This is how array pointers can be used as multidimensional arrays:

to avoid the inconvenience of skipping over the subsequent rows, we store the pointer to the beginning of every row so we can reach each row without any acrobatics. How do we store these pointers? In the array, of course! We’ll call it the array of rows; every row will have as many elements as columns of the desired array;

every element in the array of rows will be a pointer to a separate row;

we need one more pointer to point to the array of rows – we call it ptrtab.

Declaring arrays

In this topic, we learned how we can declare an array in many ways.

Structures and declaring/initializing structures

C Language has a way to store variables in a structured way:

the declaration of the structure always starts with the keyword struct;

a structtag is placed after the keyword (STUDENT in the case); it's the name of the structure itself; there’s a widely accepted custom of composing structure tags with capital letters only to distinguish them from ordinary variables;

here comes the opening curly bracket – a sign that the field declaration begins at this point;

our structure has three fields: the first is a 26-element array of type char and is called name; the second is a float and is called time, and the third is an int and is called recent_chapter;

the declaration ends with the closing curly bracket followed by a semicolon.

Pointers to structures and arrays of structures

To summarize union and structure differences:

the size of the memory: in struct, it’s the sum of all members sizes; in union, only max member size is important,

only one member of a union can be accessed at one time, and of course all members of a struct,

a union stores only one value (except some tricky code); a struct stores all the values of members.