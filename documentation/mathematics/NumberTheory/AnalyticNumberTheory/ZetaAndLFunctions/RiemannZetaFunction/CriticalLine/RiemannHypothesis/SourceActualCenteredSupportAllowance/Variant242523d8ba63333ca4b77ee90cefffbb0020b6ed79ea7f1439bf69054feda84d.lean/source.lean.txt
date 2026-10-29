import SourceActualCenteredPrimePhaseSupport
import SourceActualEulerDerivativeVariation

/-!
The literal actual phase-disk upper allowance grows despite its complete two
moving endpoint payments. This diagnoses the allowance, not the signed phase
bulk or original residual. Their sharper complete arithmetic bound remains.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualCenteredSupportAllowance
open MeasureTheory Set Complex Filter Topology
open SourceActualCenteredPrimePhaseSupport SourceActualCenteredPrimePhase
open SourceActualEulerDerivativeVariation SourceActualEulerPotentialPhase
open SourceActualEulerLogarithmicPrimitive SourceActualInitialPrimeContour
open SourceActualPrimeBumpDictionary SourceActualBumpMellinLineBudget
open SourceActualBumpMovingHeight SourcePairing

/-- Literal full derivative-norm allowance, retaining both true moving endpoints. -/
def actualCenteredPrimeSupportAllowance (A : ℝ) : ℝ :=
  (actualClosedPrimeLogMass A (3 / 2) / (2 * Real.pi)) *
    ((∫ t in -actualBumpMovingHeight A (3 / 2)..actualBumpMovingHeight A (3 / 2),
      ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖) -
      (actualInitialPrimeMellin A
        ((3 / 2 : ℂ) + (actualBumpMovingHeight A (3 / 2) : ℂ) * I)).im +
      (actualInitialPrimeMellin A
        ((3 / 2 : ℂ) + (-actualBumpMovingHeight A (3 / 2) : ℂ) * I)).im)

/-- This diagnostic is the proved upper allowance on the complete actual centered phase. -/
theorem actualCenteredPrimePhaseBulk_moving_le_allowance (A : ℝ) (hA : 1 ≤ A) :
    actualCenteredPrimePhaseBulk A (3 / 2) (actualBumpMovingHeight A (3 / 2)) ≤
      actualCenteredPrimeSupportAllowance A := by
  have h := actualCenteredPrimePhaseBulk_le_support_endpoints A (3 / 2)
    (actualBumpMovingHeight A (3 / 2)) hA (Real.exp_pos _).le
  norm_num at h
  unfold actualCenteredPrimeSupportAllowance
  simp only [Complex.ofReal_neg, neg_mul] at h ⊢
  convert! h using 1
  ring

private theorem mass_prime_two_lower (A c : ℝ) (hA : 1 ≤ A) :
    Real.exp (-c * Real.log 2) ≤ actualClosedPrimeLogMass A c := by
  let z : ℂ := (c : ℂ) + (Real.pi / Real.log 2 : ℝ) * I
  have hn := actualClosedPrimeLogPotential_norm_le_mass A c (Real.pi / Real.log 2)
  have hl : -actualClosedPrimeLogMass A c ≤ (actualClosedPrimeLogPotential A z).re := by
    exact (neg_le_neg hn).trans
      ((neg_le_neg (Complex.abs_re_le_norm _)).trans (neg_abs_le _))
  have hd := actualClosedPrimeLogPotential_centered_re_prime_two A c hA
  simp only [Complex.sub_re] at hd
  change (actualClosedPrimeLogPotential A z).re - actualClosedPrimeLogMass A c ≤ _ at hd
  linarith

private def endpointConstant (c : ℝ) : ℝ :=
  (204288 : ℝ) ^ 2 / (4096 / 109395) * (1 + c ^ 2) * (1 + (c - 1) ^ 2)

private theorem endpoint_norm_le (A c t : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (ht : |t| = actualBumpMovingHeight A c) :
    ‖actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * I)‖ ≤
      endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
  have hz := actualBumpNormalization_lower A hA
  have hb := bumpMellinWeight_on_line_norm_le A c t hA hc
    (by rw [ht]; exact actualBumpMovingHeight_ge_one A c hA hc)
  rw [← actualInitialPrimeMellin_eq_bumpMellinWeight hA] at hb
  have hz0 : 0 < sourceNormalization A := source_normalization_pos A hA
  have hex : Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6 =
      Real.exp (-((2 * c - 1) * A / 5)) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul, ← Real.exp_sub]
    congr 1
    ring
  rw [ht] at hb
  calc
    _ ≤ (204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2) *
        Real.exp ((2 * c - 1) * A) / (A ^ 9 * (actualBumpMovingHeight A c) ^ 6) := hb
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        (Real.exp ((2 * c - 1) * A) / (actualBumpMovingHeight A c) ^ 6) / A ^ 9 := by ring
    _ = ((204288 : ℝ) ^ 2 / sourceNormalization A * (1 + c ^ 2) * (1 + (c - 1) ^ 2)) *
        Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by rw [hex]
    _ ≤ endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
      unfold endpointConstant
      gcongr

