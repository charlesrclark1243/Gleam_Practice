// import gleam/io

pub fn main() {
  // io.println("Hello from functions_anonymous!")

  // this is an anonymous (lambda) function
  let add_one: fn(Int) -> Int = fn(x: Int) -> Int { x + 1 }
  echo twice(5, add_one)

  // anonymous functions can also be passed as arguments directly
  echo twice(5, fn(x: Int) -> Int { x * 2 })

  let secret_number = 42

  // anonymous functions can also reference variables in the scope they are defined in (this makes them closures)
  let secret: fn() -> Int = fn() -> Int { secret_number }
  echo secret()
}

fn twice(arg: Int, f: fn(Int) -> Int) -> Int {
  f(f(arg))
}
