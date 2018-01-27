# OCaml Erlang

```sh
# Dump OCaml Lambda IR
ocamlc -dlambda thing.ml
```

```erlang
% Dump Core Erlang IR to file
compile:file("thing.erl", [to_core]).

% Compile core Erlang from file
compile:file("hand_written_core_mod.core", [from_core]).
```

```erlang
% Dump Erlang AST to file
compile:file("thing.erl", [dpp]).

% Compile Erlang AST from file
File = "hand_written_pp_mod.pp".
{ok, Mod, Forms} = file:consult(File).
code:load_binary(Mod, File, Forms).
```

## Notes

- [BEAM Book compiler chapter](https://github.com/happi/theBeamBook/blob/master/chapters/compiler.asciidoc)
- [Erlang compile API docs](http://erlang.org/doc/man/compile.html#file-2)
- [Bucklescript compiler arch docs](https://bucklescript.github.io/docs/en/compiler-architecture-principles.html)
- [On Bucklescript's bool](https://github.com/BuckleScript/bucklescript/issues/590<Paste>)
- [Prior art](https://github.com/danabr/merkel)
- [OCaml test API that looks nice. What is this?](https://github.com/BuckleScript/bucklescript/blob/master/CONTRIBUTING.md#contributing-to-the-runtime)
