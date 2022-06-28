// ****** Inheritance ******
/*
    Dart inheritance is defined as the procee of deriving the properties and
    characteristics of another class.It provides the ability to create a new
    class from existing class.It is the most essential concept of the obeject
    oriented programming approach.We can reuse the all the behavior and
    characteristics of the previous class in the new class

    # Parent class : A class which is inherited by the other class is caled 
    superclass or parent class.Is is also known as a base class.

    # Child class : A class which inherits properties from other class is called
    child class.It is also known as the derieved class or subclass.

*/

/*
  class BaseClass{}

  class ChildClass extends BaseClass{}
*/

// ****** Types of inheritance ******

/*
  1. Single Inheritance
  2. Multiple Inheritance
  3. Multilevel Inheritance
  4. Heirarchical Inheritance
*/

// *** Single Inheritance ***
/*
  In the single inheritance,a class is inherited by single class or subclass is
  inherited by one parent class.
*/
/*
  class Parent{}

  class Child extends Parent{}
*/

// *** Multilevel Inheritance ***
/*
  In the multiple inheritance,a subclass is inherited by another subclass or 
  creates the chaining of inheritance.
*/
/*
  class One{}

  class Two extends One{}

  class Three extends Two{}
*/

// *** Heirarchical inheritance ***
/*
  In the heirarchical inheritance,two or more classes inherit a single class.
*/
/*
  class parent{}

  class Child1 extends Parent{}

  class Child2 extends Parent{}
*/


// ****** Polymorphism ******

/*
  The polymorphism is a combination of two greek words poly,which means many and
  morph means morphing into different forms or shapes.Together,polymorphism 
  means the same entity can be used in various forms.In the programming aspect,
  the same method can be used in different classes.This technique makes 
  programming more intuitive and more accessible.
*/

// *** Method overriding ***
/*
  When we define same method in the subclass,which is previously defined in the 
  superclass is known as the method overriding.The subclass can define the same
  method by providing its own implementation,which is already exists in the 
  super class.The method overriding in the superclass is called method overriden,
  and method int the subclass is called method overriding.
*/
/*
  class Parent{
    void function1(){
      // statements
    }
  }

  class Child extends Parent{
    void function1(){
      // statements
    }
  }
*/

// *** method overriding using super keyword ***
/*
  we can invoke the parent class method without creating its objec.It can be 
  done by using the super keyword in the subclass.The parent class data member
  can be accessed in the subclass by using the super keyword.
*/
/*
  class Parent{
    void function1(){
      // statements
    }
  }

  class Child extends Parent(){
    void function1(){
      super.function1(){}
      // statements
    }
  }
*/

// *** Advantages of method overriding ***
/*
  The main advantage of the method overriding is that the subclass can provide
  its own implementation to the same methood as per requirement without making
  any changes in superclass method.This technique is much when we want to use
  subclass method to behave differently also with the same name.
*/

// *** Rules for method overriding ***
/*
  1. The overriding method must be declared with the same configuration as the 
  overridden method.The return type,list of arguments and its sequencr must be
  the same as the parent class method.

  2. The overriding method must be defined in the subclass,not in the same class
  
  3. The static and final methods cannot be inherited in the subclass as they are
  accessible int their own class.

  4. The constructor of the superclass cannot be inherited in a subclass.

  5. A method that cannot be inherited,then it cannot be overriden.
*/
