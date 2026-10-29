-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CutoffBaseline.Variant187e93ccc46e5d521770c1eeb49fa88f2807a3708b2f5f97b764a016eb55b81c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"187e93ccc46e5d521770c1eeb49fa88f2807a3708b2f5f97b764a016eb55b81c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CutoffBaseline.Variant187e93ccc46e5d521770c1eeb49fa88f2807a3708b2f5f97b764a016eb55b81c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"187e93ccc46e5d521770c1eeb49fa88f2807a3708b2f5f97b764a016eb55b81c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceHybridQuadrature.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive

/-!
# A signed O(A^-2) price for the complete mean-one cutoff remainder

QGL-ALL-20261007. Direction, theorem selection, corrections and evaluation:
grwtsk contributors. This refinement and its native proof: OpenAI Codex.
The compensated Mangoldt sum remains unbounded by any theorem here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CutoffBaseline.Variant187e93ccc46e5d521770c1eeb49fa88f2807a3708b2f5f97b764a016eb55b81c

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceHybridQuadrature

open MeasureTheory Set SourcePairing SourceKapitzaReconstruction
open SourceKapitzaCompensatedReadout SourceCorrelationCurvatureFive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual
open EstimatePrimeSmoothDefect
open scoped Interval

/-- The retained signed mean-one baseline includes the exact real cutoff phase. -/
def cutoffBaseline (A : ℝ) : ℝ :=
  -(1 / 2 : ℝ) * (∫ s in 0..2 * A, cutoffPhase s * Real.exp (-s / 2))

/-- An exact source-independent price retained from the first natural phase cell. -/
def firstCellPayment : ℝ := Real.sqrt 2 + 1 / Real.sqrt 2 - 2

theorem cutoffPhase_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable cutoffPhase volume a b := by
  have hfloor : Monotone (fun s : ℝ => (⌊Real.exp s⌋₊ : ℝ)) := by
    intro s t hst
    change (⌊Real.exp s⌋₊ : ℝ) ≤ (⌊Real.exp t⌋₊ : ℝ)
    exact_mod_cast Nat.floor_mono (Real.exp_le_exp.mpr hst)
  change IntervalIntegrable (fun s => Real.exp s - (⌊Real.exp s⌋₊ : ℝ)) volume a b
  exact (Real.continuous_exp.intervalIntegrable (μ := volume) a b).sub hfloor.intervalIntegrable

theorem kernel_continuous (A : ℝ) (hA : 0 < A) : Continuous (kapitzaKernel A) := by
  have hc := sourceCorrelation_contDiff A hA
  exact hc.continuous.div_const 2 |>.sub hc.continuous_deriv_one

theorem weightedPhase_intervalIntegrable (A : ℝ) :
    IntervalIntegrable (fun s => cutoffPhase s * Real.exp (-s / 2)) volume 0 (2 * A) :=
  (cutoffPhase_intervalIntegrable 0 (2 * A)).mul_continuousOn (by fun_prop)

theorem cutoffBaseline_nonpos (A : ℝ) (hA : 0 ≤ A) : cutoffBaseline A ≤ 0 := by
  have hi : 0 ≤ ∫ s in 0..2 * A, cutoffPhase s * Real.exp (-s / 2) :=
    intervalIntegral.integral_nonneg (by linarith) (fun s _ =>
      mul_nonneg (cutoffPhase_bounds s).1 (Real.exp_pos _).le)
  unfold cutoffBaseline
  linarith

