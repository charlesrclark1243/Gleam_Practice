import gleam/bool
import gleam/io.{println}

pub fn true() -> Bool {
  True
}

pub fn false() -> Bool {
  False
}

pub fn not(x: Bool) -> Bool {
  !x
}

pub fn and(x: Bool, y: Bool) -> Bool {
  x && y
}

pub fn or(x: Bool, y: Bool) -> Bool {
  x || y
}

pub fn xor(x: Bool, y: Bool) -> Bool {
  // use and, or, and not to build xor
  and(or(x, y), not(and(x, y)))
}

pub fn tautology(x: Bool) -> Bool {
  // x || True is always True
  or(x, True)
}

pub fn contradiction(x: Bool) -> Bool {
  // x && False is always False
  and(x, False)
}

pub fn equality(x: Bool, y: Bool) -> Bool {
  // equaltity is the same as other types
  x == y
}

pub fn not_equality(x: Bool, y: Bool) -> Bool {
  // inequality is the same as other types
  x != y
}

pub fn main() -> Nil {
  let x: Bool = true()
  let y: Bool = false()

  println("x: " <> bool.to_string(x))
  println("y: " <> bool.to_string(y) <> "\n")

  let a: Bool = and(x, y)
  let o: Bool = or(x, y)
  let n_x: Bool = not(x)
  let n_y: Bool = not(y)
  let xo: Bool = xor(x, y)
  let t_x: Bool = tautology(x)
  let c_y: Bool = contradiction(y)
  let e_xy: Bool = equality(x, y)
  let e_xx: Bool = equality(x, x)
  let ne_xy: Bool = not_equality(x, y)
  let ne_xx: Bool = not_equality(x, x)

  println("x && y: " <> bool.to_string(a))
  println("x || y: " <> bool.to_string(o))
  println("!x: " <> bool.to_string(n_x))
  println("!y: " <> bool.to_string(n_y))
  println("x xor y: " <> bool.to_string(xo))
  println("x || True: " <> bool.to_string(t_x))
  println("y && False: " <> bool.to_string(c_y))
  println("x == y: " <> bool.to_string(e_xy))
  println("x == x: " <> bool.to_string(e_xx))
  println("x != y: " <> bool.to_string(ne_xy))
  println("x != x: " <> bool.to_string(ne_xx) <> "\n")
}
