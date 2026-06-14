PROGRAM DEVELOPMENT LIFE CYCLE

The process of developing a software, according to the desired needs of a user, by following a basic set of interrelated procedures.

PDLC includes various set of procedures and activities that are isolated and sequenced for learning purposes but in real life they overlap and are highly interrelated.

TASK OF PROGRAM DEVELOPMENT

The basic set of procedures that are followed by

various organizations in their program development methods

are as follows:

1.Problem Definition

2. Program Design

3.Coding

4.Debugging

5.Testing

6.Documentation

7.Maintenance

8.Extension and Redesign

PROGRAM DEVELOPMENT LIFE CYCLE

PROBLEM DEFINITION AND ANALYSIS

First step in solving a problem is to define and analyze it.

Its purpose is to determine the of solving a problem and the items that are needed to achieve that goal.

IPO CHART

Programmers refer the goal as the output  and they refer the items needed as

the input to achieve the goal.

DESIGN

- the second step in problem-solving process using analytical tool such as ALGORITHM AND FLOWCHART.

ALGORITHM

Overview

Algorithm could be used as a tool in developing program. It is in narrative form. It uses natural statement in.

- a set of steps or a formula for solving a particular problem.

- Algorithm is the finite set of instructions written in sequential order to solve the problem.

FORMS OF ALGORITHM

NARRATIVE FORM

short English statement

PSUEDOCODE

Statement closer to the instruction of the program

SIMPLE ALGORITHM

How are we going to display the sum of two numbers?

1.Let sum = 0

2.Let num1 be the first number and initial value is 0

3.Let num2 be the  second number and initial value is 0

4.Input num1

5.Input num2

6.Sum = num1 +num2

7.Print Sum.

8.End

Psuedocode(pronounced SOO-doh-kohd)

- an artificial and informal language that helps programmers develop algorithms. Pseudocode is a "text-based" detail (algorithmic) design tool.

EXAMPLES OF PSUEDOCODE

1.

If student's grade is greater than or equal to 60

Print "passed"

else

Print "failed"

Set total to zero

Set grade counter to one

While grade counter is less than or equal to ten

Input the next grade

Add the grade into the total

Set the class average to the total divided by ten

Print the class average.

DESK CHECKING

A programmer reviews an algorithm by desk- checking or hard-tracing by completing each step in the algorithm manually.

If every step has no error the programmer can now start constructing a flowchart.

FLOWCHART

A graphical representation of a program, derived from the algorithm.

It uses standardized symbols to show that must be followed to accomplish the program’s goal.

BASIC FLOW CHARTING SYMBOLS

Terminal symbol: it is used to denote the start and ending of the flowchart.

Initialization box: it is used to initialize the value of the variables to be used in the flowchart.

Processing box: it is used to denote any operation to be performed on the data. Ex. addition. Subtraction etc.

Input/ output box: this symbol is used for accepting inputs to the flowchart as well as displaying the output.

Decision box: it is used for conditional statements, when operation requires more than one answer.

On page connector: it is used continue flow chart within the same flowchart structure or the same page.

Off page connector: it is used for denoting the continuation of the flowchart is located on another page.

Arrowheads/ lowliness: it indicate the flow of data from one point or another.

Example, a recipe for baking a cake is an algorithm.

IMPLEMENTATION

The step where the programming is converting the design into codes.

A code is a language that the computer can understand.

TESTING

Final step in the problem-solving process.

The programmer test the codes if has or no error using the component of a programming language such as compiler or assembler that detects errors.

INTRODUCTORY EXAMPLE OF FLOWCHART AND PSEUDO CODE

PSEUDO CODE

A kind of structured English for describing algorithms.

It allows the designer to focus on the logic of the algorithm without being distracted by details of language syntax.

It describe the entire logic of the algorithm so that implementation becomes a rote mechanical task of translating line by line into source code.

EXAMPLES

Extract the next word from the line (good)
set word to get next token (poor)

Append the file extension to the name (good)
name = name + extension (poor)

FOR all the characters in the name (good)
FOR character = first to last (ok)

Three Basic Constructs For Flow Of Control Are Sufficient To Implement Any "Proper" Algorithm.

SEQUENCE is a linear progression where one task is performed sequentially after another.
WHILE is a loop (repetition) with a simple conditional test at its beginning.
IF-THEN-ELSE is a decision (selection) in which a choice is made between two alternative courses of action.

Three More Constructs Are Often Used

REPEAT-UNTIL is a loop with a simple conditional test at the bottom.
CASE is a multiway branch (decision) based on the value of an expression. CASE is a generalization of IF-THEN-ELSE.
FOR is a "counting" loop.

SEQUENCE

Example (non-computer)

Brush teeth
Wash face
Comb hair
Smile in mirror

Example

READ height of rectangle
READ width of rectangle
COMPUTE area as height times width

Common Action Keywords

Several keywords are often used to indicate common input,

output, and processing operations.

Input: READ, OBTAIN, GET
Output: PRINT, DISPLAY, SHOW
Compute: COMPUTE, CALCULATE, DETERMINE
Initialize: SET, INIT
Add one: INCREMENT, BUMP

Calculate Pay - sequence

Sum of 2 Numbers - sequence

Average of 3 Numbers - sequence

IF-THEN-ELSE

Binary choice on a given Boolean condition is indicated by the use of four keywords:

IF, THEN, ELSE, and ENDIF.

The general form is:

IF condition THEN

sequence 1

ELSE

sequence 2

ENDIF

The ELSE keyword and "sequence 2" are optional. If the condition is true, sequence 1 is performed, otherwise sequence 2 is performed.

Example:

IF HoursWorked > NormalMax THEN

Display overtime message

ELSE

Display regular time message

ENDIF

Calculate Pay with Overtime - selection

WHILE

The WHILE construct is used to specify a loop with a test at the top. The beginning and ending of the loop are indicated by two keywords

WHILE and ENDWHILE.

The general form is:

WHILE condition

sequence

ENDWHILE

The loop is entered only if the condition is true.

The "sequence" is performed for each iteration.

At the conclusion of each iteration, the

condition is evaluated and the loop continues as

long as the condition

Example

WHILE Population < Limit

Compute Population as Population + Births - Deaths

ENDWHILE n is true.

Example

WHILE employee.type NOT EQUAL manager AND personCount < numEmployees   INCREMENT personCount
CALL employeeList.getPerson with personCount RETURNING employee
ENDWHILE

Average of 10 Numbers – iteration with a while loop