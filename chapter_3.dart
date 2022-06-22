// Strings in dart

void main() {
  // in dart String keyword can be used to declare
  // the string.

  String string1 = "Chinmay";
  String string2 = 'Bob';
  String string3 = '''
line 1
line 2
line 3
line 4
  ''';

  print(string1);
  print(string2);
  print(string3);

// String concatination

  String name1 = "Oggy";
  String name2 = "Jack";
  String result = name1 + name2;
  print(result);

// String interpolation

  int age = 21;
  String name = "Naruto";
  String emptyString = "";

  print("Given name is $name given age is $age");

// ****** Properties ******

  print(name.codeUnits);
  // returns an unmodified list of UTF-16 code units of given string

  print("${name.isEmpty} ${emptyString.isEmpty}");
  // returns true if string is empty

  print(name2.length);
  // returns length of string including whitespaces

// ****** methods ******

  String allUpperCase = "THIS IS ALL UPPERCASE";
  String allLowerCase = "this is all lowercase";

  print(allUpperCase.toLowerCase());
  // it converts all characters of given string to lowercase

  print(allLowerCase.toUpperCase());
  // it converts all characters of given string to uppercase

  print(allLowerCase.trim());
  // it eliminates all whitespace from given string

  print(allLowerCase.compareTo(allUpperCase));
  // it compares one string from another

  print(allLowerCase.replaceAll("all", "this"));
  // it replaces all substring that matches the specified pattern with a given string

  print(allLowerCase.split(" "));
  // it splits the string at matches of the specified delimiter and returns the list of sub strings

  print(allLowerCase.substring(2, 5));
  // it returns substring from start index,inclusive to end index

  print(age.toString());
  // returns string representation of given object

  print(allLowerCase.codeUnitAt(4));
  // returns the 16-bit code unit at the given index
}
