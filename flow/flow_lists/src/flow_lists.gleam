import gleam/int
import gleam/list

pub fn main() {
  let x: List(Int) = list.repeat(int.random(5), times: int.random(3))
  echo x

  // lists and the values they contain can also be pattern matched in case expressions.
  // They match on specific lengths of lists...
  // - [] pattern matches to an empty list
  // - [_] pattern matches a list of one element
  // - [_, _] pattern matches a list of two elements
  // - and so on...
  let result_one: String = case x {
    [] -> "Empty"
    [_] -> "One element"
    [_, _] -> "Two elements"

    // default case matches to any other length (3 in this case, since all other possible lengths are matched above)
    _ -> "Three elements"
  }
  echo result_one

  // the spread pattern can be used to match the rest of the list...
  // - [1] will match a list starting with 1 and having no other elements
  // - [1, ..] will match a list starting with 1 and having any number of other elements
  // - [_, _, ..] will match a list starting with two elements and having any number of other elements
  let result_two: String = case x {
    [1] -> "Just one element, 1"
    [1, ..] -> "Starts with 1"
    [_, _, ..] -> "At least two elements"
    _ -> "Other"
  }
  echo result_two
}
