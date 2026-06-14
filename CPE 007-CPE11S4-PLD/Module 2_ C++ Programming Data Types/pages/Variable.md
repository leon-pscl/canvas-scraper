While writing a program in any language, you need to use various variables to store various information. Variables are nothing but reserved memory locations to store values. This means that when you create a variable you reserve some space in memory.
You may like to store information of various data types like character, wide character, integer, floating-point, double floating point, boolean, etc. Based on the data type of a variable, the operating system allocates memory and decides what can be stored in the reserved memory.

Primitive Built-in Types
C++ offers the programmer a rich assortment of built-in as well as user-defined data types. The following table lists down seven basic C++ data types:

Several of the basic types can be modified using one or more of these type
modifiers:

signed

unsigned

short

long

The following table shows the variable type, how much memory it takes to store the value in memory, and what is a maximum and minimum value which can be stored in such type of variables.

The size of variables might be different from those shown in the above table, depending on the compiler and the computer you are using.

A variable provides us with named storage that our programs can manipulate. Each variable in C++ has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable.

The name of a variable can be composed of letters, digits, and the underscore character. It must begin with either a letter or an underscore. Upper and lowercase letters are distinct because C++ is case-sensitive:

There are the following basic types of variable in C++ as explained in last chapter:

C++ also allows defining various other types of variables, which we will cover in subsequent chapters like Enumeration, Pointer, Array, Reference, Data structures, and Classes.
The following section will cover how to define, declare and use various types of variables.

Variable Definition in C++
A variable definition tells the compiler where and how much storage to create for the variable. A variable definition specifies a data type, and contains a list of one or more variables of that type as follows:

For definition without an initializer: variables with static storage duration are implicitly initialized with NULL (all bytes have the value 0); the initial value of all other variables is undefined.

Variable Declaration in C++

A variable declaration provides assurance to the compiler that there is one variable existing with the given type and name so that compiler proceeds with further compilation without needing complete detail about the variable. A variable declaration has its meaning at the time of compilation only, compiler needs actual variable declaration at the time of linking of the program.

A variable declaration is useful when you are using multiple files and you define your variable in one of the files which will be available at the time of linking of the program. You will use the extern keyword to declare a variable at any place. Though you can declare a variable multiple times in your C++ program, it can be defined only once in a file, a function, or a block of code.

Example:

Try the following example where a variable has been declared at the top, but it has been defined inside the main function:

When the above code is compiled and executed, it produces the following result:

30
23.3333

The same concept applies to function declaration where you provide a function name at the time of its declaration and its actual definition can be given anywhere else.

For example:

Lvalues and Rvalues

There are two kinds of expressions in C++:

lvalue : Expressions that refer to a memory location is called "lvalue" expression. An lvalue may appear as either the left-hand or right-hand side of an assignment.

rvalue : The term rvalue refers to a data value that is stored at some address in memory. An rvalue is an expression that cannot have a value assigned to it which means an rvalue may appear on the right- but not the left-hand side of an assignment.

Variables are lvalues and so may appear on the left-hand side of an assignment. Numeric literals are rvalues and so may not be assigned and cannot appear on the left-hand side. Following is a valid statement
int g = 20;
But the following is not a valid statement and would generate compile-time
error:
10 = 20;

Scope of Variable

A scope is a region of the program and broadly speaking there are three places, where variables can be declared:

Inside a function or a block which is called local variables,

In the definition of function parameters which is called formal parameters.

Outside of all functions which are called global variables.

We will learn what a function is, and its parameters in subsequent chapters. Here let us explain what local and global variables are.

Local Variables
Variables that are declared inside a function or block are local variables. They can be used only by statements that are inside that function or block of code.Local variables are not known to functions outside their own. Following is the example using local variables:

Global Variables
Global variables are defined outside of all the functions, usually on top of the program. The global variables will hold their value throughout the lifetime of your program.
A global variable can be accessed by any function. That is, a global variable is available for use throughout your entire program after its declaration. Following is the example using global and local variables:

Initializing Local and Global Variables

When a local variable is defined, it is not initialized by the system, you must initialize it yourself. Global variables are initialized automatically by the system when you define them as follows:

