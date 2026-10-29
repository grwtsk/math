/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv

/-! # Classical logarithmic coefficient at zero
This identifies the local zeta coefficient. Matching it to the globally
boundary-normalized Riesz primitive still needs the contour/source bridge. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalCoefficients

theorem logDeriv_riemannZeta_zero :
    logDeriv riemannZeta 0 = Complex.log (2 * Real.pi) := by
  rw [logDeriv_apply, deriv_riemannZeta_zero, riemannZeta_zero]
  ring

theorem continuousAt_neg_logDeriv_zero :
    ContinuousAt (fun s : ℂ => -logDeriv riemannZeta s) 0 := by
  have ha := analyticOn_riemannZeta 0 (by norm_num)
  exact (ha.deriv.continuousAt.div ha.continuousAt (by rw [riemannZeta_zero]; norm_num)).neg

/-- The regular local coefficient multiplying x in the first-Riesz integrand. -/
theorem classical_linear_coefficient (x : ℝ) :
    -(logDeriv riemannZeta 0) * (x : ℂ) = -(x : ℂ) * Complex.log (2 * Real.pi) := by
  rw [logDeriv_riemannZeta_zero]
  ring
end GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalCoefficients
