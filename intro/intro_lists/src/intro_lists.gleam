// import gleam/io

pub fn main() {
  let ints: List(Int) = [1, 2, 3]
  echo ints

  // prepend immutably
  echo [-1, 0, ..ints]

  // this won't compile because types don't match
  // echo ["zero", ..ints]

  // original lists are unchanged
  echo ints
}
