// ****** Heirarchical Inheritance ******

class One{
    
    int? value1,value2;
    One(){
        print("One constructor called");
    }

    void showValues(){
        print("Function from one called");
        print("${this.value1} ${this.value2}");
    }

}

class Two extends One{

    int? value3,value4;
    Two(){
        print("Two constructor called");
    }

    @override
    void showValues(){
        print("Called parent function");
        super.showValues();
        print("Values from class Two are : ");
        print("${this.value3} ${this.value4}");
    }

}

class Three extends One{

    int? value5,value6;
    Three(){
        print("three constructor called");
    }

    @override
    void showValues(){
        print("Called parent function");
        super.showValues();
        print("Values from class Three are : ");
        print("${this.value5} ${this.value6}");
    }

}

void main(){
    One one = new One();
    Two two = new Two();
    Three three = new Three();

    print("setting values for one");
    one.value1 = 11;
    one.value2 = 12;
    
    print("setting values for two");    
    two.value1 = 21;
    two.value2 = 22;
    two.value3 = 23;
    two.value4 = 24;
    
    print("setting values for three");
    three.value1 = 31;
    three.value2 = 32;
    three.value5 = 35;
    three.value6 = 36;

    print("calling functions");
    one.showValues();
    two.showValues();
    three.showValues();
}