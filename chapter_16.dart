// ****** this keyword in dart ******

/*
    The this keyword is used to refer the current class object.
    It indicates the current instance of the class,methods or 
    constructors.It eliminates the uncertainy between class
    attributes and the parameter names are the same.If we 
    declare the class attributes between class same as the parameter
    name,that situation will create ambiguity in the program,then the
    this keyword can remove the ambiguity by prefixing the class 
    attribute.It can be passed as an argument in the class method or
    constructor
*/

// points to remember
/*
    1. The this keyword is used to point the current class object
    2. It can be used to refer to the present class variables
    3. we can instantiate or invoke the current class constructor using this 
    keyword
    4. We can pass this keyword as a parameter in the method call.
    5. It removes the ambiguity or naming conflict in the constructor or
    method of our instance/object
    6. It can be used to return the current claass instance.
*/


// ****** static keyword in dart ******
/*
    The stitic keyword is used to declare the class variable and method
    It generally manages the memory for global data variabl.The static
    variable and methods are the member of the class instead of an individual
    instance.The static variable or methods are the same for every instance of
    the class,so if we declare the data member as static then we can access it 
    without creating an object.Te class object is not required to access the 
    static method or variable.We can access it by putting the class name before
    the static variable or method.Using the class name,we can call the class method
    from the other classes.
*/


// ****** static variable ******
/*
    A static variable which is declared using the static keyword inside the class
    is called dart static keyword.These are the member of the class instead of a
    specific instance.The static variables are treated the same for all instences
    of the class.It means a single copy of the static variable is shared among all 
    instances of calsses.It allocates memory once and at the class loading and 
    uses throughout the program.
*/

// points to remember
/*
    1. The static variable is also identified as a class variable
    2. Single copy of the static variable is shared among the instance of a class
    3. It can be accessed using the class name.
    4. The static variable can be directly accessed in the static methods
*/

// ****** static method ******
/*
    The concept of the static method is also similar to static variable.The 
    static methods are the member of the class instead of the class instance.
    The static method can use only static variabls and can invoke the static
    methods of the class.We don't need to create an instance of class to access
    it.The Static method is useful when we want to use it in other classes.
*/

// points to remember
/*
    1. The static methods are the member class instead of its object
    2. Static methods are also identifies as class methods.
    3. We can access static methods using class name.
    4. A perticular copy of the static method is distributed among all the 
    instances of a class.
*/



// ****** Difference between class variable and instance variable ******

/*
    The class variable is declared using the static keyword in a class,but
    not in method and constructor.
    The instance variable is declared in a class without using static
    keyword
*/
/*
    The class variable can be accessed using the class name
    The instance variable can be accessed using the instance of that class
*/
/*
    The class variables are common to all instances of that class.All instances
    of the class share one coly of the static variable.
    The instance variable are not common to all instance of class.Each
    object of perticular will preserve its own copy of the instance variable.
*/
/*
    Class variable are created when the program is started and destroys when
    the program is terminated.
    The instance variables are created when an object of the perticular class
    created using the new keyword and destroys when the oject is destroyed.
*/


// ****** super keyword ******
/*
    The super keyword is used to denote the intant parent class object of the 
    current child class.It is used to invoke superclass methods,super class 
    constructors in its child class.The super keyword's main objective is to 
    remove the confusion between parent class and subclass with same method name.
    It also used to refer to the suerclass properties and methods.
*/

// usage
/*
    1. When parent class and child class have members with the same name,then
    soper keyword can be accessed data members of parent class in child class.
    2. It is used to access the parent class constructor in the child class.
    3. Using the super keyword,we can acces the superclass method that is 
    overriden by the subclass.
*/

// using super keyword with parent class variables
/*
    This situation arises when child class has the same name variables as
    superclass variables.So there is a chance of ambiguity for compiler.Then
    super keyword can access the superclass variables in its child class.
*/
/*
    super.vriableName;
*/

// using super keyword with parent class method
/*
    The super keyword is used to access the parent class method int child class.
    If the child class and parent class consist of the same name,then we
    can use the super keyword to use the parent class method in child class.
*/
/*
    super.parentClassMethod();
*/

// using super keyword with constructor
/*
    super();
*/


