//// It's more common to use gleam/list to iterate across lists, but sometimes you may want to work with the list directly.
//// 
//// The [first, ..rest] pattern matches on a list with at least one element, assigning the first to the variables first,
//// and the rest of the list to the rest variable. By using this pattern and a pattern on the empty list [], a function can
//// run code on each element of the list until the end is reached.

// import gleam/io
import gleam/int
import gleam/list

pub fn main() {
  // io.println("Hello from flow_list_recursion!")

  let n: Int = int.random(5)
  let x: Int = int.random(25)

  echo n
  echo x

  let list: List(Int) = list.repeat(x, times: n)
  echo sum(list, 0)
}

fn sum(list: List(Int), total: Int) -> Int {
  case list {
    [first, ..rest] -> sum(rest, total + first)
    [] -> total
  }
}
