import gleam/int

pub fn main() {
  let x: Int = int.random(5)
  echo x

  let result: String = case x {
    // Match specific values
    0 -> "Zero"
    1 -> "One"

    // Match to any other value(s)
    _ -> "Other"
  }
  echo result
}
