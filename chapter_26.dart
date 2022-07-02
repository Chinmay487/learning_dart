// ****** Exceptions in Dart ******

/*
    Dart exceptions re the run-time erro.It is raised when the program gets 
    exceptio.The progra doesn't report error at compile time when the prorgram 
    runs internally and if dart compiler found nothing appropriate.Then,it reports
    run-time error and the execution of program is terminated abnormally.This 
    type of error called exception.
*/

/*
    Dart supports following types of built-in exceptions

    1. DefferedLoadException : It is thrown when a deffered library fails 
    to load. 

    2. FormatException : It is the exception which is thrown.

    3. IntegerDivisiionByZeroException : It is thrown when number s divided by 
    zero. 

    4. IOEException : it is the base class of input-output releted exception.

    5. IsolateSpawnException : It is throws when an isolated cannot be created.

    6. Timeout : It is thrown when schedule timeout happens while waiting for 
    an async result.
*/

/*
  The main objective of ther exception handling is to handle the run time error 
  and prevent the program from terminating abruptly.Every exception in the dart 
  is a subtype of the pre-defined class Exception.
*/

// *** try/on/catch blocks

/*
  The try blck is used to hold he block of code that might be thrown an exception.
  Tje on block is used when we require specifying the exceptions.The catch block 
  is used to when handler needs the exception object.

  If the try block finds an error,it throws to the catch block and catch block 
  has the code to handle the error.The try block must be followed by exactly one 
  block either on/catch or one finally block.
*/
/*
  try{
    // code that might throw an exception
  }
  on Exception1{
    // statements
  }
  Catch Exception2{
    // statements
  }
*/

/*
  One should remember the following points.

  1. We can handle multiple exceptions using the moore than one catch block.
  2. The on block and catch block is mutually inclusive that means we can 
  associate the both - the on block and catch block with the try block.
*/

// *** finally block ***
/*
  The finally block always executes whether there is exception occur or not.It
  executed unconditionally after try/on/catch.
*/
/*
  try{
    // code that might throw an exception
  }
  on Exception1{
    // statements
  }
  Catch Exception2{
    // statements
  }
  finally{
    // statements
  }
*/

// *** Throwing an exception ***
/*
  We can raise an exception explicitly or forcefully.The explicitly raised
  exception should be handled to avoid the program from existing sharply.
*/
/*
  throw new ExceptionName();
*/

// *** Custom exceptions ***
/*
  Each of the exception is the subtype of the build in class Excetion.Dart
  provide the flexibility to create custom exception by extending the existing
  Exception class.
*/
/*
  class CustomExceptionName implements Exception{
    // body
  }
*/

void function1(){
  try{
    var result = 1~/0;
  }
  on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  }
}

void function2(){
  // using catch block here
  try{
    var result = 1~/0;
  }
  on IntegerDivisionByZeroException catch(error) {
    print(error);
  }
}

void function3(){
  // using finally block here
  try{
    var result = 1~/0;
  }
  on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  }
  finally {
    print("This will always execute");
  }
}

int checkNumber(int number){
  // throwing exception

  if(number <= 0){
    throw new FormatException();
  }
  return number * 10;
}

void function4(){

  var x;
  try {
    x = checkNumber(-1);
  } 
  catch(error){
    print(error);
  }
  finally{
    print("done");
  }
}


// raising custom exception

class AmountException implements Exception{
  String expMsg() => "Entered amount shold be greater than zeor";
}

bool checkAmount(int amount){
  if(amount < 1){
    throw new AmountException();
  }
  return true;
}

void function5(){
  try{
    var t = checkAmount(-20);
  }
  catch(error){
    print(error);
  }
  finally{
    print("execution done");
  }
}

void main(){
  function1();
  function2();  
  function3();
  function4();
  function5();
}
