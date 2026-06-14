Afunction is a group of statements that together perform a task. Every C++ program has at least one function, which is main(), and all the most trivial programs can define additional functions.

A function declaration tells the compiler about a function's name, return type, and parameters. A function definition provides the actual body of the function. The C++ standard library provides numerous built-in functions that your program can call. For example, function strcat() to concatenate two strings, function memcpy() to copy one memory location to another location, and many more functions. A function is known with various names like a method or a sub-routine or a procedure etc.

Defining a Function

The general form of a C++ function definition is as follows:

A C++ function definition consists of a function header and a function body. Here are all the parts of a function:

Return Type: a function may return a value. the return_type is the data type of the value the function returns. some functions perform the desired operations without returning a value. in this case, the return_type is the keyword void.

Function Name: this is the actual name of the function. the function name and the parameter list together constitute the function signature.

Parameters: a parameter is like a placeholder. when a function is invoked, you pass a value to the parameter. this value is referred to as actual parameter or argument. the parameter list refers to the type, order, and number of the parameters of a function. parameters are optional; that is, a function may contain no parameters.

FUNCTION BODY: The function body contains a collection of statements that define what the function does.

Example: Following is the source code for a function called max(). This function takes two parameters num1 and num2 and returns the maximum between the two:

Function Declarations

A function declaration tells the compiler about a function name and how to call the function. The actual body of the function can be defined separately. A function declaration has the following parts:

return_type function_name( parameter list );

For the above defined function max(), following is the function declaration:

int max(int num1, int num2);

Parameter names are not important in function declaration only their type is required, so following is also valid declaration:

int max(int, int);

Function declaration is required when you define a function in one source file and you call that function in another file. In such case, you should declare the function at the top of the file calling the function

Calling a Function - to call a function, you simply need to pass the required parameters along with function name, and if function returns a value, then you can store returned value.

1st  WAY FUNCTION

2nd  WAY FUNCTION

Arguments

also known as parameters Data passed between functions. There can be more than one argument that separate them by commas .

3rd WAY FUNCTION

4th WAY FUNCTION

BENEFITS

large tasks can be broken up into manageable units

repetitive tasks can be simplified