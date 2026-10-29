/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #456 / #437 / #410 / #430 / #335 / #334 RH-E02.
-/
import GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal
import GRWTSK.NumberTheory.Moebius.DyadicMaximalMertensTwoPointEnergy

/-!
# Zero-padded two-point Möbius tree energy

The generic aligned-dyadic maximal comparison is specialized to the actual
finite two-point Möbius prefixes used by the canonical maximal-energy criterion.
For scale `j` and shift `h`, the source is retained through the exact admissible
length `2^(j+1)-h-1` and is then padded by literal zeros to the complete dyadic
interval `[0,2^(j+1))`.

The source proves that every canonical two-point prefix is unchanged by this
padding, that the canonical prefix maximum is dominated by the complete dyadic
prefix maximum, and that the complete maximal energy is bounded by `(j+2)`
times the summed recursive tree-square energy.

A tree-energy budget is then exposed as a conditional supplier for the existing
maximal-energy and Riemann-hypothesis consumers.  No tree-energy estimate,
explicit scale/block-index double-sum identity, new damping, or unconditional
Riemann-hypothesis result is supplied.

All proof scripts await exact-head Lean elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators
open GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

/-- Exact admissible length of the two-point prefix at scale `j` and shift `h`. -/
def mertensTwoPointPaddedLength (j h : ℕ) : ℕ :=
  2 ^ (j + 1) - h - 1

/-- The actual two-point Möbius source, padded by zero after its admissible
prefix range. -/
def paddedMertensTwoPointSequence (j h n : ℕ) : ℝ :=
  if n < mertensTwoPointPaddedLength j h then
    moebiusReal (n + 1) * moebiusReal (n + 1 + h)
  else 0

/-- Recursive aligned-dyadic tree-square energy of one padded shift source. -/
def mertensTwoPointTreeSquareEnergy (j h : ℕ) : ℝ :=
  dyadicTreeSquareEnergy (j + 1)
    (paddedMertensTwoPointSequence j h)

/-- Complete sum of padded tree-square energies over every positive shift below
the dyadic right endpoint. -/
def mertensTwoPointSummedTreeSquareEnergy (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    mertensTwoPointTreeSquareEnergy j h

/-- One finite tree-energy budget.  The depth loss `(j+2)` remains literal and
is not silently absorbed into an exponent. -/
def DyadicMertensTwoPointTreeEnergyBudget (j : ℕ) (B : ℝ) : Prop :=
  0 ≤ B ∧
    ((j : ℝ) + 2) * mertensTwoPointSummedTreeSquareEnergy j ≤
      B ^ 2 * ((2 ^ (j + 1) : ℕ) : ℝ)

/-- The all-scale conditional arithmetic supplier exposed by this adapter. -/
def SubpolynomialDyadicMertensTwoPointTreeEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧
    ∀ j : ℕ,
      DyadicMertensTwoPointTreeEnergyBudget j
        (A * (((2 ^ j : ℕ) : ℝ) ^ δ))

/-- The padded admissible length never exceeds the complete dyadic interval. -/
theorem mertensTwoPointPaddedLength_le_right (j h : ℕ) :
    mertensTwoPointPaddedLength j h ≤ 2 ^ (j + 1) := by
  unfold mertensTwoPointPaddedLength
  omega

/-- Inside the exact admissible range the padded source is the actual source. -/
theorem paddedMertensTwoPointSequence_of_lt
    {j h n : ℕ}
    (hn : n < mertensTwoPointPaddedLength j h) :
    paddedMertensTwoPointSequence j h n =
      moebiusReal (n + 1) * moebiusReal (n + 1 + h) := by
  simp [paddedMertensTwoPointSequence, hn]

/-- At and after the exact admissible length the padded source is zero. -/
theorem paddedMertensTwoPointSequence_of_length_le
    {j h n : ℕ}
    (hn : mertensTwoPointPaddedLength j h ≤ n) :
    paddedMertensTwoPointSequence j h n = 0 := by
  simp [paddedMertensTwoPointSequence, not_lt.mpr hn]

/-- Every admissible padded prefix is exactly the repository's actual two-point
Möbius prefix. -/
theorem finitePrefixSum_paddedMertensTwoPoint_eq
    {j h N : ℕ}
    (hN : N ≤ mertensTwoPointPaddedLength j h) :
    finitePrefixSum (paddedMertensTwoPointSequence j h) N =
      mertensTwoPointPrefix h N := by
  simp only [finitePrefixSum, mertensTwoPointPrefix]
  apply Finset.sum_congr rfl
  intro n hn
  have hnN : n < N := Finset.mem_range.mp hn
  have hnL : n < mertensTwoPointPaddedLength j h :=
    lt_of_lt_of_le hnN hN
  simp [paddedMertensTwoPointSequence, hnL]

/-- The canonical source maximum is dominated by the complete dyadic maximum of
the zero-padded sequence. -/
theorem mertensTwoPointPrefixMax_le_dyadicPrefixMaximum
    (j h : ℕ) :
    mertensTwoPointPrefixMax j h ≤
      dyadicPrefixMaximum (j + 1)
        (paddedMertensTwoPointSequence j h) := by
  unfold mertensTwoPointPrefixMax dyadicPrefixMaximum
  apply (partialSups_le_iff).2
  intro N hN
  have hNL : N ≤ mertensTwoPointPaddedLength j h := by
    simpa [mertensTwoPointPaddedLength] using hN
  rw [← finitePrefixSum_paddedMertensTwoPoint_eq hNL]
  exact le_partialSups_of_le
    (fun n : ℕ =>
      |finitePrefixSum (paddedMertensTwoPointSequence j h) n|)
    (hNL.trans (mertensTwoPointPaddedLength_le_right j h))

/-- One canonical two-point prefix maximum is controlled by the padded recursive
tree-square energy with the exact depth factor `j+2`. -/
theorem mertensTwoPointPrefixMax_sq_le_treeSquareEnergy
    (j h : ℕ) :
    mertensTwoPointPrefixMax j h ^ 2 ≤
      ((j : ℝ) + 2) * mertensTwoPointTreeSquareEnergy j h := by
  have hle := mertensTwoPointPrefixMax_le_dyadicPrefixMaximum j h
  have hsource : 0 ≤ mertensTwoPointPrefixMax j h :=
    mertensTwoPointPrefixMax_nonneg j h
  have hpadded :
      0 ≤ dyadicPrefixMaximum (j + 1)
        (paddedMertensTwoPointSequence j h) :=
    hsource.trans hle
  have hsquare :
      mertensTwoPointPrefixMax j h ^ 2 ≤
        dyadicPrefixMaximum (j + 1)
          (paddedMertensTwoPointSequence j h) ^ 2 :=
    (sq_le_sq₀ hsource hpadded).2 hle
  calc
    mertensTwoPointPrefixMax j h ^ 2 ≤
        dyadicPrefixMaximum (j + 1)
          (paddedMertensTwoPointSequence j h) ^ 2 := hsquare
    _ ≤ ((((j + 1 : ℕ) : ℝ) + 1) *
        dyadicTreeSquareEnergy (j + 1)
          (paddedMertensTwoPointSequence j h)) :=
      dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy
        (j + 1) (paddedMertensTwoPointSequence j h)
    _ = ((j : ℝ) + 2) * mertensTwoPointTreeSquareEnergy j h := by
      simp [mertensTwoPointTreeSquareEnergy, Nat.cast_add]
      ring

/-- Each source-specific tree energy is nonnegative. -/
theorem mertensTwoPointTreeSquareEnergy_nonneg (j h : ℕ) :
    0 ≤ mertensTwoPointTreeSquareEnergy j h := by
  exact dyadicTreeSquareEnergy_nonneg (j + 1)
    (paddedMertensTwoPointSequence j h)

/-- The complete summed tree energy is nonnegative. -/
theorem mertensTwoPointSummedTreeSquareEnergy_nonneg (j : ℕ) :
    0 ≤ mertensTwoPointSummedTreeSquareEnergy j := by
  unfold mertensTwoPointSummedTreeSquareEnergy
  apply Finset.sum_nonneg
  intro h _hh
  exact mertensTwoPointTreeSquareEnergy_nonneg j h

/-- Summing the per-shift comparison pays the canonical maximal quadratic
energy, retaining the exact depth factor. -/
theorem mertensTwoPointMaximalQuadraticEnergy_le_summedTreeSquareEnergy
    (j : ℕ) :
    mertensTwoPointMaximalQuadraticEnergy j ≤
      ((j : ℝ) + 2) * mertensTwoPointSummedTreeSquareEnergy j := by
  unfold mertensTwoPointMaximalQuadraticEnergy
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        mertensTwoPointPrefixMax j h ^ 2) ≤
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        ((j : ℝ) + 2) * mertensTwoPointTreeSquareEnergy j h := by
          apply Finset.sum_le_sum
          intro h _hh
          exact mertensTwoPointPrefixMax_sq_le_treeSquareEnergy j h
    _ = ((j : ℝ) + 2) *
        mertensTwoPointSummedTreeSquareEnergy j := by
      simp [mertensTwoPointSummedTreeSquareEnergy, Finset.mul_sum]

