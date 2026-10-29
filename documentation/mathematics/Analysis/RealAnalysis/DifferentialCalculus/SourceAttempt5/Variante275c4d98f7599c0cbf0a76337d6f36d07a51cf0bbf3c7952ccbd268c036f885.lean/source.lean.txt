-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.P.Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.P.Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03","mathematical_subject":"Analysis.Calculus","original_sha256":"76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass6/gamma_second_review/source-attempt5.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CompensatedGammaIntegral
import Mathlib.Analysis.Calculus.SmoothSeries
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Tactic


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.P.Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03

set_option autoImplicit false

noncomputable section

open Filter Set MeasureTheory
open scoped Topology

namespace ContinuousResearch.ActualGammaSecond

private abbrev P := ContinuousResearch.CompensatedGammaProfile.actualProfile
private abbrev a := ContinuousResearch.CompensatedGammaIntegral.physicalRate

def firstTerm (x : ℝ) (n : ℕ) : ℝ := x / (a n * (x + a n))

def secondTerm (x : ℝ) (n : ℕ) : ℝ := 1 / (x + a n) ^ 2

def firstSeries (x : ℝ) : ℝ := ∑' n : ℕ, firstTerm x n

def secondSeries (x : ℝ) : ℝ := ∑' n : ℕ, secondTerm x n

private def weight (n : ℕ) : ℝ := ((n : ℝ) + 1) ^ (-2 : ℝ)

private theorem weight_eq (n : ℕ) : weight n = 1 / ((n : ℝ) + 1) ^ 2 := by
  rw [weight, show (-2 : ℝ) = -(2 : ℕ) by norm_num, Real.rpow_neg (by positivity),
    Real.rpow_natCast]
  simp only [one_div]

private theorem weight_summable : Summable weight := by
  change Summable (fun n : ℕ ↦ ((n : ℝ) + 1) ^ (-2 : ℝ))
  simpa only [Nat.cast_zero, add_zero] using
    ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_summable 0

