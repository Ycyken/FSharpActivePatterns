  $ ../bin/REPL.exe -fromfile manytests/do_not_type/001.fs
  Error occured: Undefined variable 'fac'
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/002if.fs
  Error occured: unification failed on int and bool
  
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/003occurs.fs
  Error occured: Occurs check failed
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/004let_poly.fs
  Error occured: unification failed on bool and int
  
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/005.fs
  Error occured: unification failed on string and int
  
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/015tuples.fs
  Error occured: Only variables are allowed as left-hand side of `let rec'
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/016tuples_mismatch.fs
  Error occured: unification failed on '0 * '1 and int * int * int
  
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/097fun_vs_list.fs
  Error occured: unification failed on '1 list and '0 -> '0
  
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/097fun_vs_unit.fs
  Error occured: unification failed on unit and '0 -> '0
  
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/098rec_int.fs
  Error occured: Unbound variable : x
  
  $ ../bin/REPL.exe -fromfile manytests/do_not_type/099.fs
  Error occured: Only variables are allowed as left-hand side of `let rec'
  $ ../bin/REPL.exe -fromfile manytests/typed/001fac.fs
  24
  val fac : int -> int = <fun> 
  val main : int = 0 
  $ ../bin/REPL.exe -fromfile manytests/typed/002fac.fs
  24
  val fac_cps : int -> (int -> '7) -> '7 = <fun> 
  val main : int = 0 
  $ ../bin/REPL.exe -fromfile manytests/typed/003fib.fs
  3
  3
  val fib : int -> int = <fun> 
  val fib_acc : int -> int -> int -> int = <fun> 
  val main : int = 0 
  $ ../bin/REPL.exe -fromfile manytests/typed/004manyargs.fs
  1111111111
  1
  10
  100
  val main : int = 0 
  val test10 : int -> int -> int -> int -> int -> int -> int -> int -> int -> int -> int = <fun> 
  val test3 : int -> int -> int -> int = <fun> 
  val wrap : '0 -> '0 = <fun> 
  $ ../bin/REPL.exe -fromfile manytests/typed/005fix.fs
  720
  val fac : (int -> int) -> int -> int = <fun> 
  val fix : (('1 -> '5) -> '1 -> '5) -> '1 -> '5 = <fun> 
  val main : int = 0 
  $ ../bin/REPL.exe -fromfile manytests/typed/006partial.fs
  1122
  val foo : int -> int = <fun> 
  val main : int = 0 
  $ ../bin/REPL.exe -fromfile manytests/typed/006partial2.fs
  1
  2
  3
  7
  val foo : int -> int -> int -> int = <fun> 
  val main : int = 0 
  $ ../bin/REPL.exe -fromfile manytests/typed/006partial3.fs
  4
  8
  9
  val foo : int -> int -> int -> unit = <fun> 
  val main : int = 0 
  $ ../bin/REPL.exe -fromfile manytests/typed/007order.fs
  1
  2
  4
  -1
  103
  -555555
  10000
  val _start : unit -> unit -> int -> unit -> int -> int -> unit -> int -> int -> int = <fun> 
  val main : unit = () 
  $ ../bin/REPL.exe -fromfile manytests/typed/008ascription.fs
  8
  val addi : ('0 -> bool -> int) -> ('0 -> bool) -> '0 -> int = <fun> 
  val main : int = 0 
  $ ../bin/REPL.exe -fromfile manytests/typed/009let_poly.fs
  val temp : int * bool = (1 , true ) 
  $ ../bin/REPL.exe -fromfile manytests/typed/010sukharev.fs
  val _1 : int -> int -> int * '1 -> bool = <fun> 
  val _2 : int = 1 
  val _3 : (int * string) option = Some (1 , "hi" )  
  val _4 : int -> '14 = <fun> 
  val _42 : int -> bool = <fun> 
  val _5 : int = 42 
  val _6 : '30 option -> '30 = <fun> 
  val id1 : '44 -> '44 = <fun> 
  val id2 : '45 -> '45 = <fun> 
  val int_of_option : int option -> int = <fun> 
  $ ../bin/REPL.exe -fromfile manytests/typed/015tuples.fs
  1
  1
  1
  1
  val feven : '33 * (int -> int) -> int -> int = <fun> 
  val fix : (('1 -> '5) -> '1 -> '5) -> '1 -> '5 = <fun> 
  val fixpoly : (('21 -> '25) * ('21 -> '25) -> '21 -> '25) * (('21 -> '25) * ('21 -> '25) -> '21 -> '25) -> ('21 -> '25) * ('21 -> '25) = <fun> 
  val fodd : (int -> int) * '41 -> int -> int = <fun> 
  val main : int = 0 
  val map : ('9 -> '11) -> '9 * '9 -> '11 * '11 = <fun> 
  val meven : int -> int = <fun> 
  val modd : int -> int = <fun> 
  val tie : (int -> int) * (int -> int) = (<fun> , <fun> ) 
  $ ../bin/REPL.exe -fromfile manytests/typed/016lists.fs
  1
  2
  3
  8
  val append : '67 list -> '67 list -> '67 list = <fun> 
  val cartesian : '98 list -> '105 list -> '98 * '105 list = <fun> 
  val concat : '81 list list -> '81 list = <fun> 
  val iter : ('87 -> unit) -> '87 list -> unit = <fun> 
  val length : '3 list -> int = <fun> 
  val length_tail : '18 list -> int = <fun> 
  val main : int = 0 
  val map : ('25 -> '56) -> '25 list -> '56 list = <fun> 
