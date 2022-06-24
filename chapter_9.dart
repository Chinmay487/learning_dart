// Loops

void main(){
    
    // ****** for loop ******
    /*
        syntax
        for(initialization;condition;increment/decrement){
            statements
        }
    */
    print("For loop");
    for(int i=0;i<10;i++){
        print(i);
    }
    print("#############\n");

    // nested for loop
    print("nested for loop");
    for(int a=0;a<5;a++){
        for(int b=0;b<5;b++){
            print("$a $b");
        }
    }
    print("#############\n");

    // for-in loop
    /*
        the for-loop is similar to for loop but different in its syntax.
        it iterates through object's properties.
        for-in loop accepts an expression as iterator and iterates through 
        the elements one at time in a sequence.
        the variable holds the values for iteration.the for-in will execute 
        until elements remains in iterators.
    */

    /*
        for(var i in expression){
            // statements
        }
    */
    print("for-in loop");
    List<int> nos = [1,2,3,4,5,6,7];
    for(int no in nos){
        print(no);
    }
    print("#############\n");

    // ****** while loop ******

    /*
        the while loop is used when the number of execution of block of code 
        is not known.It will execute as long as the condition is true.It 
        initially checks given condition then executes the statements that are 
        inside the while loop. 
    */

    /*
        while(condition){
            // statements
            // increment or decerment operation
        }
    */

    print("while loop");
    int f = 1;
    while(f<10){
        print(f);
        f += 1;
    }

    print("#############\n");

    print("infinite while loop");
    int m = 0;
    while(true){
        if(m==5){
            break;
        }
        print(m);
        m += 1;
    }
    print("#############\n");

    // ****** do-while loop ******
    /*
        do-while loop executes a block of statement first and then checks the 
        condition.If the condition returns true then loop continues its iteration
        it is sililar to while loop but only difference is int do-while loop
        a block of statements inside the body of loop will execute atleast once
    */

    /*
        do{
            //statements
        } while(condition)
    */
    print("do while loop part 1");
    int r = 0;
    do{
        print(r);
        r += 1;
    } while(r<10);
    
    print("#############\n");

    print("do while loop part 2");
    int q = 1;
    do{
        print(q);
        q+=1;
    } while(q<1);


}