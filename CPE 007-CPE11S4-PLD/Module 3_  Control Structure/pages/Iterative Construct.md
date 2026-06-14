Iterative Construct

The iterative or repetitive constructs mean repetition of a set of statements depending upon a condition-test. A set of statements are repeated again and again till the condition or Boolean Expression evaluates to true. The iteration constructs are also called looping constructs.

Iterative Constructs (Looping Structures)

Loop : A loop is said to be the set of instructions which are repeated again and again in a program.

C++ offers broadly following three types of looping structures :

1.For Loop

2.While Loop

3.Do While Loop

For Loop Statement

This type of statement is used when the user knows in advance how many times the loop is going to be executed.

Syntax :

for (initial; condition; increment){

‘ One or more C++ Statements

}

EXAMPLE:

QUESTION 1

What is the output of the program if the code below is executed?

STEPS AND PROCEDURE in FOR LOOP

QUESTION 2

Draw the flowchart of the c++ code below:

QUESTION 3

Create and write a program that display Hello CpE six (6) times using FOR loop.

Examples

vExample 1 : Generate natural no’s from 1 to 10

for (int I  = 1; I<=10; I++) {

cout<< I << “  “;

}

vExample 2 : Generate first 20 even no’s.

for (int E  = 2; E<=40; E+=2) {

cout<< E << “  “;

}

Advantage of using Looping

So create a program that will display 1 to 100.

QUESTION  4

Try This: Output no’s from 100 to 30 decrease by 10 .

Try This: Output no’s from 60 to 130  increase by 5.

While Loop Statement

While loop is functionally equivalent to the Do While..Loop. It executes a set of C++ statements till the condition evaluates to true.

Syntax :

while (<Condition>){

‘ One or more C++ Statements

‘ increment

}

Examples

Example 1 : Generate natural no’s from 1 to 10

I  = 1;

while (I<=10) {

cout<< I;

I++;

}

Example 2: Generate first 20 even no’s.

E  = 2;

while (E<=40) {

cout<< E;

E+=2;

}

More Examples

Try This: Output no’s from 100 to 30 decrease by 10 .

Try This: Output no’s from 60 to 130  increase by 5.

Do While Loop Structures

Do While..Loop : Do While loop is an entry controlled loop in which the condition is placed at the entry point. This statement executes the statements specified in the body of the loop till the condition evaluates to true. The loop may not be executed at all the if the condition is initially false.

Syntax :

do{

‘ One or more C++ Statements

‘ increment

}while <condition or boolean expression>

Examples of Do While..Loop

Example 1 : Never executes loop

int A;

A=10;

do{   cout<<A;

A=A-1;

}while (A>10 )

Example 2 : Executes loop

int P;

P=20;

do{ cout<<P;

P=P-2;

} while (P>5)