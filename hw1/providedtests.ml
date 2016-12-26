open Assert
open Hellocaml

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let provided_tests : suite = [
  Test ("Student-Provided Tests For Problem 1-3", [
      ("case1", assert_eqf (fun () -> 42) prob3_ans );
      ("case2", assert_eqf (fun () -> 42 - 17) (prob3_case2 17) );
      ("case3", assert_eqf (fun () -> prob3_case3) (32 + 32));
    ]);
  
  Test ("Student-Provided Tests for Problem 4-4", [
      ("optimize1", assert_eqf (fun () -> optimize (Mult(Var "x", Const 0l))) (Const 0l));
      ("optimize2", assert_eqf (fun () -> optimize (Neg (Const 0l))) (Const 0l));
      ("optimize3", assert_eqf (fun () -> optimize (Mult(Const 1l, Neg (Const 0l)))) (Const 0l));
      ("optimize4", assert_eqf (fun () -> optimize (Mult(Const 1l, Neg (Const 1l)))) (Neg (Const 1l)));
      ("optimize5", assert_eqf (fun () -> optimize (Mult(Const 5l, Neg (Const 0l)))) (Const 0l));
      ("optimize6", assert_eqf (fun () -> optimize (Mult(Const 5l, Neg (Const 1l)))) (Neg (Const 5l)));
      ("optimize7", assert_eqf (fun () -> optimize (Neg (Neg (Const 1l)))) (Const 1l));
      ("optimize8", assert_eqf (fun () -> optimize (Mult(Const 1l, Var "x"))) (Var "x"));
    ]);

  Test ("Student-Provided Tests for Problem 5", [
      ("compile1", assert_eqf (fun () -> compile (Mult(Var "x", Const 0l)) |> run ["x", 3l]) 0l);
      ("compile2", assert_eqf (fun () -> compile (Neg (Const 0l)) |> run []) 0l);
      ("compile3", assert_eqf (fun () -> compile (Mult(Const 1l, Neg (Const 0l))) |> run []) 0l);
      ("compile4", assert_eqf (fun () -> compile (Mult(Const 1l, Neg (Const 1l))) |> run []) (Int32.neg 1l));
      ("compile5", assert_eqf (fun () -> compile (Mult(Const 5l, Neg (Const 0l))) |> run []) 0l);
      ("compile6", assert_eqf (fun () -> compile (Mult(Const 5l, Neg (Const 1l))) |> run []) (Int32.neg 5l));
      ("compile7", assert_eqf (fun () -> compile (Neg (Neg (Const 1l))) |> run []) 1l);
      ("compile8", assert_eqf (fun () -> compile (Mult (Add (Const 3l, Const 8l), (Add (Const 4l, (Neg (Const 9l)))))) |> run []) (Int32.neg 55l));
    ]);

] 
