// ****** Interfaces in dart ******

/*
    An interface defines the syntax that any entity must adhere to.Dart does not 
    have any separate syntax to define interfaces.An interface defines the same 
    as the class where any set of methods can be accessed by an object.The class
    declaration can interface itself

    The keyword implement is needed to be writing,followed by class name to be 
    able to use the interface.Implementing class must provide a complete 
    definition of all the functions of the implemented interface.We can say that 
    a class must define every function with the body in the interface that we 
    want to achieve

    To work with interface methods,the interface must be implemented by another 
    class using implements keyword.A class which is implemented interface must 
    provide a full implementation of all the methods that belongs to the 
    interface.
*/

/*
    class ClassName implements InterfaceName{}
*/

/*
    As we know that the multiple inheritance is not possible in dart,but
    we can apply the multiple interfaces.We can say that,using muliple interfaces
    we can achieve multiple inheritance in dart.
*/

/*
    class ClassName implements Interface1,interface2,interface3,..{}
*/

class Student{

  String? name;
  int? age;

  void displayInfo(){
    print("name : ${this.name!} | age : ${this.age!}");
  }

}

class Faculty{

  String? department;
  int? salary;
  
  void departmentInfo(){
    print("department : ${this.department!} | salary : ${this.salary}");
  }

}

class College implements Student,Faculty{
  
  // overriding student class members
  String? name;
  int? age;

  @override
  void displayInfo(){
    print("name : ${this.name!} | age : ${this.age!}");
  }


  // overridign faculty class members
  String? department;
  int? salary;

  @override
  void departmentInfo(){
    print("department : ${this.department!} | salary : ${this.salary}");
  }

}

void main(){
  
  College college = new College();
  college.name = "Bob";
  college.age = 44;
  college.department = "Data Structure";
  college.salary = 4000;

  college.displayInfo();
  college.departmentInfo();

}

