//// Gleam lacks exceptions, macros, type classes, early returns, and many other features. This makes Gleam easier to understand,
//// but it can also result in excessive indentation.
//// 
//// Gleam's "use" expression is for calling functions that take a callback as an argument without increasing code indentation.
//// All the code below the "use" becomes an anonyomous function that is passed as a final argument to the function at the right
//// side of the "<-", and the assigned variables become arugments to the anonymous function.
//// 
//// To ensure your "use" code works and is understandable, the right side ideally should be a regular function rather than a more
//// complex expression, which would be more difficult to read.
//// 
//// Excessive application of "use" may also result in unclear code; usually regular function call syntax results in more understandable code!

import gleam/result

pub fn main() {
  // io.println("Hello from advanced_use!")

  let _ = echo without_use()
  let _ = echo with_use()
}

/// this doesn't use the "use" expression
pub fn without_use() -> Result(String, Nil) {
  // this tries to allow password enter (if second arg function fails, i.e., username is wrong, it will not)
  result.try(get_username(), fn(username: String) {
    // this tries to login (if the second arg function fails, it will not)
    result.try(get_password(), fn(password: String) {
      // this changes the greeting in the login function's Ok result. 
      result.map(login(username, password), fn(greeting: String) {
        greeting <> ", " <> username
      })
    })
  })
}

/// this does use the "use" expression.
pub fn with_use() -> Result(String, Nil) {
  // this tries to allow password enter (if second arg function fails, i.e., username is wrong, it will not)
  use username <- result.try(get_username())
  echo username

  // this tries to login (if the second arg function fails, it will not)
  use password <- result.try(get_password())
  echo password

  // this changes the greeting in the login function's Ok result.
  use greeting <- result.map(login(username, password))
  echo greeting
  greeting <> ", " <> username
}

fn get_username() -> Result(String, Nil) {
  Ok("Charlie")
}

fn get_password() -> Result(String, Nil) {
  Ok("secret123")
}

fn login(_username: String, _password: String) -> Result(String, Nil) {
  Ok("Welcome!")
}
