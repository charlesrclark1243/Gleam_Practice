import gleam/bool
import gleam/float
import gleam/io

pub fn add(x: Float, y: Float) -> Float {
  x +. y
}

pub fn subtract(x: Float, y: Float) -> Float {
  x -. y
}

pub fn multiply(x: Float, y: Float) -> Float {
  x *. y
}

pub fn divide(x: Float, y: Float) -> Float {
  x /. y
}

pub fn lt(x: Float, y: Float) -> Bool {
  x <. y
}

pub fn gt(x: Float, y: Float) -> Bool {
  x >. y
}

pub fn et(x: Float, y: Float) -> Bool {
  x == y
  // equality works the same as other types
}

pub fn ltet(x: Float, y: Float) -> Bool {
  x <=. y
}

pub fn gtet(x: Float, y: Float) -> Bool {
  x >=. y
}

pub fn divide_by_zero(x: Float) -> Float {
  x /. 0.0
  // not an error, results in 0.0
}

pub fn max(x: Float, y: Float) -> Float {
  float.max(x, y)
}

pub fn min(x: Float, y: Float) -> Float {
  float.min(x, y)
}

pub fn ceil(x: Float) -> Float {
  float.ceiling(x)
}

pub fn floor(x: Float) -> Float {
  float.floor(x)
}

pub fn main() -> Nil {
  let x: Float = 1.5
  let y: Float = 2.25

  io.println("x: " <> float.to_string(x))
  io.println("y: " <> float.to_string(y) <> "\n")

  let a: Float = add(x, y)
  let s: Float = subtract(x, y)
  let m: Float = multiply(x, y)
  let d: Float = divide(x, y)

  io.println("x + y = " <> float.to_string(a))
  io.println("x - y = " <> float.to_string(s))
  io.println("x * y = " <> float.to_string(m))
  io.println("x / y = " <> float.to_string(d) <> "\n")

  let x_lt_y: Bool = lt(x, y)
  let x_gt_y: Bool = gt(x, y)
  let x_et_y: Bool = et(x, y)
  let x_ltet_y: Bool = ltet(x, y)
  let x_gtet_y: Bool = gtet(x, y)
  let x_et_x: Bool = et(x, x)
  let y_gtet_y: Bool = gtet(y, y)

  io.println("x < y: " <> bool.to_string(x_lt_y))
  io.println("x > y: " <> bool.to_string(x_gt_y))
  io.println("x == y: " <> bool.to_string(x_et_y))
  io.println("x <= y: " <> bool.to_string(x_ltet_y))
  io.println("x >= y: " <> bool.to_string(x_gtet_y))
  io.println("x == x: " <> bool.to_string(x_et_x))
  io.println("y >= y: " <> bool.to_string(y_gtet_y) <> "\n")

  let div_by_0: Float = divide_by_zero(x)
  io.println("x / 0 = " <> float.to_string(div_by_0) <> "\n")

  let max_xy: Float = max(x, y)
  let min_xy: Float = min(x, y)

  io.println("max(x, y) = " <> float.to_string(max_xy))
  io.println("min(x, y) = " <> float.to_string(min_xy) <> "\n")

  let x_ceil: Float = ceil(x)
  let y_ceil: Float = ceil(y)
  let x_floor: Float = floor(x)
  let y_floor: Float = floor(y)

  io.println("ceil(x) = " <> float.to_string(x_ceil))
  io.println("ceil(y) = " <> float.to_string(y_ceil))
  io.println("floor(x) = " <> float.to_string(x_floor))
  io.println("floor(y) = " <> float.to_string(y_floor))
}
