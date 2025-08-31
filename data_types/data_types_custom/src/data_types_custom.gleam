//// Gleam does have built-in data types like Int and String, however custom types allow the creatiomn of entirely new types!
//// 
//// A custom type is defined with the "type" keyword followed by the name of the type and a constructor for each variant of the type.
//// Both the type name and the names of the constructors start with uppercase letters.
//// 
//// Custom type variants can be pattern matched using case expressions as well!

// import gleam/io

pub type Season {
  Spring
  Summer
  Fall
  Winter
}

pub fn main() {
  // io.println("Hello from data_types_custom!")

  echo weather(Spring)
  echo weather(Summer)
  echo weather(Fall)
  echo weather(Winter)
}

fn weather(season: Season) -> String {
  case season {
    Spring -> "Hot"
    Summer -> "Hot and rainy"
    Fall -> "Hot"
    Winter -> "Slightly less hot"
  }
}
