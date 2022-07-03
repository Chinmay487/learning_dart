// ****** Dart Generators ******

/*
    Dart generator is a unique function that allows us to produce a sequence of 
    values.Generators return values on demand.It means the value is generated 
    when we try to iterate over the iterators.Dart porvides built in support for
    two type of generator functions.

    1. Synchronous Generators
    2. Asynchronous Generators

*/

// *** Synchronous generators ***
/*
    It returns an iterable object which carries values synchronously.The yield 
    keyword is used along with making the synchronous generator function boyd as 
    sync* to generator values
*/

// *** Asynchronous generators ***
/*
    It returns a stream object which carries value asynchronously.The yield 
    keyword is used along with marking the asynchronous generator function body
    as async* to generator values.
*/

// *** yield keyword ***
/*
    the yield keyword returns the single value to the sequence at a time but 
    does not  stop the execution of the generator function completely.It returns
    a value for each execution of the generator function.
*/

// *** the sync* keyword ***
/*
    The sync keyword is used to declare the synchronize generator function.It 
    returns the value when we try to iterator the value not when it was created.
*/

// *** the async* keyword ***
/*
    The async keyword is used to declare teh asynchronous generators.It returns
    the stream object.
*/



Iterable<int> oddNumbers(int number) sync* {
    int k = number;
    while(k != 0){
        if(k%2 == 1){
            yield k;
        }
        k -= 1;
    }
}

Stream<int> getNumbers() async* {
    for(int i=1;i<6;i++){
        yield i;
    }
    print("done");
}

Stream<int> generateNumbers() async* {
    print("waitinf for 2 seconds");
    await new Future.delayed(new Duration(seconds : 2));
    print("returing values");
    for(int i=0;i<6;i++){
        await new Future.delayed(new Duration(seconds : 1));
        yield i;
    }
    print("Done executing");
}

void main(){

    // synchronous generator
    print("using synchronous generator");
    // oddNumbers(10).forEach((number){
    //     print(number);
    // });

    // shortcut for above line of code
    oddNumbers(10).forEach(print);

    // asynchronous generator
    print("using asynchronous generator");
    getNumbers().forEach(print);


    print("using await");
    generateNumbers().forEach(print);

}
