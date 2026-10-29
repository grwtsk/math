
namespace SmoothedPerronKernelLiteral
open MeasureTheory Set Filter
open scoped FourierTransform
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel
open SmoothedPerronKernelScratch
noncomputable section
example (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (kernelIntegrand k w) (Ioi 0) := kernelIntegrand_integrable_Ioi_zero k w hw
example (w : ℂ) (hw : 0 < w.re) :
    (∫ t : ℝ in Ioi 0, (t : ℂ) * Complex.exp (-w * t)) = 1 / w ^ 2 :=
  integral_first_moment w hw
example (c t : ℝ) : dampedRamp c t =
    ((max t 0 : ℝ) : ℂ) * Complex.exp (-(c : ℂ) * (t : ℂ)) := rfl
example (c : ℝ) : Continuous (dampedRamp c) := dampedRamp_continuous c
example (c : ℝ) : dampedRamp c =
    (Ioi (0 : ℝ)).indicator (kernelIntegrand 1 (c : ℂ)) := dampedRamp_eq_indicator c
example (c : ℝ) (hc : 0 < c) : Integrable (dampedRamp c) := dampedRamp_integrable c hc
example (c : ℝ) (hc : 0 < c) (ξ : ℝ) :
    𝓕 (dampedRamp c) ξ = 1 / ((c : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) ^ 2 :=
  dampedRamp_fourier c hc ξ
example (c : ℝ) (hc : 0 < c) :
    Integrable (fun t : ℝ => 1 / ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) :=
  reciprocal_square_integrable c hc
example (c : ℝ) (hc : 0 < c) : Integrable (𝓕 (dampedRamp c)) :=
  dampedRamp_fourier_integrable c hc
example (c x t : ℝ) : perronIntegrand c x t =
    (x : ℂ) ^ ((c : ℂ) + (t : ℂ) * Complex.I) /
      ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2 := rfl
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    Integrable (perronIntegrand c x) := perronIntegrand_integrable c x hc hx
example (c L : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℝ) •
      (∫ t : ℝ, Complex.exp ((t : ℂ) * (L : ℂ) * Complex.I) /
        ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) = dampedRamp c L :=
  vertical_ramp_inversion c L hc
example (c x : ℝ) (hc : 0 < c) (hx : 0 < x) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c x t) =
      ((max (Real.log x) 0 : ℝ) : ℂ) := elementary_perron_kernel c x hc hx
example (c : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c 1 t) = 0 :=
  elementary_perron_endpoint c hc
example (c x y : ℝ) (hc : 0 < c) (hx : 0 < x) (hy : 0 < y) :
    (1 / (2 * Real.pi) : ℝ) • (∫ t : ℝ, perronIntegrand c (x / y) t) =
      if y < x then ((Real.log (x / y) : ℝ) : ℂ) else 0 :=
  elementary_perron_ratio c x y hc hx hy
end
end SmoothedPerronKernelLiteral
