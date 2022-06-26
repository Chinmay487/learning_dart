// Anonymous function in dart

/*
    Dart function which is defined by using user defined
    name.Dart also provides the facility to spevify nameless
    function or function without name.This type of function is 
    known as as anonymous function,lambda or closure.An anonumous 
    function behaves the same as a regular function,but it does 
    not have a name with it.It can have zero or any number of 
    arguments with an optional type annotation

    we can assign anonymous function to a variable,and then we can
    retrive or access the value of the closure based on requirements.k
*/

void main(){
    List<String> names = ["James","Ptric","Mathew","Tom"];
    names.forEach((item){
        print(item);
    });


    var square1 = (num){
        return num * num;
    };

    var square2 = (num) => num * num;

    print("${square1(2)} ${square2(3)}");


}

