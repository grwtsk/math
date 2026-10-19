import FormalResearch.RiemannHypothesis.Conversation.SubexponentialCountermodel
import Mathlib.Analysis.SpecialFunctions.Complex.Analytic

/-!
# An entire Dirichlet-polynomial family need not have a polynomial scale bound

Batches 16–17 distinguish pole cancellation from quantitative control. The
explicit comparison family has a single source atom at n=2, no atom at one,
and is entire in the Dirichlet variable. Its value at s=1 is exp(sqrt(A)), which
has every fixed epsilon loss but no eventual polynomial upper bound in A.
This is an information-class countermodel, not the centered prime source or
an estimate on its Vaughan ports. Actual arithmetic cancellation remains
a separate obligation.

Human regularity/size distinction: grwtsk contributors. Local entire-family
countermodel and Lean proofs: OpenAI Codex. Mathlib complex exponentials retain
upstream names and mathematical/formal-artifact origin.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.HolomorphicSizeBoundary

open SubexponentialCountermodel PolynomialMertensReduction
noncomputable section

/-- The single atom family in this module, with the following exact parameterization.

def singleAtomFamily (A : ℝ) (s : ℂ) : ℂ := 2 * (comparisonProfile A : ℂ) * Complex.exp (-s *
(Real.log 2 : ℂ))
-/
def singleAtomFamily (A : ℝ) (s : ℂ) : ℂ :=
  2 * (comparisonProfile A : ℂ) * Complex.exp (-s * (Real.log 2 : ℂ))

theorem single_atom_family_entire (A : ℝ) (s : ℂ) : AnalyticAt ℂ (singleAtomFamily A) s := by
  unfold singleAtomFamily
  fun_prop

theorem exact_readout_at_one (A : ℝ) : singleAtomFamily A 1 = (comparisonProfile A : ℂ) := by
  have he : Real.exp (-Real.log 2) = (1 / 2 : ℝ) := by
    rw [Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    norm_num
  have hc : Complex.exp (-(Real.log 2 : ℂ)) = (1 / 2 : ℂ) := by
    rw [← Complex.ofReal_neg, ← Complex.ofReal_exp, he]
    norm_num
  unfold singleAtomFamily
  simp only [neg_mul, one_mul, hc]
  ring

theorem readout_norm (A : ℝ) : ‖singleAtomFamily A 1‖ = comparisonProfile A := by
  rw [exact_readout_at_one, Complex.norm_real, Real.norm_eq_abs]
  unfold comparisonProfile
  rw [
    abs_of_pos (Real.exp_pos (Real.sqrt A))]

theorem every_fixed_epsilon_readout_loss {epsilon A : ℝ} (heps : 0 < epsilon) (hA : 0 ≤ A) :
    ‖singleAtomFamily A 1‖ ≤ Real.exp (1 / (4 * epsilon)) * Real.exp (epsilon * A) := by
  rw [readout_norm]
  exact explicit_exponential_loss heps hA

theorem entire_readout_has_no_eventual_polynomial_bound :
    ¬ EventuallyPolynomialUpper (fun A => ‖singleAtomFamily A 1‖) := by
  simpa only [readout_norm] using no_eventual_polynomial_upper

theorem entire_readout_exceeds_every_real_power (C B : ℝ) {R : ℝ} (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ C * A ^ B < ‖singleAtomFamily A 1‖ := by
  simpa only [readout_norm] using exceeds_every_real_power C B hR

end
end GRWTSK.RiemannHypothesis.Conversation.HolomorphicSizeBoundary
