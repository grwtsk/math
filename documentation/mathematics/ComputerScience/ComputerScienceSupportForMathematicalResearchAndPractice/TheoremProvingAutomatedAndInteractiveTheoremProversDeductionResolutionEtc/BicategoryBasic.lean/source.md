# Bicategory Basic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5c2b1211b67f9c7fca890882fac5bfbacaa575f` · SHA-256 `65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yuma Mizuno. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuma Mizuno
-/
import Mathlib.Tactic.CategoryTheory.Coherence.Basic
import Mathlib.Tactic.CategoryTheory.Bicategory.Normalize
import Mathlib.Tactic.CategoryTheory.Bicategory.PureCoherence

/-!
# `bicategory` tactic

This file provides `bicategory` tactic, which solves equations in a bicategory, where
the two sides only differ by replacing strings of bicategory structural morphisms (that is,
associators, unitors, and identities) with different strings of structural morphisms with the same
source and target. In other words, `bicategory` solves equalities where both sides have the same
string diagrams.

The core function for the `bicategory` tactic is provided in
`Mathlib/Tactic/CategoryTheory/Coherence/Basic.lean`. See this file for more details about the
implementation.

-/

open Lean Meta Elab Tactic
open CategoryTheory Mathlib.Tactic.BicategoryLike

namespace Mathlib.Tactic.Bicategory

/-- Normalize the both sides of an equality. -/
def bicategoryNf (mvarId : MVarId) : MetaM (List MVarId) := do
  BicategoryLike.normalForm Bicategory.Context `bicategory mvarId

@[inherit_doc bicategoryNf]
elab "bicategory_nf" : tactic => withMainContext do
  replaceMainGoal (← bicategoryNf (← getMainGoal))

/--
Use the coherence theorem for bicategories to solve equations in a bicategory,
where the two sides only differ by replacing strings of bicategory structural morphisms
(that is, associators, unitors, and identities)
with different strings of structural morphisms with the same source and target.

That is, `bicategory` can handle goals of the form
`a ≫ f ≫ b ≫ g ≫ c = a' ≫ f ≫ b' ≫ g ≫ c'`
where `a = a'`, `b = b'`, and `c = c'` can be proved using `bicategory_coherence`.
-/
def bicategory (mvarId : MVarId) : MetaM (List MVarId) :=
  BicategoryLike.main  Bicategory.Context `bicategory mvarId

@[inherit_doc bicategory]
elab "bicategory" : tactic => withMainContext do
  replaceMainGoal <| ← bicategory <| ← getMainGoal

end Mathlib.Tactic.Bicategory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=091ba3ff6a8fc3978deab3ee1fffcd146c54cf0619b1f9becca813d7f127aea0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
