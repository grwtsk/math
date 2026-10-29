import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
The genuine strict long-window at the original real scale contains the first
integer cell and a width-one logarithmic rectangle. Both cutoffs are unchanged
natural floors. This is support membership only, not a signed main-term bound.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualStrictWindow
open Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel
noncomputable section

private theorem source_upper_polynomial_gap {A : ℝ} (hA : 25600 ≤ A) :
    4 * (A ^ 2 + 2) ^ 2 ≤ Real.exp (2 * A) := by
  have hA0 : 0 ≤ A := by linarith
  have hs : 256 ≤ A ^ 2 := by nlinarith
  have h4 : 256 * A ^ 2 ≤ A ^ 4 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hs) (sq_nonneg A)]
  have h6 : 256 * A ^ 4 ≤ A ^ 6 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hs) (pow_nonneg hA0 4)]
  have he := Real.pow_div_factorial_le_exp (2 * A) (show 0 ≤ 2 * A by positivity) 6
  norm_num at he
  nlinarith

/-- A genuine quantitative gap between the two unchanged floor cutoffs. -/
theorem actual_strict_cutoff_square_gap {A : ℝ} (hA : 25600 ≤ A) :
    4 * (vaughanCutoff A + 2) ^ 2 ≤ sourceKernelCutoff A := by
  apply (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hU0 : 0 ≤ (vaughanCutoff A : ℝ) := Nat.cast_nonneg _
  norm_num only [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_pow, Nat.cast_add]
  exact (show 4 * ((vaughanCutoff A : ℝ) + 2) ^ 2 ≤
    4 * (A ^ 2 + 2) ^ 2 by nlinarith).trans (source_upper_polynomial_gap hA)

/-- Natural division leaves a full strict margin above the first long integer cells. -/
theorem actual_strict_quotient_lower {A : ℝ} (hA : 25600 ≤ A) :
    4 * (vaughanCutoff A + 2) ≤
      sourceKernelCutoff A / (vaughanCutoff A + 1) := by
  apply (Nat.le_div_iff_mul_le (by omega : 0 < vaughanCutoff A + 1)).2
  have hg := actual_strict_cutoff_square_gap hA
  nlinarith

/-- The actual first cell belongs to the strict natural upper window. -/
theorem actual_first_strict_cell_mem {A : ℝ} (hA : 25600 ≤ A) :
    vaughanCutoff A + 1 ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)) := by
  have h := actual_strict_quotient_lower hA
  exact Finset.mem_Ico.mpr ⟨le_rfl, by omega⟩

/-- A genuine closed two-integer box stays strictly below the natural quotient boundary. -/
theorem actual_strict_integer_box_mem {A : ℝ} (hA : 25600 ≤ A) {k : ℕ}
    (hk : k ∈ Finset.Icc (vaughanCutoff A + 1) (vaughanCutoff A + 2)) :
    k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)) := by
  have h := actual_strict_quotient_lower hA
  obtain ⟨hk1, hk2⟩ := Finset.mem_Icc.mp hk
  exact Finset.mem_Ico.mpr ⟨hk1, by omega⟩

/-- The logarithmic rectangle also lies below the genuine natural upper-window endpoint. -/
theorem actual_strict_log_window {A : ℝ} (hA : 25600 ≤ A) :
    Real.log (vaughanCutoff A : ℝ) + 1 <
      Real.log ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hK : 4 * ((vaughanCutoff A : ℝ) + 2) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast actual_strict_quotient_lower hA
  have he : Real.exp (Real.log (vaughanCutoff A : ℝ) + 1) <
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    rw [Real.exp_add, Real.exp_log hU]
    have hex := Real.exp_one_lt_three
    nlinarith [mul_lt_mul_of_pos_left hex hU]
  exact (Real.lt_log_iff_exp_lt (by linarith)).2 he

/-- Every point of the actual first logarithmic rectangle is below the closed N seam. -/
theorem actual_strict_real_rectangle {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : t ∈ Icc (Real.log (vaughanCutoff A : ℝ))
      (Real.log (vaughanCutoff A : ℝ) + 1))
    (hu : u ∈ Icc ((vaughanCutoff A + 1 : ℕ) : ℝ)
      ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    Real.exp t * u < (sourceKernelCutoff A : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hg : 4 * ((vaughanCutoff A : ℝ) + 2) ^ 2 ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast actual_strict_cutoff_square_gap hA
  have he : Real.exp t < 3 * (vaughanCutoff A : ℝ) := by
    calc
      Real.exp t ≤ Real.exp (Real.log (vaughanCutoff A : ℝ) + 1) :=
        Real.exp_le_exp.mpr ht.2
      _ = (vaughanCutoff A : ℝ) * Real.exp 1 := by rw [Real.exp_add, Real.exp_log hU]
      _ < 3 * (vaughanCutoff A : ℝ) := by
        nlinarith [mul_lt_mul_of_pos_left Real.exp_one_lt_three hU]
  have hu1 : (vaughanCutoff A : ℝ) + 1 ≤ u := by exact_mod_cast hu.1
  have hu2 : u ≤ (vaughanCutoff A : ℝ) + 2 := by exact_mod_cast hu.2
  have hu0 : 0 < u := by linarith
  nlinarith [mul_lt_mul_of_pos_right he hu0,
    mul_le_mul_of_nonneg_left hu2 (by positivity : 0 ≤ 3 * (vaughanCutoff A : ℝ))]

/-- The rectangle is genuinely inside the true source support as well. -/
theorem actual_strict_rectangle_source_support {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : t ∈ Icc (Real.log (vaughanCutoff A : ℝ))
      (Real.log (vaughanCutoff A : ℝ) + 1))
    (hu : u ∈ Icc ((vaughanCutoff A + 1 : ℕ) : ℝ)
      ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    Real.exp t * u < sourceUpper A := by
  exact (actual_strict_real_rectangle hA ht hu).trans_le
    (Nat.floor_le (Real.exp_pos (2 * A)).le)

end
end FormalResearch.RiemannHypothesis.SourceActualStrictWindow
