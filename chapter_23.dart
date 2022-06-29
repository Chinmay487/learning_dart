// passing values through constructor to parent

class One{
    int? value1,value2;
    
    One(int? value1,int? value2){
        this.value1 = value1;
        this.value2 = value2;
    }

    void showData(int? number1,int? number2){
        print("Calling parent class function");
        print("values passed to parent are : $number1 $number2");
    }

}

class Two extends One{

    int? value3,value4;

    Two(int? value1,int? value2,int? value3,int? value4) : super(value1,value2){
        this.value3 = value3;
        this.value4 = value4;
    }

    @override
    void showData(int? number1,int? number2){
        print("calling parent class method");
        super.showData(number1,number2);
        print("values passed to child class function are : ${number1} ${number2}");
    }

}


void main(){
    One one = new One(11,12);
    Two two = new Two(21,22,23,24);

    print("values of one class are");
    print("${one.value1} ${one.value2}");

    print("values of two class are");
    print("${two.value1} ${two.value2} ${two.value3} ${two.value4}");

    print("calling functions");
    one.showData(111,112);
    two.showData(221,222);
}