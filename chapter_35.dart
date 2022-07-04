// ****** Enumerations ******
 
// Reference :
/*
    1. https://www.geeksforgeeks.org/data-enumeration-in-dart/
*/

/*
    Enumerated types also known as enumerations or enums are primarily used to
    define named constant values.The enum keyword is used to define an 
    enumeration type in Dart.The use case of enumeration is to store finite data
    members under same type definition.
*/ 

/*
    enum enumName{
        member1,
        member2,
        member3,
        .
        .
        .
        memberN
    }
*/

/*

    1. The enum keyword used to initialize enumerated data type.
    2. The enumName as the name suggest is used for naming enumerated class.
    3. The data members inside the enumerated class must me separated by commas.
    4. Each data member is assigned an integer greater than the previoud one,
    starting with 0 (by default).
    5. Make sure not to use semi-colon or comma at the end of the last data 
    member.

*/

enum Numbers{
    zero,
    one,
    two,
    three,
    four,
    five
}

void main(){

    // iterating through enumeration
    for(Numbers number in Numbers.values){
        print(number);
    }

    // using with switch case 
    Numbers userInput = Numbers.four;

    switch(userInput){
        case Numbers.zero : print("zero 0"); break;
        case Numbers.one : print("one 1"); break;
        case Numbers.two : print("two 2"); break;
        case Numbers.three : print("three 3"); break;
        case Numbers.four : print("four 4"); break;
        case Numbers.five : print("five 5"); break;
        default : print("Nothing here");
    }

}


/*
    
    NOTE : The enumerated class does not hold all types of data,rather it stores
    only string values without quotes over them.

*/

// *** Limitations ***

/*
    1. It cannot be subclasses or mixed in.
    2. It is not possible to explicitly instantitate an enum.
*/

