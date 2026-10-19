import FormalResearch.RiemannHypothesis.SourceComparison.ReducedFilterInverse
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedQuotientBudget
import FormalResearch.RiemannHypothesis.SourceComparison.FractionalMellin
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusFractionalResidual
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateLineBounds
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSieveCovariance
import FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Bridge
import FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateCausality



/-! Global controller admission bounds and exact signed fractional-part transport. -/

namespace ReducedFilterInverseLiteral
open Set
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic SourceBumpMoments
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets
open FormalResearch.RiemannHypothesis.SourceComparison.ReducedFilterInverse

example (w : ℂ) (hw : 1 ≤ ‖w‖) :
    ‖transformPolynomial w - w^4‖ ≤ 265 * ‖w‖^3 := sourcePolynomial_leading_error w hw

example (ε : ℝ) (hε : 0 < ε) : 0 < 1 - Real.exp (-2*ε) := sourceTailGap_pos ε hε

example (ε : ℝ) (hε : 0 < ε) (w : ℂ) (hw : ε ≤ w.re)
    (hr : max 1 (1060/(1-Real.exp (-2*ε))) ≤ ‖w‖) :
    ((1-Real.exp (-2*ε))/2) * ‖w‖^4 ≤
      ‖transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)‖ :=
  sourceEndpoint_tail_lower ε hε w hw hr

example (w : ℂ) (hw : w ≠ 0) :
    reducedW w = 384 * (w+1/2) *
      (transformPolynomial w - Complex.exp (-2*w) * transformPolynomial (-w)) /
      ((Real.sqrt (45056/1105 : ℝ) : ℂ) * w^9) := reducedW_closedFormula w hw

example (w : ℂ) (hw : 0 ≤ w.re) : ‖w‖ ≤ ‖w+1/2‖ := norm_add_half_ge w hw

example (ε : ℝ) (hε : 0 < ε) (w : ℂ) (hw : ε ≤ w.re)
    (hr : max 1 (1060/(1-Real.exp (-2*ε))) ≤ ‖w‖) :
    192 * (1-Real.exp (-2*ε))/(Real.sqrt (45056/1105 : ℝ) * ‖w‖^4) ≤
      ‖reducedW w‖ := reducedW_tail_lower ε hε w hw hr

example (ε : ℝ) (hε : 0 < ε) (w : ℂ) (hw : ε ≤ w.re)
    (hr : max 1 (1060/(1-Real.exp (-2*ε))) ≤ ‖w‖) :
    ‖(reducedW w)⁻¹‖ ≤
      (Real.sqrt (45056/1105 : ℝ)/(192*(1-Real.exp (-2*ε)))) * ‖w‖^4 :=
  reducedW_inverse_tail_bound ε hε w hw hr

