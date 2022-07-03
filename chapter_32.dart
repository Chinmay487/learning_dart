// ****** Dart async ******

/*
    Dart async is relete to asynchronous programming.It executes the asynchronous
    operation in a thread.It ensures that the critical functions to be executed 
    until completion.The asynchronous operation is executed,separately the main 
    application thread.In dart one operation cannot interrupt the other operation
    it means one operation can execute  at a time no other part of the program 
    can avert it.
*/

import "dart:io";
import "dart:async";


void function1(){
    print("Your Name ?");
    String? name = stdin.readLineSync();

    print("hello $name");

    /*
        In above code we used the readLineSync(),which is synchronous method 
        which means the execution if all instructios that follow the 
        readLineSync() methos call will be blocked until the readLineSync() 
        method doesn't complete it's execution.
    */


}

// *** Difference between synchronous and acynchronous 
/*
    In computer science,if we say a perticular program is synchronous,that means
    it eaits for an evnet to execute further.This approach is driven with a 
    demeritm if a part of code takes much time to execute,the succeeding blocks
    through an unreleted block will be block will be blocked from executig.

    This is main problem of synchronous approach.A part of the program may 
    require executing before the current part,but the synchronous approach 
    doesn't allow it.

    Thos is not suitable for webservers,where request must be independent of the
    others.It means,the webserver does not wait to finish the execution of the 
    current request,it responds to the request.

    Thos approach is called asynchronous programming.The asynchronous progamming
    generally focuses on no waiting or non-blocking programming model.The
    dart:async is facilited to implement the asynchronous programming block in a 
    dart script.
*/


void readFile(){

    File file = new File("./names.txt");

    Future<String> fs = file.readAsString();
    fs.then((data){
        print(data);
    });

}

// *** Future ***
/*
    The dart future is defined as getting a reslt sometime in the future.The
    future object uses to facilitate asynchronous programming.Future objects are
    tool to denote values returned by an expression whose execution will 
    complete at a later point in time (in Future).In order to work with future,
    we can use eiter async and await or the Future API.
*/

// *** async and await ***
/*
    The async and await keywords are allowed to implement asynchronous 
    programming without using the Future API.The async keyword is necessary to 
    run function asynchronously;we need to add async after the function name.

    When an async function is invoked,the future object instantly returns and 
    that indicates the async function will execute later.Once body of the async
    function is executed,the function call returnes the Future object.The 
    function call will be completed with its result.

    The await keyword is also used to execute function asynchronously.It 
    suspends the currently running function until the result is ready.When it 
    returns the result,then it continues on to the next line of code.The await 
    keyword can obly be used with async functions.

*/

void asyncFunction() async {
    print("One second delay is here");
    await Future.delayed(new Duration(seconds : 1));
    print("Hello Brother");
}


void main(){

    function1();
    readFile();
    print("File reading done");

    asyncFunction();


}