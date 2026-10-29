# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6cd72629874d0f6307255741fe8a9b7079efbf7` · SHA-256 `0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# Completion semantics

Feasibility means that a supplied full witness extends the partial state and
satisfies every constraint in the finite registry.  This interface does not
decide feasibility.
-/

namespace Mathematics.BinaryFrontier

structure CompletionSemantics
    (Partial Full Constraint : Type) where
  refines : Partial → Partial → Prop
  extendsFull : Partial → Full → Prop
  satisfies : Full → Constraint → Prop
  refines_refl : ∀ state, refines state state
  refines_trans :
    ∀ {left middle right},
      refines left middle →
      refines middle right →
      refines left right
  extendsFull_antitone :
    ∀ {parent child full},
      refines parent child →
      extendsFull child full →
      extendsFull parent full

def Feasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (state : Partial) : Prop :=
  ∃ full,
    semantics.extendsFull state full ∧
      ∀ constraint ∈ constraints,
        semantics.satisfies full constraint

def Infeasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (state : Partial) : Prop :=
  ¬ Feasible semantics constraints state

theorem infeasible_iff_not_feasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (constraints : Finset Constraint)
    (state : Partial) :
    Infeasible semantics constraints state ↔
      ¬ Feasible semantics constraints state :=
  Iff.rfl

theorem feasible_of_constraint_subset
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {smaller larger : Finset Constraint}
    {state : Partial}
    (subset : smaller ⊆ larger)
    (largerFeasible : Feasible semantics larger state) :
    Feasible semantics smaller state := by
  obtain ⟨full, fullExtends, satisfies⟩ := largerFeasible
  exact ⟨full, fullExtends, fun constraint member =>
    satisfies constraint (subset member)⟩

theorem infeasibility_downward_closed
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {constraints : Finset Constraint}
    {parent child : Partial}
    (refinement : semantics.refines parent child)
    (parentInfeasible :
      Infeasible semantics constraints parent) :
    Infeasible semantics constraints child := by
  intro childFeasible
  obtain ⟨full, childExtends, satisfies⟩ := childFeasible
  apply parentInfeasible
  exact ⟨full,
    semantics.extendsFull_antitone refinement childExtends,
    satisfies⟩

end Mathematics.BinaryFrontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb339c85b0be8f61c6063e2a41b9c447ed3d4349bfa2c456cf78a2feb6c80118 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
