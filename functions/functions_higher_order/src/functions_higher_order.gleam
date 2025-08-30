// import gleam/io

// functions are values in Gleam: they can be...
// - assigned as variables
// - passed as arguments to other functions
// - more...

pub fn main() {
  echo twice(5, add_one)

  // function type annotations can also be done with variables
  let my_f: fn(Int) -> Int = add_one
  echo my_f(10)
}

// this takes as an argument a function that takes an Int and returns an Int
// it also has type annotations
fn twice(arg: Int, f: fn(Int) -> Int) -> Int {
  f(f(arg))
}

fn add_one(arg: Int) -> Int {
  arg + 1
}
