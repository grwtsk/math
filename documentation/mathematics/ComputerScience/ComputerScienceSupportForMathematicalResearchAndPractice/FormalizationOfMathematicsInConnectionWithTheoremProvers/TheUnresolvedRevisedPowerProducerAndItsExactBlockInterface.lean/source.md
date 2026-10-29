# The Unresolved Revised Power Producer And Its Exact Block Interface — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64bcb856b186f956fd9bfc10355f6605d96eaeb4` · SHA-256 `fcfa1c4616fecde02f658a45062e085d3dd97d4a9708c368898b01884baca702`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.MathematicalTooling.Coverage.Cardinal

/-!
# The unresolved revised-power producer and its exact-block interface

The minimum-family equality is stated as existence plus a lower bound on every
candidate family, avoiding an empty-infimum convention. This module proves only
the elementary restriction of supplied exactly-sized blocks. The revised-GCH
producer remains a proposition with its original quantifier dependence.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.MathematicalTooling.Coverage

universe u
open Cardinal

/-- Candidate families contain exactly theta-sized blocks and cover each such
target using fewer than theta blocks. This precedes downward closure. -/
def RevisedPowerCandidate (lam theta : Cardinal.{u}) (P : Set (Set lam.out)) : Prop :=
  (∀ C ∈ P, #C = theta) ∧
    ∀ A : Set lam.out, #A = theta →
      ∃ Q : Set (Set lam.out), Q ⊆ P ∧ #Q < theta ∧ A ⊆ ⋃₀ Q

/-- The least possible family size equals lam, expressed without adding an axiom. -/
def RevisedPowerEquals (lam theta : Cardinal.{u}) : Prop :=
  (∃ P : Set (Set lam.out), RevisedPowerCandidate lam theta P ∧ #P = lam) ∧
    ∀ P : Set (Set lam.out), RevisedPowerCandidate lam theta P → lam ≤ #P

/-- Shelah's regular-theta quantifier order. The threshold depends on lam and mu. -/
def RevisedGCHStatement : Prop :=
  ∀ μ : Cardinal.{u}, μ.IsStrongLimit → ℵ₀ < μ →
    ∀ lam : Cardinal.{u}, μ ≤ lam →
      ∃ κ : Cardinal.{u}, κ < μ ∧
        ∀ theta : Cardinal.{u}, theta.IsRegular → κ ≤ theta → theta < μ →
          RevisedPowerEquals lam theta

/-- Downward closure admits smaller restrictions, including the empty one;
the original exact-cardinality predicate is deliberately not preserved. -/
theorem exact_block_restriction {X : Type u} (P : Set (Set X))
    (theta : Cardinal.{u}) (sizes : ∀ C ∈ P, #C = theta)
    (A C : Set X) (member : C ∈ P) :
    A ∩ C ∈ downwardClosure P ∧ #(A ∩ C : Set X) ≤ theta := by
  constructor
  · exact ⟨C, member, Set.inter_subset_right⟩
  · exact (Cardinal.mk_le_mk_of_subset Set.inter_subset_right).trans_eq (sizes C member)

end FormalResearch.MathematicalTooling.Coverage
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a1f5d08691f96968931279e1c31ffa8663fca4a6ea1f28eb4e4cfe39b9a58a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RevisedPower/Variantfcfa1c4616fecde02f658a45062e085d3dd97d4a9708c368898b01884baca702.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
