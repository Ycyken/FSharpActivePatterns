(lang dune 3.7)

(generate_opam_files true)

(cram enable)

(license LGPL-3.0-or-later)

(authors "Ksenia Kotelnikova, Gleb Nasretdinov")

(maintainers "Ksenia Kotelnikova, Gleb Nasretdinov")

(bug_reports "https://github.com/Ycyken/FSharpActivePatterns")

(homepage "https://github.com/Ycyken/FSharpActivePatterns")

(package
 (name FSharpActivePatterns)
 (synopsis "An interpreter for F# with active patterns")
 (description
  "An interpreter for F# with supported active patterns feature (mb fix later)")
 (documentation
  "FIX LATER https://kakadu.github.io/FSharpActivePatterns/docs/Lambda")
 (version 0.1)
 (depends
  dune
  qcheck-core
  angstrom
  (ppx_inline_test :with-test)
  ppx_expect
  ppx_deriving
  ppx_deriving_qcheck
  bisect_ppx
  (odoc :with-doc)
  (ocamlformat :build)))
