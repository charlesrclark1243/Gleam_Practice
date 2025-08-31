import gleam/int
import gleam/io
import gleam/result

pub fn main() {
  // io.println("Hello from std_lib_result!")

  // map updates a value held in within the Ok of a result by calling a function on it. Tf the result is an error, 
  // the function is not called.
  io.println("=== Map ===")
  let _ = echo result.map(Ok(1), fn(x: Int) -> Int { x * 2 })
  let _ = echo result.map(Error(1), fn(x: Int) -> Int { x * 2 })

  // try runs a result-returning function on the value held within the Ok of a result. If the result is an error,
  // the function is not called. This is useful for chaining together multiple function calls that can fail, 
  // one after the other, stopping at the first value.
  io.println("\n=== Try ===")
  let _ = echo result.try(Ok("1"), int.parse)

  // this will not compile because of String <-> Int mismatch.
  // let _ = echo result.try(Error("No"), int.parse)

  let _ = echo result.try(Error(Nil), int.parse)

  // unwrap extracts the success value from a result, or returns a default value if the result is an error.
  io.println("\n=== Unwrap ===")
  echo result.unwrap(Ok("1234"), "default")
  echo result.unwrap(Error(Nil), "default")

  // Result functions are often used with pipelines to chain together multiple calls to result-returning functions.
  io.println("\n=== Pipeline ===")
  int.parse("-1234")
  |> result.map(int.absolute_value)
  |> result.try(int.remainder(_, 42))
  |> echo
}
