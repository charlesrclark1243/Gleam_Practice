# Gleam Practice

**Author:** Charlie Clark\
**Institution:** University of Florida\
**Course:** COP5615 (DOSP)\
**Lab:** Boucher Lab

## About

This repo covers base Gleam as well as well as the Gleam OTP library. Made to help myself learn the Gleam language and the Actor model in preparation for COP5615 w/ Prof. Dobra @ UF.

## Command Line Tools

### Project Creation

`gleam new <options...> <dir>` creates a new Gleam project in the directory specified by `<dir>`.\
*Useful Options:*
- `--skip-git`: creates a new project without creating Git files.

### Running Project

`gleam run <args...>` compiles and runs the Gleam code in the current Gleam project. If you want to use command line args, make sure you have the `argv` dependency in your code.

### Testing Project

`gleam test` tests the code in the project.

### Building Project

`gleam build` and `gleam run -m gleescript` compile the project into an escript (this requires `gleam add --dev gleescript` to be run first). You can run the project from the project's root directory using `./<escript_name> <args...>` on Linux/macOS and `escript ./<escript_name> <args...>` on Windows. This escript can run on any computer with a compatible version of Erlang installed.

## References

![The Official Gleam Docs: Everything](https://tour.gleam.run/everything/)
![The Official Gleam Docs: Writing Gleam](https://gleam.run/writing-gleam/)
![The Gleam OTP Docs](https://hexdocs.pm/gleam_otp/index.html)