theorem firstCellPayment_gt_tenth : (1 / 10 : ℝ) < firstCellPayment := by
  have hs : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
  have hsq : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hl : (7 / 5 : ℝ) < Real.sqrt 2 := by nlinarith
  have hdiv : 1 / Real.sqrt 2 = Real.sqrt 2 / 2 := by
    apply (div_eq_iff hs.ne').mpr
    nlinarith
  unfold firstCellPayment
  rw [hdiv]
  nlinarith

/-- The literal first phase cell supplies a strictly negative baseline without PNT. -/
theorem cutoffBaseline_le_first_cell (A : ℝ) (hA : 1 ≤ A) :
    cutoffBaseline A ≤ -firstCellPayment := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hlt := Real.log_lt_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    (by norm_num : (2 : ℝ) ≠ 1)
  have hupper : Real.log 2 ≤ 2 * A := by linarith
  have hfun : (∫ s in 0..Real.log 2, cutoffPhase s * Real.exp (-s / 2)) =
      ∫ s in 0..Real.log 2, Real.exp (s / 2) - Real.exp (-s / 2) := by
    apply intervalIntegral.integral_congr_Ioo_of_le hlog.le
    intro s hs
    have hfloor : ⌊Real.exp s⌋₊ = 1 :=
      (Nat.floor_eq_iff (Real.exp_pos s).le).mpr ⟨
        by simpa using Real.one_le_exp hs.1.le,
        by
          have he := Real.exp_lt_exp.mpr hs.2
          rw [Real.exp_log (by norm_num : (0 : ℝ) < 2)] at he
          norm_num at he ⊢
          exact he⟩
    dsimp only
    unfold cutoffPhase
    rw [hfloor, Nat.cast_one, sub_mul, one_mul, ← Real.exp_add]
    rw [show s + (-s / 2) = s / 2 by ring]
  have hd (s : ℝ) : HasDerivAt
      (fun t => 2 * Real.exp (t / 2) + 2 * Real.exp (-t / 2))
      (Real.exp (s / 2) - Real.exp (-s / 2)) s := by
    exact ((((hasDerivAt_id s).div_const 2).exp).const_mul 2 |>.add
      ((((hasDerivAt_id s).neg.div_const 2).exp).const_mul 2)).congr_deriv (by dsimp; ring)
  have hfirst : (∫ s in 0..Real.log 2, cutoffPhase s * Real.exp (-s / 2)) =
      2 * firstCellPayment := by
    rw [hfun, intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
      ((by fun_prop : Continuous (fun s : ℝ =>
        Real.exp (s / 2) - Real.exp (-s / 2))).intervalIntegrable 0 (Real.log 2))]
    have he : Real.exp (Real.log 2 / 2) = Real.sqrt 2 := by
      rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
    have hen : Real.exp (-Real.log 2 / 2) = 1 / Real.sqrt 2 := by
      rw [neg_div, Real.exp_neg, he, one_div]
    rw [he, hen]
    simp only [zero_div, neg_zero, Real.exp_zero, mul_one]
    unfold firstCellPayment
    ring
  have hnonneg : 0 ≤ᵐ[volume.restrict (Ioc 0 (2 * A))]
      (fun s => cutoffPhase s * Real.exp (-s / 2)) :=
    Filter.Eventually.of_forall (fun s =>
      mul_nonneg (cutoffPhase_bounds s).1 (Real.exp_pos _).le)
  have hi := intervalIntegral.integral_mono_interval
    (show (0 : ℝ) ≤ 0 by rfl) hlog.le hupper hnonneg (weightedPhase_intervalIntegrable A)
  rw [hfirst] at hi
  unfold cutoffBaseline
  linarith

/-- Curvature controls the exact signed source kernel near its physical unit anchor. -/
theorem kernel_sub_half_abs_le (A s : ℝ) (hA : 200 ≤ A) (hs : 0 ≤ s) :
    |kapitzaKernel A s - 1 / 2| ≤ (5 / A ^ 2) * (s + s ^ 2 / 4) := by
  have ht := sourceCorrelation_sub_one_abs_le_five hA s
  have hd := sourceCorrelation_deriv_abs_le_scaled_distance hA s
  rw [abs_of_nonneg hs] at hd
  have hid : kapitzaKernel A s - 1 / 2 =
      (sourceCorrelation explicitSecondDerivative A s - 1) / 2 -
        deriv (sourceCorrelation explicitSecondDerivative A) s := by
    unfold kapitzaKernel
    ring
  rw [hid]
  have htri := abs_sub
    ((sourceCorrelation explicitSecondDerivative A s - 1) / 2)
    (deriv (sourceCorrelation explicitSecondDerivative A) s)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at htri
  linarith

/-- Exact positive finite moment; the real endpoint is retained. -/
theorem exponential_moment_le_eight (T : ℝ) (hT : 0 ≤ T) :
    (∫ s in 0..T, Real.exp (-s / 2) * (s + s ^ 2 / 4)) ≤ 8 := by
  have hd (s : ℝ) : HasDerivAt
      (fun t => -(t ^ 2 / 2 + 4 * t + 8) * Real.exp (-t / 2))
      (Real.exp (-s / 2) * (s + s ^ 2 / 4)) s := by
    have hp := ((((hasDerivAt_id s).pow 2).div_const 2).add
      ((hasDerivAt_id s).const_mul 4)).add_const 8
    have he := (((hasDerivAt_id s).neg.div_const 2).exp)
    exact (hp.neg.mul he).congr_deriv (by dsimp; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ =>
      Real.exp (-s / 2) * (s + s ^ 2 / 4))).intervalIntegrable 0 T)]
  simp only [neg_zero, zero_div, Real.exp_zero, zero_pow (by norm_num : 2 ≠ 0),
    zero_add, mul_one]
  have hp : 0 ≤ (T ^ 2 / 2 + 4 * T + 8) * Real.exp (-T / 2) := by positivity
  linarith

