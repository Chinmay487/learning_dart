// Lists in dart

/* 
  Dart List is similer to array,which is the ordered
  collection of the objects. The array is the most popular and commonly used 
  collection in any other programming language.
  the Dart list looks like the javascript array literals

*/

void main() {
  var list1 = [10, 11, 12, 13, 14, 15];

  // ****** types of list ******

  // fixed length list
  var fixedLengthList = new List.filled(10, -1, growable: false);

  // growale list
  var variableLengthList1 = []; // method 1
  var variableLengthList2 = new List.empty(growable: false); // method 2

  print("before assignment : $fixedLengthList");
  fixedLengthList[3] = 4;
  print("after assignment : $fixedLengthList");

  // // adding element to the list

  // variableLengthList1.add(10);
  // // this will add element dynamically in list

  // print(variableLengthList1);

  // ****** list properties ******
  List list2 = [12, 14, 15, 11, 10, 6, 7, 23, 5];

  print(list2.first);
  // returns first element of the list

  print(list2.isEmpty);
  // returns true if list is empty

  print(list2.isNotEmpty);
  // returns true if list is not empty

  print(list2.length);
  // returns length of the list

  print(list2.last);
  // returns last element of the list

  print(list2.reversed);
  // returns list in reveresed order

  // print(list2.Single);
  // it checks if the list has only one element and returns it

  // ****** inserting element into list ******

  List list3 = [1, 2, 3, 4, 5];

  // add() function
  list3.add(9);
  print("using add function $list3");

  // addAll() function
  List list4 = [10, 11, 12, 13];
  list4.addAll(list3);
  print("using addAll function $list3");

  // insert() function
  int index = 3;
  int value = 44;
  list3.insert(index, value);
  print("using insert function $list3");

  // insertAll() funstion
  List list5 = [11, 22, 33, 44, 55];
  int index2 = 2;
  list5.insertAll(index2, list4);
  print("using insertAll function $list5");

  // ****** updating the list ******

  List list6 = [1, 2, 3, 4, 5];
  print("before updation $list6");
  list6[3] = 10;
  print("after updating element at index 3 $list6");

  // replaceRange() function
  List list7 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int startIndex = 1;
  int endIndex = 5;
  List replacement = [4, 3, 2, 1];
  print("before replaceRange $list7");
  list7.replaceRange(startIndex, endIndex, replacement);
  print("after replaceRange $list7");

  // ****** removing elements from list

  List list8 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  // remove() function
  print("before remove function $list8");
  list8.remove(7);
  print("after removing 7 from the list $list8");

  // removeAt() function
  int elementIndex = 4;
  print("before removeAt function $list8");
  list8.removeAt(elementIndex);
  print("after removing element at index $elementIndex list is $list8");

  // removeLast() function
  print("before removeLast function $list8");
  list8.removeLast();
  print("after removeLast function $list8");

  // removeRange function
  int firstIndex = 2;
  int lastIndex = 5;
  print("before removeRange Function $list8");
  list8.removeRange(firstIndex, lastIndex);
  print("after removeRange Function $list8");

  // ****** iterating list elements

  List<String> list9 = ["Smith", "Peter", "Handscomb", "Devansh", "Cruise"];
  print("Iterating List elements");
  list9.forEach((element) {
    print("${list9.indexOf(element)} : $element");
  });
}
