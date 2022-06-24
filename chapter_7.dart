

// Map in dart

/*
    dart map is an object that stores data in the form of a key-value pair.
    Each value is associated with its key,and it is used to access its corresponding
    value.Both keys and values can be of any type.
    In dart map each key must be unique,but the same value can occur multiple times.
*/


void main(){

  // ****** Creating map ******
  
  // using map literal
  var map1 = {
    "name":"Tom",
    "age":33,
  };
  
  print("Map using map literal $map1");
  
    
  // using map constructor
  
  Map<String,String> map2 = new Map();
  map2["name"] = "Tom";
  map2["city"] = "Mumbai";
  print("Map using map constructor $map2");
  
  
  
  
  Map map3 = new Map();
  map3["name"] = "Tom";
  map3["age"] = 22;
  map3["branch"] = "computer";
  map3["course"] = "B.Tech";
  print(map3);    
  
  // ****** Properties ******
  
  print(map3.keys);
  // returns all keys as iterable object
  
  print(map3.values);
  // returns all values as iterable object
  
  print(map3.length);
  // returns length of map
  
  print(map3.isEmpty);
  // returns true if map is empty
  
  print(map3.isNotEmpty);
  // returns true if map is not empty
  
  
  // ****** functions in map ******
  
  Map map4 = new Map();
  map4["day"] = "monday";
  map4["food"] = "Dosa";
  
  // addAll() function
  print("before addAll function $map4");
  map4.addAll(map3);
  print("after addAll function $map4");
  
  // clear() function
  Map map5 = {"value1":1,"value2":2,"value3":3,"value3":4};
  print("before clear function $map5");
  map5.clear();
  print("after clear function $map5");
  
  // remove function
  Map map6 = {"value1":1,"value2":2,"value3":3,"value3":4};
  print("before remove function $map6");
  map6.remove("value3");
  print("after remove function $map6");


  // iterating elements in map
  map6.forEach((key,value){
    print("$key : $value");
  });

}















