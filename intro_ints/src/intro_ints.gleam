import gleam/bool
import gleam/int
import gleam/io

pub fn add(x: Int, y: Int) -> Int {
  x + y
}

pub fn subtract(x: Int, y: Int) -> Int {
  x - y
}

pub fn multiply(x: Int, y: Int) -> Int {
  x * y
}

pub fn divide(x: Int, y: Int) -> Int {
  x / y
}

pub fn lt(x: Int, y: Int) -> Bool {
  x < y
}

pub fn gt(x: Int, y: Int) -> Bool {
  x > y
}

pub fn et(x: Int, y: Int) -> Bool {
  x == y
  // again, equality is the same as other types
}

pub fn ltet(x: Int, y: Int) -> Bool {
  x <= y
}

pub fn gtet(x: Int, y: Int) -> Bool {
  x >= y
}

pub fn divide_by_zero(x: Int) -> Int {
  x / 0
  // returns 0, not an error
}

pub fn max(x: Int, y: Int) -> Int {
  int.max(x, y)
}

pub fn min(x: Int, y: Int) -> Int {
  int.min(x, y)
}

pub fn clamp(x: Int, y: Int, z: Int) -> Int {
  int.clamp(x, y, z)
}

pub fn main() -> Nil {
  let x: Int = 1
  let y: Int = 2
  let z: Int = 3

  let a_xy: Int = add(x, y)
  let s_zy: Int = subtract(z, y)
  let m_xz: Int = multiply(x, z)
  let d_yx: Int = divide(y, x)

  io.println("x: " <> int.to_string(x))
  io.println("y: " <> int.to_string(y))
  io.println("z: " <> int.to_string(z) <> "\n")

  io.println("x + y = " <> int.to_string(a_xy))
  io.println("z - y = " <> int.to_string(s_zy))
  io.println("x * z = " <> int.to_string(m_xz))
  io.println("y / x = " <> int.to_string(d_yx) <> "\n")

  let x_lt_y: Bool = lt(x, y)
  let x_gt_y: Bool = gt(x, y)
  let x_et_y: Bool = et(x, y)
  let x_ltet_y: Bool = ltet(x, y)
  let x_gtet_y: Bool = gtet(x, y)
  let x_et_x: Bool = et(x, x)
  let y_ltet_y: Bool = ltet(y, y)

  io.println("x < y: " <> bool.to_string(x_lt_y))
  io.println("x > y: " <> bool.to_string(x_gt_y))
  io.println("x == y: " <> bool.to_string(x_et_y))
  io.println("x <= y: " <> bool.to_string(x_ltet_y))
  io.println("x >= y: " <> bool.to_string(x_gtet_y))
  io.println("x == x: " <> bool.to_string(x_et_x))
  io.println("y <= y: " <> bool.to_string(y_ltet_y) <> "\n")

  let div_by_0: Int = divide_by_zero(x)
  io.println("x / 0 = " <> int.to_string(div_by_0) <> "\n")

  let max_xy: Int = max(x, y)
  let min_xy: Int = min(x, y)
  let clamp_xyz: Int = clamp(x, y, z)

  io.println("max(x, y) = " <> int.to_string(max_xy))
  io.println("min(x, y) = " <> int.to_string(min_xy))
  io.println("clamp(x, y, z) = " <> int.to_string(clamp_xyz) <> "\n")
}
