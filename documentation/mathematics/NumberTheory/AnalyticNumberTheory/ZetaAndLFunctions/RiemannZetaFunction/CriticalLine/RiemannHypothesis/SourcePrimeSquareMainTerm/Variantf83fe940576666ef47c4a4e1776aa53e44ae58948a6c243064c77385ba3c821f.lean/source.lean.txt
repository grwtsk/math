import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit

/-!
# The literal prime-square contribution of the unchanged signed source

The square sector has the same positive linear normalization as the diagonal
integral. Elementary weighted-prime Mertens controls its signed replacement
error uniformly. This is one exact sub-contribution of the original prime-power
moment; no upper bound for the full signed moment or covariance is inferred.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm

open MeasureTheory ArithmeticFunction
open scoped Interval
open SourcePairing SourceDiagonalPrimeAbel SourceDiagonalMainTerm WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMobiusSplit PrimePowerDescent

noncomputable section

/-- The original closed prime-power source coefficient, restricted to prime squares. -/
def primeSquareMoment (A : ℝ) : ℝ :=
  ∑ p ∈ primeLogInventory A, vonMangoldt (p ^ 2) * closedPrimeWeight A (p ^ 2)

/-- Squaring preserves the literal source normalization and doubles the logarithmic separation. -/
theorem prime_square_source_coefficient (A : ℝ) {p : ℕ} (hp : p.Prime) :
    vonMangoldt (p ^ 2) * closedPrimeWeight A (p ^ 2) =
      Real.log (p : ℝ) / (p : ℝ) * diagonalCorrelation A (Real.log p) := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  rw [vonMangoldt_apply_pow (by norm_num : (2 : ℕ) ≠ 0), vonMangoldt_apply_prime hp]
  unfold closedPrimeWeight exponentialTest diagonalCorrelation
  rw [Nat.cast_pow, Real.log_pow]
  norm_num only [Nat.cast_ofNat]
  rw [show -(2 * Real.log (p : ℝ)) / 2 = -Real.log (p : ℝ) by ring,
    Real.exp_neg, Real.exp_log hp0]
  ring

/-- The closed prime inventory is exactly the prime-square part
of the original closed source inventory. -/
theorem prime_square_mem_source_inventory_iff (A : ℝ) {p : ℕ} (hp : p.Prime) :
    p ^ 2 ∈ primePowerInventory (2 * A) ↔ p ∈ primeLogInventory A := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hp2 : 2 ≤ p ^ 2 := by nlinarith [hp.two_le]
  simp only [primePowerInventory, primeLogInventory, Finset.mem_filter,
    Finset.mem_Icc, Finset.mem_Ioc]
  rw [and_iff_right hp2, and_iff_left hp, and_iff_right hp.pos]
  rw [Nat.le_floor_iff (Real.exp_pos _).le, Nat.le_floor_iff (Real.exp_pos _).le]
  rw [Nat.cast_pow, show 2 * A = A + A by ring, Real.exp_add]
  constructor <;> intro h <;> nlinarith [Real.exp_pos A]

/-- Exact coefficient transport to the already checked weighted-prime logarithmic sum. -/
theorem primeSquareMoment_eq_primeLogSum (A : ℝ) :
    primeSquareMoment A = primeLogSum A (diagonalCorrelation A) := by
  unfold primeSquareMoment primeLogSum
  apply Finset.sum_congr rfl
  intro p hp
  exact prime_square_source_coefficient A (Finset.mem_filter.mp hp).2

/-- No prime sits at logarithmic zero, so the full square sector is the exact zero-to-A window. -/
theorem primeSquareMoment_eq_primeLogWindow (A : ℝ) :
    primeSquareMoment A = primeLogWindow 0 A (diagonalCorrelation A) := by
  rw [primeSquareMoment_eq_primeLogSum, primeLogWindow]
  have hz : primeLogInventory 0 = ∅ := by
    apply Finset.eq_empty_of_forall_notMem
    intro p hp
    obtain ⟨hI, hprime⟩ := Finset.mem_filter.mp hp
    have hple := (Finset.mem_Ioc.mp hI).2
    simp only [Real.exp_zero, Nat.floor_one] at hple
    have := hprime.two_le
    omega
  simp only [primeLogSum, hz, Finset.sum_empty, sub_zero]

/-- The actual square error is one signed Abel interaction;
both endpoint errors are exactly zero. -/
theorem primeSquareMoment_exact_signed_error (A : ℝ) (hA : 1 ≤ A) :
    primeSquareMoment A - diagonalMainCoefficient A * A =
      -(∫ t in 0..A, primeLogError t * deriv (diagonalCorrelation A) t) := by
  have he := primeLogWindow_sub_integral 0 A (by norm_num) (by linarith)
    (diagonalCorrelation A) (diagonalCorrelation_contDiff A (by linarith))
  rw [← primeSquareMoment_eq_primeLogWindow, diagonalCorrelation_integral A hA,
    diagonalCorrelation_at_upper A (by linarith), diagonalCorrelation_at_zero A hA] at he
  simpa only [primeLogError, primeLogPrefix_zero, sub_self, zero_mul, mul_zero,
    sub_zero, zero_sub] using he

/-- A literal weighted-prime Mertens witness gives the source square sector
an 11-times witness. -/
theorem primeSquareMoment_main_term_error_of_mertens (C : ℝ) (hC0 : 0 ≤ C)
    (hC : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C) (A : ℝ) (hA : 1 ≤ A) :
    |primeSquareMoment A - diagonalMainCoefficient A * A| ≤ 11 * C := by
  have he := primeLogWindow_error_le 0 A (by norm_num) (by linarith)
    (diagonalCorrelation A) (diagonalCorrelation_contDiff A (by linarith)) C hC
  have hv := diagonalCorrelation_variation_le A 0 A hA (by norm_num) (by linarith) le_rfl
  rw [← primeSquareMoment_eq_primeLogWindow, diagonalCorrelation_integral A hA,
    diagonalCorrelation_at_upper A (by linarith), diagonalCorrelation_at_zero A hA,
    abs_zero, abs_one, add_zero] at he
  nlinarith

/-- The existing unconditional Mertens witness controls this exact source component at every A≥1. -/
theorem primeSquareMoment_uniform_main_term_error :
    ∃ C : ℝ, 0 ≤ C ∧ (∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C) ∧
      ∀ A : ℝ, 1 ≤ A →
        |primeSquareMoment A - diagonalMainCoefficient A * A| ≤ 11 * C := by
  obtain ⟨C, hC0, hC⟩ := primeLogError_uniformly_bounded
  exact ⟨C, hC0, hC, primeSquareMoment_main_term_error_of_mertens C hC0 hC⟩

end
end FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm
