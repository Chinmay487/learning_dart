// dynamic vs var vs final

/*

dynamic: can change TYPE of the variable, & can 
         change VALUE of the variable later in code.

var: can't change TYPE of the variable, but can 
     change VALUE of the variable later in code.

final: can't change TYPE of the variable, & 
       can't change VALUE of the variable later in 
       code.
 
 */

void main() {
  dynamic v = 123; // v is of type int.
  v = 456; // changing value of v from 123 to 456.
  v = 'abc'; // changing type of v from int to String.

  var w = 123; // w is of type int.
  w = 456; // changing value of w from 123 to 456.
  w = 'abc'; // ERROR: can't change type of w from int to String.

  final u = 123; // u is of type int.
  u = 456; // ERROR: can't change value of u from 123 to 456.
  u = 'abc'; // ERROR: can't change type of u from int to String.
}
