import Lake
open Lake DSL

package «cord-single-entry» where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c0ec7c2505f92490eca644efd77434885e47cabe78ddf343dcf9d8e4ae6c20b7/src"
  version := v!"1.0.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib CordTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c0ec7c2505f92490eca644efd77434885e47cabe78ddf343dcf9d8e4ae6c20b7/src"

lean_exe cordTheoryCheck where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c0ec7c2505f92490eca644efd77434885e47cabe78ddf343dcf9d8e4ae6c20b7/src"
  root := `Main
