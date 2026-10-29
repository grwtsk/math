-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Curvature.Variante2a5d083ac80ade14a7de57f30b822ebbf58a4f3963a6ab95e08b04f5cebc86c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2a5d083ac80ade14a7de57f30b822ebbf58a4f3963a6ab95e08b04f5cebc86c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Curvature.Variante2a5d083ac80ade14a7de57f30b822ebbf58a4f3963a6ab95e08b04f5cebc86c","mathematical_subject":"Analysis.Calculus","original_sha256":"e2a5d083ac80ade14a7de57f30b822ebbf58a4f3963a6ab95e08b04f5cebc86c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass7/signed_transfer_review/source-final.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative
import Mathlib.Analysis.Calculus.LocalExtr.Basic
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

/-! Actual-source endpoint and signed-kernel audit for #323.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
The signed arithmetic transfer and any uniform arithmetic bound remain open. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Curvature.Variante2a5d083ac80ade14a7de57f30b822ebbf58a4f3963a6ab95e08b04f5cebc86c

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualSignedKernelMoments
open MeasureTheory Set
open scoped Topology
open FormalResearch.RiemannHypothesis
open SourcePairing SourceFirstPrimeAbel SourceCorrelationCurvature SourceCorrelationCurvatureSign
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateSourceMobiusDerivative

def curvature (A t : ℝ) : ℝ := deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t
def biasLogKernel (A t : ℝ) : ℝ := Real.exp (t/2) *
  (curvature A t - sourceCorrelation explicitSecondDerivative A t/4)
def biasKernel (A x : ℝ) : ℝ := Real.exp (-Real.log x/2) *
  (curvature A (Real.log x) - sourceCorrelation explicitSecondDerivative A (Real.log x)/4)
def biasPrimitive (A t : ℝ) : ℝ := Real.exp (t/2) *
  (deriv (sourceCorrelation explicitSecondDerivative A) t -
    sourceCorrelation explicitSecondDerivative A t/2)
def sourceBiasWeight (A x : ℝ) : ℝ := Real.exp (-Real.log x/2) *
  sourceCorrelation explicitSecondDerivative A (Real.log x)

private theorem correlation_deriv_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  apply IsLocalMax.deriv_eq_zero
  apply Filter.Eventually.of_forall
  intro t
  rw [actual_correlation_at_zero A hA]
  exact (le_abs_self _).trans (actual_correlation_abs_le_one A t hA)

theorem curvature_continuous {A : ℝ} (hA : 0 < A) : Continuous (curvature A) :=
  (sourceCorrelation_deriv_contDiff hA).continuous_deriv_one

theorem curvature_intervalIntegrable {A : ℝ} (hA : 0 < A) (a b : ℝ) :
    IntervalIntegrable (curvature A) volume a b :=
  (curvature_continuous hA).intervalIntegrable a b

theorem curvature_half_total_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, curvature A t) = 0 := by
  have hp : 0 < A := by linarith
  have hf := sourceCorrelation_deriv_contDiff hp
  unfold curvature
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hf.differentiable (by norm_num) t).hasDerivAt)
    (curvature_intervalIntegrable hp 0 (2*A))]
  rw [sourceCorrelation_deriv_zero_of_two_mul_le A (2*A) hp le_rfl,
    correlation_deriv_zero hA, sub_self]

theorem curvature_half_first_moment_one {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, t * curvature A t) = 1 := by
  have hp : 0 < A := by linarith
  have hf := sourceCorrelation_deriv_contDiff hp
  have hc := sourceCorrelation_contDiff A hp
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u := fun t : ℝ => t) (u' := fun _ : ℝ => (1 : ℝ))
    (v := deriv (sourceCorrelation explicitSecondDerivative A)) (v' := curvature A)
    continuous_id.continuousOn hf.continuous.continuousOn
    (fun t _ => hasDerivAt_id t)
    (fun t _ => (hf.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (2*A)) (curvature_intervalIntegrable hp 0 (2*A))
  rw [hi, sourceCorrelation_deriv_zero_of_two_mul_le A (2*A) hp le_rfl]
  simp only [mul_zero, zero_mul, zero_sub, one_mul]
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hc.differentiable (by norm_num) t).hasDerivAt)
    (hf.continuous.intervalIntegrable 0 (2*A)),
    sourceCorrelation_upper_endpoint A hp, actual_correlation_at_zero A hA]
  norm_num

