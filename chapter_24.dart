// ****** Abstract classes ******

/*
  Abstract classes in dart that has one or more abstract methods.Abstraction is 
  the part of encapsulation where the actual internal working of the function 
  hides from the users.They interact only with external functionaluty.We can 
  declare abstract class using abstract keyword. There is a possibility that an
  abstract class may or may not have abstract methods.

  Abstract methods are those methods,which are declared without implementation.
  The concrete methods or normal methods are declared with implementation.An 
  abstract class may or may not have abstract methods.
  
  We cannot create instance of abstract class that means it can't be 
  instanciated.It can only be extended by the subclass, and the subclass must be
  provided the implementation to the abstract methods which are present in the 
  parent class.Then it is necessary to declare abstract subclass.  
*/

// *** Rules ***
/*
  1. An abstract class can have an abstract method (method without implementation)
  or not.
  
  2. If there is at least one abstract method,then the class must be declared
  abstract.

  3. An abstract keyword is used to declare abstract class.

  4. An abstract class can also include nornam or concrete (method with body) 
  metods.
*/

/*
  abstract class ClassName{
    // body of abstract class
  }
*/


// creating abstract class
abstract class Human{
  void displayInfo(); // abstract method;
}

class Boy extends Human{
  
  @override
  void displayInfo(){
    print("This is Boy");
  }

}


class Girl extends Human{

  @override
  void displayInfo(){
    print("This is girl");
  }

}

void main(){

  Boy boy = new Boy();
  Girl girl = new Girl();

  boy.displayInfo();
  girl.displayInfo();

}






