// ****** factory keyword ******

// *** References ***
// 1. https://www.educative.io/answers/what-is-the-factory-keyword-in-dart
// 2. https://stackoverflow.com/questions/53886304/understanding-factory-constructor-code-example-dart

/*
    In dart the factory keyword is used to identify a default or named 
    constructor.We use the factory keyword to implement constructors that do 
    not produce new instances of an existing class.
*/

/*
    class ClassName{
        factory className(){
            // statements.
        }
    }
*/

// *** Rules ***
/*
    1. The return keyword is used.
    2. It does not have access to this keyword.
*/

class Car{

    String? name;
    String? color;

    Car({this.name,this.color});


    factory Car.fromJSON(Map json){
        return Car(name : json['name'],color : json['color']);
    }

}

void main(){
    Map<String,String> carInfo = {
        'name' : 'BMW',
        'color' : 'Black'
    };

    Car bmw = new Car.fromJSON(carInfo);
    print("name : ${bmw.name} color : ${bmw.color}");
}


// *** Explaination ***
/*
    1. We defined class Car
    2. We defined two parameters,name and color of String type.
    3. We create parameter constructor.
    4. We create a factory constructor that returns new instance.
    5. we define main() function.
    6. We create a map named carInfo.
    7. We assign carInfo to the class instance car.
    8. Finally print the results.
*/

// *** use cases ***
/*
    1. The constructor is expensive,so you want to return an existing instance - 
    if possible - instead of creating new one.
    2. You only ever want  to create one instance of a class (The singleton 
    pattern).
    3. You want to return subclass instance instead of the class itself.
*/

// ** more explaination **
/*
    A factory constructor has looser constraints than a generative constructor.
    The factory need only return an instance that is the same type as the class
    or that implements its methods (i.e. satisfies its interface).This could be
    a new instance or a new/existing instance of a subclass (which will 
    necessarily have the same methods as the parent).A factory can use control
    flow to determine what object to return,and must utilize the return keyword.
    In order to factory to return new class instance,it must first call a 
    generative constructor.
*/ 
/*
    In normal constructor an instance gets created and the final variables get
    instantiated with the initializer list.This is why there's no return 
    statement.The instance to return is already fixed,when executing the
    constructor.

    In a factory constructor,the instance to return is decided by the method.
    That's why it needs return statement and why it'll usually call a normal
    constructor in at least one path.

    A factory does nothing different than a static method could do,except you
    cannot overload the constructor with a static method but you can with 
    factory method.i.e. factory methods are a way to hide the fact that the user
    of your class is not calling a constructor but a static method.
*/