theorem curvature_negative_at_zero {A : ℝ} (hA : 1 ≤ A) : curvature A 0 < 0 :=
  sourceCorrelation_curvature_at_zero_neg (by linarith)

theorem curvature_positive_somewhere {A : ℝ} (hA : 1 ≤ A) :
    ∃ t ∈ Icc 0 (2*A), 0 < curvature A t := by
  by_contra hn
  push Not at hn
  have hz : 0 ≤ ∫ t in 0..2*A, -(t * curvature A t) :=
    intervalIntegral.integral_nonneg (by linarith) (fun t ht =>
      neg_nonneg.mpr (mul_nonpos_of_nonneg_of_nonpos ht.1 (hn t ht)))
  rw [intervalIntegral.integral_neg, curvature_half_first_moment_one hA] at hz
  norm_num at hz

theorem biasPrimitive_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (biasPrimitive A) (biasLogKernel A t) t := by
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num) t).hasDerivAt
  have hh := (((hasDerivAt_id t).div_const 2).exp).mul (hd.sub (hc.div_const 2))
  apply hh.congr_deriv
  dsimp [biasPrimitive, biasLogKernel, curvature]
  ring

theorem biasLogKernel_continuous {A : ℝ} (hA : 0 < A) : Continuous (biasLogKernel A) := by
  exact ((Real.continuous_exp.comp (continuous_id.div_const 2))).mul
    ((curvature_continuous hA).sub ((sourceCorrelation_contDiff A hA).continuous.div_const 4))

theorem biasLogKernel_half_total {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, biasLogKernel A t) = 1/2 := by
  have hp : 0 < A := by linarith
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => biasPrimitive_hasDerivAt hp t)
    ((biasLogKernel_continuous hp).intervalIntegrable 0 (2*A))]
  simp only [biasPrimitive, sourceCorrelation_deriv_zero_of_two_mul_le A (2*A) hp le_rfl,
    sourceCorrelation_upper_endpoint A hp, correlation_deriv_zero hA,
    actual_correlation_at_zero A hA, zero_div, sub_zero, mul_zero, Real.exp_zero, one_mul]
  norm_num

theorem biasLogKernel_negative_at_zero {A : ℝ} (hA : 1 ≤ A) : biasLogKernel A 0 < 0 := by
  have hn := curvature_negative_at_zero hA
  simp only [biasLogKernel, zero_div, Real.exp_zero, one_mul, actual_correlation_at_zero A hA]
  linarith

theorem biasLogKernel_positive_somewhere {A : ℝ} (hA : 1 ≤ A) :
    ∃ t ∈ Icc 0 (2*A), 0 < biasLogKernel A t := by
  by_contra hn
  push Not at hn
  have hz := intervalIntegral.integral_nonneg (μ := volume) (f := fun t => -biasLogKernel A t)
    (show 0 ≤ 2*A by linarith) (fun t ht => neg_nonneg.mpr (hn t ht))
  rw [intervalIntegral.integral_neg, biasLogKernel_half_total hA] at hz
  norm_num at hz

theorem biasKernel_eq_log_transport {A : ℝ} {x : ℝ} (hx : 0 < x) :
    biasKernel A x * x = biasLogKernel A (Real.log x) := by
  unfold biasKernel biasLogKernel
  have he : Real.exp (-Real.log x/2) * x = Real.exp (Real.log x/2) := by
    calc
      _ = Real.exp (-Real.log x/2) * Real.exp (Real.log x) := by rw [Real.exp_log hx]
      _ = _ := by rw [← Real.exp_add]; congr 1; ring
  calc
    _ = (Real.exp (-Real.log x/2) * x) *
      (curvature A (Real.log x) - sourceCorrelation explicitSecondDerivative A (Real.log x)/4) := by ring
    _ = _ := by rw [he]