example (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ w : ℂ, ε ≤ w.re →
      ‖(reducedW w)⁻¹‖ ≤ C * (1+‖w‖)^4 := reducedW_inverse_uniform_bound ε hε

example (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ w : ℂ, ε ≤ w.re →
      ‖(Complex.exp (-w) * (w+1/2) *
          (∫ x : ℝ in (-1)..1, (1-(x : ℂ)^2)^4 * Complex.exp (w*(x : ℂ))) /
            (Real.sqrt (45056/1105 : ℝ) : ℂ))⁻¹‖ ≤ C*(1+‖w‖)^4 := by
  simpa only [reducedW, bumpMoment, pow_zero, one_mul] using reducedW_inverse_uniform_bound ε hε

example : ∀ ε : ℝ, 0 < ε ∧ ε ≤ 1/4 →
    ∃ C : ℝ, 0 < C ∧ ∀ w : ℂ, ε ≤ w.re →
      ‖(reducedW w)⁻¹‖ ≤ C * (1+‖w‖)^4 := by
  intro ε hε
  exact reducedW_inverse_uniform_bound ε hε.1

end ReducedFilterInverseLiteral

namespace CorrectedQuotientBudgetLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumerator FormalResearch.RiemannHypothesis.SourceComparison.CorrectedQuotientBudget
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

namespace FractionalMellinLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.FractionalMellin
example (s : ℂ) (x : ℝ) :
    fractionalKernel s x = ((Int.fract x : ℝ) : ℂ) * (x : ℂ) ^ (-(s + 1)) := rfl
example (s : ℂ) (x : ℝ) (hx : x ∈ Ioo (0 : ℝ) 1) :
    fractionalKernel s x = (x : ℂ) ^ (-s) := fractionalKernel_below_one s x hx
example (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fractionalKernel s) (Ioi (1 : ℝ)) :=
  fractionalKernel_integrable_tail s hs
example (s : ℂ) (hs : s.re < 1) :
    IntegrableOn (fractionalKernel s) (Ioc (0 : ℝ) 1) :=
  fractionalKernel_integrable_near_zero s hs
example (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) :
    IntegrableOn (fractionalKernel s) (Ioi (0 : ℝ)) :=
  fractionalKernel_integrable s hs hs'
example (s : ℂ) (hs : s.re < 1) :
    (∫ x : ℝ in (0 : ℝ)..1, fractionalKernel s x) = 1 / (1 - s) :=
  fractionalKernel_integral_near_zero s hs
example (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) :
    (∫ x : ℝ in Ioi (1 : ℝ), fractionalKernel s x) =
      -riemannZeta s / s - 1 / (1 - s) := fractionalKernel_integral_tail s hs hs'
example (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) :
    (∫ x : ℝ in Ioi (0 : ℝ), fractionalKernel s x) = -riemannZeta s / s :=
  fractionalKernel_integral s hs hs'
example (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) (d : ℝ) (hd : 0 < d) :
    IntegrableOn (fun x : ℝ => ((Int.fract (x / d) : ℝ) : ℂ) *
      (x : ℂ) ^ (-(s + 1))) (Ioi (0 : ℝ)) :=
  fractionalKernel_scaled_integrable s hs hs' d hd
example (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) (d : ℝ) (hd : 0 < d) :
    (∫ x : ℝ in Ioi (0 : ℝ), ((Int.fract (x / d) : ℝ) : ℂ) *
      (x : ℂ) ^ (-(s + 1))) = -(d : ℂ) ^ (-s) * riemannZeta s / s :=
  fractionalKernel_scaled_integral s hs hs' d hd
end FractionalMellinLiteral

namespace MobiusFractionalResidualLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator
example (X : ℕ) (ε x : ℝ) : arithmeticResidual X ε x =
    (if 1 ≤ x then 1 else 0) + ∑ d ∈ Finset.Icc 1 X,
      (dampedCoefficient X ε d : ℂ) * ((Int.fract (x / (d : ℝ)) : ℝ) : ℂ) := rfl
example (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun x : ℝ => (if 1 ≤ x then (1 : ℂ) else 0) *
      (x : ℂ) ^ (-(s + 1))) (Ioi (0 : ℝ)) := unitStep_mellin_integrable s hs
example (s : ℂ) (hs : 0 < s.re) :
    (∫ x : ℝ in Ioi (0 : ℝ), (if 1 ≤ x then (1 : ℂ) else 0) *
      (x : ℂ) ^ (-(s + 1))) = 1 / s := unitStep_mellin_integral s hs
example (X : ℕ) (ε : ℝ) (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) :
    IntegrableOn (fun x : ℝ => arithmeticResidual X ε x *
      (x : ℂ) ^ (-(s + 1))) (Ioi (0 : ℝ)) :=
  arithmeticResidual_mellin_integrable X ε s hs hs'
example (X : ℕ) (ε : ℝ) (s : ℂ) (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) * (d : ℂ) ^ (-s)) =
      correctedNumerator X (s - 1 / 2 + (ε : ℂ)) := dampedCoefficient_cpow_sum X ε s hX
example (X : ℕ) (ε : ℝ) (s : ℂ) (hX : 1 ≤ X) (hs : 0 < s.re) (hs' : s.re < 1) :
    (∫ x : ℝ in Ioi (0 : ℝ), arithmeticResidual X ε x *
      (x : ℂ) ^ (-(s + 1))) =
      (1 - riemannZeta s * correctedNumerator X (s - 1 / 2 + (ε : ℂ))) / s :=
  arithmeticResidual_mellin_integral X ε s hX hs hs'
end MobiusFractionalResidualLiteral

namespace CandidateLineBoundsLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic MobiusPoleNumerator
open FormalResearch.RiemannHypothesis.SourceComparison.CandidateLineBounds

example (w : ℂ) (hw : 0 ≤ w.re) : 1+‖w‖ ≤ 2*‖1+w‖ := one_add_norm_le_twice w hw

example (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ (X : ℕ), 1 ≤ X → ∀ h : ℝ, 0 < h → h ≤ 1 →
      ∀ σ : ℝ, 0 ≤ σ → ∀ t : ℝ,
        ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
          C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))*h⁻¹^3/(1+h*|t|)^3 :=
  candidate_vertical_decay ε hε

example (h : ℝ) (hh : 0 < h) :
    Integrable (fun t : ℝ => (1+(h*t)^2)⁻¹) ∧
      (∫ t : ℝ, (1+(h*t)^2)⁻¹) = Real.pi/h := scaled_cauchy_integrable_integral h hh

example (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ (X : ℕ), 1 ≤ X → ∀ h : ℝ, 0 < h → h ≤ 1 →
      ∀ σ : ℝ, 0 ≤ σ →
        Integrable (fun t : ℝ => ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) ∧
        (∫ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) ≤
          C*(X : ℝ)*(1+Real.log (X : ℝ))^2*h⁻¹^7 :=
  candidate_line_square_integrable_bound ε hε

example (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ (X : ℕ), 1 ≤ X → ∀ h : ℝ, 0 < h → h ≤ 1 →
      ∀ σ : ℝ, 0 ≤ σ → ∀ t : ℝ,
        ‖(correctedQuotient X (((σ : ℂ)+(t : ℂ)*Complex.I)+ε) /
          reducedW (((σ : ℂ)+(t : ℂ)*Complex.I)+ε)) *
          (1+(h : ℂ)*(((σ : ℂ)+(t : ℂ)*Complex.I)+ε))⁻¹^6 /
          (1+((σ : ℂ)+(t : ℂ)*Complex.I)+ε)‖ ≤
            C*Real.sqrt (X : ℝ)*(1+Real.log (X : ℝ))*h⁻¹^3/(1+h*|t|)^3 := by
  simpa only [candidate, quotient] using candidate_vertical_decay ε hε

example (ε : ℝ) (hε : 0 < ε) (X : ℕ) (hX : 1 ≤ X) (h : ℝ)
    (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ => ‖candidate X ε h ((t : ℂ)*Complex.I)‖^2) := by
  obtain ⟨C, _, hb⟩ := candidate_line_square_integrable_bound ε hε
  simpa only [Complex.ofReal_zero, zero_add] using (hb X hX h hh hh1 0 le_rfl).1

end CandidateLineBoundsLiteral

namespace PrimeSieveCovarianceLiteral

open Finset ArithmeticFunction
example (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) =
      (∑ p ∈ P, w p ^ 2 / (p : ℝ)) + (∑ p ∈ P, w p / (p : ℝ)) ^ 2 -
        ∑ p ∈ P, (w p / (p : ℝ)) ^ 2 := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.PrimeSieveCovariance.prime_moebius_lcm_identity P hP w

example (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) (N W : ℝ) (hN : 0 < N) (hW : 0 ≤ W)
    (hNp : ∀ p ∈ P, N ≤ (p : ℝ)) (hw : ∀ p ∈ P, 0 ≤ w p ∧ w p ≤ W) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) ≤
      W ^ 2 * ((P.card : ℝ) / N + ((P.card : ℝ) / N) ^ 2) := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.PrimeSieveCovariance.prime_moebius_lcm_le P hP w N W hN hW hNp hw

example (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (w : ℕ → ℝ) (N W : ℝ) (hN : 0 < N) (hW : 0 ≤ W)
    (hNp : ∀ p ∈ P, N ≤ (p : ℝ)) (hw : ∀ p ∈ P, 0 ≤ w p ∧ w p ≤ W)
    (hcard : (P.card : ℝ) ≤ N) :
    (∑ p ∈ P, ∑ q ∈ P,
      (moebius p : ℝ) * (moebius q : ℝ) * w p * w q / (Nat.lcm p q : ℝ)) ≤
      2 * W ^ 2 * (P.card : ℝ) / N := by
  exact FormalResearch.RiemannHypothesis.SourceComparison.PrimeSieveCovariance.prime_moebius_lcm_le_card P hP w N W hN hW hNp hw hcard


end PrimeSieveCovarianceLiteral

namespace FourierL1L2BridgeLiteral
open MeasureTheory FourierTransform
open FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Bridge
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

end FourierL1L2BridgeLiteral

namespace ArithmeticErrorIntegrabilityLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedLaplaceContinuation SourceFilterDelta MobiusPoleNumerator
open FormalResearch.RiemannHypothesis.SourceComparison.ArithmeticErrorIntegrability

example (t : ℝ) : ‖actualLaplace ((t : ℂ)*Complex.I)‖ ≤
    ∫ u : ℝ in Ioi 0, |fixedKernel u| := actualLaplace_boundary_norm_le t

example (X : ℕ) (ε h : ℝ) : arithmeticErrorSq X ε h =
    (1/(2*Real.pi)) * ∫ t : ℝ,
      ‖boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
        correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I))‖^2 := rfl

example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1/4)
    (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      ‖boundaryFilter ε h t * (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
        correctedNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I))‖^2) :=
  arithmetic_error_sq_integrable X hX ε h hε hsmall hh hh1

