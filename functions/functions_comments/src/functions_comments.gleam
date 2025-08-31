//// This is a comment for the whole file/module
//// It can span multiple lines

/// This is a comment for a type whose value can never be constructed
/// It can also span multiple lines
pub type Never {
  Never(Never)
}

/// This is a function which calls another function twice with an inital value
/// This comment can also span multiple lines
pub fn twice(arg: value, f: fn(value) -> value) -> value {
  f(f(arg))
}

/// This is a function which calls another function three times with an initial value
/// This comment can also span multiple lines
pub fn thrice(arg: value, f: fn(value) -> value) -> value {
  f(f(f(arg)))
}
// because there is no main function, this file cannot be run!
