// import gleam/io

// type imports
import gleam/bytes_tree
import gleam/string_tree.{type StringTree}

// type aliases
pub type UserID =
  Int

pub fn main() {
  // String type annotation
  let _x: String = "I'm a String!"

  // Int type annotation
  let _y: Int = 42

  // Float type annotation
  let _z: Float = 3.14

  // Bool type annotation
  let _a: Bool = True

  // referring to a BytesTree type in a qualified way
  let _bt: bytes_tree.BytesTree = bytes_tree.new()

  // referring to a StringTree type in an unqualified way
  let _st: StringTree = string_tree.new()

  let id: UserID = 15_983
  let num: Int = 15_983

  echo id == num
}
