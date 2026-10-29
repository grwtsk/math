/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #547. Direct stacked parent: draft PR #542 at
`09c8088e3e6004b428eef9831ede272a9fd1ffa9`.
-/
import GRWTSK.NumberTheory.Moebius.MertensLongShortIntervalSupplier

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Number of shallow depths paid deterministically.  The `Y-1` cap keeps
`t+2 <= Y` literal even on the smallest dyadic scales. -/
def logarithmicShallowDepthCount (j : ℕ) : ℕ :=
  min (j + 2) (2 ^ (j + 1) - 1)

/-- Complete signed depth packet over the shallow depths. -/
def logarithmicShallowDepthPacket (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
    weightedMertensDyadicSignedAbelDepthSlice j t

/-- Every depth with nonempty triangular support has absolute value at most two. -/
theorem abs_signedAbelDepthSlice_le_two_of_depth
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    |weightedMertensDyadicSignedAbelDepthSlice j t| ≤ 2 := by
  let Y : ℕ := 2 ^ (j + 1)
  have havg :
      |weightedMertensTwoPointChowlaAverage j t| ≤ (t + 1 : ℝ) := by
    apply abs_weightedMertensTwoPointChowlaAverage_le_of_abs_prefix_bound
      htY (by positivity)
    intro h hh
    simpa only [Nat.cast_add, Nat.cast_one] using abs_mertensTwoPointPrefix_le_length h (t + 1)
  rw [weightedMertensDyadicSignedAbelDepthSlice_eq_weightedChowlaAverage,
    abs_mul, abs_of_nonneg (by positivity :
      0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹)]
  calc
    2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        |weightedMertensTwoPointChowlaAverage j t| ≤
      2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ * (t + 1 : ℝ) := by
        exact mul_le_mul_of_nonneg_left havg (by positivity)
    _ ≤ 2 := by
      have htYR : (t + 1 : ℝ) ≤ (Y : ℝ) := by
        exact_mod_cast (by omega : t + 1 ≤ Y)
      have hYpos : (0 : ℝ) < Y := by
        dsimp [Y]
        positivity
      calc
        2 * (Y : ℝ)⁻¹ * (t + 1 : ℝ) ≤
            2 * (Y : ℝ)⁻¹ * (Y : ℝ) := by
          exact mul_le_mul_of_nonneg_left htYR (by positivity)
        _ = 2 := by field_simp [ne_of_gt hYpos]

/-- Shallow depths satisfy the general finite-depth bound. -/
theorem abs_signedAbelDepthSlice_le_two_of_shallow
    {j t : ℕ} (ht : t < logarithmicShallowDepthCount j) :
    |weightedMertensDyadicSignedAbelDepthSlice j t| ≤ 2 := by
  apply abs_signedAbelDepthSlice_le_two_of_depth
  have hDY : logarithmicShallowDepthCount j ≤ 2 ^ (j + 1) - 1 := min_le_right _ _
  omega

/-- The complete shallow-depth packet costs at most two per shallow depth. -/
theorem abs_logarithmicShallowDepthPacket_le
    (j : ℕ) :
    |logarithmicShallowDepthPacket j| ≤
      2 * (logarithmicShallowDepthCount j : ℝ) := by
  unfold logarithmicShallowDepthPacket
  calc
    |∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
      weightedMertensDyadicSignedAbelDepthSlice j t| ≤
      ∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
        |weightedMertensDyadicSignedAbelDepthSlice j t| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _t ∈ Finset.range (logarithmicShallowDepthCount j),
        (2 : ℝ) := by
      apply Finset.sum_le_sum
      intro t ht
      exact abs_signedAbelDepthSlice_le_two_of_shallow
        (Finset.mem_range.mp ht)
    _ = 2 * (logarithmicShallowDepthCount j : ℝ) := by
      simp [mul_comm]

/-- The shallow-depth count is bounded by the logarithmic threshold. -/
theorem logarithmicShallowDepthCount_le_threshold
    (j : ℕ) :
    logarithmicShallowDepthCount j ≤ logarithmicShiftThreshold j := by
  unfold logarithmicShallowDepthCount logarithmicShiftThreshold
  exact min_le_left _ _

/-- The shallow-depth packet is subpolynomial at every positive exponent. -/
def SubpolynomialLogarithmicShallowDepthPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      |logarithmicShallowDepthPacket j| ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Source-level deterministic inhabitant of the shallow-depth supplier. -/
theorem subpolynomialLogarithmicShallowDepthPacket :
    SubpolynomialLogarithmicShallowDepthPacket := by
  intro δ hδ
  obtain ⟨A, hA, hlog⟩ :=
    nat_add_two_le_const_mul_dyadic_rpow hδ
  refine ⟨2 * A, mul_nonneg (by norm_num) hA, ?_⟩
  intro j
  calc
    |logarithmicShallowDepthPacket j| ≤
        2 * (logarithmicShallowDepthCount j : ℝ) :=
      abs_logarithmicShallowDepthPacket_le j
    _ ≤ 2 * (logarithmicShiftThreshold j : ℝ) := by
      apply mul_le_mul_of_nonneg_left
      · exact_mod_cast logarithmicShallowDepthCount_le_threshold j
      · norm_num
    _ = 2 * (j + 2 : ℝ) := by simp [logarithmicShiftThreshold]
    _ ≤ 2 * (A * (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
      exact mul_le_mul_of_nonneg_left (hlog j) (by norm_num)
    _ = (2 * A) * (((2 ^ j : ℕ) : ℝ) ^ δ) := by ring

/-- Per-depth analytic long remainder: complete depth slice minus the already
paid short cumulative-length interior. -/
def logarithmicLongDepthRemainder
    (j t : ℕ) : ℝ :=
  weightedMertensDyadicSignedAbelDepthSlice j t -
    2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
      harmonicCumulativeShortContribution
        j t (logarithmicShiftThreshold j)

/-- The packet-level long remainder from #541 is the sum of the per-depth long
remainders. -/
theorem logarithmicLongHarmonicRemainderPacket_eq_sum_depth
    (j : ℕ) :
    logarithmicLongHarmonicRemainderPacket j =
      ∑ t ∈ Finset.range (2 ^ (j + 1)),
        logarithmicLongDepthRemainder j t := by
  unfold logarithmicLongHarmonicRemainderPacket
    logarithmicShortSignedPacket
    logarithmicLongDepthRemainder
  rw [harmonicWeightedMertensDyadicChowlaPacket_eq_weightedPacket,
    weightedMertensDyadicChowlaPacket_eq_signedAbelDepthPacket]
  unfold weightedMertensDyadicSignedAbelDepthPacket
  rw [Finset.sum_sub_distrib]

/-- Shallow part of the long remainder. -/
def logarithmicShallowLongRemainderPacket (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (logarithmicShallowDepthCount j),
    logarithmicLongDepthRemainder j t

/-- Deep part of the long remainder; this is the remaining analytic object. -/
def logarithmicDeepLongRemainderPacket (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.Ico (logarithmicShallowDepthCount j) (2 ^ (j + 1)),
    logarithmicLongDepthRemainder j t

/-- Exact shallow/deep split of the long remainder. -/
theorem logarithmicLongRemainder_eq_shallow_add_deep
    (j : ℕ) :
    logarithmicLongHarmonicRemainderPacket j =
      logarithmicShallowLongRemainderPacket j +
        logarithmicDeepLongRemainderPacket j := by
  rw [logarithmicLongHarmonicRemainderPacket_eq_sum_depth]
  unfold logarithmicShallowLongRemainderPacket
    logarithmicDeepLongRemainderPacket
  have hD :
      logarithmicShallowDepthCount j ≤ 2 ^ (j + 1) := by
    unfold logarithmicShallowDepthCount
    exact le_trans (min_le_right _ _) (Nat.sub_le _ _)
  simp only [← Nat.Ico_zero_eq_range]
  exact (Finset.sum_Ico_consecutive
    (fun t => logarithmicLongDepthRemainder j t)
    (Nat.zero_le _) hD).symm

/-- Exact deep analytic regime.  Both cumulative interval length and depth are
at least logarithmic, modulo the small-scale `min` cap. -/
structure DeepLongShortIntervalRegime where
  j : ℕ
  t : ℕ
  n : ℕ
  depth_lower :
    logarithmicShallowDepthCount j ≤ t
  depth_upper :
    t < 2 ^ (j + 1)
  length_lower :
    logarithmicShiftThreshold j ≤ n
  length_upper :
    n ≤ harmonicShiftCount j t

/-- Remaining analytic supplier after shallow depths and short lengths are paid
deterministically. -/
def SubpolynomialDeepLongHarmonicRemainderPacket : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      logarithmicDeepLongRemainderPacket j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_signedAbelDepthSlice_le_two_of_shallow
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialLogarithmicShallowDepthPacket
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.logarithmicLongRemainder_eq_shallow_add_deep
