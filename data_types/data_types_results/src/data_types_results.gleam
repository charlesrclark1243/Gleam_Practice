//// Gleam doesn't use exceptions, instead computations that can either succeed or fail return a built-in Result(value, error) type. 
//// It has 2 variants:
//// - Ok, which contains the return value of a successful computation.
//// - Error, which contains the reason for a failed computation.
//// 
//// The type is generic with two type params: one for the success value, and one for the error. 
//// With these, the result can hold any type for success or failure.
//// 
//// Commonly, a Gleam library or program will define a custom type with a variant for each possible problem that can arise, along with any
//// error information that would be useful to the programmer.
//// 
//// This is advantageous over exceptions as you can immediately see what if any errors a function can return, and the compiler will ensure
//// they are handled. No nasty surprises with unexpected exceptions!
//// 
//// A result value can be handled by pattern matching with a case expression, but given how frequently results are returned, this can become
//// unwieldy. Gleam code commonly uses the gleam/result standard library module and "use" expressions when working with results, both of which 
//// are covered later on.

import gleam/int

pub fn main() {
  // io.println("Hello from data_types_results!")
  let _ = echo buy_pastry(10)
  let _ = echo buy_pastry(8)
  let _ = echo buy_pastry(5)
  let _ = echo buy_pastry(3)
}

pub type PurchaseError {
  NotEnoughMoney(required: Int)
  NotLuckyEnough
}

fn buy_pastry(money: Int) -> Result(Int, PurchaseError) {
  case money >= 5 {
    True ->
      case int.random(4) == 0 {
        True -> Error(NotLuckyEnough)
        False -> Ok(money - 5)
      }
    False -> Error(NotEnoughMoney(required: 5))
  }
}
