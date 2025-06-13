(** Copyright 2024-2025, Ksenia Kotelnikova <xeniia.ka@gmail.com>, Gleb Nasretdinov <gleb.nasretdinov@proton.me> *)

(** SPDX-License-Identifier: LGPL-3.0-or-later *)

open Ast
open TypedTree
open Format

module TypeEnv : sig
  type t

  val default : t
  val extend : t -> string -> scheme -> t
  val remove : t -> string -> t
  val iteri : t -> f:(name:string -> typ:typ -> unit) -> unit
end

type error =
  [ `Occurs_check
  | `Undef_var of string
  | `Unification_failed of typ * typ
  | `Not_allowed_right_hand_side_let_rec
  | `Not_allowed_left_hand_side_let_rec
  | `Args_after_not_variable_let
  | `Bound_several_times
  | `Active_pattern_are_not_determined_by_input
  ]

val pp_error : formatter -> error -> unit

val infer
  :  construction
  -> TypeEnv.t
  -> int
  -> int
     * ( TypeEnv.t * (string, typ, Base.String.comparator_witness) Base.Map.t
         , error )
         result
