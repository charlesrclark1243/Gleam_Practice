//// Lists are good if we want a collection of a single type, but sometimes we want to combine multiple values of different types.
//// In this case, tuples are a quick and convenient option.
//// 
//// The tuple access syntax can be used to get elements from a tuple without pattern matching:
//// some_tuple.0 gets the first element, some_tuple.1 gets the second, etc.
//// 
//// Tuples are generic types, they have parameters for the types they contain. #(1, "Hi!") has the type #(Int, String),
//// and #(1.4, 10, 48) has type #(Float, Int, Int).
//// 
//// Tuples are most commonly used to return 2 or 3 values from a function. Often, it's clearer to use a custom type 
//// where a tuple could be used (see custom types file).

// import gleam/io

pub fn main() {
  // io.println("Hello from data_types_tuples!")

  // apparently tuples can also be type annotated.
  let triple: #(Int, Float, String) = #(1, 2.2, "three")
  echo triple

  let #(a, _, _): #(Int, Float, String) = triple
  echo a
  echo triple.1
}