theorem biasKernel_primitive_hasDerivAt {A : ℝ} (hA : 0 < A) {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun y => biasPrimitive A (Real.log y)) (biasKernel A x) x := by
  have hd := (biasPrimitive_hasDerivAt hA (Real.log x)).comp x
    (Real.hasDerivAt_log (ne_of_gt hx))
  apply hd.congr_deriv
  have he : Real.exp (Real.log x/2) / x = Real.exp (-Real.log x/2) := by
    calc
      _ = Real.exp (Real.log x/2) / Real.exp (Real.log x) := by rw [Real.exp_log hx]
      _ = _ := by rw [← Real.exp_sub]; congr 1; ring
  dsimp [biasLogKernel, biasKernel]
  rw [show Real.exp (Real.log x/2) *
      (curvature A (Real.log x) - sourceCorrelation explicitSecondDerivative A (Real.log x)/4) * x⁻¹ =
    (Real.exp (Real.log x/2) / x) *
      (curvature A (Real.log x) - sourceCorrelation explicitSecondDerivative A (Real.log x)/4) by ring, he]

theorem biasKernel_continuousOn {A : ℝ} (hA : 0 < A) :
    ContinuousOn (biasKernel A) (Ioi 0) := by
  have hl : ContinuousOn Real.log (Ioi 0) := Real.continuousOn_log.mono (by
    intro x hx
    exact ne_of_gt hx)
  exact (Real.continuous_exp.comp_continuousOn (hl.neg.div_const 2)).mul
    (((curvature_continuous hA).comp_continuousOn hl).sub
      (((sourceCorrelation_contDiff A hA).continuous.comp_continuousOn hl).div_const 4))

theorem biasKernel_total {A : ℝ} (hA : 1 ≤ A) :
    (∫ x in 1..Real.exp (2*A), biasKernel A x) = 1/2 := by
  have hp : 0 < A := by linarith
  have he : 1 ≤ Real.exp (2*A) := Real.one_le_exp_iff.mpr (by linarith)
  have hs : uIcc 1 (Real.exp (2*A)) ⊆ Ioi 0 := by
    rw [uIcc_of_le he]
    intro x hx
    exact lt_of_lt_of_le zero_lt_one hx.1
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => biasKernel_primitive_hasDerivAt hp (hs hx))
    ((biasKernel_continuousOn hp).mono hs).intervalIntegrable]
  rw [Real.log_exp, Real.log_one]
  unfold biasPrimitive
  rw [sourceCorrelation_deriv_zero_of_two_mul_le A (2*A) hp le_rfl,
    sourceCorrelation_upper_endpoint A hp, correlation_deriv_zero hA,
    actual_correlation_at_zero A hA]
  norm_num

theorem biasKernel_negative_at_one {A : ℝ} (hA : 1 ≤ A) : biasKernel A 1 < 0 := by
  simpa only [biasKernel, biasLogKernel, Real.log_one, neg_zero, zero_div,
    Real.exp_zero, one_mul] using biasLogKernel_negative_at_zero hA

theorem biasKernel_positive_somewhere {A : ℝ} (hA : 1 ≤ A) :
    ∃ x ∈ Icc 1 (Real.exp (2*A)), 0 < biasKernel A x := by
  obtain ⟨t, ht, hpos⟩ := biasLogKernel_positive_somewhere hA
  refine ⟨Real.exp t, ⟨Real.one_le_exp_iff.mpr ht.1, Real.exp_le_exp.mpr ht.2⟩, ?_⟩
  have he := biasKernel_eq_log_transport (A := A) (Real.exp_pos t)
  rw [Real.log_exp] at he
  rw [← he] at hpos
  exact (mul_pos_iff_of_pos_right (Real.exp_pos t)).mp hpos

theorem sourceBiasWeight_hasDerivAt {A : ℝ} (hA : 0 < A) {x : ℝ} (hx : 0 < x) :
    HasDerivAt (sourceBiasWeight A)
      (Real.exp (-Real.log x/2)/x *
        (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
          sourceCorrelation explicitSecondDerivative A (Real.log x)/2)) x := by
  have hl := Real.hasDerivAt_log (ne_of_gt hx)
  have hc := ((sourceCorrelation_contDiff A hA).differentiable
    (by norm_num) (Real.log x)).hasDerivAt.comp x hl
  have hd := ((hl.neg.div_const 2).exp).mul hc
  apply hd.congr_deriv
  dsimp only [Pi.neg_apply, Function.comp_apply]
  ring

theorem sourceBiasWeight_flux_eq {A : ℝ} (hA : 0 < A) {x : ℝ} (hx : 0 < x) :
    x^2 * deriv (sourceBiasWeight A) x = biasPrimitive A (Real.log x) := by
  rw [(sourceBiasWeight_hasDerivAt hA hx).deriv]
  have he : Real.exp (-Real.log x/2)*x = Real.exp (Real.log x/2) := by
    calc
      _ = Real.exp (-Real.log x/2)*Real.exp (Real.log x) := by rw [Real.exp_log hx]
      _ = _ := by rw [← Real.exp_add]; congr 1; ring
  unfold biasPrimitive
  calc
    _ = (Real.exp (-Real.log x/2)*x) *
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
        sourceCorrelation explicitSecondDerivative A (Real.log x)/2) := by field_simp
    _ = _ := by rw [he]

theorem sourceBiasWeight_flux_hasDerivAt {A : ℝ} (hA : 0 < A) {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun y => y^2 * deriv (sourceBiasWeight A) y) (biasKernel A x) x := by
  have he : (fun y => y^2 * deriv (sourceBiasWeight A) y) =ᶠ[𝓝 x]
      (fun y => biasPrimitive A (Real.log y)) := by
    filter_upwards [eventually_gt_nhds hx] with y hy
    exact sourceBiasWeight_flux_eq hA hy
  exact (biasKernel_primitive_hasDerivAt hA hx).congr_of_eventuallyEq he

theorem sourceBiasWeight_flux_deriv {A : ℝ} (hA : 0 < A) {x : ℝ} (hx : 0 < x) :
    deriv (fun y => y^2 * deriv (sourceBiasWeight A) y) x = biasKernel A x :=
  (sourceBiasWeight_flux_hasDerivAt hA hx).deriv

theorem curvature_weighted_abs_budget {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, t * |curvature A t|) ≤ 325652/7623 := by
  have hp : 0 < A := by linarith
  have hbound := intervalIntegral.integral_mono_on
    (a := 0) (b := 2*A) (μ := volume) (f := fun t => t * |curvature A t|)
    (g := fun t => t * (162826/(7623*A^2)))
    (show 0 ≤ 2*A by linarith)
    ((continuous_id.mul (curvature_continuous hp).abs).intervalIntegrable 0 (2*A))
    ((continuous_id.mul continuous_const).intervalIntegrable 0 (2*A))
    (fun t ht => mul_le_mul_of_nonneg_left
      (sourceCorrelation_second_deriv_abs_le_coefficient hA t) ht.1)
  rw [intervalIntegral.integral_mul_const, integral_id] at hbound
  have he : (((2*A)^2-0^2)/2) * (162826/(7623*A^2)) = 325652/7623 := by
    field_simp
    ring
  exact hbound.trans_eq he

theorem curvature_pairing_intervalIntegrable {A : ℝ} (hA : 0 < A)
    (h : ℝ → ℝ) (hh : Continuous h) :
    IntervalIntegrable (fun t => curvature A t * h t) volume 0 (2*A) :=
  ((curvature_continuous hA).mul hh).intervalIntegrable 0 (2*A)

