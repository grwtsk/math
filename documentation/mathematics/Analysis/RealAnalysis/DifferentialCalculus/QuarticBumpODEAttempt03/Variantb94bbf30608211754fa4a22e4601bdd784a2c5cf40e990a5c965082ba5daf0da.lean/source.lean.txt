import ActualMellinFilter

/-! Literal source-bump parameter derivatives and weighted ODE.
Direction grwtsk contributors; scratch construction OpenAI Codex.
No desired zero-free target or energy identity is supplied as a premise. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.QuarticBumpODE
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.GevreyPolynomial
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open ContinuousResearch.SourceBoundaryOrder ContinuousResearch.ActualMellinFilter

def bumpMoment (j : ℕ) (w : ℂ) : ℂ :=
  compactLaplace (fun v : ℝ => v^j*sourceBump v) w

def fifthProfile (v : ℝ) : ℝ := (1-v^2)*sourceBump v

theorem moment_profile_continuous (j : ℕ) :
    Continuous (fun v : ℝ => v^j*sourceBump v) :=
  (continuous_id.pow j).mul sourceBump_contDiff.continuous

theorem moment_profile_hasCompactSupport (j : ℕ) :
    HasCompactSupport (fun v : ℝ => v^j*sourceBump v) :=
  sourceBump_hasCompactSupport.mul_left

theorem bumpMoment_integrable (j : ℕ) (w : ℂ) :
    Integrable (fun v : ℝ => (v^j*sourceBump v : ℝ)*Complex.exp (w*(v : ℂ))) :=
  compactLaplace_integrable _ (moment_profile_continuous j) (moment_profile_hasCompactSupport j) w

theorem bumpMoment_hasDerivAt (j : ℕ) (w : ℂ) :
    HasDerivAt (bumpMoment j) (bumpMoment (j+1) w) w := by
  have h := compactLaplace_hasDerivAt _ (moment_profile_continuous j)
    (moment_profile_hasCompactSupport j) w
  apply h.congr_deriv
  unfold bumpMoment compactLaplace
  apply integral_congr_ae
  filter_upwards [] with v
  push_cast
  rw [pow_succ]
  ring

theorem bumpMoment_zero_eq_quartic : bumpMoment 0 = quarticBumpLaplace := by
  funext w
  have h := primitiveTransform_eq_quartic (A:=1) (by norm_num) w
  simpa [primitiveTransform,bumpMoment,sourceBump_eq_scaled_unit] using h

theorem quartic_value_zero : quarticBumpLaplace 0 = (256/315 : ℂ) := by
  have hp : (∫ v in (-1 : ℝ)..1, (1-v^2)^4) = 256/315 := by
    have he : (fun v : ℝ => (1-v^2)^4) =
        fun v => 1+(-4:ℝ)*v^2+6*v^4+(-4:ℝ)*v^6+v^8 := by
      funext v
      ring
    rw [he]
    simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
      [intervalIntegral.integral_add,intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const,integral_pow]
    norm_num
  unfold quarticBumpLaplace
  simp only [zero_mul,Complex.exp_zero,mul_one]
  rw [← intervalIntegral.integral_ofReal,hp]
  norm_num


theorem quartic_hasDerivAt (w : ℂ) :
    HasDerivAt quarticBumpLaplace (bumpMoment 1 w) w := by
  rw [← bumpMoment_zero_eq_quartic]
  exact bumpMoment_hasDerivAt 0 w

theorem quartic_deriv : deriv quarticBumpLaplace = bumpMoment 1 :=
  funext fun w => (quartic_hasDerivAt w).deriv

theorem quartic_second_deriv : deriv (deriv quarticBumpLaplace) = bumpMoment 2 := by
  rw [quartic_deriv]
  exact funext fun w => (bumpMoment_hasDerivAt 1 w).deriv

theorem fifthProfile_contDiff : ContDiff ℝ 2 fifthProfile := by
  unfold fifthProfile
  exact (contDiff_const.sub (contDiff_id.pow 2)).mul sourceBump_contDiff

theorem fifthProfile_hasCompactSupport : HasCompactSupport fifthProfile :=
  sourceBump_hasCompactSupport.mul_left

theorem fifthProfile_hasDerivAt (v : ℝ) :
    HasDerivAt fifthProfile (-10*v*sourceBump v) v := by
  have hb : HasDerivAt sourceBump (firstDerivative 1 v) v := by
    rw [sourceBump_eq_scaled_unit]
    exact scaledBump_hasDerivAt (by norm_num) v
  have h := ((hasDerivAt_const v (1 : ℝ)).sub ((hasDerivAt_id v).pow 2)).mul hb
  apply h.congr_deriv
  by_cases hv : v ∈ Icc (-1 : ℝ) 1
  · simp only [firstDerivative,indicator_of_mem hv,firstInterior]
    simp [sourceBump,hv]
    ring
  · simp [firstDerivative,sourceBump,hv]

theorem fifthProfile_deriv : deriv fifthProfile = fun v => -10*v*sourceBump v :=
  funext fun v => (fifthProfile_hasDerivAt v).deriv

theorem fifthProfile_transform (w : ℂ) :
    compactLaplace fifthProfile w = bumpMoment 0 w-bumpMoment 2 w := by
  have h0 := bumpMoment_integrable 0 w
  have h2 := bumpMoment_integrable 2 w
  have he (v : ℝ) : (fifthProfile v : ℂ)*Complex.exp (w*(v : ℂ)) =
      ((v^0*sourceBump v : ℝ) : ℂ)*Complex.exp (w*(v : ℂ))-
      ((v^2*sourceBump v : ℝ) : ℂ)*Complex.exp (w*(v : ℂ)) := by
    unfold fifthProfile
    push_cast
    ring
  unfold compactLaplace
  simp_rw [he]
  rw [integral_sub h0 h2]
  rfl

theorem fifthProfile_deriv_transform (w : ℂ) :
    compactLaplace (deriv fifthProfile) w = -10*bumpMoment 1 w := by
  rw [fifthProfile_deriv]
  unfold bumpMoment compactLaplace
  rw [← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with v
  push_cast
  ring

theorem literal_quartic_ODE (w : ℂ) :
    w*deriv (deriv quarticBumpLaplace) w+10*deriv quarticBumpLaplace w-
      w*quarticBumpLaplace w = 0 := by
  have h := complex_weighted_derivative fifthProfile
    (fifthProfile_contDiff.of_le (by norm_num)) fifthProfile_hasCompactSupport w
  rw [fifthProfile_transform,fifthProfile_deriv_transform] at h
  rw [quartic_second_deriv,quartic_deriv,← bumpMoment_zero_eq_quartic]
  linear_combination -h

end ContinuousResearch.QuarticBumpODE
