//// Gleam does not have any loops, so recursion is the only way to repeat a task.
//// This example shows simple recursive functions that compute the nth factorial and the nth fibonacci number.

import gleam/int
import gleam/io.{println}

fn factorial(n: Int) -> Int {
  case n {
    0 -> 1
    _ -> n * factorial(n - 1)
  }
}

fn fibonacci(n: Int) -> Int {
  case n {
    0 -> 0
    1 -> 1
    _ -> fibonacci(n - 1) + fibonacci(n - 2)
  }
}

pub fn main() -> Nil {
  let n: Int = int.random(10)

  // Calculate the nth factorial number
  let fact_n: Int = factorial(n)

  // Calculate the nth fibonacci number
  let fib_n: Int = fibonacci(n)

  println("n: " <> int.to_string(n))
  println("factorial(n): " <> int.to_string(fact_n))
  println("fibonacci(n): " <> int.to_string(fib_n))
}
