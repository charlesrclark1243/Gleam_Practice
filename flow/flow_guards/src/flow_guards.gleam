// import gleam/io

pub fn main() {
  let numbers: List(Int) = [1, 2, 3, 4, 5]

  echo get_first_larger(numbers, 3)
  echo get_first_larger(numbers, 5)
}

fn get_first_larger(numbers: List(Int), limit: Int) -> Int {
  case numbers {
    // the "if" keyword can be used with case expressions to guard the pattern; the guard is an expression that must evaluate to True
    // for the pattern to match. Guard expressions cannot contain function calls, case expressions, or blocks.
    // if the first element > limit, return that
    [first, ..] if first > limit -> first

    // if the first element <= limit, recurse on the rest of the list
    [_, ..rest] -> get_first_larger(rest, limit)

    // if the list is empty (no elements > limit), return 0
    [] -> 0
  }
}
