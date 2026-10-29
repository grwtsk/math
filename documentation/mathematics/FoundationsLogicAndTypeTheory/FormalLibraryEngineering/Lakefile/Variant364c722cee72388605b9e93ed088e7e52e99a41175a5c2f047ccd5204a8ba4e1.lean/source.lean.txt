import Lake
open Lake DSL

package SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c574b965c41401ca706fb3e9d56d3851501267430e3243b474a2566f5e1b1d9e/src"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.3.0"

@[default_target]
lean_lib SpectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c574b965c41401ca706fb3e9d56d3851501267430e3243b474a2566f5e1b1d9e/src"

lean_exe spectralProof where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/c574b965c41401ca706fb3e9d56d3851501267430e3243b474a2566f5e1b1d9e/src"
  root := `SpectralProof.Main
