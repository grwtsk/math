import Lake

open Lake DSL

def moreServerArgs := #[
  "-Dpp.unicode.fun=true", -- pretty-prints `fun a ↦ b`
  "-DautoImplicit=false",
  "-DrelaxedAutoImplicit=false"
]

-- These settings only apply during `lake build`, but not in VSCode editor.
def moreLeanArgs := moreServerArgs

-- These are additional settings which do not affect the lake hash,
-- so they can be enabled in CI and disabled locally or vice versa.
-- Warning: Do not put any options here that actually change the olean files,
-- or inconsistent behavior may result
def weakLeanArgs :=
  if get_config? CI |>.isSome then
    #["-DwarningAsError=true"]
  else
    #[]

package mathlib where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  moreServerArgs := moreServerArgs

@[default_target]
lean_lib Mathlib where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  moreLeanArgs := moreLeanArgs
  weakLeanArgs := weakLeanArgs

@[default_target]
lean_exe runLinter where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  root := `scripts.runLinter
  supportInterpreter := true

@[default_target]
lean_exe checkYaml where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  root := `scripts.checkYaml
  supportInterpreter := true

meta if get_config? doc = some "on" then -- do not download and build doc-gen4 by default
require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"

require std from git "https://github.com/leanprover/std4" @ "main"
require Qq from git "https://github.com/gebner/quote4" @ "master"
require aesop from git "https://github.com/JLimperg/aesop" @ "master"
require Cli from git "https://github.com/mhuisi/lean4-cli.git" @ "nightly"
require proofwidgets from git "https://github.com/EdAyers/ProofWidgets4" @ "v0.0.13"

lean_lib Cache where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  moreLeanArgs := moreLeanArgs
  weakLeanArgs := weakLeanArgs
  roots := #[`Cache]

lean_exe cache where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  root := `Cache.Main

lean_lib MathlibExtras where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`MathlibExtras]

lean_lib Archive where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`Archive]

lean_lib Counterexamples where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`Counterexamples]

lean_lib ImportGraph where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`ImportGraph]

lean_exe graph where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  root := `ImportGraph.Main
  supportInterpreter := true

/-- Additional documentation in the form of modules that only contain module docstrings. -/
lean_lib docs where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/native-source-ports/90a915db7dbb60c8ffdbc41f1988fba5d9cf4224550c3eafa4e782a606621288/src"
  roots := #[`docs]
