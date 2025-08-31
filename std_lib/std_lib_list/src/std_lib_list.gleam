import gleam/io
import gleam/list

pub fn main() {
  // io.println("Hello from std_lib_list!")

  let ints: List(Int) = [1, 2, 3, 4, 5]

  // map makes a new list by running a function on each element in the list.
  io.println("=== Map ===")
  echo list.map(ints, fn(x: Int) -> Int { x * 2 })

  // filter makes a new list containing only the elements that match a condition.
  io.println("\n=== Filter ===")
  echo list.filter(ints, fn(x: Int) -> Bool { x % 2 == 0 })

  // fold combines all the elements in a list into a single value by running a function left-to-right on each element,
  // passing the result of the previous call onto the next.
  io.println("\n=== Fold ===")
  echo list.fold(ints, 0, fn(count: Int, e: Int) -> Int { count + e })

  // find returns the first element in a list for which a function returns True.
  io.println("\n=== Find ===")

  // this will return an Ok wrapping the value 3.
  let _ = echo list.find(ints, fn(x: Int) -> Bool { x == 3 })

  // this will return an Error because there is no 6 in ints.
  echo list.find(ints, fn(x: Int) -> Bool { x == 6 })
}
