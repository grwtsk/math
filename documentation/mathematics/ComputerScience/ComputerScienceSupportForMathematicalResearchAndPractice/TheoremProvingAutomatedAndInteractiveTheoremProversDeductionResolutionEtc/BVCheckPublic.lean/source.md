# BVCheck Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5064c4367b54978f2116c85486de8963558b42bb` · SHA-256 `41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Elab.Tactic.BVDecide.BVDecide
public import Lean.Meta.Tactic.TryThis
import Lean.Meta.Tactic.BVDecide.TacticContext
import Lean.Meta.Tactic.BVDecide.Normalize

public section

/-!
This modules provides the implementation of `bv_check`.
-/

namespace Lean.Elab.Tactic.BVDecide
namespace BVCheck

open Std.Tactic.BVDecide
open Std.Tactic.BVDecide.Reflect
open Meta.Tactic.BVDecide

/--
Get the directory that contains the Lean file which is currently being elaborated.
-/
def getSrcDir : TermElabM System.FilePath := do
  let ctx ← readThe Lean.Core.Context
  let srcPath := System.FilePath.mk ctx.fileName
  let some srcDir := srcPath.parent
    | throwError "cannot compute parent directory of `{srcPath}`"
  return srcDir

def mkContext (lratPath : System.FilePath) (cfg : BVDecideConfig) : TermElabM TacticContext := do
  let lratPath := (← getSrcDir) / lratPath
  TacticContext.new lratPath cfg

@[inherit_doc Lean.Parser.Tactic.bvCheck]
def bvCheck (g : MVarId) (ctx : TacticContext) : MetaM Unit := do
  discard <| closeWithBVReflection g (lratChecker ctx)


open Lean.Meta.Tactic in
@[builtin_tactic Lean.Parser.Tactic.bvCheck]
def evalBvCheck : Tactic := fun
  | `(tactic| bv_check%$tk $cfgStx:optConfig $path:str) => do
    let cfg ← elabBVDecideConfig cfgStx
    let ctx ← mkContext path.getString cfg
    liftMetaFinishingTactic fun g => do
      let g'? ← Normalize.bvNormalize g cfg
      match g'? with
      | some g' => bvCheck g' ctx
      | none =>
        let bvNormalizeStx ← `(tactic| bv_normalize $cfgStx)
        logWarning m!"This goal can be closed by only applying bv_normalize, no need to keep the LRAT proof around."
        TryThis.addSuggestion tk bvNormalizeStx (origSpan? := ← getRef)
  | _ => throwUnsupportedSyntax

end BVCheck
end Lean.Elab.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34ddbf19e6a19d10003c522d47b1a4d03ac1800117746462ae92702ad2664e29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVCheck/Variant41d8ce058a17588fada50cf354c87fc2f9de6994442255b1c8198eb6927134d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
