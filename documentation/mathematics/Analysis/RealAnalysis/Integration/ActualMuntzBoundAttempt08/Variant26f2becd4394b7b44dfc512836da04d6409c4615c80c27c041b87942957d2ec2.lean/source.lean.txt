-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualSourceIntervalIntegralZero.Variantcc664e3be3ff285b482f32000705fa72d3841ab156357eea6497d1cc30048bdc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc664e3be3ff285b482f32000705fa72d3841ab156357eea6497d1cc30048bdc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualSourceIntervalIntegralZero.Variantcc664e3be3ff285b482f32000705fa72d3841ab156357eea6497d1cc30048bdc","mathematical_subject":"Analysis.Integration","original_sha256":"cc664e3be3ff285b482f32000705fa72d3841ab156357eea6497d1cc30048bdc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass20/muntz_operator/ActualMuntzBound-attempt08.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualMuntzInventory
import Mathlib.NumberTheory.AbelSummation

/-! Actual finite Abel identity and boundedness for the independently defined Müntz operator.
Direction grwtsk contributors; focused scratch proof OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualSourceIntervalIntegralZero.Variantcc664e3be3ff285b482f32000705fa72d3841ab156357eea6497d1cc30048bdc

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzBound
open MeasureTheory Filter
open ContinuousResearch.LogarithmicSource ContinuousResearch.ActualGoodKernel
open ContinuousResearch.ActualMuntzInventory

theorem actual_source_interval_integral_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..Real.exp A, actualLogSource A u) = 0 := by
  have hp : 0 < A := by linarith
  have he : (Set.Ioc 0 (Real.exp A)).indicator (actualLogSource A) = actualLogSource A := by
    funext u
    by_cases hu : u ∈ Set.Ioc 0 (Real.exp A)
    · simp [hu]
    · have hz : actualLogSource A u = 0 := by
        apply actualLogSource_zero_outside hp
        simp only [Set.mem_Ioc,not_and_or,not_lt,not_le] at hu
        rcases hu with hu | hu
        · exact Or.inl (hu.trans (Real.exp_pos (-A)).le)
        · exact Or.inr hu.le
      simp [hu,hz]
  have hepos : (Set.Ioi 0).indicator (actualLogSource A) = actualLogSource A := by
    funext u
    by_cases hu : 0 < u
    · simp [hu]
    · simp [hu,actualLogSource_zero_nonpos A (le_of_not_gt hu)]
  rw [intervalIntegral.integral_of_le (Real.exp_pos A).le,
    ←integral_indicator measurableSet_Ioc,he,
    ←hepos,integral_indicator measurableSet_Ioi]
  exact actualLogSource_integral_zero hA

