import cli_project/internal
import gleeunit

// import gleeunit/should

pub fn main() {
  gleeunit.main()
}

pub fn format_pair_test() {
  let greeting: String = internal.format_pair("hello", "world!")
  assert greeting == "hello=world!"
}
