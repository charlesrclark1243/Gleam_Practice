//// When a function is called, a new stack frame is created to hold the function's args and local variables.
//// If lots of these frames are created during recursion, the program can run out of memory and crash.
//// Tail call optimization is a technique that reuses the current function's stack frame for a function
//// call that is the last action in the function. 
//// 
//// Unoptimized recursive functions can be transformed into tail-recursive functions by adding an accumulator argument
//// that holds the result of the computation so far. This is similar to while loops in other languages.
//// 
//// Accumulators should be hidden from the code's users as internal implementation details. To do this, write a function
//// that calls a recursive private function with the initial accumulator value.

// import gleam/io

pub fn main() {
  // io.println("Hello from flow_tail_calls!")
  echo factorial(5)
  echo factorial(25)
}

pub fn factorial(n: Int) -> Int {
  // the public function calls the provate tail recursive function
  factorial_loop(n, 1)
}

fn factorial_loop(i: Int, accumulator: Int) -> Int {
  case i {
    0 -> accumulator
    1 -> accumulator

    // The last thing this function does is call itself.
    // Our definition in the previous implementation multiplied two numbers as its last step.
    _ -> factorial_loop(i - 1, accumulator * i)
  }
}
