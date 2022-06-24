// Functions in dart

/*
    A dart function is a set of code that together perform a specific task.It is
    used to break the large code into smaller modules and reuse it when needed.
    Functions make the program readable and easy to debug.It improves the modular
    approach and enhances the code reusablitily.
    The function provides the flexibility to run a code several times with
    different values.A function can be called any time as its parameters and 
    returns some value to where it called
*/

// Advantages of function
/*
    1. It increases the module approach to solve problems.
    2. It enhances the resuablitily of the program.
    3. We can do the coupling of the program.
    4. It optimizes the code.
    5. It makes debugging easier.
    6. It makes developement easy and create less complexity.
*/

/*
    return_type function_name(parameter_list){
        // statements
        return value;
    }

    return_type : it can be any data type such as void,integer,double,etc.The 
    return type must be matched with the returned value of the function.

    function_name : it should be appropriate and valid identifier

    parameter_list : it denotes the list of parameters,which is necessary when
    we called a function

    return value : a function returns a value after complete its execution.

*/

int multiply(int number1,int number2){
    int result = number1 * number2;
    return result;
}


void sayHello(String name){
    print("Hello $name");
}

void main(){
    int number1 = 10;
    int number2 = 2;
    int result = multiply(number1,number2);
    print("$number1 * $number2 = $result");

    sayHello("Bob");

}