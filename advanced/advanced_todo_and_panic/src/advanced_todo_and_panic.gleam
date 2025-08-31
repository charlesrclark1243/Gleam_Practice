import gleam/io

pub fn main() {
  print_score(10)
  print_score(10_000)
  // this will crash because of panic
  // print_score(-1)
}

// the todo keyword specifies that some code is not yet implemented.
// optionally, you can include a reason using "todo as "some string"".
// Gleam will crash if todo code is not implemented before running.

// this function's todo includes a reason.
pub fn todo_with_reason() {
  todo as "No reason for this function :)"
}

// this function's todo doesn't have a reason.
pub fn todo_without_reason() {
  todo
}

// the panic keyword is similar to todo, but it's used to intentionally crash the program if
// a point that never should be reached is reached.
// this should almost never be used! It might be useful in prototypes, but using in library code or production application
// is a sign that the design could be improved. 

pub fn print_score(score: Int) -> Nil {
  case score {
    score if score > 1000 -> io.println("High Score!")
    score if score > 0 -> io.println("Keep at it!")
    _ -> panic as "Scores should never be negative!"
  }
}
