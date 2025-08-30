import gleam/int.{to_string}
import gleam/io.{println}

pub fn main() -> Nil {
  let fahrenheit = {
    let degrees: Int = 64
    degrees
  }

  // this won't compile because `degrees` is out of scope here
  // echo degrees

  // use blocks like parentheses to group expressions
  let celsius: Int = { fahrenheit - 32 } * { 5 / 9 }
  println(to_string(fahrenheit) <> "°F is " <> to_string(celsius) <> "°C")
}
