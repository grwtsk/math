/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #911. Parent: draft PR #910 at c5b42c8fefa8e817888f33530f9590cb1f050130.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredStructuredFourDistinctPerLag

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Every admissible half-shift at center c lies in range (c+1). -/
theorem zeroWindingAdmissibleShiftSet_subset_range_center
    (b r c : ℕ) (H : Finset ℕ) :
    zeroWindingAdmissibleShiftSet b r c H ⊆ Finset.range (c + 1) := by
  intro h hh
  have hadm := (Finset.mem_filter.mp hh).2
  exact Finset.mem_range.mpr (Nat.lt_succ_of_le hadm.1)

theorem card_zeroWindingAdmissibleShiftSet_le_center
    (b r c : ℕ) (H : Finset ℕ) :
    (zeroWindingAdmissibleShiftSet b r c H).card ≤ c + 1 := by
  calc
    (zeroWindingAdmissibleShiftSet b r c H).card ≤
        (Finset.range (c + 1)).card :=
      Finset.card_le_card
        (zeroWindingAdmissibleShiftSet_subset_range_center b r c H)
    _ = c + 1 := by simp

/-- On an endpoint-valid center, each admissible shift fiber has at most b+1
elements. -/
theorem card_zeroWindingAdmissibleShiftSet_le_endpoint
    {b r c : ℕ} (H : Finset ℕ)
    (hc : c < b + 1) :
    (zeroWindingAdmissibleShiftSet b r c H).card ≤ b + 1 := by
  exact (card_zeroWindingAdmissibleShiftSet_le_center b r c H).trans (by omega)

/-- The full admissible shift-pair product has endpoint-square cardinality. -/
theorem card_admissibleShiftPairProduct_le_endpointSquare
    {b r c ell : ℕ} (H : Finset ℕ)
    (hc : c < b + 1)
    (hcell : c + ell < b + 1) :
    (zeroWindingAdmissibleShiftSet b r c H ×ˢ
      zeroWindingAdmissibleShiftSet b r (c + ell) H).card ≤
        (b + 1) * (b + 1) := by
  rw [Finset.card_product]
  exact Nat.mul_le_mul
    (card_zeroWindingAdmissibleShiftSet_le_endpoint H hc)
    (card_zeroWindingAdmissibleShiftSet_le_endpoint H hcell)

/-- Filtering to genuinely four-distinct pairs cannot increase cardinality. -/
theorem card_centeredAffineFourMobiusDistinctShiftPairs_le_endpointSquare
    {b r c ell : ℕ} (H : Finset ℕ)
    (hc : c < b + 1)
    (hcell : c + ell < b + 1) :
    (centeredAffineFourMobiusDistinctShiftPairs b r c ell H).card ≤
      (b + 1) * (b + 1) := by
  unfold centeredAffineFourMobiusDistinctShiftPairs
  exact
    (Finset.card_filter_le _ _).trans
      (card_admissibleShiftPairProduct_le_endpointSquare H hc hcell)

/-- Safe total number of center/shift-pair configurations at one positive lag:
at most (b+1)^3. -/
theorem sum_card_distinctShiftPairs_le_endpointCube
    (b r ell : ℕ) (H : Finset ℕ) :
    (∑ c ∈ Finset.range (b + 1),
      if _hc : c + ell < b + 1 then
        (centeredAffineFourMobiusDistinctShiftPairs b r c ell H).card
      else 0) ≤ (b + 1) * ((b + 1) * (b + 1)) := by
  calc
    _ ≤ ∑ _c ∈ Finset.range (b + 1), (b + 1) * (b + 1) := by
      apply Finset.sum_le_sum
      intro c hc
      by_cases hcell : c + ell < b + 1
      · simp only [hcell, dite_true]
        exact card_centeredAffineFourMobiusDistinctShiftPairs_le_endpointSquare
          H (Finset.mem_range.mp hc) hcell
      · simp [hcell]
    _ = (b + 1) * ((b + 1) * (b + 1)) := by
      simp

structure RegularCenteredFourDistinctShiftPairCountSourceData where
  theoremStatement : Prop
  admissibleShiftBoundedByCenter : Prop
  centerFiberCardinalityBounded : Prop
  endpointFiberCardinalityBounded : Prop
  pairProductBoundedByEndpointSquare : Prop
  distinctFilterDoesNotIncrease : Prop
  centerLagSurfaceBoundedByEndpointCube : Prop
  analyticCancellationNotAsserted : Prop

def RegularCenteredFourDistinctShiftPairCountSource
    (d : RegularCenteredFourDistinctShiftPairCountSourceData) : Prop :=
  d.theoremStatement ∧
  d.admissibleShiftBoundedByCenter ∧
  d.centerFiberCardinalityBounded ∧
  d.endpointFiberCardinalityBounded ∧
  d.pairProductBoundedByEndpointSquare ∧
  d.distinctFilterDoesNotIncrease ∧
  d.centerLagSurfaceBoundedByEndpointCube ∧
  d.analyticCancellationNotAsserted

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
