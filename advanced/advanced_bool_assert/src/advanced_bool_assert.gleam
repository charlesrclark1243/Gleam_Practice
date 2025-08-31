//// Bool "assert" is the final way to cause a panic in Gleam. It's similar to "let assert", except instead of asserting that
//// the value matches a specific pattern, it asserts that a boolean condition is true.
//// 
//// Like the other panicking keywords, "as" can be used to add a custom panic message. This will be shown if the
//// boolean condition evaluates to False.
//// 
//// Bool "assert" is designed to be used in test code, and should almost never be used in production code.

// import gleam/io

pub fn main() {
  // io.println("Hello from advanced_bool_assert!")

  assert add(1, 2) == 3
  assert add(1, 2) < add(1, 3)
  assert add(6, 2) == add(2, 6) as "Addition should be commutative!"
  // this will panic...
  // assert add(2, 2) == 5
}

fn add(x: Int, y: Int) -> Int {
  x + y
}
