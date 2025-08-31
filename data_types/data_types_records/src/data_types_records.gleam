//// A variant of a custom type can hold other data in it. In this case, the variant is called a record.
//// 
//// The fields of a record can be given labels, and like function argument labels, they can be optionally used when calling
//// the record constructor. Typically, labels will be used for variants that define them.
//// 
//// It is common to have a custom type with one variant that holds data, like structs or objects in other languages.
//// When defining custom types with one variant, the single variant is often given the same name as the the custom type,
//// although it does not need to be.

// import gleam/io

pub type Person {
  Person(name: String, age: Int, needs_glasses: Bool)
}

pub fn main() {
  // io.println("Hello from data_types_records!")

  let amy: Person = Person("Amy", 26, True)
  let jared: Person = Person(name: "Jared", age: 31, needs_glasses: True)
  let tom: Person = Person("Tom", 28, needs_glasses: False)

  let friends: List(Person) = [amy, jared, tom]
  echo friends
}
