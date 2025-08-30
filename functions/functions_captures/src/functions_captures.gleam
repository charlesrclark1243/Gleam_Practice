// import gleam/io

pub fn main() {
  // io.println("Hello from functions_captures!")

  // this is a standard anonymous function
  let add_one_v1: fn(Int) -> Int = fn(x: Int) -> Int { add(x, 1) }
  echo add_one_v1(5)

  // the following is the same as above, but using a capture
  // the _ indicates the argument to be passed to the function
  // this only for anonymous functions that take one argument and immediately call another function with that argument
  let add_one_v2: fn(Int) -> Int = add(1, _)
  echo add_one_v2(5)
}

fn add(x: Int, y: Int) -> Int {
  x + y
}
