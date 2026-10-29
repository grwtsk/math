
namespace CorrectedQuotientBudgetLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumerator CorrectedQuotientBudgetScratch
noncomputable section
example (X : ℕ) (w : ℂ) : quotientIntegral X w =
    ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ) := rfl
example (X : ℕ) (w : ℂ) :
    IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)) (Set.Ioc 1 (X : ℝ)) :=
  quotient_integrand_integrable X w
example (X : ℕ) : Continuous (quotientIntegral X) := quotientIntegral_continuous X
example (X : ℕ) (w : ℂ) : correctedQuotient X w =
    ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ) :=
  correctedQuotient_eq_integral X w
example (N : ℕ) : |mobiusReciprocalSum N| ≤ (harmonic N : ℝ) :=
  mobiusReciprocalSum_abs_le_harmonic N
example (x : ℝ) (hx : 1 ≤ x) :
    |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log x := mobiusReciprocalSum_floor_abs_le x hx
example (X : ℕ) (w : ℂ) (hw : 0 ≤ w.re) (x : ℝ) (hx : x ∈ Set.Ioc 1 (X : ℝ)) :
    ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
        (1 + Real.log (X : ℝ)) / Real.sqrt x := quotient_integrand_norm_le X w hw x hx
example (X : ℕ) (hX : 1 ≤ X) (w : ℂ) (hw : 0 ≤ w.re) :
    ‖correctedQuotient X w‖ ≤ 2 * Real.sqrt (X : ℝ) * (1 + Real.log (X : ℝ)) :=
  correctedQuotient_norm_le X hX w hw
example (X : ℕ) (hX : 1 ≤ X) : quotientIntegral X (1 / 2) = (logNormalization X : ℂ) :=
  (correctedQuotient_eq_integral X (1 / 2)).symm.trans (correctedQuotient_half X hX)
end
end CorrectedQuotientBudgetLiteral
