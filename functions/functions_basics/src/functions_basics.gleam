// import gleam/io

// these are private functions (no pub keyword): can only be used within this module
// they also have type annotations
fn multiply(x: Int, y: Int) -> Int {
  x * y
}

fn double(x: Int) -> Int {
  multiply(x, 2)
}

// this is a public function (with pub keyword): can be used outside this module
// it has no type annotations: they are inferred
pub fn main() {
  echo double(5)
}
