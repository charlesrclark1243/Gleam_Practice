import gleam/erlang/process.{type Subject}
import gleam/otp/actor

pub fn main() {
  // start an actor...
  let assert Ok(actor) =
    actor.new(0)
    |> actor.on_message(handle_message)
    |> actor.start

  // send some messages to the actor...
  actor.send(actor.data, Add(5))
  actor.send(actor.data, Add(3))

  // send a message and get a reply...
  assert actor.call(actor.data, waiting: 10, sending: Get) == 8
}

pub fn handle_message(state: Int, message: Message) {
  // case expression on message type...
  case message {
    Add(integer) -> {
      let state: Int = state + integer
      actor.continue(state)
    }
    Get(reply) -> {
      actor.send(reply, state)
      actor.continue(state)
    }
  }
}

pub type Message {
  Add(Int)
  Get(Subject(Int))
}
