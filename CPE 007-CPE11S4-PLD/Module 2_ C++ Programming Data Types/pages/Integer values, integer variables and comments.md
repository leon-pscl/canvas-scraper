Listen to the audio:

Do you know how computers perform calculations on numbers? Perhaps you've heard of the binary system and know that it’s the system computers use for storing numbers and that they can perform any operation upon them. We’re not going to explore the intricacies of positional numeral systems here, but we will say that the numbers handled by modern computers are of two types:

integers, that is, those which are devoid of the fractional part;

floating-point numbers (or simply floats), that contain (or are able to contain) the fractional part.

This definition is not entirely accurate but good enough for our purposes. This distinction is very important and the boundary between these two types of numbers is very strict. Both of these kinds of numbers significantly differ in how they are stored in a computer’s memory and in the range of acceptable values. Furthermore, the characteristic of a number that determines its kind, range, and application is called a type.

At this point, we have made friends with two types of the “C” language – an integer type (known as int) and a floating-point type (known as float).

For now, let's leave the floating-point numbers aside (we’ll get back to them soon), and let’s consider the question, maybe a bit banal at first glance, of how the “C” language recognizes integers.

Well, it’s almost the same way that you're used to writing them with a pencil on paper – it’s simply a string of digits that make up the number. But there’s a reservation – you must not insert any characters that are not digits inside the number. Take for example the number eleven million one hundred and eleven thousand one hundred and eleven. If you took a pencil in your hand right now, you would write the number like this:

11,111,111

or (if you are a Pole or a German) like this:

11.111.111

or even like this:

11 111 111

Obviously, this makes it easier to read if the number is made up of many digits. However, in “C” it’s prohibited. You must write this number as follows:

11111111

Otherwise, you'd expose yourself to some biting remarks from the compiler. How do we code negative numbers in “C”? As usual – by adding a minus. You can write:

-11111111

Positive numbers don't need to be preceded by the plus sign but you can do it if you want. The following lines describe the same number:

+123

123

For now, we’ll deal only with integers – we’ll introduce floating-point numbers in the next chapter.

There are two additional conventions, unknown to the world of mathematics. The first one allows us to use the numbers in an octal representation. If an integer number is preceded by the 0 digit, it will be treated as an octal value. This means that the number must contain digits taken from the [0..7] range only.

0123

is an octal number with a decimal value equal to 83.

The second allows us to use hexadecimal numbers. This type of number should be preceded by a prefix written as 0x or 0X.

0x123

is a hexadecimal number with a decimal value equal to 291.

Maybe you want to see the result of your computation. We’ll discuss this later (in Chapter 2.5), but now's a good moment to mention how to print the value of a number.

Well, to print an integer number, you should use (this is only a simple form):

printf("%d\n", IntegerNumberOrExpression);

To print a floating point number, you should use (this is only a simple form):

printf("%f\n", FloatNumberOrExpression);

In both cases, you should first include the stdio header file (as we did in the first program):

#include <stdio.h>

A variable is variable

It seems fairly obvious that the “C” language allows us to write numbers. It won't surprise you that we can do some arithmetic operations with these numbers: add, subtract, multiply and divide them. We’ll be doing that soon. But it’s perfectly a normal question to ask how to store the results of these operations in order to use them in other operations. There are special “containers” for this purpose and these containers are called variables. The name suggests that the contents of a container can be varied in (almost) anyway.

What does every variable have?

a name

a type

a value

Let's start our discussion with the issues related to a variable's name. Variables do not appear in our program in some magical way. We (as developers) decide how many and which variables we want to exist in our program. We also give them their names, almost becoming their godparents. If you want to give a name to a variable you must follow some strict rules:

the name of the variable must be composed of upper-case or lower-case Latin letters, digits and the character _ (underscore);

the name of the variable must begin with a letter

the underline character is a letter (strange but true)

upper- and lower-case letters are treated as different (a little differently than in the real world – Alice and ALICE are the same given names but they are two different variable names, consequently, two different variables)

Note that the same restrictions apply to function names.

The standard of the “C” language does not impose restrictions on the length of variable names, but a specific compiler may have a different opinion on this matter. Don't worry; usually, the limitation is set so high that it’s unlikely that you would actually want to use such long variable names (or functions).

Here are some correct, but not always convenient variable names:

variable

i

t10

Exchange_Rate

counter

DaysToTheEndOfTheWorld

TheNameOfAVariableWhichIsSoLongThatYouWillNotBeAbleToWriteItWithoutMistakes

_