example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1/4)
    (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      ‖(MobiusSourceFilterQuotient.W ((t : ℂ)*Complex.I) /
          MobiusSourceFilterQuotient.W ((ε : ℂ)+(t : ℂ)*Complex.I) *
          (1+(h : ℂ)*((ε : ℂ)+(t : ℂ)*Complex.I))⁻¹^6 /
          (1+(ε : ℂ)+(t : ℂ)*Complex.I)) *
        (1-riemannZeta (1/2+(t : ℂ)*Complex.I) *
          (dirichletNumerator X ((ε : ℂ)+(t : ℂ)*Complex.I) -
            (FiniteMobiusController.mobiusReciprocalSum X : ℂ) *
              Complex.exp ((1/2-((ε : ℂ)+(t : ℂ)*Complex.I))*(Real.log (X : ℝ) : ℂ))))‖^2) := by
  simpa only [boundaryFilter, correctedNumerator] using
    arithmetic_error_sq_integrable X hX ε h hε hsmall hh hh1

end ArithmeticErrorIntegrabilityLiteral

namespace CandidateCausalityLiteral
open MeasureTheory Filter Complex
open FormalResearch.RiemannHypothesis.SourceComparison.CandidateCausality
open FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic
open scoped Topology

example (F : ℂ → ℂ) (x : ℝ) : boundaryInverse F x =
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, Complex.exp ((x : ℂ) * ((t : ℂ) * Complex.I)) * F ((t : ℂ) * Complex.I) := rfl

