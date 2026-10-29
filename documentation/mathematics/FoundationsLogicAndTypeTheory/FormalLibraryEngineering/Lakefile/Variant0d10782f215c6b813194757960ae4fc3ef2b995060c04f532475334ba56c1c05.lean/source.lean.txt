import Lake
open Lake DSL

package «fcrs» where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/b3ddd611d465662ed40e5893fa44096f41f3d606cf3d0b93394866da90e1726b/src"
  version := v!"0.4.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @
  "905b95818eb32af7874a58b427f50c1711a5e96c"

@[default_target]
lean_lib FCRS where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/b3ddd611d465662ed40e5893fa44096f41f3d606cf3d0b93394866da90e1726b/src"
