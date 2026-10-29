/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

/-!
# The lower correction in a positive-half-line cutoff

Genuine full positive-half-line integrability and its actual
zero integral are retained. Silence beyond the cutoff removes the upper tail,
leaving the complete lower interval with its negative sign. The truncated
integral is not replaced by zero.
-/

namespace GRWTSK.Analysis.Integration.PositiveHalfLineCutoffBalance

open MeasureTheory Set

noncomputable section

/-- A full zero integral and silent upper tail leave the exact lower interval correction. -/
theorem positive_halfline_cutoff_balance {f : ℝ → ℝ} {R : ℝ}
    (admitted : IntegrableOn f (Ioi 0)) (fullZero : (∫ x in Ioi (0 : ℝ), f x) = 0)
    (ordered : 1 ≤ R) (silent : ∀ x : ℝ, R < x → f x = 0) :
    (∫ x in (1 : ℝ)..R, f x) = -(∫ x in (0 : ℝ)..1, f x) := by
  have admittedOne : IntegrableOn f (Ioi 1) :=
    admitted.mono_set (Ioi_subset_Ioi (by norm_num))
  have upperZero : (∫ x in Ioi R, f x) = 0 :=
    setIntegral_eq_zero_of_forall_eq_zero (fun x hx ↦ silent x hx)
  have lower := intervalIntegral.integral_Ioi_sub_Ioi admitted (by norm_num : (0 : ℝ) ≤ 1)
  have upper := intervalIntegral.integral_Ioi_sub_Ioi admittedOne ordered
  rw [fullZero] at lower
  rw [upperZero] at upper
  linarith

/-- A supplied complete sample error keeps the lower integral correction in the price. -/
theorem positive_halfline_sample_price {f : ℝ → ℝ} {R S V : ℝ}
    (admitted : IntegrableOn f (Ioi 0)) (fullZero : (∫ x in Ioi (0 : ℝ), f x) = 0)
    (ordered : 1 ≤ R) (silent : ∀ x : ℝ, R < x → f x = 0)
    (sampleError : |S - (∫ x in (1 : ℝ)..R, f x)| ≤ V) :
    |S| ≤ V + |∫ x in (0 : ℝ)..1, f x| := by
  have balance := positive_halfline_cutoff_balance admitted fullZero ordered silent
  calc
    |S| = |(S - (∫ x in (1 : ℝ)..R, f x)) + (∫ x in (1 : ℝ)..R, f x)| := by
      congr 1
      ring
    _ ≤ |S - (∫ x in (1 : ℝ)..R, f x)| + |∫ x in (1 : ℝ)..R, f x| := abs_add_le _ _
    _ ≤ V + |∫ x in (1 : ℝ)..R, f x| := add_le_add sampleError le_rfl
    _ = V + |∫ x in (0 : ℝ)..1, f x| := by rw [balance, abs_neg]

end

end GRWTSK.Analysis.Integration.PositiveHalfLineCutoffBalance
