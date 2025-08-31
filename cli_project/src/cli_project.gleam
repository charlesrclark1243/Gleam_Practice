import argv
import cli_project/internal
import envoy
import gleam/io
import gleam/result

pub fn main() -> Nil {
  // io.println("Hello from cli_project!")

  case argv.load().arguments {
    ["get", name] -> get(name)
    _ -> io.println("Usage: cli_project get <varname>")
  }
}

fn get(name: String) -> Nil {
  let value = envoy.get(name) |> result.unwrap("Error in get function!")
  io.println(internal.format_pair(name, value))
}
// fn format_pair(name: String, value: String) -> String {
//   name <> "=" <> value
// }