The last name particularly may raise concerns, but from the compiler's point of view, there is nothing wrong with it.

And now some incorrect names:

10t (does not begin with a letter)

Adiós_Señora (contains illegal characters)

Exchange Rate (contains a space)

The type is an attribute that uniquely defines which values can be stored inside the variable. We already know of integer (int) and floating-point (float) types. The value of a variable is what we have put into it. Of course, you can only put in a value that is compatible with the variable's type. Only an integer value can be assigned to an integer variable (to say the same thing but in a slightly different way – to a variable of type int). The compiler will not allow us to put a floating-point number there.

Let's talk now about two important things – how the variables are created and how to put a value inside them (or rather – how to give them a value).

The variable comes into existence as a result of a declaration. A declaration is a syntactic structure that binds a name, provided by the programmer, to a specific type offered by the “C” language. The construction of the declaration (in other words – the declaration syntax) is simple: just use the name of the desired type, then the variable name (or variable names separated by commas if there are more than one). The whole statement ends with a semicolon.

Let's try to declare a variable of type int named Counter. The relevant portion of the program looks like this:

int Counter;

What is declared by the following fragment of a program?

int variable1, account_balance, invoices;

It declares three variables of type int named (respectively) variable1, account_balance and invoices.

Remember that you are allowed to use as many variable declarations as you need to achieve your goal.

And how do we give a value to the newly declared variable? You need to use the assignment operator. Although this sounds rather mysterious, the operator has a simple syntax and an unambiguous interpretation. The assignment operator looks very familiar – here it is:

=

Let's look at some examples:

Counter = 1;

The above statement reads: assign a value of 1 to a variable named Counter or a bit shorter assign 1 to Counter.

Some use a different convention and read it as: Counter becomes 1.

Another example:

Result = 100 + 200;

In this case, the new value of the variable Result will be the result of adding 100 to 200, which is probably not a surprise to you, right?

And now a slightly more difficult example:

x = x + 1;

Seeing that, a mathematician would probably protest – no value may be equal to itself plus one. This is a contradiction.

But in the “C” language the sign "=" does not mean is equal to, but assign a value.

So how do we read such a record in the program?

Take the current value of the variable x, add 1 to it and store the result in the variable x

In effect, the value of variable x was incremented by one, which has nothing to do with comparing the variable to any value.

Keywords – why they are the keys?

Take a look at the right side of the screen – there’s a list of words that play a very special role in every “C” language program. They’re called keywords, or (more precisely) reserved keywords. They’re reserved because you mustn't use them as names: neither for your variables, nor functions nor any other named entities you want to create. The meaning of the reserved word is predefined and mustn’t be changed in any way. Fortunately, because the “C” compiler is case-sensitive, you can modify any of these words by changing the case of any letter, thus creating a new word, which is not reserved anymore.

For example – you can't do this:

int int;

You mustn't have a variable named int – it’s prohibited. But you can do this instead:

int Int;

The compiler will be glad, very glad.

Comments on the comments

Now we are going to make some comments. We don't mean comments on either your achievements or our achievements. We’re referring to all other comments, namely comments onthe program and insidethe program at the same time.

The developer may want to put in a few words addressed not to the compiler but to humans, usually to explain to other readers of the code how the tricks used in the code work, or the meanings of variables and functions and eventually, in order to keep stored information on who the author is and when the program was written.

Good (and responsible) developers describe each function; in particular, they explain the role of the parameters, the value the function returns as a result, and what the function actually does.

How do we leave this trace in the source code? It has to be done in a way that won't force the compiler to interpret it as part of the code. A remark inserted into a program that is omitted at the time of compiling is called a comment.

If we want to be precise, we should say that each comment is lexically equivalent to one space. Whenever the compiler encounters a comment in your program, the comment is completely transparent to it – from the compiler’s point of view, this is only one space (regardless of how long the real comment is).

In the “C” language a comment is a text that begins with the pair of characters

/*

and ends with the pair of characters

*/

The comment can span several lines or it can occupy only one line or only part of a line.

Below, you can see an example of a careful and fair comment entered into the program. Any developer reading the program will be aware of the true meaning of the variable. The developer will read the code faster and it will take less time to understand it.

Developers often place a note at the beginning of the source informing us of when they wrote the program and who amended it and why. The note may appear like this:

Despite the complicated structure and the multitude of stars, the condition saying how the comment should be started and finished is fully met.

Comments may be useful in another aspect – you can use them to mark a piece of code that currently isn't needed for whatever reason. We often do this during the testing of a program in order to isolate the place where an error might be hidden.