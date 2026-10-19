import SourceCubicCorrelationTaylor
import FormalResearch.RiemannHypothesis.SourceSamplingRemainder

/-!
Actual cubic logarithmic sampling derivative error on the upper positive axis.
Every cubic jet is retained independently. This is a row estimate, not a
quadrature or complete compensated Omega reconstruction.
Research direction: grwtsk contributors. Proof construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCubicSamplingRemainder

open SourcePairing SourcePositiveSampling SourceSamplingRemainder SourceCubicCorrelationTaylor
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

/-- The cubic logarithmic derivative model keeps all four signed Taylor jets. -/
def cubicLogModelDerivative (A k u : ℝ) : ℝ :=
  1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
    ((1 - Real.log u / 2) * cubicCorrelationJet A (Real.log k) (Real.log u) +
      Real.log u * deriv (cubicCorrelationJet A (Real.log k)) (Real.log u))

/-- The exact derivative difference is the actual cubic remainder and its derivative. -/
theorem cubic_log_derivative_difference {A k u : ℝ} (hA : 0 < A) (hk : 0 < k)
    (hu : 0 < u) :
    deriv (logProfile A k) u - cubicLogModelDerivative A k u =
      1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
        ((1 - Real.log u / 2) * cubicCorrelationRemainder A (Real.log k) (Real.log u) +
          Real.log u * deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u)) := by
  rw [(logProfile_hasDerivAt hA k hu).deriv, samplingDerivative_prefactor hk hu,
    (cubicCorrelationRemainder_hasDerivAt A (Real.log k) (Real.log u) hA).deriv]
  unfold cubicLogModelDerivative cubicCorrelationRemainder
  rw [(cubicCorrelationJet_hasDerivAt A (Real.log k) (Real.log u)).deriv]
  ring

/-- The actual upper-row error has the exact 5/24 and 1/48 logarithmic coefficients. -/
theorem cubic_log_derivative_difference_abs_le {A k u : ℝ} (hA : 91 ≤ A)
    (hk : 0 < k) (hu : 1 ≤ u) :
    |deriv (logProfile A k) u - cubicLogModelDerivative A k u| ≤
      67 / (A ^ 4 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        ((5 / 24 : ℝ) * (Real.log u) ^ 4 + (1 / 48 : ℝ) * (Real.log u) ^ 5) := by
  have hup : 0 < u := by linarith
  have hl : 0 ≤ Real.log u := Real.log_nonneg hu
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  have hR := cubicCorrelationRemainder_abs_le A (Real.log k) (Real.log u) hA
  have hd := cubicCorrelationRemainder_deriv_abs_le A (Real.log k) (Real.log u) hA
  rw [abs_of_nonneg hl] at hd
  have hc : |1 - Real.log u / 2| ≤ 1 + Real.log u / 2 := by
    simpa only [abs_one, abs_div, abs_of_nonneg hl,
      abs_of_pos (by norm_num : (0 : ℝ) < 2)] using abs_sub (1 : ℝ) (Real.log u / 2)
  rw [cubic_log_derivative_difference (by linarith) hk hup, abs_mul,
    abs_of_nonneg hweight]
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|1 - Real.log u / 2| * |cubicCorrelationRemainder A (Real.log k) (Real.log u)| +
          Real.log u * |deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u)|) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_mul, abs_of_nonneg hl] using abs_add_le
        ((1 - Real.log u / 2) * cubicCorrelationRemainder A (Real.log k) (Real.log u))
        (Real.log u * deriv (cubicCorrelationRemainder A (Real.log k)) (Real.log u))
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        ((1 + Real.log u / 2) * (67 / A ^ 4 * (Real.log u) ^ 4 / 24) +
          Real.log u * (67 / A ^ 4 * (Real.log u) ^ 3 / 6)) := by
      gcongr
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.SourceCubicSamplingRemainder
