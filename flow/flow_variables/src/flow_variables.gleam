import gleam/int

pub fn main() {
  let result: String = case int.random(5) {
    // match specific values
    0 -> "Zero"
    1 -> "One"

    // match any other value(s) and assign to a variable
    other -> "It is " <> int.to_string(other)
  }
  echo result
}
