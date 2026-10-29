/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Original contributions: MIT (repository LICENSE).
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelFiniteBridge
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open Real Finset
open scoped BigOperators ArithmeticFunction

namespace GRWTSK.RiemannHypothesis.Checks

open GRWTSK.RiemannHypothesis

/-- The exact n=0 prefix is psi(0), not an empty interval offset by
one prime-power coefficient. -/
theorem lambda_log_kernel_zero_shift :
    wienerAbelPrefix wienerShiftedLambda 0 =
      Chebyshev.psi (0 : ℝ) :=
  wienerShiftedLambda_prefix_eq_psi 0

/-- The first shifted stage includes Λ(1), which is zero, and
is exactly Chebyshev.psi(1). -/
theorem lambda_log_kernel_first_shift :
    wienerAbelPrefix wienerShiftedLambda 1 =
      Chebyshev.psi (1 : ℝ) :=
  wienerShiftedLambda_prefix_eq_psi 1

/-- Not every individual Λ value is bounded by the constant C.
The actual reusable input is an ALL-N cumulative Chebyshev bound. -/
theorem lambda_log_kernel_prefix_all_N (N : ℕ) :
    wienerAbelPrefix wienerShiftedLambda N ≤
      (Real.log 4 + 4) * (N : ℝ) :=
  wienerShiftedLambda_prefix_le N

/-- No pi or factor 2 has been silently canceled in the Fourier
denominator. Its exact value is pinned to 2*pi. -/
theorem lambda_log_kernel_twopi :
    wienerLogKernelC = 2 * Real.pi :=
  rfl

/-- The Fourier-logarithmic exponential denominator grows on the
ENTIRE real line, including negative logarithmic arguments. -/
theorem lambda_log_kernel_den_increasing :
    StrictMono wienerLogKernelDen :=
  wienerLogKernelDen_strictMono

/-- This rejects the erroneous claim that the log-square factor alone
is antitone. The FULL weight including 1/x is antitone because the
combined exponential denominator has a positive derivative. -/
theorem lambda_log_kernel_weight_decreasing
    {T : ℝ} (hT : 0 < T) :
    AntitoneOn (wienerRealLogWeight T) (Set.Ioi 0) :=
  wienerRealLogWeight_antitoneOn hT

/-- At its own positive real scale, the kernel is exactly 1/T:
log(T/T)=0; the Fourier normalization is not T-dependent in a
different way. -/
theorem lambda_log_kernel_at_its_scale
    {T : ℝ} (hT : 0 < T) :
    wienerRealLogWeight T T = T⁻¹ := by
  simp [wienerRealLogWeight, div_self hT.ne', Real.log_one]

/-- For the LITERAL arithmetic coefficients and Fourier weights,
the finite sum is dominated by the same shifted weight sum with
the fixed pinned Chebyshev constant C=log(4)+4. -/
theorem lambda_log_kernel_weighted_finite_actual
    {T : ℝ} (hT : 0 < T) (N : ℕ) :
    (∑ k ∈ Finset.range N,
        wienerShiftedLambda k * wienerShiftedLogWeight T k)
      ≤ (Real.log 4 + 4) *
          (∑ k ∈ Finset.range N, wienerShiftedLogWeight T k) :=
  wienerLambdaLogKernel_finite_majorization hT N

/-- The main infinite Fourier kernel bound remains an independent
calculus and summability problem: finite majorization does not
magically produce its integral comparison. -/
def remainingUniformLogKernelObligations : List String :=
  ["prove on the pinned Mathlib revision the exact integral of W_T over x>1 via the logarithmic change of variables",
   "derive ∫_{x>1} W_T(x) <= 2*pi^2 uniformly for every T>=1",
   "apply pinned AntitoneOn.tsum_le_integral to shifted weights and obtain sum_{n>=1} W_T(n) <= 1+2*pi^2",
   "convert the finite Abel majorization for actual Lambda to a summable nonnegative weighted series",
   "complete the exact original bound_sum_log' for the true von Mangoldt weights, not a fitted premise",
   "use it to justify sigma-downarrow-one and the compact-to-Schwartz extension of limiting_cor_schwartz",
   "run pinned Lean 4.33 --wfail, --trust=0 and all transitive axiom checks with Noe source custody"]

end GRWTSK.RiemannHypothesis.Checks
