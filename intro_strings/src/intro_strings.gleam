import gleam/io
import gleam/string

pub fn main() -> Nil {
  io.println("Welcome to \"Gleam\"!\n")
  io.println(
    "Multiple
    lines
    of text",
  )

  io.println("\u{1F600} is the Unicode code point for 😀")
  io.println("This is a concatenated " <> "string.")

  io.println("This string is reversed: " <> string.reverse("I'm reversed!"))
  io.println(string.append("This string has ", "two parts."))

  io.println(string.capitalise("capitalise me!"))
  io.println(string.uppercase("uppercase me!"))
  io.println(string.lowercase("LOWERCASE ME!"))
}
