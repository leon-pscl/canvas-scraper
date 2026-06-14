If ..else statementswitch ..case statement
int main()
{
int select, x, y;
cout<<"[1] Add";
cout<<"\n[2] Subtract";
cout<<"\nEnter your choice";
cin>>select;

if (select == 1) {
cout<<"Enter first number ";
cin>>x;
cout<<"Enter second number ";
cin>>y;
cout<<"The result is "<<x+y;
}
else if (select == 2) {
cout<<"Enter first number ";
cin>>x;
cout<<"Enter second number ";
cin>>y;
cout<<"The result is "<<x-y;
}
else {
cout<<"Invalid Entry";
}

return 0;
}

int main()
{
int select, x, y;
cout<<"[1] Add";
cout<<"\n[2] Subtract";
cout<<"\nEnter your choice";
cin>>select;
switch(select){
case 1:
cout<<"Enter first number ";
cin>>x;
cout<<"Enter second number ";
cin>>y;
cout<<"The result is "<<x+y;
break;

case 2:
cout<<"Enter first number ";
cin>>x;
cout<<"Enter second number ";
cin>>y;
cout<<"The result is "<<x-y;
break;

default:
cout<<"Invalid Entry";
}

return 0;
}

// CREATE A PROGRAM THAT WILL ACCEPTS 2 INPUTS AND WILL PERFORM THE ADDITION AND SUBTRACTION OPERATION
// THIS IS USING SWITCH STATEMENT

#include <iostream>
using namespace std;

int main()
{
double num1, num2;
char select, inputAgain;
loop:
cout<<"[a] Add";
cout<<"\n[b] Subtract";
cout<<"\n[c] Multiplication";
cout<<"\nPlease select an operation to do: ";
cin>>select;
switch(select){
case 'a':
case 'A':
cout<<"Enter first number: ";
cin>>num1;
cout<<"Enter second number: ";
cin>>num2;
cout<<"The result is "<<num1+num2;
break;

case 'b':
case 'B':
cout<<"Enter first number: ";
cin>>num1;
cout<<"Enter second number: ";
cin>>num2;
cout<<"The result is "<<num1-num2;
break;

case 'c':
case 'C':
cout<<"Enter first number: ";
cin>>num1;
cout<<"Enter second number: ";
cin>>num2;
cout<<"The result is "<<num1*num2;
break;

default:
cout<<"Invalid Entry";
}
cout<<"Do you want to try again?";
cout<<"\nChoose Y if yes: ";
cin>>inputAgain;

if ((inputAgain == 'y')||(inputAgain == 'Y')) {
goto loop;
}
else
cout<<"\nI don't know that";

return 0;
}

Sample Output:

[a] Add

[b] Subtract

[c] Multiplication

Please select an operation to do: c

Enter first number: 45.7

Enter second number: 100.3

The result is 4583.71

Do you want to try again? Choose Y if yes: u

I don't know that