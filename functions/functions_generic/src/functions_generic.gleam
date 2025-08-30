// import gleam/io

pub fn main() {
  // io.println("Hello from functions_generic!")
  let add_one: fn(Int) -> Int = add(1, _)
  let exclaim: fn(String) -> String = fn(s: String) -> String { s <> "!" }

  // the following is invalid because of type mismatch
  // echo twice(10, exclaim)

  // here, the "value" type is replaced with Int
  echo twice(10, add_one)

  // here, it's replaced with String
  echo twice("Hello", exclaim)
}

fn add(x: Int, y: Int) -> Int {
  x + y
}

// this is a generic function: the "value" type variable can represent any type
// the "value" is replaced with a concrete type when the function is called
fn twice(x: value, f: fn(value) -> value) -> value {
  f(f(x))
}
