
// ****** Single inheritance ******

class One{
    int? value1,value2;

    One(){
        print("One constructor called");
    }

    void oneFunction(){
        print("function from one called");
    }

}

class Two extends One{
    int? value3,value4;

    Two() : super(){
        print("called parent class constructor here");
        print("Two constructor called");
    }

    void twoFunction(){
        print("Function from two called");
    }

    void twoSuperFunction(){
        print("calling parent class function");
        super.oneFunction();
        print("Two super function called");
    }

}


void main(){
    One one = new One();
    Two two = new Two();

    print("One");
    one.value1 = 1;
    one.value2 = 2;

    print("One class values : ${one.value1} ${one.value2}");
    one.oneFunction();

    print("\n");
    two.value1 = 1;
    two.value2 = 2;
    two.value3 = 3;
    two.value4 = 4;

    print("Two");
    print("Two class values : ${two.value1} ${two.value2} ${two.value3} ${two.value3}");
    two.twoFunction();
    two.twoSuperFunction();

    print("\n");
}

