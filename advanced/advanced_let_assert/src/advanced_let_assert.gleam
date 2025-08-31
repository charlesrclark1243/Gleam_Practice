//// "let assert" is another way to intentionally crash a Gleam program. It is similar to the "panic" keyword in that it
//// crashes when the program has reached a point that never should be reached.
//// 
//// "let assert" is similar to "let" in that it's a way to assign variables, but it's different in that the pattern can
//// be partial. The pattern does not need to match every possible value of the type being assigned.
//// 
//// Just as the "panic" and "todo" keywords, the "as" keyword can be used with "let assert" to supply a custom panic message.
//// Like "panic", this feature should be used sparingly, and likely not at all in libraries.

// import gleam/io

pub fn main() {
  // io.println("Hello from advanced_let_assert!")

  let x = unsafely_get_first_element([123])
  echo x
  // this will crash...
  // let y = unsafely_get_first_element([])
  // echo y
}

pub fn unsafely_get_first_element(items: List(a)) -> a {
  // this will panic if list is empty.
  // a regular "let" would not permit this partial pattern.

  let assert [first, ..] = items as "List should not be empty!"
  first
}
