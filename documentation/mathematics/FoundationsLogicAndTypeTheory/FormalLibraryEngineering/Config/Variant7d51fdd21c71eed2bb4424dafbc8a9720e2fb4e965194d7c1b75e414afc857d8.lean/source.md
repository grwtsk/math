# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant7d51fdd21c71eed2bb4424dafbc8a9720e2fb4e965194d7c1b75e414afc857d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df2ed3fbb4d62214053290d44dc221a0a7d8f025` · SHA-256 `7d51fdd21c71eed2bb4424dafbc8a9720e2fb4e965194d7c1b75e414afc857d8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
import Lean.Elab.ConfigEval

public section
namespace Lean.Elab.Tactic

open ConfigEval

/--
Elaborator for grind configurations, with the `(config := ...)` elaborator exposed.
This allows overriding which structure is used as the expected type when elaborating
the term, which affects which default values are used in `{...}` structure instance notation.
-/
private declare_term_config_elab elabGrindConfigCore Grind.Config
    (evalConfig : Term → TermElabM Grind.Config) where
  option config := fun _ item => evalConfig ⟨item.value⟩

local macro "make_elab_grind_config" fn:ident struct:ident : command => do
  let cfg := mkIdent `cfg
  let init := mkIdent `init
  let logExceptions := mkIdent `logExceptions
  `(private local ensure_eval_expr_instance $struct
    def $fn ($cfg : Syntax)
        ($init : $struct := {})
        ($logExceptions : Bool := true) :
        TacticM Grind.Config := do
      elabGrindConfigCore $cfg { $init with }
        (evalConfig := fun c => do
          let cfg : $struct ← evalExprWithElab c
          return { cfg with })
        (logExceptions := $logExceptions && (← read).recover))

make_elab_grind_config elabGrindConfig Grind.Config
make_elab_grind_config elabGrindConfigInteractive Grind.ConfigInteractive
make_elab_grind_config elabCutsatConfig Grind.CutsatConfig
make_elab_grind_config elabLinarithConfig Grind.LinarithConfig
make_elab_grind_config elabOrderConfig Grind.OrderConfig
make_elab_grind_config elabGrobnerConfig Grind.GrobnerConfig

namespace Grind

def elabConfigItems (init : Grind.Config) (items : Array Syntax) :
    TermElabM Grind.Config := do
  elabGrindConfigCore (mkNullNode items) init
    (evalConfig := fun c => evalExprWithElab c)
    (logExceptions := false)

def withConfigItems (items : Array Syntax)
    (k : GrindTacticM α) : GrindTacticM α := do
  if items.isEmpty then
    k
  else
    let config := (← read).ctx.config
    let config ← elabConfigItems config items
    withReader (fun c => { c with ctx.config := config }) do k

end Lean.Elab.Tactic.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b188b6fb5229860bcabcf62b2234a8aa6baa45f81b091d9e51575c2b1f24d30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant7d51fdd21c71eed2bb4424dafbc8a9720e2fb4e965194d7c1b75e414afc857d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
