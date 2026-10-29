import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceEnergy
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier

/-!
# Exact weighted arithmetic spectrum

Written continuation 2026-10-09: grwtsk contributors. Local finite Fourier
adapter: OpenAI Codex. The negative angular-frequency convention is explicitly
related to the unchanged source's positive-exponential sourceFourier. The
arithmetic row contains every integer and its actual pickup coefficient.
No estimate of its cancellation is asserted.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourceSpectrum
open WeightedSourcePickup WeightedSourceMass WeightedSourceEnergy
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open MeasureTheory Set
open scoped BigOperators FourierTransform
noncomputable section

/-- The negative angular transform in this module, with the following exact parameterization.

def negativeAngularTransform (f : ℝ → ℝ) (ξ : ℝ) : ℂ := sourceFourier f (-ξ)
-/
def negativeAngularTransform (f : ℝ → ℝ) (ξ : ℝ) : ℂ := sourceFourier f (-ξ)

/-- The arithmetic spectrum in this module, with the following exact parameterization.

def arithmeticSpectrum (A t ξ : ℝ) : ℂ := ∑ n ∈ integerInventory A, (coefficient A t n : ℂ) *
Complex.exp (-Complex.I * (ξ : ℂ) * (Real.log n : ℂ))
-/
def arithmeticSpectrum (A t ξ : ℝ) : ℂ :=
  ∑ n ∈ integerInventory A, (coefficient A t n : ℂ) *
    Complex.exp (-Complex.I * (ξ : ℂ) * (Real.log n : ℂ))

theorem sourceFourier_translate (f : ℝ → ℝ) (y ξ : ℝ) :
    sourceFourier (fun x ↦ f (x - y)) ξ =
      Complex.exp (Complex.I * (ξ : ℂ) * (y : ℂ)) * sourceFourier f ξ := by
  unfold sourceFourier
  calc
    _ = ∫ x : ℝ, (f x : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * ((x + y : ℝ) : ℂ)) := by
      rw [← integral_add_right_eq_self
        (fun x : ℝ ↦ (f (x - y) : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) y]
      simp only [add_sub_cancel_right]
    _ = _ := by
      rw [← integral_const_mul]
      apply integral_congr_ae
      filter_upwards [] with x
      push_cast
      rw [show Complex.I * (ξ : ℂ) * ((x : ℂ) + (y : ℂ)) =
        Complex.I * (ξ : ℂ) * (y : ℂ) + Complex.I * (ξ : ℂ) * (x : ℂ) by ring,
        Complex.exp_add]
      ring

theorem source_phase_integrable {A : ℝ} (hA : 1 ≤ A) (y ξ : ℝ) :
    Integrable (fun x : ℝ ↦ (prescribedSource A (x - y) : ℂ) *
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) volume := by
  have hi : Integrable (fun x : ℝ ↦ (prescribedSource A (x - y) : ℂ)) volume := by
    have hr : Integrable (prescribedSource A) volume := by
      rw [prescribedSource_eq A hA]
      exact CorrelationRegularity.normalizedTest_integrable A (by linarith)
    exact Complex.ofRealCLM.integrable_comp (hr.comp_sub_right y)
  apply hi.mul_bdd (c := 1)
  · exact (Complex.continuous_exp.comp
      (continuous_const.mul (Complex.continuous_ofReal))).aestronglyMeasurable
  · exact ae_of_all _ fun x ↦ by simp [Complex.norm_exp]

theorem actual_sourceFourier_finite_sum {A : ℝ} (hA : 1 ≤ A) (t ξ : ℝ) :
    sourceFourier (sourceVector A t) ξ = ∑ n ∈ integerInventory A,
      (coefficient A t n : ℂ) *
        sourceFourier (fun x ↦ prescribedSource A (x - Real.log n)) ξ := by
  have heq : (fun x : ℝ ↦ (sourceVector A t x : ℂ) *
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) =
      fun x ↦ ∑ n ∈ integerInventory A, (coefficient A t n : ℂ) *
        ((prescribedSource A (x - Real.log n) : ℂ) *
          Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by
    funext x
    unfold sourceVector
    push_cast
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [sourceFourier, heq, integral_finsetSum]
  · simp only [integral_const_mul, sourceFourier]
  · intro n _
    exact (source_phase_integrable hA (Real.log n) ξ).const_mul _

/-- The written n^(-i ξ) row is represented by its exact logarithmic phase. -/
theorem exact_weighted_spectrum {A : ℝ} (hA : 1 ≤ A) (t ξ : ℝ) :
    negativeAngularTransform (sourceVector A t) ξ =
      negativeAngularTransform (prescribedSource A) ξ * arithmeticSpectrum A t ξ := by
  rw [negativeAngularTransform, actual_sourceFourier_finite_sum hA]
  simp_rw [sourceFourier_translate]
  unfold arithmeticSpectrum negativeAngularTransform
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  simp only [Complex.ofReal_neg]
  rw [show Complex.I * (-(ξ : ℂ)) * (Real.log n : ℂ) =
    -Complex.I * (ξ : ℂ) * (Real.log n : ℂ) by ring]
  ring

theorem exact_weighted_spectral_square {A : ℝ} (hA : 1 ≤ A) (t ξ : ℝ) :
    Complex.normSq (negativeAngularTransform (sourceVector A t) ξ) =
      Complex.normSq (negativeAngularTransform (prescribedSource A) ξ) *
        Complex.normSq (arithmeticSpectrum A t ξ) := by
  rw [exact_weighted_spectrum hA, Complex.normSq_mul]

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceSpectrum
