// sets in dart

/*
  Dart set is the unordered collection of the different
  values of same type.It has much functionality,which
  is the same as an array,but it is unordered.Set does not
  allow storing the duplicate values.The set must contains
  unique values.
*/

void main() {
  // ****** initializing sets ******
  var set1 = <String>{};
  Set<String> set2 = {};

  /*
    NOTE : It should be remembered that the syntax 
    of the set is much similar to the map literals. 
    If we forget to define the type annotation with 
    {} or with the variable it's assigned to; then, 
    Dart compiler will create Map object instead 
    of Set.
  */

  Set<String> set3 = {"Jack", "Bob", "Tom"};
  print(set3);

  // ****** Adding elements to set ******
  Set<int> set4 = <int>{};

  // add() function
  set4.add(8);
  print("using add function $set4");

  // addAll() function
  Set<int> set5 = {1, 2, 3, 4};

  Set<int> set6 = {5, 6, 7, 8};
  set5.addAll(set6);
  print("using addAll function $set5");

  // elementAt() function
  print("set is $set5 and element at index 3 is ${set5.elementAt(3)}");

  // contains() function
  print("${set5.contains(8)} ${set5.contains(22)}");

  // removing element from set
  set5.remove(1);
  print("after removing 1 from set 5 : $set5");

  // iterating over elements in set
  Set<String> names = <String>{"Peter", "John", "Ricky", "Devansh", "Finch"};
  print("iteraing over each element in set");
  names.forEach((name) {
    print(name);
  });

  // removing all set elements

  // clear() function
  Set<int> set7 = <int>{1, 2, 3, 4, 5, 6, 7, 8, 9};
  print("before removing all elements $set7");
  set7.clear();
  print("after removing all elements $set7");

  // ****** operations on set ******

  Set<int> set8 = <int>{1, 2, 3, 4, 5, 6, 7};
  Set<int> set9 = <int>{5, 6, 7, 8, 9, 10, 11};

  // union : The union is set to combine the value of the two given sets
  print("union of set8 and set9 is ${set8.union(set9)}");

  // intersection : the intersection of two sets a and b returns all elements
  // which are common in both sets
  print("intersection of set8 and set 9 is ${set8.intersection(set9)}");

  // subtracting : the subtracting of two sets a and b (a-b) is the elements of set b
  // is not present in the set a
  print("set8 - set9 = ${set8.difference(set9)}");
  print("set9 - set8 = ${set9.difference(set8)}");

  // ****** Set properties ******
  
  
  Set<int> set10 = <int>{10,20,30,40,50,60,70,80,90,100};
  
  print("first element if set10 is ${set10.first}");
  // first returns first element of the set 
  
  print(set10.isEmpty);
  // isEmpty returns true if set is empty
  
  print(set10.isNotEmpty);
  // isNotEmpty returns true if set is not empty
  
  print(set10.length);
  // returns length of the set
  
  print(set10.last);
  // returns last element of set
 
//  print(set10.hashcode);
  // used to get hash code for corresponding object
  
//  print(set10.Single);
  
}



















