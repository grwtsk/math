import Lake
open Lake DSL

package «fcrs» where
  version := v!"0.4.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @
  "905b95818eb32af7874a58b427f50c1711a5e96c"

@[default_target]
lean_lib FCRS
