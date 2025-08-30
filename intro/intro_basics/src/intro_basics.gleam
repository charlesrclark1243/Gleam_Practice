import gleam/int
import gleam/io

pub fn add(x: Int, y: Int) -> Int {
  // type annotations are optional
  x + y
}

pub fn double(x: Int) -> Int {
  // call add function defined above
  add(x, x)
}

pub fn expected_minutes_in_oven() -> Int {
  40
}

pub fn remaining_minutes_in_oven(actual_minutes_in_oven: Int) -> Int {
  expected_minutes_in_oven() - actual_minutes_in_oven
}

pub fn preparation_time_in_minutes(number_of_layers: Int) -> Int {
  number_of_layers * 2
}

pub fn total_time_in_minutes(
  number_of_layers: Int,
  actual_minutes_in_oven: Int,
) -> Int {
  preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
}

pub fn main() -> Nil {
  // io.println("Hello from intro_basics!")

  // let count: Int = 1
  // io.println("1 doubled is " <> int.to_string(double(count)) <> "!")

  let actual_minutes_in_oven: Int = 30
  let remaining_miniutes: Int =
    remaining_minutes_in_oven(actual_minutes_in_oven)

  let number_of_layers: Int = 5
  let total_time: Int =
    total_time_in_minutes(number_of_layers, actual_minutes_in_oven)

  io.println(
    int.to_string(actual_minutes_in_oven)
    <> " mins in oven ("
    <> int.to_string(remaining_miniutes)
    <> " mins remaining)",
  )
  io.println(
    int.to_string(total_time)
    <> " mins cooking lasagna so far ("
    <> int.to_string(preparation_time_in_minutes(number_of_layers))
    <> " mins preparing, "
    <> int.to_string(actual_minutes_in_oven)
    <> " mins in oven)",
  )
}
