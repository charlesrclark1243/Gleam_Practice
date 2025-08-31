//// Sometimes it's useful to pattern match on multiple values at the same time in one case expression.
//// To do this, you can give multiple subjects and multiple patterns separated by commas.
//// When matching on multiple subjects, there must be the same number of patterns as there are subjects,
//// otherwise there will be a compile-time error.

import gleam/int

pub fn main() {
  // io.println("Hello from flow_multiple_subjects!")

  let x: Int = int.random(2)
  let y: Int = int.random(2)

  echo x
  echo y

  let result: String = case x, y {
    0, 0 -> "Both are zero!"
    0, _ -> "First is zero!"
    _, 0 -> "Second is zero!"
    _, _ -> "None are zero!"
  }

  echo result
}
