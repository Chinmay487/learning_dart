// Constructors in dart

/*
    A constructor is a different type of function wich is created
    with same name as its class name.The constructor is used to 
    initialize an object when its created.When we create the object
    of class,then constructor is automatically called.It is quite similar 
    to class function but it has no explicit return type.
    It is optional to declare constructor within a class.All class have own
    constructor but if we don't declare or forget then compiler will create
    default constructor automatically by passing the defult value to member
    variable.If we declare own constructor,then default constructor wii be 
    ignored.
*/
/*
    class ClassName{
        ClassName(){
            // statements
        }
    }
*/
/*
    We must remember to follow two rules while creating a constructor
    1. The constructor name should be same as the class name.
    2. The contstructor doesn't have explicit return type.
*/

class Student{
    String? name;
    int? age;

    Student(String name,int age){
        this.name = name;
        this.age = age;
    }


    void showData(){
        print("Name : ${this.name} | Age : ${this.age}");
    }

}


// ****** Types of constructors ******

// ****** Default constructor or no-arg constructor
/*
    A constructor which has no parameter is call default constructor
    or no-arg constructor.It automatically called by compiler if we
    don't declare in the class.
*/

// ****** Parameterized constructor
/*
    We can also pass the parameters to a constructor that type of
    constructor is called as parameterized constructor.It is used 
    to initialize instance variables.Sometimes we need a constructor
    which accepts single or multiple parameters.The psrameterized
    constructors are mainly used to initialize instance variable with 
    own values.
*/

// ****** Named constructor ******
/*
    The named constructors are used to declare the multiple 
    constructors in single class.
*/


void main(){
    Student student1 = new Student("Bob",33);
    student1.showData();
}