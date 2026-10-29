/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairEvaluation

set_option autoImplicit false

/-! Exact rational fixtures and scope controls. Ordinary `decide` scripts are
NOT executed here. The continuum soundness and analytic dependencies remain
NOT_ELABORATED / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.Checks.UniformPairEvaluation
open Complex Set
open CriticalStripHeightDescent CriticalStripHeightDescent.ZeroIsolation
open UniformFiniteC1 UniformPairEvaluation
open GRWTSK.Analysis.Complex.SymmetricPair
noncomputable section

/-- Value polynomial: 16 terms. Its actual derivative: 15 terms. -/
def exampleConfig : Config := ⟨2,12,15,2⟩

example : exampleConfig.check=true := by decide
example : exampleConfig.valueRadius ≤ (1/100000 : ℚ) := by decide
example : exampleConfig.derivativeRadius ≤ (1/100000 : ℚ) := by decide

/-- Uniform over the complete convex strip, not the single rational fixture. -/
theorem uniform_small_channel_bounds {c d : ℂ} (hd : d ≠ 0)
    (hp : c+d ∈ CenteredMellin.SexticPrimitive.C1Approximation.band 1)
    (hm : c-d ∈ CenteredMellin.SexticPrimitive.C1Approximation.band 1) :
    ‖even (CenteredMellin.SexticPrimitive.finiteModel 2) c d-even exampleConfig.polynomial c d‖ ≤
      (1/100000 : ℝ) ∧
    ‖odd (CenteredMellin.SexticPrimitive.finiteModel 2) c d-odd exampleConfig.polynomial c d‖ ≤
      (1/100000 : ℝ) := by
  have hc : exampleConfig.Guard := (exampleConfig.check_iff).mp (by decide)
  have h := finite_channel_errors hc (by norm_num [exampleConfig]) hd hp hm
  exact ⟨h.1.trans (by exact_mod_cast (show exampleConfig.valueRadius ≤ (1/100000 : ℚ) by decide)),
    h.2.trans (by exact_mod_cast (show exampleConfig.derivativeRadius ≤ (1/100000 : ℚ) by decide))⟩

theorem example_accepts : check exampleConfig (3/4) 1=true := by decide

theorem example_not_target : ¬ NontrivialZetaZero (⟨3/4,1⟩ : ℂ) :=
  not_target example_accepts

-- The exact polynomial does not incur endpoint-rounding amplification.
example (x y : ℚ) : (witness exampleConfig x y).evaluationSecant=exampleConfig.derivativeRadius := rfl
example (x y : ℚ) : (witness exampleConfig x y).evaluationValue=exampleConfig.valueRadius := rfl

-- Both value and derivative are one analytic polynomial, not unrelated data.
example (s : ℂ) : HasDerivAt exampleConfig.polynomial (exampleConfig.polynomialSlope s) s :=
  exampleConfig.polynomial_hasDerivAt s

-- Explicit guard failures. A polynomial outside these bounds is not certified.
example : ({exampleConfig with cutoff := 0} : Config).check=false := by decide
example : ({exampleConfig with derivativeTerms := 0} : Config).check=false := by decide
example : ({exampleConfig with derivativeTerms := 1} : Config).check=false := by decide
example : ({exampleConfig with size := -1} : Config).check=false := by decide
example : check exampleConfig (1/2) 1=false := by decide
example : check exampleConfig 0 1=false := by decide
example : check exampleConfig (3/4) 2=false := by decide

-- The constant one-term truncation has a zero derivative; it is not the exponential slope.
example : deriv (fun _ : ℂ => (1 : ℂ)) 0=0 := (hasDerivAt_const 0 (1 : ℂ)).deriv

-- For P=z^2, the exact odd secant is 2c, not either endpoint derivative.
example (c d : ℂ) (hd : d ≠ 0) : odd (fun z : ℂ => z^2) c d=2*c := by
  unfold odd
  field_simp [hd] <;> ring

-- Uniform approximation accuracy still does not exclude a true mirror-zero pair.
example : energy (fun z : ℂ => z^2-1) 0 1=0 := by norm_num [energy,even,odd]

-- The next maintained window still requires all eligible complex points, not a grid.
example {C : Config} (hc : C.Guard) (hs : (19 : ℝ) ≤ (C.size : ℝ))
    (hg : ∀ z ∈ HeightFiber.successorBox 17, MirrorApproximation.Eligible z →
      totalBudget C 18 (MirrorChannels.offset z) <
        energy C.polynomial (MirrorChannels.center z) (MirrorChannels.offset z)) : WindowRH 18 :=
  window_successor_of_uniform_margin SeventeenBandJet.windowRH_seventeen hc hs hg

end
end GRWTSK.RiemannHypothesis.Checks.UniformPairEvaluation