/-- A sufficient explicit envelope, with no assertion that Suzuki's actual primitive has it. -/
theorem curvature_pairing_of_linear_envelope {A : ℝ} (hA : 1 ≤ A)
    (h : ℝ → ℝ) (hh : Continuous h) (E : ℝ)
    (henv : ∀ t ∈ Icc 0 (2*A), |h t| ≤ E*t) :
    |∫ t in 0..2*A, curvature A t * h t| ≤ (325652/7623)*E := by
  have hp : 0 < A := by linarith
  have hi := curvature_pairing_intervalIntegrable hp h hh
  have hb := intervalIntegral.integral_mono_on (a := 0) (b := 2*A) (μ := volume)
    (f := fun t => |curvature A t * h t|) (g := fun t => E*(t*|curvature A t|))
    (show 0 ≤ 2*A by linarith) hi.abs
    ((continuous_const.mul (continuous_id.mul (curvature_continuous hp).abs)).intervalIntegrable 0 (2*A))
    (fun t ht => by rw [abs_mul]; nlinarith [mul_le_mul_of_nonneg_left (henv t ht) (abs_nonneg (curvature A t))])
  have hE : 0 ≤ E := by
    have hb := henv 1 ⟨by norm_num, by linarith⟩
    linarith [abs_nonneg (h 1)]
  calc
    _ ≤ ∫ t in 0..2*A, |curvature A t * h t| := intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ t in 0..2*A, E*(t*|curvature A t|) := hb
    _ = E*(∫ t in 0..2*A, t*|curvature A t|) := intervalIntegral.integral_const_mul _ _
    _ ≤ E*(325652/7623) := mul_le_mul_of_nonneg_left (curvature_weighted_abs_budget hA) hE
    _ = _ := by ring

theorem negative_half_exp_eq_sqrt {x : ℝ} (hx : 0 < x) :
    Real.exp (-Real.log x/2) = 1/Real.sqrt x := by
  rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos hx, one_div, ← Real.exp_neg]
  congr 1
  ring

theorem biasKernel_eq_sqrt {A : ℝ} {x : ℝ} (hx : 0 < x) :
    biasKernel A x = (1/Real.sqrt x) *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log x) -
        sourceCorrelation explicitSecondDerivative A (Real.log x)/4) := by
  rw [biasKernel, negative_half_exp_eq_sqrt hx]
  rfl

#check curvature_continuous
#check curvature_intervalIntegrable
#check curvature_half_total_zero
#check curvature_half_first_moment_one
#check curvature_negative_at_zero
#check curvature_positive_somewhere
#check biasPrimitive_hasDerivAt
#check biasLogKernel_continuous
#check biasLogKernel_half_total
#check biasLogKernel_negative_at_zero
#check biasLogKernel_positive_somewhere
#check biasKernel_eq_log_transport
#check biasKernel_primitive_hasDerivAt
#check biasKernel_continuousOn
#check biasKernel_total
#check biasKernel_negative_at_one
#check biasKernel_positive_somewhere
#check sourceBiasWeight_hasDerivAt
#check sourceBiasWeight_flux_eq
#check sourceBiasWeight_flux_hasDerivAt
#check sourceBiasWeight_flux_deriv
#check curvature_weighted_abs_budget
#check curvature_pairing_intervalIntegrable
#check curvature_pairing_of_linear_envelope
#check negative_half_exp_eq_sqrt
#check biasKernel_eq_sqrt
#check curvature
#check biasLogKernel
#check biasKernel
#check biasPrimitive
#check sourceBiasWeight
#print axioms curvature_continuous
#print axioms curvature_intervalIntegrable
#print axioms curvature_half_total_zero
#print axioms curvature_half_first_moment_one
#print axioms curvature_negative_at_zero
#print axioms curvature_positive_somewhere
#print axioms biasPrimitive_hasDerivAt
#print axioms biasLogKernel_continuous
#print axioms biasLogKernel_half_total
#print axioms biasLogKernel_negative_at_zero
#print axioms biasLogKernel_positive_somewhere
#print axioms biasKernel_eq_log_transport
#print axioms biasKernel_primitive_hasDerivAt
#print axioms biasKernel_continuousOn
#print axioms biasKernel_total
#print axioms biasKernel_negative_at_one
#print axioms biasKernel_positive_somewhere
#print axioms sourceBiasWeight_hasDerivAt
#print axioms sourceBiasWeight_flux_eq
#print axioms sourceBiasWeight_flux_hasDerivAt
#print axioms sourceBiasWeight_flux_deriv
#print axioms curvature_weighted_abs_budget
#print axioms curvature_pairing_intervalIntegrable
#print axioms curvature_pairing_of_linear_envelope
#print axioms negative_half_exp_eq_sqrt
#print axioms biasKernel_eq_sqrt
#print axioms curvature
#print axioms biasLogKernel
#print axioms biasKernel
#print axioms biasPrimitive
#print axioms sourceBiasWeight

end ContinuousResearch.ActualSignedKernelMoments
