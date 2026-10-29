open MeasureTheory FourierTransform
open FourierL1L2BridgeScratch
open scoped Topology

example (f g : ℝ → ℂ) (hf : Integrable f) (hg : Integrable g) :
    (∫ x : ℝ, (𝓕⁻ f) x * g x) = ∫ x : ℝ, f x * (𝓕⁻ g) x :=
  integral_fourierInv_mul_eq f g hf hg

example (f : ℝ → ℂ) (hf : Integrable f) : Continuous (𝓕⁻ f) :=
  continuous_fourierInv f hf

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ((𝓕⁻ (hf2.toLp f) : Lp ℂ 2 (volume : Measure ℝ)) : ℝ → ℂ) =ᵐ[volume] 𝓕⁻ f :=
  fourierInv_toLp_ae f hf hf2

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    MemLp (𝓕⁻ f) 2 := fourierInv_memLp f hf hf2

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    (fourierInv_memLp f hf hf2).toLp (𝓕⁻ f) = 𝓕⁻ (hf2.toLp f) :=
  fourierInv_toLp_eq f hf hf2

example (f : ℝ → ℂ) (hf : Integrable f) (hf2 : MemLp f 2) :
    ‖(fourierInv_memLp f hf hf2).toLp (𝓕⁻ f)‖ = ‖hf2.toLp f‖ :=
  norm_fourierInv_toLp f hf hf2
