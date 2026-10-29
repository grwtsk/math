/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #410 / #405 / #397 / #391 / #388 / #373 / #369 / #366 /
  #357 / #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicQuadraticMertensTwoPointPrefix
import Mathlib.Order.PartialSups

/-!
# Canonical maximal two-point Möbius-prefix energy

The existential family of shift envelopes in the quadratic supplier is replaced
by one canonical finite statistic.  For each positive shift, take the exact
maximum of every admissible two-point Möbius prefix; then sum the squares of
those maxima over the complete growing shift range.

The resulting maximal-energy condition is proved exactly equivalent to the
quadratic-envelope condition from the preceding module.  This is a source-level
normalization, not a new arithmetic estimate.  No maximal-energy witness, new
damping, or unconditional RH result is supplied.

All proof scripts await exact-head Lean elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- Exact maximum of all admissible two-point prefixes at one shift and scale.
The index `N = 0` is included, so the finite supremum is always defined. -/
def mertensTwoPointPrefixMax (j h : ℕ) : ℝ :=
  partialSups (fun N : ℕ => |mertensTwoPointPrefix h N|)
    (2 ^ (j + 1) - h - 1)

/-- Sum of squares of the canonical prefix maxima over every positive shift
below the dyadic right endpoint. -/
def mertensTwoPointMaximalQuadraticEnergy (j : ℕ) : ℝ :=
  ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
    mertensTwoPointPrefixMax j h ^ 2

/-- Canonical finite maximal-energy budget at one dyadic scale. -/
def DyadicMertensTwoPointMaximalEnergy (j : ℕ) (B : ℝ) : Prop :=
  0 ≤ B ∧
    mertensTwoPointMaximalQuadraticEnergy j ≤
      B ^ 2 * ((2 ^ (j + 1) : ℕ) : ℝ)

/-- The all-scale canonical maximal-energy supplier. -/
def SubpolynomialDyadicMaximalMertensTwoPointEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧
    ∀ j : ℕ,
      DyadicMertensTwoPointMaximalEnergy j
        (A * (((2 ^ j : ℕ) : ℝ) ^ δ))

/-- Every admissible prefix is bounded by the canonical finite maximum. -/
theorem abs_mertensTwoPointPrefix_le_max
    {j h N : ℕ}
    (hN : N ≤ 2 ^ (j + 1) - h - 1) :
    |mertensTwoPointPrefix h N| ≤ mertensTwoPointPrefixMax j h := by
  unfold mertensTwoPointPrefixMax
  exact le_partialSups_of_le
    (fun n : ℕ => |mertensTwoPointPrefix h n|) hN

/-- The canonical maximum is nonnegative because it contains the zero prefix. -/
theorem mertensTwoPointPrefixMax_nonneg (j h : ℕ) :
    0 ≤ mertensTwoPointPrefixMax j h := by
  calc
    0 = |mertensTwoPointPrefix h 0| := by simp
    _ ≤ mertensTwoPointPrefixMax j h :=
      abs_mertensTwoPointPrefix_le_max (Nat.zero_le _)

/-- A shift-wise envelope is exactly a nonnegative upper bound on the canonical
finite maximum. -/
theorem mertensTwoPointShiftEnvelope_iff_prefixMax_le
    {j h : ℕ} {U : ℝ} :
    MertensTwoPointShiftEnvelope j h U ↔
      0 ≤ U ∧ mertensTwoPointPrefixMax j h ≤ U := by
  constructor
  · intro henv
    refine ⟨henv.1, ?_⟩
    unfold mertensTwoPointPrefixMax
    exact (partialSups_le_iff).2 henv.2
  · rintro ⟨hU, hmax⟩
    refine ⟨hU, ?_⟩
    intro N hN
    exact (abs_mertensTwoPointPrefix_le_max hN).trans hmax

/-- The canonical maximal-energy budget supplies the existential quadratic
envelope by choosing the exact maximum at each shift. -/
theorem dyadicMertensTwoPointQuadraticEnvelope_of_maximalEnergy
    {j : ℕ} {B : ℝ}
    (hmax : DyadicMertensTwoPointMaximalEnergy j B) :
    DyadicMertensTwoPointQuadraticEnvelope j B := by
  refine ⟨hmax.1, fun h => mertensTwoPointPrefixMax j h, ?_, ?_⟩
  · intro h hh hhY
    exact (mertensTwoPointShiftEnvelope_iff_prefixMax_le).2
      ⟨mertensTwoPointPrefixMax_nonneg j h, le_rfl⟩
  · simpa [mertensTwoPointMaximalQuadraticEnergy] using hmax.2

