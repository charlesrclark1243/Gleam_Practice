import gleam/io.{println}

pub fn main() {
  let x: String = "Original"
  println(x)

  let y: String = x
  println(y)

  let x = "New"
  println(x)

  // unchanged
  println(y)

  // unused variables should prefix with _ to indicate as such
  let _disacrd: String = "This is unused"
}
