import ActualCommonMeanCalibration
import FormalResearch.RiemannHypothesis.ZeroSide.Assembly

/-! Actual normalized ordinary-square zero side and independent J_mean for #313.
Uses the existing accepted B3.2 identity; supplies no sign off the critical line,
Gamma integral identity, numerical correction witness or RH proof.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCommonMeanZeroSide
open MeasureTheory
open FormalResearch.RiemannHypothesis
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open SourcePairing Realization CorrelationRegularity PrimePowerDescent EstimateMobiusSplit
open EstimateMertensResidual ZeroSideTargets ZeroObject
open ContinuousResearch.ActualCommonMeanCalibration

/-- Literal bilateral transform of the unchanged normalized compact q_A. -/
def normalizedBilateral (A : ℝ) (z : ℂ) : ℂ :=
  ∫ x : ℝ, (normalizedTest explicitSecondDerivative A x : ℂ) *
    Complex.exp (z*(x:ℂ))

theorem normalizedBilateral_eq_div (A : ℝ) (z : ℂ) :
    normalizedBilateral A z = bilateralTransform A z /
      (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold normalizedBilateral bilateralTransform actualTest normalizedTest
  rw [← integral_div]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [Complex.ofReal_div]
  ring

theorem normalizedBilateral_integrable {A : ℝ} (hA : 1 ≤ A) (o : ZeroOccurrence) :
    Integrable (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (shiftedValue o*(x:ℂ))) := by
  have h := (FormalResearch.RiemannHypothesis.ZeroSide.Assembly.zero_side_identity A hA).2.1 o
  have he : (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (shiftedValue o*(x:ℂ))) =
      fun x => ((actualTest A x : ℂ) * Complex.exp (shiftedValue o*(x:ℂ))) /
        (Real.sqrt (sourceNormalization A) : ℂ) := by
    funext x
    unfold normalizedTest actualTest
    rw [Complex.ofReal_div]
    ring
  rw [he]
  exact h.div_const _

theorem normalizedSquares_summable {A : ℝ} (hA : 1 ≤ A) :
    Summable (fun o : ZeroOccurrence => normalizedBilateral A (shiftedValue o)^2) := by
  have h := (FormalResearch.RiemannHypothesis.ZeroSide.Assembly.zero_side_identity A hA).2.2.1
  have he : (fun o : ZeroOccurrence => normalizedBilateral A (shiftedValue o)^2) =
      fun o => bilateralTransform A (shiftedValue o)^2 /
        (Real.sqrt (sourceNormalization A) : ℂ)^2 := by
    funext o
    rw [normalizedBilateral_eq_div, div_pow]
  rw [he]
  exact h.div_const _

/-- All analytic-multiplicity occurrences and ordinary complex squares survive. -/
def normalizedZeroSquare (A : ℝ) : ℂ :=
  ∑' o : ZeroOccurrence, normalizedBilateral A (shiftedValue o)^2

/-- Actual Fourier-side archimedean quantity; no desired integral is used to define it. -/
def sourceGammaValue (A : ℝ) : ℝ := archimedeanValue explicitSecondDerivative A

/-- Independent common offset, distinct from the Vaughan main term and boundary work. -/
def sourceMeanOffset (A : ℝ) : ℝ := SourcePrimeSquareTailWork.squareRemovedRemainder A +
  primeAtom A 2 + primeAtom A 3 - sourceGammaValue A / 2

theorem normalizedZeroSquare_eq_source {A : ℝ} (hA : 1 ≤ A) :
    normalizedZeroSquare A = (sourceQuadraticValue explicitSecondDerivative A : ℂ) := by
  have hid := FormalResearch.RiemannHypothesis.ZeroSide.Assembly.zero_side_identity A hA
  have hnorm : (Real.sqrt (sourceNormalization A) : ℂ)^2 = (sourceNormalization A : ℂ) := by
    norm_cast
    exact Real.sq_sqrt (source_normalization_pos A hA).le
  have he : (fun o : ZeroOccurrence => normalizedBilateral A (shiftedValue o)^2) =
      fun o => bilateralTransform A (shiftedValue o)^2 / (sourceNormalization A : ℂ) := by
    funext o
    rw [normalizedBilateral_eq_div, div_pow, hnorm]
  have hc : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (source_normalization_pos A hA))
  unfold normalizedZeroSquare
  rw [he, tsum_div_const, ← hid.2.2.2.2, ← hid.2.2.2.1, Complex.ofReal_mul]
  exact mul_div_cancel_left₀ _ hc

theorem sourceGamma_residual_zero_identity {A : ℝ} (hA : 1 ≤ A) :
    normalizedZeroSquare A = (sourceGammaValue A - 2*mertensResidual A : ℝ) := by
  rw [normalizedZeroSquare_eq_source hA]
  unfold sourceQuadraticValue sourceGammaValue
  rw [source_prime_power_contribution_eq_closed explicitSecondDerivative A
    (sourceCorrelation_upper_endpoint A (by linarith)),
    mertensResidual_eq_closedPrimeMoment A hA]
  rfl

theorem sourceZeroSquare_real {A : ℝ} (hA : 1 ≤ A) :
    (normalizedZeroSquare A).im = 0 := by
  rw [sourceGamma_residual_zero_identity hA]
  rfl

theorem sourceMean_eq_offset_zero {A : ℝ} (hA : 1 ≤ A) :
    sourceMean A = sourceMeanOffset A + (normalizedZeroSquare A).re/2 := by
  rw [sourceMean_eq_remainder_sub_residual hA, sourceGamma_residual_zero_identity hA]
  unfold sourceMeanOffset
  simp only [Complex.ofReal_re]
  ring

#print axioms normalizedBilateral
#print axioms normalizedBilateral_eq_div
#print axioms normalizedBilateral_integrable
#print axioms normalizedSquares_summable
#print axioms normalizedZeroSquare
#print axioms sourceGammaValue
#print axioms sourceMeanOffset
#print axioms normalizedZeroSquare_eq_source
#print axioms sourceGamma_residual_zero_identity
#print axioms sourceZeroSquare_real
#print axioms sourceMean_eq_offset_zero
end ContinuousResearch.ActualCommonMeanZeroSide