/-- A finite tree-energy budget supplies the existing canonical maximal-energy
budget with the same parameter `B`. -/
theorem dyadicMertensTwoPointMaximalEnergy_of_treeEnergyBudget
    {j : ℕ} {B : ℝ}
    (htree : DyadicMertensTwoPointTreeEnergyBudget j B) :
    DyadicMertensTwoPointMaximalEnergy j B := by
  refine ⟨htree.1, ?_⟩
  exact
    (mertensTwoPointMaximalQuadraticEnergy_le_summedTreeSquareEnergy j).trans
      htree.2

/-- The all-scale tree-energy supplier pays the existing all-scale maximal
supplier without changing constants. -/
theorem subpolynomialDyadicMaximalMertensTwoPointEnergy_of_treeEnergy
    (htree : SubpolynomialDyadicMertensTwoPointTreeEnergy) :
    SubpolynomialDyadicMaximalMertensTwoPointEnergy := by
  intro δ hδ
  obtain ⟨A, hA, hscale⟩ := htree δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  exact dyadicMertensTwoPointMaximalEnergy_of_treeEnergyBudget (hscale j)

/-- The tree-energy supplier pays the inherited complete signed shift packet. -/
theorem subpolynomialDyadicMertensShiftPacket_of_treeEnergy
    (htree : SubpolynomialDyadicMertensTwoPointTreeEnergy) :
    SubpolynomialDyadicMertensShiftPacket :=
  subpolynomialDyadicMertensShiftPacket_of_maximalTwoPointEnergy
    (subpolynomialDyadicMaximalMertensTwoPointEnergy_of_treeEnergy htree)

/-- Conditional terminal return through the existing maximal-energy consumer. -/
theorem riemannHypothesis_of_subpolynomialDyadicMertensTwoPointTreeEnergy
    (htree : SubpolynomialDyadicMertensTwoPointTreeEnergy) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy
    (subpolynomialDyadicMaximalMertensTwoPointEnergy_of_treeEnergy htree)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finitePrefixSum_paddedMertensTwoPoint_eq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointPrefixMax_sq_le_treeSquareEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointMaximalQuadraticEnergy_le_summedTreeSquareEnergy
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicMertensTwoPointTreeEnergy
