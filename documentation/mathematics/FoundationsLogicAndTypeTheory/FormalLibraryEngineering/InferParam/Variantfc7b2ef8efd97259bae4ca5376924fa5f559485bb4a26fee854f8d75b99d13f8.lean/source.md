# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferParam.Variantfc7b2ef8efd97259bae4ca5376924fa5f559485bb4a26fee854f8d75b99d13f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61823d34ed51afec9a106ed01514a9aa7347499d` · SHA-256 `fc7b2ef8efd97259bae4ca5376924fa5f559485bb4a26fee854f8d75b99d13f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Mario Carneiro
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic
import Lean.Meta.Tactic.Replace

/-!
# Infer an optional parameter

In this file we define a tactic `infer_param` that closes a goal with default value by using
this default value.
-/

namespace Mathlib.Tactic

open Lean Elab Tactic Meta

/-- Close a goal of the form `optParam α a` or `autoParam α stx` by using `a`. -/
elab (name := inferOptParam) "infer_param" : tactic => do
  let tgt ← getMainTarget
  if let some val := tgt.getOptParamDefault? then
    liftMetaTactic fun goal => do goal.assign val; pure []
  else if let some (.const tacticDecl ..) := tgt.getAutoParamTactic? then
    match evalSyntaxConstant (← getEnv) (← getOptions) tacticDecl with
    | .error err => throwError err
    | Except.ok tacticSyntax =>
      liftMetaTactic1 fun goal => do
        goal.replaceTargetDefEq (← goal.getType).consumeTypeAnnotations
      evalTactic tacticSyntax
  else throwError
    "`infer_param` only solves goals of the form `optParam _ _` or `autoParam _ _`, not {tgt}"

end Mathlib.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40a65c0145a3c14b0c664f616555e64e56d8bfd81c0a6fa3f130e257ccdbbd0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferParam/Variantfc7b2ef8efd97259bae4ca5376924fa5f559485bb4a26fee854f8d75b99d13f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