/-- Native two-sided approximation by the signed cutoff baseline: all-real A>=200. -/
theorem quadratureError_sub_baseline_abs_le (A : ℝ) (hA : 200 ≤ A) :
    |quadratureError A - cutoffBaseline A| ≤ 40 / A ^ 2 := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ 2 * A := by linarith
  have hphase := weightedPhase_intervalIntegrable A
  have hk := hphase.mul_continuousOn (kernel_continuous A hp).continuousOn
  have hconst := hphase.mul_const (1 / 2 : ℝ)
  have hid : quadratureError A - cutoffBaseline A =
      -(∫ s in 0..2 * A,
        cutoffPhase s * Real.exp (-s / 2) * (kapitzaKernel A s - 1 / 2)) := by
    have hfun : (fun s => cutoffPhase s * Real.exp (-s / 2) *
        (kapitzaKernel A s - 1 / 2)) =
        (fun s => cutoffPhase s * Real.exp (-s / 2) * kapitzaKernel A s -
          cutoffPhase s * Real.exp (-s / 2) * (1 / 2 : ℝ)) := by funext s; ring
    unfold quadratureError cutoffBaseline
    rw [hfun, intervalIntegral.integral_sub hk hconst,
      intervalIntegral.integral_mul_const]
    have hsame : (fun s => cutoffPhase s *
        (Real.exp (-s / 2) * kapitzaKernel A s)) =
        (fun s => cutoffPhase s * Real.exp (-s / 2) * kapitzaKernel A s) := by
      funext s; ring
    rw [hsame]
    ring
  rw [hid, abs_neg]
  have hg : IntervalIntegrable (fun s : ℝ => (5 / A ^ 2) *
      (Real.exp (-s / 2) * (s + s ^ 2 / 4))) volume 0 (2 * A) :=
    (by fun_prop : Continuous (fun s : ℝ => (5 / A ^ 2) *
      (Real.exp (-s / 2) * (s + s ^ 2 / 4)))).intervalIntegrable 0 (2 * A)
  have hn := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun s => cutoffPhase s * Real.exp (-s / 2) * (kapitzaKernel A s - 1 / 2))
    ha (Filter.Eventually.of_forall (fun s hs => ?_)) hg
  · rw [intervalIntegral.integral_const_mul] at hn
    simp only [Real.norm_eq_abs] at hn
    have hm := exponential_moment_le_eight (2 * A) ha
    have hcoef : 0 ≤ 5 / A ^ 2 := by positivity
    calc
      _ ≤ (5 / A ^ 2) * (∫ s in 0..2 * A, Real.exp (-s / 2) * (s + s ^ 2 / 4)) := hn
      _ ≤ (5 / A ^ 2) * 8 := mul_le_mul_of_nonneg_left hm hcoef
      _ = 40 / A ^ 2 := by ring
  · have hs0 : 0 ≤ s := hs.1.le
    have hb : cutoffPhase s ≤ 1 := (cutoffPhase_bounds s).2.le
    simp only [Real.norm_eq_abs, abs_mul, abs_of_nonneg (cutoffPhase_bounds s).1,
      abs_of_pos (Real.exp_pos _)]
    have he : 0 ≤ Real.exp (-s / 2) := (Real.exp_pos _).le
    have htri := kernel_sub_half_abs_le A s hA hs0
    calc
      _ ≤ 1 * Real.exp (-s / 2) * ((5 / A ^ 2) * (s + s ^ 2 / 4)) :=
        mul_le_mul (mul_le_mul_of_nonneg_right hb he) htri
          (abs_nonneg _) (by positivity)
      _ = _ := by ring