/-- Conversely, any quadratic-envelope family dominates the canonical maximum
shift by shift and therefore pays the canonical maximal energy. -/
theorem dyadicMertensTwoPointMaximalEnergy_of_quadraticEnvelope
    {j : ℕ} {B : ℝ}
    (hquad : DyadicMertensTwoPointQuadraticEnvelope j B) :
    DyadicMertensTwoPointMaximalEnergy j B := by
  obtain ⟨hB, U, hshift, hbudget⟩ := hquad
  refine ⟨hB, ?_⟩
  unfold mertensTwoPointMaximalQuadraticEnergy
  calc
    (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
        mertensTwoPointPrefixMax j h ^ 2) ≤
      ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)), (U h) ^ 2 := by
        apply Finset.sum_le_sum
        intro h hh
        have hchar :=
          (mertensTwoPointShiftEnvelope_iff_prefixMax_le).1
            (hshift h (Finset.mem_Ico.mp hh).1
              (Finset.mem_Ico.mp hh).2)
        exact (sq_le_sq₀
          (mertensTwoPointPrefixMax_nonneg j h) hchar.1).2 hchar.2
    _ ≤ B ^ 2 * ((2 ^ (j + 1) : ℕ) : ℝ) := hbudget

/-- Exact finite equivalence between the canonical maximal statistic and the
existential quadratic-envelope interface. -/
theorem dyadicMertensTwoPointMaximalEnergy_iff_quadraticEnvelope
    {j : ℕ} {B : ℝ} :
    DyadicMertensTwoPointMaximalEnergy j B ↔
      DyadicMertensTwoPointQuadraticEnvelope j B :=
  ⟨dyadicMertensTwoPointQuadraticEnvelope_of_maximalEnergy,
    dyadicMertensTwoPointMaximalEnergy_of_quadraticEnvelope⟩

/-- All-scale maximal energy supplies the all-scale quadratic interface. -/
theorem subpolynomialDyadicQuadraticMertensTwoPointPrefix_of_maximalEnergy
    (hmax : SubpolynomialDyadicMaximalMertensTwoPointEnergy) :
    SubpolynomialDyadicQuadraticMertensTwoPointPrefix := by
  intro δ hδ
  obtain ⟨A, hA, hscale⟩ := hmax δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  exact dyadicMertensTwoPointQuadraticEnvelope_of_maximalEnergy (hscale j)

/-- All-scale quadratic envelopes pay the canonical maximal energy with the
same constants. -/
theorem subpolynomialDyadicMaximalMertensTwoPointEnergy_of_quadratic
    (hquad : SubpolynomialDyadicQuadraticMertensTwoPointPrefix) :
    SubpolynomialDyadicMaximalMertensTwoPointEnergy := by
  intro δ hδ
  obtain ⟨A, hA, hscale⟩ := hquad δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  exact dyadicMertensTwoPointMaximalEnergy_of_quadraticEnvelope (hscale j)

/-- Exact all-scale equivalence. -/
theorem subpolynomialDyadicMaximalMertensTwoPointEnergy_iff_quadratic :
    SubpolynomialDyadicMaximalMertensTwoPointEnergy ↔
      SubpolynomialDyadicQuadraticMertensTwoPointPrefix :=
  ⟨subpolynomialDyadicQuadraticMertensTwoPointPrefix_of_maximalEnergy,
    subpolynomialDyadicMaximalMertensTwoPointEnergy_of_quadratic⟩

/-- The canonical maximal-energy condition pays the complete signed packet. -/
theorem subpolynomialDyadicMertensShiftPacket_of_maximalTwoPointEnergy
    (hmax : SubpolynomialDyadicMaximalMertensTwoPointEnergy) :
    SubpolynomialDyadicMertensShiftPacket :=
  subpolynomialDyadicMertensShiftPacket_of_quadraticTwoPointPrefix
    (subpolynomialDyadicQuadraticMertensTwoPointPrefix_of_maximalEnergy hmax)

/-- Conditional terminal return through the exact signed shift packet. -/
theorem riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy
    (hmax : SubpolynomialDyadicMaximalMertensTwoPointEnergy) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicMertensShiftPacket
    (subpolynomialDyadicMertensShiftPacket_of_maximalTwoPointEnergy hmax)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointShiftEnvelope_iff_prefixMax_le
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicMertensTwoPointMaximalEnergy_iff_quadraticEnvelope
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicMaximalMertensTwoPointEnergy_iff_quadratic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy
