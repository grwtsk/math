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