/-- The signed baseline is nonpositive, so the positive debt is O(A^-2). -/
theorem quadratureError_le (A : ℝ) (hA : 200 ≤ A) : quadratureError A ≤ 40 / A ^ 2 := by
  have he := (abs_le.mp (quadratureError_sub_baseline_abs_le A hA)).2
  have hb := cutoffBaseline_nonpos A (by linarith)
  linarith

theorem quadratureError_le_negative (A : ℝ) (hA : 200 ≤ A) :
    quadratureError A ≤ -firstCellPayment + 40 / A ^ 2 := by
  have he := (abs_le.mp (quadratureError_sub_baseline_abs_le A hA)).2
  have hb := cutoffBaseline_le_first_cell A (by linarith)
  linarith

theorem quadratureError_le_neg_ninety_nine_per_thousand (A : ℝ) (hA : 200 ≤ A) :
    quadratureError A ≤ -(99 / 1000 : ℝ) := by
  have he := quadratureError_le_negative A hA
  have hs : (200 : ℝ) ^ 2 ≤ A ^ 2 := by nlinarith
  have hp : (0 : ℝ) < 200 ^ 2 := by norm_num
  have hc : 40 / A ^ 2 ≤ (1 / 1000 : ℝ) := by
    have h := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 40) hp hs
    norm_num at h
    exact h
  linarith [firstCellPayment_gt_tenth]

/-- Immediate application to the unchanged residual, retaining its independent moment. -/
theorem residual_le_of_compensated_cap (R A B : ℝ)
    (hR : 200 ≤ R) (hRA : R ≤ A) (hS : compensatedSourceSum A ≤ B) :
    mertensResidual A ≤ B - 2 - firstCellPayment + continuousDefect R + 40 / R ^ 2 := by
  have hA : 200 ≤ A := hR.trans hRA
  rw [mertensResidual_eq_compensated_add_moment_error A (by linarith)]
  have hi := one_add_continuous_eq_defect A (by linarith)
  have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
  have he := quadratureError_le_negative A hA
  have hs : R ^ 2 ≤ A ^ 2 := by nlinarith
  have hr : 0 < R ^ 2 := by positivity
  have hc : 40 / A ^ 2 ≤ 40 / R ^ 2 := div_le_div_of_nonneg_left (by norm_num) hr hs
  linarith

/-- Immediate unchanged all-real #16 consumer with the sharper signed remainder price. -/
theorem original_lower_of_compensated_cap (R B : ℝ) (hR : 200 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → compensatedSourceSum A ≤ B) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R)
        (archimedeanMultiplier 0 + 4 + 2 * firstCellPayment - 2 * B -
          2 * continuousDefect R - 80 / R ^ 2) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hr := residual_le_of_compensated_cap R A B hR hRA (hS A hRA)
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    simp only [div_eq_mul_inv] at hr ⊢
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

theorem estimate_of_compensated_cap (R B : ℝ) (hR : 200 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → compensatedSourceSum A ≤ B) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_compensated_cap R B hR hS⟩

end FormalResearch.RiemannHypothesis.SourceHybridQuadrature