It is a good programming practice to initialize variables properly, otherwise, sometimes the program would produce an unexpected results.

Constants/literals

Constants refer to fixed values that the program may not alter and they are called literals. Constants can be of any of the basic data types and can be divided into Integer Numerals, Floating-Point Numerals, Characters, Strings and Boolean Values. Again, constants are treated just like regular variables except that their values cannot be modified after their definition.

Integer Literals

An integer literal can be a decimal, octal, or hexadecimal constant. A prefix specifies the base or radix: 0x or 0X for hexadecimal, 0 for octal, and nothing for decimal. An integer literal can also have a suffix that is a combination of U and L, for unsigned and long, respectively. The suffix can be uppercase or lowercase and can be in any order.

Floating-point Literals

A floating-point literal has an integer part, a decimal point, a fractional part, and an exponent part. You can represent floating point literals either in decimal form or exponential form.

While representing using the decimal form, you must include the decimal point, the exponent, or both and while representing using the exponential form, you must include the integer part, the fractional part, or both. The signed exponent is introduced by e or E.

Boolean Literals
There are two Boolean literals and they are part of standard C++ keywords:
· A value of true representing true.
· A value of false representing false.
You should not consider the value of true equal to 1 and value of false equal to 0.

Character Literals
Character literals are enclosed in single quotes. If the literal begins with L (uppercase only), it is a wide character literal (e.g., L'x') and should be stored in wchar_t type of variable. Otherwise, it is a narrow character literal (e.g., 'x') and can be stored in a simple variable of char type.

A character literal can be a plain character (e.g., 'x'), an escape sequence (e.g., '\t'), or a universal character (e.g., '\u02C0').

There are certain characters in C++ when they are preceded by a backslash they will have special meaning and they are used to represent like newline (\n) or tab (\t). Here, you have a list of some of such escape sequence codes:

String Literals
String literals are enclosed in double quotes. A string contains characters that are similar to character literals: plain characters, escape sequences, and universal characters.

You can break a long line into multiple lines using string literals and separate them using white spaces.

Defining Constants
There are two simple ways in C++ to define constants:

· Using #define preprocessor.
· Using const keyword

OPERATORS

These are set of symbols that tell the compiler to perform specific operations.

A. ARITHMETIC OPERATORS

The Modulus operator is being used to get the remainder from a division operator.

Ex. 100%2=0

The Increment or decrement operator could be used before or after a variable

Ex. x++ = ++x;

y-- = --y

B. RELATION OPERATORS

C. LOGICAL OPERATORS

D. ASSIGNMENT OPERATORS

E. COMBINED OPERATORS

TEXT FORMATTING CODES

These codes do not affect the operation of the program, it is being used to enhance the readability of the program.

STRINGS

Variables that can store non-numerical values that are longer than one single character.

The first difference with fundamentals data types is that in order to declare and use objects (variables) of this type we need to include an additional header file source code, which is #include<string>

Example: My First String
# include<iostream>

#include<string>

using namespace std;

main ()

{

string mystring = “This is a string”

cout<<mystring;

return 0;

}
String can also perform all other basic operations that fundamentals data types can, like being declared w/o an initial value and being assigned values during execution.
# include <iostream>

# include <string>

using namespace std;

main ()

{

string  mystring;

mystring = “ This is an initial string content”;

cout<<mystring<<endl;

mystring=“This is a different string content”;

cout<<mystring<<endl;

return 0;

}

Cin and Strings

We can use cin to get the string with the extraction operator (>>) as we do with fundamental data types variables.

This behavior may or may not what we want; for example, if we want to get a sentence from the user, this extraction operation would not be useful.

In order to get the entire lines, we can use the function getline, which is the more recommendable way to get user input with cin:

//Cin with String
# include <iostream>

# include <string>

using namespace std;

main ()

{

String mystr;

cout<<“What is your name?”;

getline(cin,mystr);

cout<<“Hello”<<mystr<<“\n”

cout<<“What is your favorite team?”;

cin>>mystr;

cout<<“I like”<<mystr<<“too!\n”;

return 0;

}