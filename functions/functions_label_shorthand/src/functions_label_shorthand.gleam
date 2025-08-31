// import gleam/io

pub fn main() {
  // io.println("Hello from functions_label_shorthand!")

  // if local variables have the same name as the labels, variables names can be omitted when calling the function (shorthand syntax)
  let quantity: Float = 5.0
  let unit_price: Float = 10.0
  let discount: Float = 0.1

  echo calculate_total_cost(quantity:, unit_price:, discount:)
}

fn calculate_total_cost(
  quantity quantity: Float,
  unit_price price: Float,
  discount discount: Float,
) -> Float {
  let subtotal: Float = quantity *. price
  let discount: Float = subtotal *. discount

  subtotal -. discount
}
