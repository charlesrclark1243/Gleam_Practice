import gleam/io.{println}
import gleam/string

pub fn main() -> Nil {
  // without pipeline operator |>
  println(string.drop_start(string.drop_end("Hello, World!", 1), 7))

  // with pipeline operator |>
  "Hello, World!"
  |> string.drop_end(1)
  |> string.drop_start(7)
  |> println()

  // you can also change order with function capturing;
  // usually |> looks to fill the first argument
  "1"
  |> string.append("2")
  |> string.append("3", _)
  |> println()
}
