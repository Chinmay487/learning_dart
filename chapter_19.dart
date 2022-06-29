// ****** Getters and Setters ******

/*
    Getters and setters are the special class method that is used to read and 
    write access to an object's propertie.The getter method is used to read value
    of the variable or retrive value and setter method is used to set or 
    initialize respective class fields.By default,all classes are associated 
    with getter and setter method.However we can override the default methods
    by defining getter and setter method explicitly.
*/

// *** Defining getter ***
/*
    return_type get fieldName{}
*/

// *** Defining setter ***
/*
    set fieldName(){}
*/


class Parent{

    int? value1,value2;

    // setters
    void setValue1(int? value){
        this.value1 = value;
    }

    void setValue2(int? value){
        this.value2 = value;
    }

    // getters

    int getValue1() => this.value1!;
    // int getValue1(){
    //     return this.value1;
    // }

    int getValue2() => this.value2!;
    // int getValue2(){
    //     return this.value2;
    // }

}



void main(){
    Parent parent = new Parent();
    parent.setValue1(22);
    parent.setValue2(33);

    int value1 = parent.getValue1();
    int value2 = parent.getValue2();

    print("$value1 $value2");
}
