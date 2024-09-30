(** Copyright 2021-2024, Ksenia Kotelnikova, Gleb Nasretdinov *)

(** SPDX-License-Identifier: LGPL-3.0-or-later *)
 
  $ ../bin/exec.exe
  | Let a =
  --| Const(10.000000)
  | Function(factorial):
    ARGS
  ----| Variable(n)
    BODY
  ----| If Then Else(
      CONDITION
  ------| Binary expr(
  ------| Logical Or
  --------| Binary expr(
  --------| Binary Equal
  ----------| Variable(n)
  ----------| Const(0.000000)
  --------| Binary expr(
  --------| Binary Equal
  ----------| Variable(n)
  ----------| Const(1.000000)
        THEN BRANCH
  --------| Const(1.000000)
        ELSE BRANCH
  --------| Binary expr(
  --------| Binary Multiply
  ----------| Variable(n)
  ----------| Function Call(factorial):
  ------------| Binary expr(
  ------------| Binary Minus
  --------------| Variable(n)
  --------------| Const(1.000000)
  | Function Call(factorial):
  --| Variable(a)
 
