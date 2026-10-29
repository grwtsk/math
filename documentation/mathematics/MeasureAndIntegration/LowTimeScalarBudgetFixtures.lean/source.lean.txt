import SourceLowTimeScalarBudget

/-!
UNCOMPILED hostile fixtures. They protect the positive cutoff, literal U factor,
actual centered prefix and fixed numerical margin. No full work estimate follows.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.LowTimeScalarBudgetFixtures

open MeasureTheory
open scoped BigOperators Interval
open SourceLowTimeScalarBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering

noncomputable section

theorem diagonal_prefix_empty (U : ℕ) :
    (∑ n ∈ Finset.Ioc U U, centeredBeta U n) = 0 := by simp

theorem empty_prefix_bound_reuses_literal_row (U : ℕ) (hU : 1 ≤ U) :
    |∑ n ∈ Finset.Ioc U U, centeredBeta U n| ≤ (U : ℝ) :=
  centered_beta_prefix_abs_le_cutoff U U hU le_rfl

theorem cutoff_zero_refutes_exponential_reconstruction :
    (∫ t in Real.log (0 : ℝ)..Real.log (1 : ℝ), Real.exp (t / 2)) ≠
      2 * (Real.sqrt (1 : ℝ) - Real.sqrt (0 : ℝ)) := by norm_num

theorem cutoff_factor_cannot_be_erased :
    1 < 2 * (3 : ℝ) / Real.sqrt ((3 + 1 : ℕ) : ℝ) := by norm_num

theorem exact_curvature_margin :
    2 * ((162826 : ℝ) / 7623 + 1 / 4) < 45 := by norm_num

theorem scale_one_margin_keeps_actual_constant :
    (Real.log 4 + 4 + Real.log 2) *
      (2 * (162826 / (7623 * (1 : ℝ) ^ 2) + 1 / 4)) ≤
      45 * (Real.log 4 + 4 + Real.log 2) :=
  error_times_twice_curvature_budget_le_margin le_rfl

end
end FormalResearch.RiemannHypothesis.LowTimeScalarBudgetFixtures
