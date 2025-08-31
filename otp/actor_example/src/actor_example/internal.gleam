//// This is the code defining the actor used in this example.

import gleam/erlang/process.{type Subject}
import gleam/otp/actor

// the first step of implementing the stack (or any) Actor is to define the message type that it can receive.
//
// The type of the elements in the stack is not fixed, so a type parameter is used for it,
// instead of a concrete type like Int or String.
pub type Message(element) {
  // The Shutdown message is used to tell the actor to stop.
  // It's the simplest message type, as it contains no data.
  //
  // Most of the time, we don't define an API to shutdown an actor, but we do here
  // to show how it can be done.
  Shutdown

  // The Push message is used to add an element to the stack.
  // It contains the item to add, the type of which is the "element" parameterized type.
  Push(push: element)

  // The Pop message is used to remove an element from the stack.
  // It contains a Subject, which is used to send the response back to the sender.
  // In this case, the reply is of type Result(element, Nil)
  Pop(reply: Subject(Result(element, Nil)))
}

// the last part is to implement the handle_message callback function.
//
// This function is called by the Actor for each message it receives.
// Actors are single-threaded, only doing one thing at a time, so they handle
// messages sequentially one-at-a-time, in the order they're received.
//
// The function takes the current state and a message, and returns a data structure that
// indicates what to do next, along with a new state.
pub fn handle_message(
  stack: List(element),
  message: Message(element),
) -> actor.Next(List(element), Message(element)) {
  case message {
    // for the Shutdown message, we return the actor.stop value, which causes the actor to discard
    // any remaining messages and stop.
    // We may choose to do some clean-up work here, but this actor doesn't need to do this.
    Shutdown -> actor.stop()

    // for the Push message, we add the new element to the stack and return actor.continue with this new
    // stack, causing the actor to process any queued messages or wait for more.
    Push(value) -> {
      let new_state: List(element) = [value, ..stack]
      actor.continue(new_state)
    }

    // for the Pop message, we attempt to remove an element from the stack,
    // sending it or an error back to the caller, before continuing.
    Pop(client) -> {
      case stack {
        [] -> {
          // when the stack is emtpy, we can't pop an element, so send an error back.
          process.send(client, Error(Nil))
          actor.continue([])
        }

        [first, ..rest] -> {
          // otherwise, we send the first element back to the client and use the remaining
          // elements as the new state.
          process.send(client, Ok(first))
          actor.continue(rest)
        }
      }
    }
  }
}
