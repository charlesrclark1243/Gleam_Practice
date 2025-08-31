// import gleam/io

pub fn main() {
  // no labels
  echo calculate(1, 2, 3)

  // using labels
  echo calculate(1, add: 2, multiply: 3)

  // using labels in different order
  echo calculate(1, multiply: 3, add: 2)
}

// function arguments can be labelled for clarity
// this is similar to Python's keyword arguments
fn calculate(value: Int, add addend: Int, multiply factor: Int) -> Int {
  { value + addend } * factor
}
