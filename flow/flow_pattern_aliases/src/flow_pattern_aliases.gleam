// import gleam/io

pub fn main() {
  echo get_first_non_empty([[], [1, 2, 3], [4, 5]])
  echo get_first_non_empty([[1, 2], [3, 4, 5], []])
  echo get_first_non_empty([[], [], [1, 2, 3, 4, 5]])
  echo get_first_non_empty([[], [], []])
}

/// this function returns the first non-empty list in the passed list of lists.
fn get_first_non_empty(lists: List(List(t))) -> List(t) {
  case lists {
    // the "as" operator can be used to assign sub patterns to variables...
    // the pattern "[_, ..] as first" will match to any non-empty list and assign that list to the variable "first"
    [[_, ..] as first, ..] -> first

    // if this case is reached, the previous list was empty, so recurse on the rest of the list of lists
    [_, ..rest] -> get_first_non_empty(rest)

    // if the list is empty (none of the lists in the list of lists were non-empty), then stop
    [] -> []
  }
}
