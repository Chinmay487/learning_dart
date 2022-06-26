// class and object

// ****** creating class ******
class Student{
    late String name;
    late int age;
    late int rollNumber;

    void showInfo(){
        print("name : ${this.name}");
        print("age : ${this.age}");
        print("roll number : ${this.rollNumber}");
    }

}



void main(){

    // ****** creating object ******
    Student student1 = new Student(); 

    // ****** accessing instance variables ******
    student1.name = "Bob";
    student1.age = 44;
    student1.rollNumber = 67;

    // ****** calling instance function ******
    student1.showInfo();
}

// ****** benifits of Objects ******

/*
    1.Modularity : the source code of an object can be mainteded
    individually and can hide from the other object;s source code

    2.Data-hiding : Using oops programming,the details of the
    internal functionality if cide are hidden from the others.

    3.Reusablility : We don't need to write the same code again
    and again.We can use the object of class multiple times in 
    our program.

    4.Pluggability and deebuging easy : If any object is creating
    a problem in our program,and then we can replace it in our
    program and plug the new object as its replacement.The OOPs 
    code van be easy to debug.

*/





