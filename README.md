# An interpeter for a subset of F# with Active Patterns

This is a homework for a functional programming course.

## Language features done

- Standard data types:
  - bool
  - int
  - string
  - unit
  - list
  - option
- Standard binary and unary operators
- Recursive functions
  - First-class functions with partial application and mutual recursion
  - Closures
  - Carrying
- Anonymous functions
- Nested let bingings
- Standard function for integer printing
- Pattern matching
- Active Patterns
- Explicit type annotations

## Implementation components

- AST
- Parser
- Type inferencer / checker
- Interpreter

There is also implemented:

- REPL
- Property-based testing: parser ∘ prettyPrinter ≡ id (parser and prettyPrinter composition produce the same AST) with [qcheck](https://github.com/c-cube/qcheck)

## Quick start

### Opam

1. Install [opam](https://opam.ocaml.org/)

2. Install dependencies

```bash
    opam init --bare
    opam update
    opam switch create Fsharp --packages=ocaml-variants.4.14.2+options,ocaml-option-flambda --yes
    make deps
```

Opam will suggest you to update your bash (zsh) configuration to automatically set up the environment.

3. Run interpeter with

```bash
dune exec repl
```

And type

```fsharp
let (|Big|Small|) input = if input > 10 then Big(input) else Small(input);;
# val |Big|Small| : int -> Choice<Big (int), Small (int)> = <fun>

let f g x = match x with
| Big(x) -> Some(g x)
| _ -> None;;
# val f : (int -> '9) -> int -> '9 option = <fun>

let carried_f = f (fun x -> x * 2);;
# val carried_f : int -> int option = <fun>

carried_f 20;;
# val - : int option = Some 40

carried_f 5;;
# val - : int option = None
```

Or from file (file must not contain `;;` separator) with

```bash
dune exec repl -from input.fs
```

## Authors

- [Ksenia Kotelnikova](https://github.com/p1onerka)
- [Gleb Nasretdinov](https://github.com/Ycyken)
