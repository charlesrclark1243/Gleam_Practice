//// Opaque types are types where a custom type itself is public and can be used by other modules, but the constructors
//// for the type are private and can only be used by the module that defines the type, preventing other modules from
//// constructing or pattern matchng on the type.
//// 
//// This is useful for creating types with smart constructors: a function that constructs a value of a type, but is more
//// restrictive than of the programmer were to use one of the type's constructors directly. This is useful for ensuring
//// type is used correctly.

// import gleam/io

pub fn main() {
  // io.println("Hello from advanced_opaque_types!")

  let positive: PositiveInt = new(5)
  let zero: PositiveInt = new(0)
  let negative: PositiveInt = new(-5)

  echo to_int(positive)
  echo to_int(zero)
  echo to_int(negative)
}

// this is a custom opaque type. If other modules want to construct one, they must use the "new" function to ensure the
// integer is positive.
pub opaque type PositiveInt {
  PositiveInt(inner: Int)
}

pub fn new(x: Int) -> PositiveInt {
  case x >= 0 {
    True -> PositiveInt(x)
    False -> PositiveInt(0)
  }
}

pub fn to_int(p: PositiveInt) -> Int {
  p.inner
}
