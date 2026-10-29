import Lake
open Lake DSL

set_option autoImplicit false

package «finite-witness-residue» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.30.0"

@[default_target]
lean_lib Think where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/a94ce7c66063deb0cc6d98a0a248c5e787f9336973280de2d038c65b75034e5e"
