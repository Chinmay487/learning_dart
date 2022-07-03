// Dart generics

/*
    Dart generics are the same as dart collections,which are used to store the 
    homogenous data.As we discussed in the dart features,it is an optionally 
    typed language.

    By default,Dart collections are heterogenous type.In other words,a single
    dart collection can hold values of several data types.However,a dat 
    collection can be also store the homogenous values or same type vaues.

    The dart generics provides the facility to enforce a limit on the dat type 
    of the values that can be stored by the collection.These collections can be 
    reffered to as the type-sage collections.

    Type safety is a unique feature of the dart programming,which makes sure 
    that a memory block can only contain the data of a specific data type.

    The generics are a way to support type-safety implementation for all dart 
    collections.The pair of the angular bracket is used to declare the type-safe
    collection.The angular bracket consist of he data-types of the collection.
*/
/*
    CollectionName<data_type> identifier = new CollectionName<data_type>;
*/

void main(){

    List<int> list1 = <int>[1,2,3,4,5,6];

    List<int> list2 = new List.empty(growable: true);
    list2.add(4);
    list2.add(5);
    list2.add(6);

    print("list1 : $list1");
    print("list2 : $list2");

}