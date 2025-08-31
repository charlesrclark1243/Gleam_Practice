//// Custom types can also be generic, taking contained types as parameters.
//// In the example below, a generic "Option" type is defined, which is used to represent a value that is either present or absent.
//// This type can be quite useful! The gleam/option module defines it, so you can use it in your own projects.

// import gleam/io

pub type Option(inner) {
  Some(inner)
  None
}

pub const name: Option(String) = Some("Anna")

pub const level: Option(Int) = Some(24)

pub const none: Option(String) = None

pub fn main() {
  // io.println("Hello from data_types_generics!")
  echo name
  echo level

  echo none
}
