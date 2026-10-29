import Folder.Rebuild.AnalyticNumberTheory.ChebyshevDyadicUpper

/-!
# Folder.Rebuild.AnalyticNumberTheory.ChebyshevUpperBounds

Checked linear upper bound for Chebyshev theta.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

/--
Checked Chebyshev-type linear upper bound for `theta(N)`.

This is a pre-PNT estimate obtained from central binomial coefficients and
dyadic summation. It is not PNT and does not use analytic continuation,
zero-free regions, RH, or generalized RH.
-/
theorem chebyshevTheta_linear_upper :
    ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevTheta N ≤ C * N := by
  exact chebyshevTheta_linear_upper_from_dyadic
    chebyshevTheta_two_mul_sub_theta_le_n_log_four

theorem ChebyshevThetaUpperBoundTarget_checked :
    ChebyshevThetaUpperBoundTarget := by
  exact chebyshevTheta_linear_upper

/-- Theorem target for the corresponding psi linear upper bound. -/
def ChebyshevPsiLinearUpperBoundTarget : Prop :=
  ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevPsi N ≤ C * N

/-- Theorem target for a weak linear prime-counting upper bound. -/
def PrimeCountingLinearUpperBoundTarget : Prop :=
  ∃ C : Real, 0 < C ∧ ∀ N : Nat, (primeCounting N : Real) ≤ C * N

end AnalyticNumberTheory
end Rebuild
end Folder
