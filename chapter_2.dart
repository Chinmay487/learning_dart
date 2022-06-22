// number properties and methods

void main() {
  int number1 = 123;
  double number2 = 12.33;
  dynamic number3 = 123.12;

  // ****** properties ******
  print(number1.hashCode);
  // hashCode returns the hash code of given number

  print(number1.isFinite);
  // if given number is finite, then it returns true

  print(number1.isInfinite);
  // if given number is infinite, then it return true

  // print(number3.isNan);
  //// if number is non-negative then it returns true (Only works with dynamic)

  print(number1.isNegative);
  // if number is negative then it returns true

  print(number1.sign);
  // return -1 0 or 1 depending on the sign of givan number

  print(number1.isEven);
  // returns true if given number is even

  print(number1.isOdd);
  // returns true if given number is odd

  // ****** methods ******
  print(number2.abs());
  // returns absolute value of given number

  print(number2.ceil());
  // returns the ceiling value of the given number

  print(number2.floor());
  // returns floor value of a number

  print(number2.compareTo(number3));
  // it compares the value with other number

  print(number1.remainder(number3));
  // it gives truncated remainder after dividing two numbers

  print(number3.round());
  // it gives the round value of the number
  print(number1.toDouble());
  // it gives the double equivalent representation of the number

  print(number2.toInt());
  // returns the integer equivalent representation of the number

  print(number2.toString());
  // returns the string equivalent representation of the number

  print(number3.truncate());
  // returns integer after discarding fraction digits
}
