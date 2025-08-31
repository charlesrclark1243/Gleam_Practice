//// "Nil" is Gleam's unit type. It's a value that is returned by functions that have nothing else to return, as all functions must
//// return something.
//// 
//// "Nil" is not a valid value of any other types, therefore values in Gleam are not nullable. If the type is "Nil", then it is the value
//// "Nil". Otherwise, if it's some other type, then it's not "Nil".
//// 
//// Assigning "Nil" to a variable with an incompatible type annotation leads to compile time error. 

import gleam/io

pub fn main() {
  // io.println("Hello from data_types_nil!")

  let x: Nil = Nil
  echo x

  // let y: String = Nil
  let result: Nil = io.println("Hello!")
  echo result == Nil
}
