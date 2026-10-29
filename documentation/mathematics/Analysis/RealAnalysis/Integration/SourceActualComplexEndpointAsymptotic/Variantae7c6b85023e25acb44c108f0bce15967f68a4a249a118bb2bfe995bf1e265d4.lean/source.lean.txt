import SourceActualEdgeLeadingLimit
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
The actual endpoint numerator is zero-extended on its true finite support.
A complex exponential with positive real part supplies an integrable majorant.
No zero mode, critical arithmetic estimate, or holomorphic continuation is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualComplexEndpointAsymptotic

open Set Filter MeasureTheory SourcePairing
open scoped Interval Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateSourceEdgeProfile
open SourceActualEdgeLeadingLimit

noncomputable section

/-- The literal endpoint polynomial with its actual moving support. -/
def actualEndpointExtension (A u : ℝ) : ℝ :=
  (Icc 0 (2 * A)).indicator (endpointPolynomial A) u

/-- The actual complex endpoint integrand retains its moving support. -/
def actualComplexEndpointIntegrand (A : ℝ) (z : ℂ) (u : ℝ) : ℂ :=
  (actualEndpointExtension A u : ℂ) * Complex.exp (-z * (u : ℂ))

/-- The independently specified literal leading complex coefficient. -/
def actualLeadingComplexCoefficient (z : ℂ) : ℂ :=
  ∫ u in Ioi (0 : ℝ), (actualLeadingEndpointPolynomial u : ℂ) *
    Complex.exp (-z * (u : ℂ))

/-- A genuine polynomial times exponential majorant on the whole positive axis. -/
theorem actualEndpointMajorant_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun u : ℝ => (192 * u ^ 2 + 4 * u ^ 4) *
      Real.exp (-z.re * u)) (Ioi 0) := by
  have h2 := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (2 : ℝ)) (p := (1 : ℝ)) (by norm_num) (by norm_num) hz
  have h4 := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (4 : ℝ)) (p := (1 : ℝ)) (by norm_num) (by norm_num) hz
  simp only [Real.rpow_one, Real.rpow_ofNat] at h2 h4
  simpa only [add_mul, mul_assoc, Pi.add_apply] using (h2.const_mul 192).add (h4.const_mul 4)

/-- Zero extension does not discard the real support endpoint or change the source. -/
theorem actualComplexEndpointIntegrand_norm_le {A : ℝ} (hA : 1 ≤ A)
    (z : ℂ) (u : ℝ) :
    ‖actualComplexEndpointIntegrand A z u‖ ≤
      (192 * u ^ 2 + 4 * u ^ 4) * Real.exp (-z.re * u) := by
  rw [actualComplexEndpointIntegrand, norm_mul, Complex.norm_real, Complex.norm_exp]
  have he : (-z * (u : ℂ)).re = -z.re * u := by simp
  rw [he]
  refine mul_le_mul_of_nonneg_right ?_ (Real.exp_pos _).le
  by_cases hu : u ∈ Icc 0 (2 * A)
  · simpa only [actualEndpointExtension, indicator_of_mem hu, Real.norm_eq_abs] using
      endpointPolynomial_abs_le A u hA hu.1 hu.2
  · simp only [actualEndpointExtension, indicator_of_notMem hu, Real.norm_eq_abs, abs_zero]
    positivity

/-- The actual finite support integrand is measurable before applying DCT. -/
theorem actualComplexEndpointIntegrand_aestronglyMeasurable (A : ℝ) (z : ℂ) :
    AEStronglyMeasurable (actualComplexEndpointIntegrand A z)
      (volume.restrict (Ioi 0)) := by
  have hp : AEStronglyMeasurable (endpointPolynomial A)
      (volume.restrict (Ioi 0)) := (endpointPolynomial_continuous A).aestronglyMeasurable
  have hi := hp.indicator measurableSet_Icc
  exact (Complex.continuous_ofReal.comp_aestronglyMeasurable hi).mul
    (by fun_prop : Continuous (fun u : ℝ => Complex.exp (-z * (u : ℂ)))).aestronglyMeasurable

/-- Every actual moving-support integrand is genuinely integrable. -/
theorem actualComplexEndpointIntegrand_integrable {A : ℝ} (hA : 1 ≤ A)
    {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (actualComplexEndpointIntegrand A z) (Ioi 0) := by
  exact (actualEndpointMajorant_integrable hz).mono'
    (actualComplexEndpointIntegrand_aestronglyMeasurable A z)
    (Eventually.of_forall (actualComplexEndpointIntegrand_norm_le hA z))

/-- Fixed positive distances eventually lie inside the actual finite support. -/
theorem actualComplexEndpointIntegrand_tendsto {u : ℝ} (hu : 0 ≤ u) (z : ℂ) :
    Tendsto (fun A : ℝ => actualComplexEndpointIntegrand A z u) atTop
      (𝓝 ((actualLeadingEndpointPolynomial u : ℂ) * Complex.exp (-z * (u : ℂ)))) := by
  have he : (fun A : ℝ => actualComplexEndpointIntegrand A z u) =ᶠ[atTop]
      fun A : ℝ => (endpointPolynomial A u : ℂ) * Complex.exp (-z * (u : ℂ)) := by
    filter_upwards [eventually_ge_atTop (u / 2)] with A hA
    have hm : u ∈ Icc 0 (2 * A) := ⟨hu, by linarith⟩
    simp only [actualComplexEndpointIntegrand, actualEndpointExtension, indicator_of_mem hm]
  exact ((Complex.continuous_ofReal.tendsto _).comp
    (endpointPolynomial_tendsto_leading u)).mul_const _ |>.congr' he.symm

/-- Genuine DCT over the whole positive axis for each complex positive half plane point. -/
theorem actualComplexEndpoint_integral_tendsto {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun A : ℝ => ∫ u in Ioi (0 : ℝ), actualComplexEndpointIntegrand A z u)
      atTop (𝓝 (actualLeadingComplexCoefficient z)) := by
  have hm : ∀ᶠ A : ℝ in atTop, AEStronglyMeasurable
      (actualComplexEndpointIntegrand A z) (volume.restrict (Ioi 0)) :=
    Eventually.of_forall (fun A => actualComplexEndpointIntegrand_aestronglyMeasurable A z)
  have hb : ∀ᶠ A : ℝ in atTop, ∀ᵐ u ∂volume.restrict (Ioi 0),
      ‖actualComplexEndpointIntegrand A z u‖ ≤
        (192 * u ^ 2 + 4 * u ^ 4) * Real.exp (-z.re * u) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    exact Eventually.of_forall (actualComplexEndpointIntegrand_norm_le hA z)
  have hl : ∀ᵐ u ∂volume.restrict (Ioi (0 : ℝ)),
      Tendsto (fun A : ℝ => actualComplexEndpointIntegrand A z u) atTop
        (𝓝 ((actualLeadingEndpointPolynomial u : ℂ) * Complex.exp (-z * (u : ℂ)))) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    exact actualComplexEndpointIntegrand_tendsto hu.le z
  exact tendsto_integral_filter_of_dominated_convergence _ hm hb
    (actualEndpointMajorant_integrable hz) hl

end
end FormalResearch.RiemannHypothesis.SourceActualComplexEndpointAsymptotic
