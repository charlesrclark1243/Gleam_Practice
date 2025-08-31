import gleam/dict

pub fn main() {
  // io.println("Hello from std_lib_dict!")

  // new and from_list can be used to create new dicts.
  let scores: dict.Dict(String, Int) =
    dict.from_list([#("Lucy", 13), #("Drew", 15)])
  echo scores

  // insert and delete can be used to add or remove items.
  // dicts are immutable: if it appears that items in a dict are in a certain order, it's incidental and should not
  // be relied on. Any ordering may change without warning in future versions or different runtimes!
  let _ =
    scores
    |> dict.insert("Alice", 16)
    |> dict.insert("Daren", 14)
    |> dict.delete("Drew")
    |> echo
}