theorem pairedTerm_hasDerivAt {x : ℝ} (hx : -2 < x) (n : ℕ) :
    HasDerivAt (fun y ↦ ContinuousResearch.CompensatedGammaProfile.term y n) (firstTerm x n) x := by
  have ha := ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos n
  have hax := ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hx n
  have hlog := ContinuousResearch.CompensatedGammaProfile.log_argument_pos hx n
  have h := ((hasDerivAt_id x).div_const (a n)).sub
    (((hasDerivAt_id x).div_const (a n)).const_add 1 |>.log hlog.ne')
  change HasDerivAt (fun y ↦ ContinuousResearch.CompensatedGammaProfile.term y n)
    (1 / a n - (1 / a n) / (1 + x / a n)) x at h
  apply h.congr_deriv
  dsimp [firstTerm]
  have hax' : a n + x ≠ 0 := hax.ne'
  have hxap : x + a n ≠ 0 := by simpa only [add_comm] using hax'
  rw [show 1 + x / a n = (a n + x) / a n by field_simp]
  field_simp [ha.ne', hax', hxap]
  ring

theorem firstTerm_hasDerivAt {x : ℝ} (hx : -2 < x) (n : ℕ) :
    HasDerivAt (fun y ↦ firstTerm y n) (secondTerm x n) x := by
  have ha := ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos n
  have hax := ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hx n
  have hax' : x + a n ≠ 0 := by simpa only [add_comm] using hax.ne'
  have h := (hasDerivAt_const x (1 / a n)).sub
    (((hasDerivAt_id x).add_const (a n)).inv hax')
  simp only [id_eq, zero_sub] at h
  simp only [neg_div, neg_neg] at h
  change HasDerivAt (fun y ↦ 1 / a n - (y + a n)⁻¹) (secondTerm x n) x at h
  apply h.congr_of_eventuallyEq
  · filter_upwards [eventually_gt_nhds hx] with y hy
    dsimp [firstTerm]
    have hay := ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hy n
    have hay' : y + a n ≠ 0 := by simpa only [add_comm] using hay.ne'
    field_simp [ha.ne', hay']
    ring

private def lowerCoefficient (l : ℝ) : ℝ := min 2 (l + 2)

private theorem lowerCoefficient_pos {l : ℝ} (hl : -2 < l) : 0 < lowerCoefficient l := by
  exact lt_min (by norm_num) (by linarith)

private theorem rate_lower {l y : ℝ} (_hl : -2 < l) (hy : l < y) (n : ℕ) :
    lowerCoefficient l * ((n : ℝ) + 1) ≤ y + a n := by
  have h2 : lowerCoefficient l ≤ 2 := min_le_left _ _
  have hl2 : lowerCoefficient l ≤ l + 2 := min_le_right _ _
  have hn : 0 ≤ (n : ℝ) := Nat.cast_nonneg n
  have hm := mul_nonneg (sub_nonneg.mpr h2) hn
  dsimp [a, ContinuousResearch.CompensatedGammaIntegral.physicalRate]
  nlinarith

private theorem firstTerm_bound {l u y : ℝ} (hl : -2 < l) (hy : y ∈ Ioo l u) (n : ℕ) :
    ‖firstTerm y n‖ ≤ max |l| |u| / (2 * lowerCoefficient l) * weight n := by
  have hc := lowerCoefficient_pos hl
  have ha := ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos n
  have hay : 0 < y + a n := by
    simpa only [add_comm] using ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
      (lt_trans hl hy.1) n
  have hb : |y| ≤ max |l| |u| := by
    apply abs_le.mpr
    constructor
    · have := neg_abs_le l
      have := le_max_left |l| |u|
      linarith [hy.1]
    · have := le_abs_self u
      have := le_max_right |l| |u|
      linarith [hy.2]
  have hlow := rate_lower hl hy.1 n
  have hp : 0 < (n : ℝ) + 1 := by positivity
  have hd : 2 * lowerCoefficient l * ((n : ℝ) + 1) ^ 2 ≤ a n * (y + a n) := by
    have hm := mul_le_mul_of_nonneg_left hlow (le_of_lt ha)
    dsimp [a, ContinuousResearch.CompensatedGammaIntegral.physicalRate] at hm ⊢
    nlinarith
  rw [firstTerm, Real.norm_eq_abs, abs_div, abs_of_pos (mul_pos ha hay)]
  calc
    _ ≤ max |l| |u| / (a n * (y + a n)) := div_le_div_of_nonneg_right hb (by positivity)
    _ ≤ max |l| |u| / (2 * lowerCoefficient l * ((n : ℝ) + 1) ^ 2) :=
      div_le_div_of_nonneg_left (le_trans (abs_nonneg _) (le_max_left _ _)) (by positivity) hd
    _ = _ := by rw [weight_eq]; field_simp

private theorem secondTerm_bound {l y : ℝ} (hl : -2 < l) (hy : l < y) (n : ℕ) :
    ‖secondTerm y n‖ ≤ 1 / (lowerCoefficient l) ^ 2 * weight n := by
  have hc := lowerCoefficient_pos hl
  have hay : 0 < y + a n := by
    simpa only [add_comm] using ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
      (lt_trans hl hy) n
  have hlow := rate_lower hl hy n
  have hp : 0 < (n : ℝ) + 1 := by positivity
  have hd : (lowerCoefficient l) ^ 2 * ((n : ℝ) + 1) ^ 2 ≤ (y + a n) ^ 2 := by
    have := (sq_le_sq₀ (by positivity : 0 ≤ lowerCoefficient l * ((n : ℝ) + 1)) hay.le).2 hlow
    nlinarith
  rw [secondTerm, Real.norm_of_nonneg (by positivity)]
  calc
    _ ≤ 1 / ((lowerCoefficient l) ^ 2 * ((n : ℝ) + 1) ^ 2) :=
      div_le_div_of_nonneg_left (by norm_num) (by positivity) hd
    _ = _ := by rw [weight_eq]; field_simp

theorem firstTerm_summable {x : ℝ} (hx : -2 < x) : Summable (firstTerm x) := by
  let l := (x - 2) / 2
  let u := x + 1
  have hl : -2 < l := by dsimp [l]; linarith
  have hmem : x ∈ Ioo l u := by dsimp [l, u]; constructor <;> linarith
  exact Summable.of_norm_bounded (weight_summable.mul_left _) (firstTerm_bound hl hmem)

theorem secondTerm_summable {x : ℝ} (hx : -2 < x) : Summable (secondTerm x) := by
  let l := (x - 2) / 2
  have hl : -2 < l := by dsimp [l]; linarith
  have hy : l < x := by dsimp [l]; linarith
  exact Summable.of_norm_bounded (weight_summable.mul_left _) (secondTerm_bound hl hy)

theorem actualProfile_hasDerivAt {x : ℝ} (hx : -2 < x) : HasDerivAt P (firstSeries x) x := by
  let l := (x - 2) / 2
  let u := x + 1
  have hl : -2 < l := by dsimp [l]; linarith
  have hmem : x ∈ Ioo l u := by dsimp [l, u]; constructor <;> linarith
  have h := hasDerivAt_tsum_of_isPreconnected
    (weight_summable.mul_left (max |l| |u| / (2 * lowerCoefficient l))) isOpen_Ioo
    (convex_Ioo l u).isPreconnected
    (fun n y hy ↦ pairedTerm_hasDerivAt (lt_trans hl hy.1) n)
    (fun n y hy ↦ firstTerm_bound hl hy n) hmem
    (ContinuousResearch.CompensatedGammaProfile.term_summable hx) hmem
  apply h.congr_of_eventuallyEq
  · filter_upwards [eventually_gt_nhds hx] with y hy
    exact ContinuousResearch.CompensatedGammaProfile.actualProfile_eq_tsum hy

theorem actualProfile_deriv {x : ℝ} (hx : -2 < x) : deriv P x = firstSeries x :=
  (actualProfile_hasDerivAt hx).deriv

theorem firstSeries_hasDerivAt {x : ℝ} (hx : -2 < x) :
    HasDerivAt firstSeries (secondSeries x) x := by
  let l := (x - 2) / 2
  let u := x + 1
  have hl : -2 < l := by dsimp [l]; linarith
  have hmem : x ∈ Ioo l u := by dsimp [l, u]; constructor <;> linarith
  exact hasDerivAt_tsum_of_isPreconnected
    (weight_summable.mul_left (1 / (lowerCoefficient l) ^ 2)) isOpen_Ioo
    (convex_Ioo l u).isPreconnected
    (fun n y hy ↦ firstTerm_hasDerivAt (lt_trans hl hy.1) n)
    (fun n y hy ↦ secondTerm_bound hl hy.1 n) hmem (firstTerm_summable hx) hmem

theorem actualProfile_second_hasDerivAt {x : ℝ} (hx : -2 < x) :
    HasDerivAt (deriv P) (secondSeries x) x := by
  apply (firstSeries_hasDerivAt hx).congr_of_eventuallyEq
  · filter_upwards [eventually_gt_nhds hx] with y hy
    exact actualProfile_deriv hy

theorem actualProfile_second_deriv {x : ℝ} (hx : -2 < x) :
    deriv (deriv P) x = ∑' n : ℕ, 1 / (x + 2 * ((n : ℝ) + 1)) ^ 2 :=
  (actualProfile_second_hasDerivAt hx).deriv

theorem secondTerm_nonneg (x : ℝ) (n : ℕ) : 0 ≤ secondTerm x n := by
  unfold secondTerm
  positivity

theorem exponential_firstMoment_integrable {b : ℝ} (hb : 0 < b) :
    IntegrableOn (fun t : ℝ ↦ t * Real.exp (-b * t)) (Ioi 0) := by
  have hbase : IntegrableOn (fun t : ℝ ↦ Real.exp (-t) * t) (Ioi 0) := by
    simpa using Real.GammaIntegral_convergent (s := 2) (by norm_num)
  have hscaled := (integrableOn_Ioi_comp_mul_left_iff
    (fun t : ℝ ↦ Real.exp (-t) * t) 0 hb).mpr (by simpa using hbase)
  have h := hscaled.div_const b
  apply h.congr
  filter_upwards with t
  dsimp
  rw [show -(b * t) = -b * t by ring]
  field_simp

theorem exponential_firstMoment_integral {b : ℝ} (hb : 0 < b) :
    (∫ t : ℝ in Ioi 0, t * Real.exp (-b * t)) = 1 / b ^ 2 := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi (a := 2) (r := b) (by norm_num) hb
  simpa only [show (2 : ℝ) - 1 = 1 by norm_num, Real.rpow_one,
    show (2 : ℝ) = (2 : ℕ) by norm_num, Real.rpow_natCast, Real.Gamma_ofNat_eq_factorial,
    Nat.factorial_one, Nat.cast_one, mul_one, one_div, inv_pow, neg_mul] using h

def momentTerm (x : ℝ) (n : ℕ) (t : ℝ) : ℝ := t * Real.exp (-(x + a n) * t)

def curvatureKernel (x t : ℝ) : ℝ := t * Real.exp (-x * t) / (Real.exp (2 * t) - 1)

theorem momentTerm_nonneg (x : ℝ) (n : ℕ) {t : ℝ} (ht : 0 < t) :
    0 ≤ momentTerm x n t := by
  unfold momentTerm
  positivity

theorem momentTerm_integrable {x : ℝ} (hx : -2 < x) (n : ℕ) :
    IntegrableOn (momentTerm x n) (Ioi 0) := by
  exact exponential_firstMoment_integrable (by
    simpa only [add_comm] using ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hx n)

theorem momentTerm_integral {x : ℝ} (hx : -2 < x) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, momentTerm x n t) = secondTerm x n := by
  exact exponential_firstMoment_integral (by
    simpa only [add_comm] using ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos hx n)

theorem momentTerm_hasSum (x : ℝ) {t : ℝ} (ht : 0 < t) :
    HasSum (fun n : ℕ ↦ momentTerm x n t) (curvatureKernel x t) := by
  have h := (ContinuousResearch.CompensatedGammaIntegral.exponential_kernel_hasSum ht).mul_left
    (t * Real.exp (-x * t))
  apply h.congr_fun
  intro n
  unfold momentTerm
  rw [← mul_assoc, ← Real.exp_add]
  congr 1
  congr 1
  ring

theorem curvatureKernel_continuousOn (x : ℝ) : ContinuousOn (curvatureKernel x) (Ioi 0) := by
  unfold curvatureKernel
  apply ContinuousOn.div (by fun_prop) (by fun_prop)
  intro t ht
  change 0 < t at ht
  exact ne_of_gt (sub_pos.mpr (by simpa using Real.exp_lt_exp.mpr (by linarith : 0 < 2 * t)))

theorem momentTerm_integral_norm {x : ℝ} (hx : -2 < x) (n : ℕ) :
    (∫ t : ℝ in Ioi 0, ‖momentTerm x n t‖) = secondTerm x n := by
  rw [show (∫ t : ℝ in Ioi 0, ‖momentTerm x n t‖) =
      ∫ t : ℝ in Ioi 0, momentTerm x n t from integral_congr_ae (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact Real.norm_of_nonneg (momentTerm_nonneg x n ht))]
  exact momentTerm_integral hx n

theorem momentTerm_integral_norm_summable {x : ℝ} (hx : -2 < x) :
    Summable (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖momentTerm x n t‖) := by
  have he : (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖momentTerm x n t‖) = secondTerm x := by
    ext n
    exact momentTerm_integral_norm hx n
  rw [he]
  exact secondTerm_summable hx

theorem momentTerm_lintegral_enorm_tsum_lt_top {x : ℝ} (hx : -2 < x) :
    (∑' n : ℕ, ∫⁻ t : ℝ in Ioi 0, ‖momentTerm x n t‖ₑ) < ⊤ := by
  calc
    _ = ∑' n : ℕ, ENNReal.ofReal (secondTerm x n) := by
      apply tsum_congr
      intro n
      rw [← ofReal_integral_norm_eq_lintegral_enorm (momentTerm_integrable hx n),
        momentTerm_integral_norm hx n]
    _ = ENNReal.ofReal (∑' n : ℕ, secondTerm x n) :=
      (ENNReal.ofReal_tsum_of_nonneg (secondTerm_nonneg x) (secondTerm_summable hx)).symm
    _ < ⊤ := ENNReal.ofReal_lt_top

theorem curvatureKernel_integrable {x : ℝ} (hx : -2 < x) :
    IntegrableOn (curvatureKernel x) (Ioi 0) := by
  refine ⟨(curvatureKernel_continuousOn x).aestronglyMeasurable measurableSet_Ioi, ?_⟩
  apply hasFiniteIntegral_iff_enorm.mpr
  calc
    _ ≤ ∫⁻ t : ℝ in Ioi 0, ∑' n : ℕ, ‖momentTerm x n t‖ₑ := by
      apply lintegral_mono_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [← (momentTerm_hasSum x ht).tsum_eq]
      exact enorm_tsum_le_tsum_enorm
    _ = ∑' n : ℕ, ∫⁻ t : ℝ in Ioi 0, ‖momentTerm x n t‖ₑ :=
      lintegral_tsum (fun n ↦ (momentTerm_integrable hx n).1.enorm)
    _ < ⊤ := momentTerm_lintegral_enorm_tsum_lt_top hx

theorem secondSeries_eq_curvatureIntegral {x : ℝ} (hx : -2 < x) :
    secondSeries x = ∫ t : ℝ in Ioi 0, curvatureKernel x t := by
  have hI := hasSum_integral_of_summable_integral_norm
    (fun n ↦ momentTerm_integrable hx n) (momentTerm_integral_norm_summable hx)
  have hS : HasSum (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, momentTerm x n t) (secondSeries x) :=
    (secondTerm_summable hx).hasSum.congr_fun (fun n ↦ momentTerm_integral hx n)
  apply (hS.unique hI).trans
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact (momentTerm_hasSum x ht).tsum_eq

theorem actualProfile_second_integral {x : ℝ} (hx : -2 < x) :
    IntegrableOn (fun t : ℝ ↦ t * Real.exp (-x * t) / (Real.exp (2 * t) - 1)) (Ioi 0) ∧
      deriv (deriv ContinuousResearch.CompensatedGammaProfile.actualProfile) x =
        ∫ t : ℝ in Ioi 0, t * Real.exp (-x * t) / (Real.exp (2 * t) - 1) :=
  ⟨curvatureKernel_integrable hx,
    (actualProfile_second_hasDerivAt hx).deriv.trans (secondSeries_eq_curvatureIntegral hx)⟩

end ContinuousResearch.ActualGammaSecond

#check ContinuousResearch.ActualGammaSecond.pairedTerm_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.firstTerm_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.firstTerm_summable
#check ContinuousResearch.ActualGammaSecond.secondTerm_summable
#check ContinuousResearch.ActualGammaSecond.actualProfile_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_deriv
#check ContinuousResearch.ActualGammaSecond.firstSeries_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_deriv
#check ContinuousResearch.ActualGammaSecond.secondTerm_nonneg
#check ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integrable
#check ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integral
#check ContinuousResearch.ActualGammaSecond.momentTerm_nonneg
#check ContinuousResearch.ActualGammaSecond.momentTerm_integrable
#check ContinuousResearch.ActualGammaSecond.momentTerm_integral
#check ContinuousResearch.ActualGammaSecond.momentTerm_hasSum
#check ContinuousResearch.ActualGammaSecond.curvatureKernel_continuousOn
#check ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm
#check ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm_summable
#check ContinuousResearch.ActualGammaSecond.momentTerm_lintegral_enorm_tsum_lt_top
#check ContinuousResearch.ActualGammaSecond.curvatureKernel_integrable
#check ContinuousResearch.ActualGammaSecond.secondSeries_eq_curvatureIntegral
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_integral
#print axioms ContinuousResearch.ActualGammaSecond.pairedTerm_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.firstTerm_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.firstTerm_summable
#print axioms ContinuousResearch.ActualGammaSecond.secondTerm_summable
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_deriv
#print axioms ContinuousResearch.ActualGammaSecond.firstSeries_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_deriv
#print axioms ContinuousResearch.ActualGammaSecond.secondTerm_nonneg
#print axioms ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integrable
#print axioms ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integral
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_nonneg
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integrable
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integral
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_hasSum
#print axioms ContinuousResearch.ActualGammaSecond.curvatureKernel_continuousOn
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm_summable
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_lintegral_enorm_tsum_lt_top
#print axioms ContinuousResearch.ActualGammaSecond.curvatureKernel_integrable
#print axioms ContinuousResearch.ActualGammaSecond.secondSeries_eq_curvatureIntegral
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_integral
