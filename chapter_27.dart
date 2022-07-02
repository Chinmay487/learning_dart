
// Typedef

/*
    In dart typedef is used to generate an alias for function type that we can 
    use it as type annotation for declaring variables ans return tyoe of that 
    function type.An alias of function return type.A typedef stores the type 
    information when we assigned the function type to variable.

    typedef keyword is used to create alias for function that will be the same 
    as the actual functions.We can also create a function ptrototype with a list 
    of parameters
*/

/*
    typedef functionName(parameters);
*/

typedef multiplOperation(int number1,int number2);

int addNumbers(int number1,int number2){
    return number1 + number2;
}

int subtractNumbers(int number1,int number2){
    if(number2 > number1){
        return number2 - number1;
    }
    return number1 - number2;
}

void showResults(int number1,int number2,multiplOperation mp){
    print(mp(number1,number2));
}


void main(){

    multiplOperation mp;

    mp = addNumbers;
    int result1 = mp(10,20);
    
    mp = subtractNumbers;
    int result2 = mp(20,10);

    print("$result1 $result2"); 

    // passing typedef as paremeter
    showResults(10,11,addNumbers);
    showResults(10,11,subtractNumbers);

}
