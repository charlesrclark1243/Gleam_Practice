// import gleam/io
import gleam/int

pub fn main() {
  // io.println("Hello from flow_alt_patterns!")

  // alternative patterns can be given a case clause using the "|" operator; if any of the patterns match, then the clause matches.
  // if a pattern defines a variable then all of the alternative patterns for that clause must define a variable with the same
  // name and same type.
  let number: Int = int.random(10)
  echo number

  let result: String = case number {
    2 | 4 | 6 | 8 -> "This is an even number!"
    1 | 3 | 5 | 7 | 9 -> "This is an odd number!"
    zero -> "This is " <> int.to_string(zero) <> "!"
  }
  echo result
}
