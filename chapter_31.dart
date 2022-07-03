// ****** Isolates ******
/*
    Dart allows us to asynchronous programming which runs our program without 
    getting locked.The asynchronous programming is used to achieve concurrency.
    Dart isolate is a version of thred.But there is key differece between the 
    common implementation of thread or isolates.The isolates work differently in
    comparison of thread.The isolates are independent workers that do not share 
    memory,but instead interconnect by passing message over channels.Since 
    isolates completes its task by passing message thus it need a way to 
    serialize a message.

    The communication between the isolates is done by the message passing as 
    client and server.It helps the program to take advantage of multicore 
    processor out of the box.

    Dart provides the dart:isolate package to apply the isolate in our program.
    It provides the solution to taking single threaded dart code and allowing 
    application to make greater use of the hardware available.
*/

// *** Create and start isolate ***
/*
    Dart provides the spwan() methpd to create isolate.It must be declared with 
    an entry point with a single parameter.Thos parameter displays a port which 
    isolate use to refer back notification message
*/


import "dart:isolate";

void showMessage(String name){
    print("Hello $name");
}


void main(){
    
    Isolate.spawn(showMessage,"Bob");
    Isolate.spawn(showMessage,"Jack");
    Isolate.spawn(showMessage,"Tom");


    print("Execution from main 1");
    print("Execution from main 2");
    print("Execution from main 3");

}