theorem scaled_source_interval_integral_zero {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    (∫ t in (0 : ℝ)..(Real.exp A/x), actualLogSource A (x*t)) = 0 := by
  rw [intervalIntegral.integral_comp_mul_left _ hx.ne']
  simp only [mul_zero,mul_div_cancel₀ _ hx.ne',actual_source_interval_integral_zero hA,smul_zero]

theorem actual_scaled_Abel {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    actualMuntz A x = -(∫ t in Set.Ioc 0 (Real.exp A/x),
      deriv (fun u : ℝ => actualLogSource A (x*u)) t *((⌊t⌋₊ : ℝ)+1)) := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hid : IntegrableOn (deriv g) (Set.Icc 0 (Real.exp A/x)) :=
    hg.continuous_deriv_one.continuousOn.integrableOn_Icc
  have hs := sum_mul_eq_sub_integral_mul (fun _ : ℕ => (1 : ℝ))
    (div_nonneg (Real.exp_pos A).le hx.le)
    (fun t _ => (hg.differentiable (by norm_num) t)) hid
  have hz : g (Real.exp A/x) = 0 := by
    dsimp [g]
    rw [mul_div_cancel₀ _ hx.ne']
    exact actualLogSource_zero_outside (by linarith) (Or.inr le_rfl)
  have hleft : (∑ n ∈ Finset.Icc 0 ⌊Real.exp A/x⌋₊, g n * (1 : ℝ)) = actualMuntz A x := by
    simp only [mul_one]
    rw [actualMuntz_eq_positiveSamples hA,positiveSamples_eq_allSamples (by linarith) hx,
      allSamples_eq_closed_inventory (by linarith) hx]
    unfold g upperInventory
    apply Finset.sum_congr rfl
    intro n _
    rw [mul_comm]
  rw [hleft,hz,zero_mul,zero_sub] at hs
  simpa only [Finset.sum_const,Nat.card_Icc,Nat.sub_zero,nsmul_eq_mul,
    mul_one,Nat.cast_add,Nat.cast_one,g] using hs

theorem actual_scaled_linear_derivative_integral_zero {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    (∫ t in (0 : ℝ)..(Real.exp A/x), t*deriv (fun u : ℝ => actualLogSource A (x*u)) t) = 0 := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hs := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u:=fun t : ℝ => t) (v:=g) (u':=fun _ => (1 : ℝ)) (v':=deriv g)
    continuous_id.continuousOn hg.continuous.continuousOn
    (fun t _ => hasDerivAt_id t)
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (Real.exp A/x))
    (hg.continuous_deriv_one.intervalIntegrable 0 (Real.exp A/x))
  have hz : g (Real.exp A/x) = 0 := by
    dsimp [g]
    rw [mul_div_cancel₀ _ hx.ne']
    exact actualLogSource_zero_outside (by linarith) (Or.inr le_rfl)
  rw [hz,mul_zero,zero_mul,sub_zero] at hs
  dsimp [g] at hs
  simpa only [one_mul,scaled_source_interval_integral_zero hA hx,zero_sub,neg_zero] using hs

def eulerWeight (t : ℝ) : ℝ := t-(⌊t⌋₊ : ℝ)-1

theorem eulerWeight_abs_le_one {t : ℝ} (ht : 0 ≤ t) : |eulerWeight t| ≤ 1 := by
  have hf := Nat.floor_le ht
  have hl := Nat.lt_floor_add_one t
  rw [abs_le]
  dsimp [eulerWeight]
  constructor <;> linarith

theorem scaled_residual_integrable {A x : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun t : ℝ => deriv (fun u : ℝ => actualLogSource A (x*u)) t *eulerWeight t)
      (Set.Ioc 0 (Real.exp A/x)) := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hi : IntegrableOn (deriv g) (Set.Icc 0 (Real.exp A/x)) :=
    hg.continuous_deriv_one.continuousOn.integrableOn_Icc
  have hf := integrableOn_mul_sum_Icc (m:=0) (fun _ : ℕ => (1:ℝ)) (by norm_num : (0:ℝ)≤0) hi
  simp only [Finset.sum_const,Nat.card_Icc,Nat.sub_zero,nsmul_eq_mul,mul_one,
    Nat.cast_add,Nat.cast_one] at hf
  have hl : IntegrableOn (fun t : ℝ => t*deriv g t) (Set.Icc 0 (Real.exp A/x)) :=
    (continuous_id.mul hg.continuous_deriv_one).continuousOn.integrableOn_Icc
  apply ((hl.sub hf).mono_set Set.Ioc_subset_Icc_self).congr_fun
  · intro t _
    dsimp [eulerWeight,g]
    ring
  · exact measurableSet_Ioc

theorem actual_scaled_Euler {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    actualMuntz A x = ∫ t in Set.Ioc 0 (Real.exp A/x),
      deriv (fun u : ℝ => actualLogSource A (x*u)) t *eulerWeight t := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hi : IntegrableOn (deriv g) (Set.Icc 0 (Real.exp A/x)) :=
    hg.continuous_deriv_one.continuousOn.integrableOn_Icc
  have hf := integrableOn_mul_sum_Icc (m:=0) (fun _ : ℕ => (1:ℝ)) (by norm_num : (0:ℝ)≤0) hi
  simp only [Finset.sum_const,Nat.card_Icc,Nat.sub_zero,nsmul_eq_mul,mul_one,
    Nat.cast_add,Nat.cast_one] at hf
  have hl : IntegrableOn (fun t : ℝ => t*deriv g t) (Set.Icc 0 (Real.exp A/x)) :=
    (continuous_id.mul hg.continuous_deriv_one).continuousOn.integrableOn_Icc
  have he (t : ℝ) : deriv g t *eulerWeight t = t*deriv g t-deriv g t*((⌊t⌋₊:ℝ)+1) := by
    unfold eulerWeight
    ring
  simp_rw [show deriv (fun u : ℝ => actualLogSource A (x*u))=deriv g from rfl,he]
  rw [integral_sub (hl.mono_set Set.Ioc_subset_Icc_self) (hf.mono_set Set.Ioc_subset_Icc_self)]
  have hz := actual_scaled_linear_derivative_integral_zero hA hx
  rw [intervalIntegral.integral_of_le (div_nonneg (Real.exp_pos A).le hx.le)] at hz
  rw [show (∫ t in Set.Ioc 0 (Real.exp A/x), t*deriv g t)=0 from hz,zero_sub]
  exact actual_scaled_Abel hA hx

theorem actualMuntz_abs_le_scaled_derivative {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    |actualMuntz A x| ≤ ∫ t in Set.Ioc 0 (Real.exp A/x),
      |deriv (fun u : ℝ => actualLogSource A (x*u)) t| := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hi := scaled_residual_integrable (x:=x) hA
  have hd : IntegrableOn (fun t => |deriv g t|) (Set.Ioc 0 (Real.exp A/x)) :=
    (hg.continuous_deriv_one.abs.continuousOn.integrableOn_Icc).mono_set Set.Ioc_subset_Icc_self
  rw [actual_scaled_Euler hA hx]
  calc
    _ ≤ ∫ t in Set.Ioc 0 (Real.exp A/x),
        |deriv (fun u : ℝ => actualLogSource A (x*u)) t *eulerWeight t| := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
        (fun t : ℝ => deriv (fun u : ℝ => actualLogSource A (x*u)) t *eulerWeight t)
    _ ≤ _ := integral_mono_ae hi.abs hd (by
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
      rw [abs_mul]
      exact mul_le_of_le_one_right (abs_nonneg _) (eulerWeight_abs_le_one ht.1.le))

def derivativeBudget (A : ℝ) : ℝ := ∫ u : ℝ, |deriv (actualLogSource A) u|

theorem actual_derivative_abs_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun u : ℝ => |deriv (actualLogSource A) u|) :=
  (actualLogSource_contDiff (show 0<A by linarith)).continuous_deriv_one.abs.integrable_of_hasCompactSupport
    (actualLogSource_deriv_hasCompactSupport (show 0<A by linarith)).abs

theorem derivativeBudget_nonneg (A : ℝ) : 0 ≤ derivativeBudget A :=
  integral_nonneg (fun _ => abs_nonneg _)

theorem scaled_derivative_integral_eq {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    (∫ t in Set.Ioc 0 (Real.exp A/x), |deriv (fun u : ℝ => actualLogSource A (x*u)) t|) =
      ∫ u in (0 : ℝ)..Real.exp A, |deriv (actualLogSource A) u| := by
  have he (t : ℝ) : deriv (fun u : ℝ => actualLogSource A (x*u)) t =
      x*deriv (actualLogSource A) (x*t) := by
    have h := ((actualLogSource_contDiff (show 0<A by linarith)).differentiable (by norm_num) (x*t)).hasDerivAt.comp t
      ((hasDerivAt_id t).const_mul x)
    simpa [Function.comp_def,mul_comm] using h.deriv
  rw [←intervalIntegral.integral_of_le (div_nonneg (Real.exp_pos A).le hx.le)]
  simp_rw [he,abs_mul,abs_of_pos hx]
  rw [intervalIntegral.integral_const_mul]
  have hs := intervalIntegral.smul_integral_comp_mul_left
    (f:=fun u : ℝ => |deriv (actualLogSource A) u|)
    (a:=0) (b:=Real.exp A/x) x
  simpa only [smul_eq_mul,mul_zero,mul_div_cancel₀ _ hx.ne'] using hs

theorem actualMuntz_abs_le_budget {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    |actualMuntz A x| ≤ derivativeBudget A := by
  by_cases hx : 0 < x
  · have h := actualMuntz_abs_le_scaled_derivative hA hx
    rw [scaled_derivative_integral_eq hA hx,
      intervalIntegral.integral_of_le (Real.exp_pos A).le] at h
    exact h.trans (setIntegral_le_integral (actual_derivative_abs_integrable hA)
      (Eventually.of_forall fun _ => abs_nonneg _))
  · rw [actualMuntz_zero_outside hA (Or.inl (le_of_not_gt hx)),abs_zero]
    exact derivativeBudget_nonneg A

theorem actualMuntz_memLp_global {A : ℝ} (hA : 1 ≤ A) :
    MemLp (actualMuntz A) 2 volume := by
  have hf : MemLp (actualMuntz A) 2 (volume.restrict (Set.Icc 0 (Real.exp A))) :=
    MemLp.of_bound ((actualMuntz_measurable hA).aestronglyMeasurable.restrict _)
      (derivativeBudget A) (Eventually.of_forall fun x => by
        simpa only [Real.norm_eq_abs] using actualMuntz_abs_le_budget hA x)
  have he : (Set.Icc 0 (Real.exp A)).indicator (actualMuntz A) = actualMuntz A := by
    funext x
    by_cases hx : x ∈ Set.Icc 0 (Real.exp A)
    · simp [hx]
    · have hz : actualMuntz A x = 0 := by
        apply actualMuntz_zero_outside hA
        simp only [Set.mem_Icc,not_and_or,not_le] at hx
        rcases hx with hx | hx
        · exact Or.inl hx.le
        · exact Or.inr hx.le
      simp [hx,hz]
  rw [←he]
  exact (memLp_indicator_iff_restrict measurableSet_Icc).mpr hf

theorem actualMuntz_memLp_positive {A : ℝ} (hA : 1 ≤ A) :
    MemLp (actualMuntz A) 2 (volume.restrict (Set.Ioi 0)) :=
  (actualMuntz_memLp_global hA).restrict _

theorem actualMuntz_square_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => (actualMuntz A x)^2) (Set.Ioi 0) :=
  (actualMuntz_memLp_positive hA).integrable_sq

/-- The genuine positive-axis L2 equivalence class of the literal compensated readout. -/
def actualMuntzL2 (A : ℝ) (hA : 1 ≤ A) : Lp ℝ 2 (volume.restrict (Set.Ioi 0)) :=
  (actualMuntz_memLp_positive hA).toLp (actualMuntz A)

theorem actualMuntzL2_ae (A : ℝ) (hA : 1 ≤ A) :
    actualMuntzL2 A hA =ᵐ[volume.restrict (Set.Ioi 0)] actualMuntz A :=
  (actualMuntz_memLp_positive hA).coeFn_toLp

end ContinuousResearch.ActualMuntzBound

#check ContinuousResearch.ActualMuntzBound.actual_source_interval_integral_zero
#print axioms ContinuousResearch.ActualMuntzBound.actual_source_interval_integral_zero
#print ContinuousResearch.ActualMuntzBound.actual_source_interval_integral_zero

#check ContinuousResearch.ActualMuntzBound.scaled_source_interval_integral_zero
#print axioms ContinuousResearch.ActualMuntzBound.scaled_source_interval_integral_zero
#print ContinuousResearch.ActualMuntzBound.scaled_source_interval_integral_zero

#check ContinuousResearch.ActualMuntzBound.actual_scaled_Abel
#print axioms ContinuousResearch.ActualMuntzBound.actual_scaled_Abel
#print ContinuousResearch.ActualMuntzBound.actual_scaled_Abel

#check ContinuousResearch.ActualMuntzBound.actual_scaled_linear_derivative_integral_zero
#print axioms ContinuousResearch.ActualMuntzBound.actual_scaled_linear_derivative_integral_zero
#print ContinuousResearch.ActualMuntzBound.actual_scaled_linear_derivative_integral_zero

#check ContinuousResearch.ActualMuntzBound.eulerWeight
#print axioms ContinuousResearch.ActualMuntzBound.eulerWeight
#print ContinuousResearch.ActualMuntzBound.eulerWeight

#check ContinuousResearch.ActualMuntzBound.eulerWeight_abs_le_one
#print axioms ContinuousResearch.ActualMuntzBound.eulerWeight_abs_le_one
#print ContinuousResearch.ActualMuntzBound.eulerWeight_abs_le_one

#check ContinuousResearch.ActualMuntzBound.scaled_residual_integrable
#print axioms ContinuousResearch.ActualMuntzBound.scaled_residual_integrable
#print ContinuousResearch.ActualMuntzBound.scaled_residual_integrable

#check ContinuousResearch.ActualMuntzBound.actual_scaled_Euler
#print axioms ContinuousResearch.ActualMuntzBound.actual_scaled_Euler
#print ContinuousResearch.ActualMuntzBound.actual_scaled_Euler

#check ContinuousResearch.ActualMuntzBound.actualMuntz_abs_le_scaled_derivative
#print axioms ContinuousResearch.ActualMuntzBound.actualMuntz_abs_le_scaled_derivative
#print ContinuousResearch.ActualMuntzBound.actualMuntz_abs_le_scaled_derivative

#check ContinuousResearch.ActualMuntzBound.derivativeBudget
#print axioms ContinuousResearch.ActualMuntzBound.derivativeBudget
#print ContinuousResearch.ActualMuntzBound.derivativeBudget

#check ContinuousResearch.ActualMuntzBound.actual_derivative_abs_integrable
#print axioms ContinuousResearch.ActualMuntzBound.actual_derivative_abs_integrable
#print ContinuousResearch.ActualMuntzBound.actual_derivative_abs_integrable

#check ContinuousResearch.ActualMuntzBound.derivativeBudget_nonneg
#print axioms ContinuousResearch.ActualMuntzBound.derivativeBudget_nonneg
#print ContinuousResearch.ActualMuntzBound.derivativeBudget_nonneg

#check ContinuousResearch.ActualMuntzBound.scaled_derivative_integral_eq
#print axioms ContinuousResearch.ActualMuntzBound.scaled_derivative_integral_eq
#print ContinuousResearch.ActualMuntzBound.scaled_derivative_integral_eq

#check ContinuousResearch.ActualMuntzBound.actualMuntz_abs_le_budget
#print axioms ContinuousResearch.ActualMuntzBound.actualMuntz_abs_le_budget
#print ContinuousResearch.ActualMuntzBound.actualMuntz_abs_le_budget

#check ContinuousResearch.ActualMuntzBound.actualMuntz_memLp_global
#print axioms ContinuousResearch.ActualMuntzBound.actualMuntz_memLp_global
#print ContinuousResearch.ActualMuntzBound.actualMuntz_memLp_global

#check ContinuousResearch.ActualMuntzBound.actualMuntz_memLp_positive
#print axioms ContinuousResearch.ActualMuntzBound.actualMuntz_memLp_positive
#print ContinuousResearch.ActualMuntzBound.actualMuntz_memLp_positive

#check ContinuousResearch.ActualMuntzBound.actualMuntz_square_integrable
#print axioms ContinuousResearch.ActualMuntzBound.actualMuntz_square_integrable
#print ContinuousResearch.ActualMuntzBound.actualMuntz_square_integrable

#check ContinuousResearch.ActualMuntzBound.actualMuntzL2
#print axioms ContinuousResearch.ActualMuntzBound.actualMuntzL2
#print ContinuousResearch.ActualMuntzBound.actualMuntzL2

#check ContinuousResearch.ActualMuntzBound.actualMuntzL2_ae
#print axioms ContinuousResearch.ActualMuntzBound.actualMuntzL2_ae
#print ContinuousResearch.ActualMuntzBound.actualMuntzL2_ae
