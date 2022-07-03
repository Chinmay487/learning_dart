// Dart Callable classes

/*
    Dart provides the facility to call instances like a function.To make 
    callable class,we need to implement a call() method in it.
*/

class Student{
    String call(String name,int age){
        return "name : $name age : $age";
    }
}

void main(){
    Student student1 = Student();
    String message = student1("Bob",33);
    print(message);
}