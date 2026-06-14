array is a sequence of variables that shares the same name and that is referenced using an index.

An array in C++ is a group of elements with the same data type referenced by a single name.

Initializing

EXAMPLE

Create a program using ARRAY for the following steps:

Step1. Declare and initialize an array with the name [arrayString]: with a

values: Josh, Mon, Rufo, Alvin, Marte.

make the index value to 99.

Step2.  Output the Rufo value coming from the array.

Step3.  Add another name "Lloyd"

Step4.  Output Lloyd

Step5.  Change the value of "Alvin" into "Alon"

Step6. Output all the values of the array

with the format: name - name - name - name

SOLUTION:

Step 1

* Declaring and Initializing

String arrayString[99]= {"Josh","Mon","Rufo","Marte"}

Step 2

* Output value coming from array

Step 3

* Adding another values on array

Step 4

* Output value coming from array

Step 5

* Changing value on an array

Step 6

* Output all the values on array

Cout<<arrayString[0]<<“-” <<arrayString[1]<<“-” <<arrayString[2]<<“-” <<arrayString[3]<<“-” <<arrayString[4]<<“-” <<arrayString[5];

Output: Josh – Mon – Rufo – Alon – Marte - Lloyd

EXAMPLE

Step 1

–String arrayString[99] = {“Josh”,”Mon”,”Rufo”,”Alvin”,”Marte”}

Step 2

–Cout<<arrayString[2]<<“/n”;

Step 3

–arrayString[5] =“Lloyd”;

Step 4

–Cout<<arrayString[5]<<“/n”;

Step 5

–arrayString[3] =“Alon”;

Step 6

–Cout<<arrayString[0]<<“-” <<arrayString[1]<<“-” <<arrayString[2]<<“-” <<arrayString[3]<<“-” <<arrayString[4]<<“-” <<arrayString[5];