example (F : ℂ → ℂ) (hF : ∀ z : ℂ, 0 ≤ z.re → DifferentiableAt ℂ F z)
    (φ : ℝ → ℝ) (hφ : Integrable φ)
    (hb : ∀ σ t : ℝ, 0 ≤ σ → ‖F ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t)
    (htop : Tendsto φ atTop (nhds 0)) (hbot : Tendsto φ atBot (nhds 0))
    (x : ℝ) (hx : x < 0) : boundaryInverse F x = 0 :=
  boundaryInverse_eq_zero_of_neg F hF φ hφ hb htop hbot x hx

example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    ∃ φ : ℝ → ℝ, Integrable φ ∧ Tendsto φ atTop (nhds 0) ∧
      Tendsto φ atBot (nhds 0) ∧
      ∀ σ t : ℝ, 0 ≤ σ → ‖candidate X ε h ((σ : ℂ) + (t : ℂ) * I)‖ ≤ φ t :=
  candidate_boundary_majorant X hX ε h hε hh hh1

example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ) (hε : 0 < ε)
    (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) (hx : x < 0) :
    boundaryInverse (candidate X ε h) x = 0 :=
  candidate_boundaryInverse_eq_zero X hX ε h hε hh hh1 x hx

end CandidateCausalityLiteral
