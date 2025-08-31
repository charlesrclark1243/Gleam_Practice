//// Values are not nullable in Gleam, so gleam/Option defines the Option type, which can be used to represent a value that may or may not be present.
//// It's very similar to the Result type, but it doesn't have an error value. 

import gleam/option.{type Option, None, Some}

pub type Person {
  Person(name: String, pet: Option(String))
}

pub fn main() {
  // io.println("Hello from std_lib_option!")

  let person_with_pet: Person = Person("Alice", Some("Fluffy"))
  let person_without_pet: Person = Person("Bob", None)

  echo person_with_pet
  echo person_without_pet
}
