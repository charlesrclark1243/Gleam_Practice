//// It's possible to pattern match on a record, as this allows for extraction of multiple field values from a record into distinct variables,
//// similar to matching on a tuple or a list.
//// 
//// The "let" keyword can only match on single variant custom types, or when the variant is known, such as after pattern matching with
//// a case expression.
//// 
//// It is possible to use the underscore "_" or a spread syntax ".." to discard fields not required.

import gleam/io

pub type Fish {
  Starfish(name: String, favorite_color: String)
  Sponge(name: String, is_ready: Bool)
}

pub type IceCream {
  IceCream(flavor: String)
}

pub fn main() -> Nil {
  // io.println("Hello from data_types_record_pattern!")

  handle_fish(Starfish("Patrick", "pink"))
  handle_fish(Sponge("SpongeBob", True))
  handle_fish(Sponge("SpunchBlob", False))

  handle_ice_cream(IceCream("Maple Walnut"))
}

fn handle_fish(fish: Fish) -> Nil {
  case fish {
    Starfish(name, ..) -> io.println("\"No this is " <> name <> "!\"")
    Sponge(_, is_ready) if is_ready -> io.println("\"I'm ready!\"")
    _ -> io.println("\"Barnacles!\"")
  }
}

fn handle_ice_cream(ice_cream: IceCream) -> Nil {
  // if the custom type has a single variant you can
  // destructure it using "let" instead of a case expression!
  let IceCream(flavor) = ice_cream
  io.println("Ice cream is " <> flavor <> "Flavor!")
}
