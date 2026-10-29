/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #535. Direct stacked parent: draft PR #533 at
`4601ccc8f4870bd443a28944523c5d9b5b0d6624`.
-/
import GRWTSK.NumberTheory.Moebius.MertensLogThresholdShortBudget

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One reciprocal-depth summand is nonnegative. -/
theorem logThresholdDepthSummand_nonneg
    (j t : ℕ) :
    0 ≤
      (t + 1 : ℝ) *
        ((((harmonicInitialDenominator j t : ℕ) : ℝ))⁻¹ -
          ((((harmonicInitialDenominator j t + 1 : ℕ) : ℝ))⁻¹)) := by
  apply mul_nonneg
  · positivity
  · apply sub_nonneg.mpr
    apply inv_anti₀
    · have h : 0 < harmonicInitialDenominator j t := by
        unfold harmonicInitialDenominator
        omega
      exact_mod_cast h
    · exact_mod_cast Nat.le_succ (harmonicInitialDenominator j t)

/-- One reciprocal-depth summand is at most the reciprocal left dyadic scale. -/
theorem logThresholdDepthSummand_le_leftInv
    (j t : ℕ) :
    (t + 1 : ℝ) *
      ((harmonicInitialDenominator j t : ℝ)⁻¹ -
        ((harmonicInitialDenominator j t + 1 : ℕ) : ℝ)⁻¹) ≤
      ((2 ^ j : ℕ) : ℝ)⁻¹ := by
  let X : ℕ := 2 ^ j
  let M : ℕ := harmonicInitialDenominator j t
  have hX : 1 ≤ X := by
    exact one_le_pow₀ (by norm_num : (1 : ℕ) ≤ 2)
  have hXM : X ≤ M := by
    dsimp [M, harmonicInitialDenominator, X]
    exact le_max_left _ _
  have htM : t + 1 ≤ M := by
    dsimp [M, harmonicInitialDenominator]
    have htm : t + 1 ≤ t + 2 := by omega
    exact le_trans htm (le_max_right _ _)
  have hXR : (0 : ℝ) < X := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hX)
  have hMR : (0 : ℝ) < M := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one (le_trans hX hXM))
  have hM1R : (0 : ℝ) < M + 1 := by positivity
  change (t + 1 : ℝ) *
      ((M : ℝ)⁻¹ - ((M + 1 : ℕ) : ℝ)⁻¹) ≤
    (X : ℝ)⁻¹
  have hdiff :
      (M : ℝ)⁻¹ - ((M + 1 : ℕ) : ℝ)⁻¹ =
        1 / ((M : ℝ) * (M + 1 : ℝ)) := by
    push_cast
    field_simp [ne_of_gt hMR, ne_of_gt hM1R]; ring
  rw [hdiff]
  have htMR : (t + 1 : ℝ) ≤ M := by exact_mod_cast htM
  have hXM_R : (X : ℝ) ≤ M := by exact_mod_cast hXM
  have hden :
      0 < (M : ℝ) * (M + 1 : ℝ) := mul_pos hMR hM1R
  have hstep :
      (t + 1 : ℝ) / ((M : ℝ) * (M + 1 : ℝ))
        ≤ 1 / (M : ℝ) := by
    apply (div_le_div_iff₀ hden hMR).mpr
    nlinarith
  have hinv : 1 / (M : ℝ) ≤ 1 / (X : ℝ) := by
    exact one_div_le_one_div_of_le hXR hXM_R
  simpa [div_eq_mul_inv] using le_trans hstep hinv

/-- The pure reciprocal-depth sum is at most two, strengthening the parent
budget constant three. -/
theorem logThresholdFiniteDepthSum_le_two
    (j : ℕ) :
    (∑ t ∈ Finset.range (2 ^ (j + 1)),
      (t + 1 : ℝ) * harmonicShiftFirstDifference j t 0) ≤ 2 := by
  have hterm :
      ∀ t ∈ Finset.range (2 ^ (j + 1)),
        (t + 1 : ℝ) * harmonicShiftFirstDifference j t 0 ≤
          (((2 ^ j : ℕ) : ℝ))⁻¹ := by
    intro t _ht
    rw [harmonicShiftFirstDifference_zero_eq_maxDrop]
    exact logThresholdDepthSummand_le_leftInv j t
  calc
    (∑ t ∈ Finset.range (2 ^ (j + 1)),
      (t + 1 : ℝ) * harmonicShiftFirstDifference j t 0) ≤
      ∑ _t ∈ Finset.range (2 ^ (j + 1)),
        (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      exact Finset.sum_le_sum hterm
    _ = ((2 ^ (j + 1) : ℕ) : ℝ) *
        (((2 ^ j : ℕ) : ℝ))⁻¹ := by
      simp
    _ = 2 := by
      rw [Nat.pow_succ]
      push_cast
      have hX : (((2 ^ j : ℕ) : ℝ)) ≠ 0 := by positivity
      field_simp [hX]

/-- The parent finite-depth obligation is now discharged unconditionally. -/
theorem logThresholdFiniteDepthBudget
    (j : ℕ) :
    LogThresholdFiniteDepthBudget j := by
  unfold LogThresholdFiniteDepthBudget
  exact le_trans (logThresholdFiniteDepthSum_le_two j) (by norm_num)

/-- Strengthened deterministic short-packet estimate: four logarithmic units
instead of the parent's conditional six. -/
theorem normalizedShortPacketBudget_le_four_logThreshold
    (j : ℕ) :
    normalizedShortPacketBudget j ≤
      4 * (logarithmicShiftThreshold j : ℝ) := by
  unfold normalizedShortPacketBudget normalizedShortDepthBudget
  simp_rw [mul_assoc]
  rw [← Finset.mul_sum, ← Finset.mul_sum, ← mul_assoc]
  calc
    2 * (logarithmicShiftThreshold j : ℝ) *
        (∑ t ∈ Finset.range (2 ^ (j + 1)),
          (t + 1 : ℝ) * harmonicShiftFirstDifference j t 0) ≤
      2 * (logarithmicShiftThreshold j : ℝ) * 2 := by
        apply mul_le_mul_of_nonneg_left
        · exact logThresholdFiniteDepthSum_le_two j
        · positivity
    _ = 4 * (logarithmicShiftThreshold j : ℝ) := by ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.logThresholdFiniteDepthSum_le_two
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.logThresholdFiniteDepthBudget
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedShortPacketBudget_le_four_logThreshold
