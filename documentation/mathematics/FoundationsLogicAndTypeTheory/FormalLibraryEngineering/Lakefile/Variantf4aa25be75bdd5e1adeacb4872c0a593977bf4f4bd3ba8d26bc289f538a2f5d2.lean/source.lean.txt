import Lake
open Lake DSL

package «cord-single-entry» where
  version := v!"1.0.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib CordTheory

lean_exe cordTheoryCheck where
  root := `Main
