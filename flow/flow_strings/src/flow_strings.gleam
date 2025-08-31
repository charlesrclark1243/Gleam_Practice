import gleam/io.{println}

pub fn main() -> Nil {
  let hello_joe: String = "Hello, Joe"
  let hello_jane: String = "Hello, Jane"
  let unknown: String = "Goodbye, John"

  get_name(hello_joe) |> println
  get_name(hello_jane) |> println
  get_name(unknown) |> println
}

fn get_name(s: String) -> String {
  case s {
    // when pattern matching on Strings the <> operator can be used to match to Strings with a specific prefix.
    // In this case, the pattern "Hello, " <> name matches to any String starting with "Hello, " and assigns the rest to the name variable.
    "Hello, " <> name -> name
    _ -> "Unknown"
  }
}
