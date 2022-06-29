// ****** Multilevel Inheritance ******

class One{

    int? value1,value2;

    One(){
        print("calling One class constructor");
    }

    void showValues(){
        print("${this.value1} ${this.value2}");
    }

}

class Two extends One{
    
    int? value3,value4;
    
    Two() : super(){
        print("Called One class constructor from Two");
        print("calling Two class constructor");
    }

    @override
    void showValues(){
        print("Calling One class function from Two");
        super.showValues();
        print("Values from class Two");
        print("${this.value3} ${this.value4}");
    }

}

class Three extends Two{
    
    int? value5,value6;
    
    Three() : super(){
        print("Called Two class constructor from Three");
        print("Calling Three class constructor");
    }

    @override
    void showValues(){
        print("calling Two clss function from Thre");
        super.showValues();
        print("values from class Three");
        print("${this.value5} ${this.value6}");
    }
}

void main(){

    One one = new One();
    Two two = new Two();
    Three three = new Three();

    print("setting values for one");
    one.value1 = 1;
    one.value2 = 2;

    print("setting values for two");
    two.value1 = 1;
    two.value2 = 2;
    two.value3 = 3;
    two.value4 = 4;

    print("Setting values for three");

    three.value1 = 1;
    three.value2 = 2; 
    three.value3 = 3;
    three.value4 = 4;
    three.value5 = 5;
    three.value6 = 6;


    print("calling functions");
    one.showValues();
    two.showValues();
    three.showValues();

}