private theorem moving_endpoint_budget (A : ℝ)
    (hA : max 1 (endpointConstant (3 / 2)) ≤ A) (t : ℝ)
    (ht : |t| = actualBumpMovingHeight A (3 / 2)) :
    ‖actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ ≤
      5184 * Real.exp (2 * A) / A ^ 9 := by
  have h1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hK : endpointConstant (3 / 2) ≤ A := (le_max_right _ _).trans hA
  have hb := endpoint_norm_le A (3 / 2) t h1 (by norm_num) ht
  norm_num at hb
  have he : Real.exp (-((2 * (3 / 2) - 1) * A / 5)) ≤ 1 := by
    rw [Real.exp_le_one_iff]
    linarith
  have hk0 : 0 ≤ endpointConstant (3 / 2) := by unfold endpointConstant; positivity
  have hKe : endpointConstant (3 / 2) ≤ 5184 * Real.exp (2 * A) := by
    nlinarith [Real.add_one_le_exp (2 * A)]
  refine hb.trans ?_
  have hh := (mul_le_of_le_one_right hk0 he).trans hKe
  norm_num at hh
  exact div_le_div_of_nonneg_right hh (by positivity)

/-- A genuine growing lower bound for this upper allowance, not for the signed phase bulk. -/
theorem actualCenteredPrimeSupportAllowance_eventually_lower :
    ∀ᶠ A : ℝ in atTop,
      (5184 * Real.exp (-(3 / 2) * Real.log 2) / Real.pi) *
        Real.exp (2 * A) / A ^ 9 ≤ actualCenteredPrimeSupportAllowance A := by
  filter_upwards [actualEulerMellinSlope_moving_variation_eventually_lower,
    eventually_ge_atTop (max 1 (endpointConstant (3 / 2)))] with A hV hA
  have h1 : 1 ≤ A := (le_max_left _ _).trans hA
  let T := actualBumpMovingHeight A (3 / 2)
  have hT : 0 < T := Real.exp_pos _
  have hin := actualEulerMellinSlope_norm_intervalIntegrable A (3 / 2) (-T) 0
  have hip := actualEulerMellinSlope_norm_intervalIntegrable A (3 / 2) 0 T
  norm_num at hin hip
  have hsplit := intervalIntegral.integral_add_adjacent_intervals hin hip
  have hneg : 0 ≤ ∫ t in -T..0,
      ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ :=
    intervalIntegral.integral_nonneg (by linarith) (fun _ _ => norm_nonneg _)
  have hfull : 20736 * Real.exp (2 * A) / A ^ 9 ≤ ∫ t in -T..T,
      ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ := by
    change 20736 * Real.exp (2 * A) / A ^ 9 ≤ ∫ t in 0..T, _ at hV
    linarith
  have hp := moving_endpoint_budget A hA T (abs_of_pos hT)
  have hm := moving_endpoint_budget A hA (-T) (by rw [abs_neg, abs_of_pos hT])
  simp only [Complex.ofReal_neg] at hm
  have hpi : (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (T : ℂ) * I)).im ≤
      5184 * Real.exp (2 * A) / A ^ 9 :=
    (le_abs_self _).trans ((Complex.abs_im_le_norm _).trans hp)
  have hmi : -(5184 * Real.exp (2 * A) / A ^ 9) ≤
      (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (-T : ℂ) * I)).im := by
    exact (neg_le_neg hm).trans
      ((neg_le_neg (Complex.abs_im_le_norm _)).trans (neg_abs_le _))
  have hbracket : 10368 * Real.exp (2 * A) / A ^ 9 ≤
      (∫ t in -T..T, ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖) -
        (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (T : ℂ) * I)).im +
        (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (-T : ℂ) * I)).im := by
    have h4 : 20736 * Real.exp (2 * A) / A ^ 9 =
        4 * (5184 * Real.exp (2 * A) / A ^ 9) := by ring
    have h2 : 10368 * Real.exp (2 * A) / A ^ 9 =
        2 * (5184 * Real.exp (2 * A) / A ^ 9) := by ring
    rw [h4] at hfull
    rw [h2]
    linarith
  have hM := mass_prime_two_lower A (3 / 2) h1
  have hMn := actualClosedPrimeLogMass_nonneg A (3 / 2)
  unfold actualCenteredPrimeSupportAllowance
  change _ ≤ (actualClosedPrimeLogMass A (3 / 2) / (2 * Real.pi)) * _
  calc
    _ = (Real.exp (-(3 / 2) * Real.log 2) / (2 * Real.pi)) *
        (10368 * Real.exp (2 * A) / A ^ 9) := by ring
    _ ≤ (actualClosedPrimeLogMass A (3 / 2) / (2 * Real.pi)) *
        (10368 * Real.exp (2 * A) / A ^ 9) :=
      mul_le_mul_of_nonneg_right (div_le_div_of_nonneg_right hM (by positivity))
        (by positivity)
    _ ≤ _ := mul_le_mul_of_nonneg_left hbracket (by positivity)

/-- This absolute-method support allowance diverges along all real scales. -/
theorem actualCenteredPrimeSupportAllowance_tendsto_atTop :
    Tendsto actualCenteredPrimeSupportAllowance atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 9) atTop atTop := by
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 9)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hh : Tendsto (fun A : ℝ =>
      (5184 * Real.exp (-(3 / 2) * Real.log 2) / Real.pi) *
        Real.exp (2 * A) / A ^ 9) atTop atTop := by
    convert ht.const_mul_atTop (by positivity :
      0 < 5184 * Real.exp (-(3 / 2) * Real.log 2) / Real.pi) using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualCenteredPrimeSupportAllowance_eventually_lower hh

end FormalResearch.RiemannHypothesis.SourceActualCenteredSupportAllowance
