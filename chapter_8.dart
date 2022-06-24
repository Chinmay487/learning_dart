
// Conditions

void main(){

  // if statement
  /*
    if(condition){
      //statements
    }
  */

  int no = 30;
  if(no < 40){
      print("Given number is less than 40");
  }

  // if-else statement
  /* 
    here if block is executed if conditon is true
    and if given condition is false then else block 
    is executed.
  */

  /*
    if(condition){
      // statements
    } else {
      // statements
    }
  */

  int x = 10;
  int y = 20;

  if(x>y){
    print("x is greater than y");
  } else {
    print("x is smaller than y");
  }

  // if else-if else
  /*
    if else-if statement provides the facility
    to check a set of test expressions and execute
    the differet statements.It is used when we have
    to make a decision from more than two possibilities
  */

  /*
    if(condition1){
      // statements 
    } else if(condition2){
      // statements
    } else {
      // statements
    }
  */

  int marks = 78;
  if(marks > 85){
    print("Excellent");
  } else if(marks > 75){
    print("Very Good");
  } else if(marks > 65){
    print("Good");
  } else {
    print("Average");
  }

  // nested if statements
  int a = 10;
  int b = 20;
  int c = 30;

  if(a>b){
    if(a>c){
      print("a is greater");
    } else {
      print("c is greater");
    }
  } else if(b>c){
    print("b is greater");
  } else {
    print("c is greater");
  }

  // switch statement

  /*
    dart switch case statement is used to avoid
    the long form of nested if-else statements.
    the value of the variable compares with the 
    multiple cases,and if the match is found,then
    it executes a block of statement associated 
    with that perticular block of code
  */

  /*
    switch(expression){
      case value-1: statements;
                    break;
      case value-2: statements;
                    break;
      case value-3: statements;
                    break;
      case value-4: statements;
                    break;
      default : statements;
    }
  */

  int n = 3;
  switch(n){
    case 1 : print("one");
             break;
    case 2 : print("two");
             break;
    case 3 : print("three");
             break;
    case 4 : print("four");
             break;
    case 5 : print("five");
             break;
    default : print("Out of range");
  }


}
