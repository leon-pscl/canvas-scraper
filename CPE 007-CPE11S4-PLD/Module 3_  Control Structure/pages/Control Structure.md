Control Flow

In a program, statements may be executed sequentially, selectively or interactively. Every programming language provides constructs to support sequence, selection or iteration. So there are three types of  programming constructs :

* Sequential Constructs

* Selection Constructs

* Iterative Constructs

Sequential Construct

The sequential construct means the statements are being executed sequentially. This represents the default flow of statements.

Selection Construct

The selection construct means the execution of statement(s) depending upon the condition-test. If a condition evaluates to true, a course-of-action (a set of statements) is followed otherwise another course-of-action is followed. This construct is also called decision construct as it helps in decision making.

Iterative Constructs

The iterative or repetitive constructs mean repetition of a set of statements depending upon a condition-test. A set of statements are repeated again and again till the condition or Boolean Expression evaluates to true. The iteration constructs are also called as looping constructs.

Selection Constructs

C++ provides two types of selection construct :

1) If the statement

2) Select Case statement

The If Statement : If statement of VB comes in various forms & are given below:

1) If.. Statement

2) If....Else Statement

3) If....ElseIf Statement

4) Nested Ifs

If..Then Statement

Def. : An If..Then statement tests a particular condition; if the condition evaluates to true, a course-of-action is followed otherwise it is ignored.

Syntax :

If (boolean expression) {

statements

}

Example 1. :

If (Num>0) {

cout<<“It is a positive number”;

}

Example 2 :

If (txtAge>=18 ){

cout<< “You are eligible to vote”;

}

If..Then..Else Statement

If..Then..Else statement provides an alternative choice to the user i.e. if the condition is true then a set of statements are executed otherwise another set of statements are executed.

Syntax :

If (boolean Expression) {

Statement(s)

}else{

Statement(s)

}

Examples of If..Then..Else

Example 1 :

If (txtAge.Text>=18) {

Print “You are eligible to vote”

}else{

Print “Sorry, You are not eligible to vote”

}

Example 2 :

If (Num Mod 2=0 ){

Print “It is an Even Number”

}else{

Print “It is an Odd Number”

}

If..Then..ElseIf  statement is used to test a number of mutually exclusive cases and only executes one set of statements for the case that is true first.

nSyntax :

If (Boolean Expression) {

Statement(s)

ElseIf (Boolean Expression 2){

Statement(s)

}ElseIf (Boolean Expression 3) {

Statement(s)

:

} Else{

Statement(s)

}

Example of If..Then..ElseIf

If (Age<=4) {

Print “Your rate is free.”

}ElseIf (Age<=12) {

Print “You qualify for the children’s rate.”

}ElseIf (Age<65) {

Print  “You must pay full rate”

Nested Ifs

A nested If is an if that has another If in its if’s body or in its else’s body. The nested if can have one of the following three forms :

A.

If (expresssion 1) {

If (expression 2 ) {

Statement 1

}Else{

Statement 2

}

}Else{

body-of-else]

}

}Else{

Print  “You qualify for the seniors’ rate.”

}

B.

If (expression 1) Then

body-of-if

Else

:

If (expression 2) Then

Statement-1

[Else

Statement-2]

End If

C.

3) If (expression 1) Then

:

If (expression 2) Then

Statement-1

[Else

Statement-2]

End If

Else

If (expression 3) Then

Statement-3

[Else

Statement-4]

:

End If

End If

If Num>0 Then

Print “It is a positive number”

Else

If Num<0 Then

Print “It is a negative number”

Else

Print “The number is equal to zero”

End If

End If

Select-Case Statement

Select-Case is a multiple branching statement and is used to execute a set of statements depending upon the value of the expression. It is better to use the Select-Case statement in comparison to If..Then..ElseIf Statement when the number of checks are more. There are 3 different forms of using Select-Case statements and are given below :

Different forms of Select-Case

1. Select Case : Simplest Form [Exact match]

Select Case Expression

Case Value

’one or more visual basic statements

Case Value

’one or more visual basic statements

Case Else :

’one or more visual basic statements

End Select

Example of Form 1

Select Case byMonth

Case 1,3,5,7,8,10,12

number_of_days=31

Case 2

number_of_days=28

Case 4,6,9,11

number_of_days=30

End Select

Syntax of Form 2

Select Case : Second Form [Relational Test]

Select Case Expression

Case is relation :

’one or more visual basic statements

Case is relation :

’one or more visual basic statements

Case Else :

’one or more visual basic statements

End Select

Example of Form 2

Select Case marks

Case Is < 50

Result = “Fail”

Case Is < 60

Result = “Grade B”

Case Is < 75

Result = “Grade A”

Case Else

Result = “Grade A+”

End Select

Third Form of Select Case

Select Case : Third Format [Range Check]

Select Case Expression

Case exp1 To exp2:

’one or more visual basic statements

Case exp1 To exp2:

’one or more visual basic statements

[Case Else:

’one or more visual basic statements

End Select

Example of Form 3

Select Case Age

Case 2 to 4 : Print “PreNursery”

Case 4 to 6 : Print “Kindergarden”

Case 6 to 10 : Print “Primary”

Case Else : Print “Others”

End Select