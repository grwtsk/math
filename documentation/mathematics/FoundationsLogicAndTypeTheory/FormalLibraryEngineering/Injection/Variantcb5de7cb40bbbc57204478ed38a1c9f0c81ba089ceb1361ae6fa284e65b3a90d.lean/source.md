# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Injection.Variantcb5de7cb40bbbc57204478ed38a1c9f0c81ba089ceb1361ae6fa284e65b3a90d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bc2d9dd9c33f81910b265d7af4975fbe9a1587f` · SHA-256 `cb5de7cb40bbbc57204478ed38a1c9f0c81ba089ceb1361ae6fa284e65b3a90d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic
import Lean.Meta.Tactic.Clear
import Lean.Meta.AppBuilder
import Lean.Meta.CtorRecognizer
public section
namespace Lean.Meta.Grind
/--
The `grind` tactic includes an auxiliary `injection?` tactic that is not intended for direct use by users.
This tactic is automatically applied when introducing non-dependent propositions.
It differs from the user-facing Lean `injection` tactic in the following ways:

- It does not introduce new propositions. Instead, the `grind` tactic preprocessor is responsible for introducing them.
- It assumes that `fvarId` is the latest local declaration in the current goal.
- It does not handle cases where the constructors are different because the simplifier already reduces such equalities to `False`.
- It does not have support for heterogeneous equality. Recall that the simplifier already reduces them to `Eq` if
  the types are definitionally equal.
-/
def injection? (mvarId : MVarId) (fvarId : FVarId) : MetaM (Option MVarId) := mvarId.withContext do
  let decl ← fvarId.getDecl
  let_expr Eq _ a b := decl.type | return none
  match (← isConstructorAppCore? a), (← isConstructorAppCore? b) with
  | some aCtor, some bCtor =>
    if aCtor.name != bCtor.name then return none -- Simplifier handles this case
    let target ← mvarId.getType
    let val ← mkNoConfusion target (mkFVar fvarId)
    let .forallE _ targetNew _ _ ← whnfD (← inferType val) | return none
    let targetNew := targetNew.headBeta
    let tag ← mvarId.getTag
    let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew tag
    mvarId.assign (mkApp val mvarNew)
    /-
    **Note**: The goal may depend on this hypothesis. So, we use `tryClear`.
    Another possible solution is to construct a new proof using the new hypotheses.
    -/
    return some (← mvarNew.mvarId!.tryClear fvarId)
  | _, _ => return none

end Lean.Meta.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e52339d7ebead97581ad582e6575db8fae4a2376191a446ec2e1a7ab379ff325 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantcb5de7cb40bbbc57204478ed38a1c9f0c81ba089ceb1361ae6fa284e65b3a90d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
