import gleam/io.{println}

pub fn main() -> Nil {
  let x: String = "Original"
  println(x)

  let y: String = x
  println(y)

  let x = "New"
  println(x)

  // unchanged
  println(y)
}
