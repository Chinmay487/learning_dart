
class Class1{
    
  static int? staticAttribute; // static variable or class variable
  
  int? attribute1,attribute2; // instance variables
  
  // constructor
  Class1(){
    print("class1 constructor called");
  }
  
  // static function or class function
  static void staticMetod(){
    print("static method called");
  }
  // instance functions
  void method1(){
    print("instance method1 called");
  }
  void method2({int? number1,int? number2}){
    print("instance method2 called");
    print("attributes passed are");
    print("number1 : $number1 number2 : $number2");
  }
  void method3(){
    // using this keywod to access instance attributes
    print("accessing instance variables using this keyword");
    int? attribute1 = this.attribute1;
    int? attribute2 = this.attribute2;
    print("$attribute1 : $attribute2");
    
    // using this keyword to access instance functions
    print("accessing instance methods using this keyword");
    this.method1();
    this.method2(number1 : 50,number2 : 20);
  }
}

class Class2{
  int? attribute1,attribute2;

  //  Parameterized Constructor
  Class2(int attribute1,int attribute2){
    // initializing instance variabls through constructor
    this.attribute1 = attribute1;
    this.attribute2 = attribute2;
  }

  // named constructor
  Class2.namedConstructor(int value1,int value2){
    print("calling named constructor");
    print("values passed are $value1 and $value2");
  }

}

class Class3{
  int? value1,value2;
  // Class3(int value1,int value2){
  //   this.value1 = value1;
  //   this.value2 = value2;
  // }

  // this is short hand syntax for above code
  // we use this when we pass positional arguments
  Class3(this.value1,this.value2); 

}

class Class4{
    int? value1,value2;
  // Class3(int value1,int value2){
  //   this.value1 = value1;
  //   this.value2 = value2;
  // }

  // this is short hand syntax for above code
  // we use this when we use keyword arguments
  Class4({this.value1,this.value2});
}



void main(){

  // creating object of a class
  Class1 obj1 = new Class1();
  
  // assignining values to instance varibales
  obj1.attribute1 = 10; 
  obj1.attribute2 = 11;
  
  // accessing values of instance variables
  print("attribute1 : ${obj1.attribute1} attribute2 : ${obj1.attribute2}");
  
  // calling instance functions
  obj1.method1();
  obj1.method2(number1 : 10,number2 : 20);
  obj1.method3();
  
  // accessing static variable
  Class1.staticAttribute = 10;
  print("accessing static variable using class name : ${Class1.staticAttribute}");


  // accessing static function
  Class1.staticMetod();

  // passing values to constructor
  Class2 obj2 = new Class2(10,20);
  print("passing values to constructor");
  print("values are ${obj2.attribute1} and ${obj2.attribute2}");

  Class2 obj3 = new Class2.namedConstructor(11,12);

  // shortcut for constructors
  Class3 obj4 = new Class3(10,11);  
  Class4 obj5 = new Class4(value1 : 10,value2 : 11);

  print("class3 instance variables ${obj4.value1},${obj4.value2}");
  print("class4 instance variables ${obj5.value1},${obj5.value2}");

}