// Dart Data Types part 1

void main() {
  // constant data types
  const PI = 3.142;
  final String name = "Chinmay";

  // It is benificial to ues constant values when we want
  // some data to remain constant in the whole prorgam

  // NOTE : A const Keyword  represents compile time constant
  // and final keyword can be set only once.

  print("value of PI is $PI \nname is $name");

  // Numbers
  // Two types :
  // 1. Integer
  // 2. Double

  int uid = 300; // Integer number
  double id = 2.2223; // double number

  // Double is a number with decimal points
  // int is number without decial points

  print("\ninteger value is $uid \ndouble value is $double");

  // parse function

  // this function cnverts the numeric string to the number.

  var stringNumber = "34";
  var parsedNumber = num.parse(stringNumber);
  int parsedInteger = int.parse(stringNumber);
  double parsedDouble = double.parse(stringNumber);

  print(
      "\nParsed number is $parsedNumber \nparsed to integer is $parsedInteger \nparsed double is $parsedDouble");
}
