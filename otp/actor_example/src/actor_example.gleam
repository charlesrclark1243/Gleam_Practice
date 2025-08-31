// import gleam/io
import actor_example/internal
import gleam/erlang/process
import gleam/otp/actor

pub fn main() {
  // io.println("Hello from actor_example!")

  // start the actor with initial state of an empty list, and the "handle_message" callback function (see actor_example/internal).
  // We'll assert it starts correctly.
  //
  // In real-world Gleam OTP projects, we'd likely write wrapper functions called start, push, pop, and shutdown to start and 
  // interact with the Actor. We're not doing that here for the sake of showing how the Actor API works.
  let assert Ok(actor) =
    actor.new([]) |> actor.on_message(internal.handle_message) |> actor.start
  let subject = actor.data

  // we can send a message to the actor to push elements onto the stack.
  process.send(subject, internal.Push("Charlie"))
  process.send(subject, internal.Push("John"))
  process.send(subject, internal.Push("Zach"))

  // the Push message expects no response; they're sent purely for the side effect of mutating the Actor's state.
  //
  // We can also send the Pop message to take a value off the Actor's stack. This message excpects a response,
  // so we use "process.call" to send a message and wait for a reply until it's received.
  //
  // In this instance, we're giving the Actor 10 ms to reply; if the "call" function doesn't get a reply within this
  // amount of time, it will panic and crash the client process.
  let assert Ok("Zach") = process.call(subject, 10, internal.Pop)
  let assert Ok("John") = process.call(subject, 10, internal.Pop)
  let assert Ok("Charlie") = process.call(subject, 10, internal.Pop)

  // the stack is now empty, so if we pop again the Actor replies with an error.
  let assert Error(Nil) = process.call(subject, 10, internal.Pop)

  // lastly, we send a message shutdown the Actor.
  process.send(subject, internal.Shutdown)
}
