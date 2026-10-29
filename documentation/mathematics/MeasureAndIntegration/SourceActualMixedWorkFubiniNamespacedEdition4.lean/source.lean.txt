-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ErrorExp.Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ErrorExp.Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715","mathematical_subject":"Analysis.Integration","original_sha256":"c303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/principal-actual-mixed-work-fubini-v1/prepared-v2/SourceActualMixedWorkFubini.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtWork
import SourceMixedCurvatureCross
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Actual signed mixed-work Fubini preparation

Complete proof-text preparation: UNCOMPILED. The signed error's actual exponential
weight is integrable. Product integrability is constructed on a finite box and
extended in the source variable using the AE time-window carrier. Fixed-A
differentiation, positive-cell FTC and justified finite exchanges give one actual
work-factorization statement. Its native elaboration and independent replay remain
held; the preserved v1 checkpoint contained only the first part of this assembly.

The two profile rows remain independent. No derivative alias, positivity,
uniform work estimate, integrability assumption on the actual error, or replacement
main term is introduced. PRIVATE34 and the uncompiled finite cross preparation
are separately graded prerequisites, not accepted-main imports.

AI attribution: OpenAI Codex proof-text preparation; native execution is held.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ErrorExp.Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubini

open MeasureTheory Set
open scoped BigOperators Interval
open SourcePairing SourceMangoldtAbel SourceCorrelationCurvature SourceMixedCurvatureCross
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

noncomputable section

private def errorExp (t : ℝ) : ℝ := mangoldtLogError t * Real.exp (t / 2)

private def cellKernel (r : ℝ → ℝ) (p : (ℝ × ℝ) × ℝ) : ℝ :=
  errorExp p.1.1 * r (p.2 - p.1.1) *
    (r (p.2 + Real.log p.1.2) / (p.1.2 * Real.sqrt p.1.2))

private theorem errorExp_intervalIntegrable (l b : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable errorExp volume l b := by
  let P : ℝ → ℝ := fun t => 2 * Real.exp (t / 2)
  have hp : ContDiff ℝ 1 P := by
    dsimp only [P]
    fun_prop
  have hd (t : ℝ) : deriv P t = Real.exp (t / 2) := by
    have h := (((hasDerivAt_id t).div_const 2).exp).const_mul 2
    convert h.deriv using 1 <;> dsimp only [P, id_eq] <;> ring
  have h := mangoldtLogError_mul_deriv_intervalIntegrable l b hlb P hp
  simpa only [errorExp, hd] using h

private theorem source_tsupport_subset {A : ℝ} (hA : 0 < A) :
    tsupport (normalizedTest explicitSecondDerivative A) ⊆ Icc (-A) A := by
  apply closure_minimal _ isClosed_Icc
  intro x hx
  by_contra hnot
  have habs : A ≤ |x| := by
    by_cases hleft : -A ≤ x
    · have hright : A < x := lt_of_not_ge (fun h => hnot ⟨hleft, h⟩)
      exact hright.le.trans (le_abs_self x)
    · have hleft' : x < -A := lt_of_not_ge hleft
      have h := neg_le_abs x
      linarith
  exact hx (normalizedTest_zero_of_le_abs A x hA habs)

private theorem deriv_source_tsupport_subset {A : ℝ} (hA : 0 < A) :
    tsupport (deriv (normalizedTest explicitSecondDerivative A)) ⊆ Icc (-A) A :=
  tsupport_deriv_subset.trans (source_tsupport_subset hA)

private theorem row_vanishes_outside_time_box
    (r : ℝ → ℝ) {A l b t v : ℝ} (hs : tsupport r ⊆ Icc (-A) A)
    (ht : t ∈ Ioc l b) (hv : v ∉ Icc (l - A) (b + A)) : r (v - t) = 0 := by
  by_contra hr
  have hi := hs (subset_tsupport r hr)
  apply hv
  exact ⟨by linarith [ht.1], by linarith [ht.2]⟩

private theorem cellKernel_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (cellKernel r)
      (((volume.restrict (Ioc l b)).prod
        (volume.restrict (Ioc k (k + 1)))).prod volume) := by
  let μt := volume.restrict (Ioc l b)
  let μu := volume.restrict (Ioc k (k + 1))
  let V := Icc (l - A) (b + A)
  let μv := volume.restrict V
  let clamp : ℝ → ℝ := fun u => max k u
  let g : (ℝ × ℝ) × ℝ → ℝ := fun p =>
    r (p.2 - p.1.1) * r (p.2 + Real.log (clamp p.1.2)) /
      (clamp p.1.2 * Real.sqrt (clamp p.1.2))
  have hcl : Continuous clamp := continuous_const.max continuous_id
  have hpos (u : ℝ) : 0 < clamp u := hk.trans_le (le_max_left _ _)
  have hlog : Continuous (fun u => Real.log (clamp u)) :=
    hcl.log (fun u => (hpos u).ne')
  have hg : Continuous g := by
    apply Continuous.div
    · dsimp only [g]
      fun_prop
    · exact (hcl.comp (continuous_snd.comp continuous_fst)).mul
        ((hcl.comp (continuous_snd.comp continuous_fst)).sqrt)
    · intro p
      exact mul_ne_zero (hpos p.1.2).ne' (Real.sqrt_ne_zero'.mpr (hpos p.1.2))
  let box := (Icc l b ×ˢ Icc k (k + 1)) ×ˢ V
  have hbox : IsCompact box := (isCompact_Icc.prod isCompact_Icc).prod isCompact_Icc
  obtain ⟨C, hC⟩ := hbox.exists_bound_of_continuousOn hg.continuousOn
  have hcarrier : ∀ᵐ p ∂(μt.prod μu).prod μv,
      p ∈ (Ioc l b ×ˢ Ioc k (k + 1)) ×ˢ V := by
    simp only [μt, μu, μv, Measure.prod_restrict]
    exact ae_restrict_mem ((measurableSet_Ioc.prod measurableSet_Ioc).prod measurableSet_Icc)
  have hbound : ∀ᵐ p ∂(μt.prod μu).prod μv, ‖g p‖ ≤ C := by
    filter_upwards [hcarrier] with p hp
    exact hC p ⟨⟨⟨hp.1.1.1.le, hp.1.1.2⟩,
      ⟨hp.1.2.1.le, hp.1.2.2⟩⟩, hp.2⟩
  have herror : Integrable errorExp μt := (errorExp_intervalIntegrable l b hlb).1
  have hbase := (herror.comp_fst μu).comp_fst μv
  have hi : Integrable (fun p : (ℝ × ℝ) × ℝ => errorExp p.1.1 * g p)
      ((μt.prod μu).prod μv) :=
    hbase.mul_bdd hg.aestronglyMeasurable hbound
  have hiOn : IntegrableOn (fun p : (ℝ × ℝ) × ℝ => errorExp p.1.1 * g p)
      (univ ×ˢ V) ((μt.prod μu).prod volume) := by
    rw [IntegrableOn, ← Measure.prod_restrict, Measure.restrict_univ]
    exact hi
  have hcarrierFull : ∀ᵐ p ∂(μt.prod μu).prod volume,
      p ∈ (Ioc l b ×ˢ Ioc k (k + 1)) ×ˢ (univ : Set ℝ) := by
    simp only [μt, μu, Measure.prod_restrict, Measure.restrict_prod_eq_prod_univ]
    exact ae_restrict_mem ((measurableSet_Ioc.prod measurableSet_Ioc).prod measurableSet_univ)
  have hiFull : Integrable (fun p : (ℝ × ℝ) × ℝ => errorExp p.1.1 * g p)
      ((μt.prod μu).prod volume) := by
    apply hiOn.integrable_of_ae_notMem_eq_zero
    filter_upwards [hcarrierFull] with p hp hout
    have hv : p.2 ∉ V := by simpa only [mem_prod, mem_univ, true_and] using hout
    have hz := row_vanishes_outside_time_box r hs hp.1.1 hv
    simp only [g, hz, zero_mul, zero_div, mul_zero]
  apply hiFull.congr
  filter_upwards [hcarrierFull] with p hp
  have hu : clamp p.1.2 = p.1.2 := max_eq_right hp.1.2.1.le
  dsimp only [cellKernel, g]
  rw [hu]
  ring

private theorem cell_fubini_factorization
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u))) =
      ∫ v : ℝ, (∫ t in l..b, errorExp t * r (v - t)) *
        (∫ u in k..(k + 1), r (v + Real.log u) / (u * Real.sqrt u)) := by
  let μt := volume.restrict (Ioc l b)
  let μu := volume.restrict (Ioc k (k + 1))
  have hf := cellKernel_integrable r hc hlb hk hs
  have hout := integral_prod
    (fun z : ℝ × ℝ => ∫ v : ℝ, cellKernel r (z, v)) hf.integral_prod_left
  have hswap := integral_integral_swap
    (f := fun z : ℝ × ℝ => fun v : ℝ => cellKernel r (z, v)) hf
  simp only [intervalIntegral.integral_of_le hlb,
    intervalIntegral.integral_of_le (le_add_of_nonneg_right (by norm_num : (0 : ℝ) ≤ 1))]
  change (∫ t ∂μt, ∫ u ∂μu, ∫ v : ℝ, cellKernel r ((t, u), v)) =
    ∫ v : ℝ, (∫ t ∂μt, errorExp t * r (v - t)) *
      (∫ u ∂μu, r (v + Real.log u) / (u * Real.sqrt u))
  rw [← hout, hswap]
  apply integral_congr_ae
  filter_upwards [] with v
  exact integral_prod_mul
    (fun t : ℝ => errorExp t * r (v - t))
    (fun u : ℝ => r (v + Real.log u) / (u * Real.sqrt u))

private theorem actual_source_cell_factorization
    {A : ℝ} (hA : 0 < A) (l b k : ℝ) (hlb : l ≤ b) (hk : 0 < k) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * normalizedTest explicitSecondDerivative A (v - t) *
        (normalizedTest explicitSecondDerivative A (v + Real.log u) /
          (u * Real.sqrt u))) =
      ∫ v : ℝ,
        (∫ t in l..b, errorExp t * normalizedTest explicitSecondDerivative A (v - t)) *
          (∫ u in k..(k + 1), normalizedTest explicitSecondDerivative A (v + Real.log u) /
            (u * Real.sqrt u)) :=
  cell_fubini_factorization _ (normalizedTest_contDiff A hA).continuous
    hlb hk (source_tsupport_subset hA)

private theorem actual_deriv_source_cell_factorization
    {A : ℝ} (hA : 0 < A) (l b k : ℝ) (hlb : l ≤ b) (hk : 0 < k) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * deriv (normalizedTest explicitSecondDerivative A) (v - t) *
        (deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u) /
          (u * Real.sqrt u))) =
      ∫ v : ℝ,
        (∫ t in l..b, errorExp t * deriv (normalizedTest explicitSecondDerivative A) (v - t)) *
          (∫ u in k..(k + 1),
            deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u) /
              (u * Real.sqrt u)) :=
  cell_fubini_factorization _ ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num))
    hlb hk (deriv_source_tsupport_subset hA)

private theorem reflected_mixed_kernel_eq_negative_products
    {A : ℝ} (hA : 0 < A) (t u : ℝ) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) -
        sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 4 =
      -(∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v - t) *
        deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u)) -
      (1 / 4 : ℝ) * (∫ v : ℝ, normalizedTest explicitSecondDerivative A (v - t) *
        normalizedTest explicitSecondDerivative A (v + Real.log u)) := by
  have h := actual_mixed_curvature_finite_cross_eq_neg_products
    ({()} : Finset Unit) ({()} : Finset Unit) (fun _ => (1 : ℝ))
    (fun _ => Real.log u) (fun _ => (1 : ℝ)) (fun _ => -t) hA
  simpa only [Finset.sum_singleton, one_mul, add_neg_eq_sub, sub_neg_eq_add,
    add_comm, mul_comm] using h

private def sourceColumn (A u t : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt u *
    sourceCorrelation explicitSecondDerivative A (t + Real.log u)

private def sourceColumnTimeDeriv (A t u : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt u *
    (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) +
      sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 2)

private def mixedDensity (A t u : ℝ) : ℝ :=
  Real.exp (t / 2) / (u * Real.sqrt u) *
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) -
      sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 4)

private def cellInner (r : ℝ → ℝ) (t u : ℝ) : ℝ :=
  ∫ v : ℝ, cellKernel r ((t, u), v)

private def profileX (r : ℝ → ℝ) (l b v : ℝ) : ℝ :=
  ∫ t in l..b, errorExp t * r (v - t)

private def profileYCell (r : ℝ → ℝ) (k v : ℝ) : ℝ :=
  ∫ u in k..(k + 1), r (v + Real.log u) / (u * Real.sqrt u)

private theorem profileX_integrand_intervalIntegrable
    (r : ℝ → ℝ) (hc : Continuous r) (l b v : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable (fun t => errorExp t * r (v - t)) volume l b := by
  exact (errorExp_intervalIntegrable l b hlb).mul_continuousOn
    (hc.comp (continuous_const.sub continuous_id)).continuousOn

private theorem profileYCell_integrand_intervalIntegrable
    (r : ℝ → ℝ) (hc : Continuous r) {k : ℝ} (hk : 0 < k) (v : ℝ) :
    IntervalIntegrable (fun u => r (v + Real.log u) / (u * Real.sqrt u))
      volume k (k + 1) := by
  have hcont : ContinuousOn
      (fun u => r (v + Real.log u) / (u * Real.sqrt u)) (Icc k (k + 1)) := by
    intro u hu
    have hu0 := hk.trans_le hu.1
    have hr := hc.continuousAt.comp ((Real.continuousAt_log hu0.ne').const_add v)
    have hden := continuousAt_id.mul continuousAt_id.sqrt
    have hne := mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0)
    exact (hr.div hden hne).continuousWithinAt
  exact hcont.intervalIntegrable_of_Icc (le_add_of_nonneg_right (by norm_num))

private theorem sourceColumn_hasDerivAt {A : ℝ} (hA : 0 < A) (u t : ℝ) :
    HasDerivAt (sourceColumn A u) (sourceColumnTimeDeriv A t u) t := by
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt
  have h := ((((hasDerivAt_id t).div_const 2).exp).div_const (Real.sqrt u)).mul
    (hc.comp t ((hasDerivAt_id t).add_const (Real.log u)))
  convert h using 1 <;> dsimp only [sourceColumn, sourceColumnTimeDeriv, id_eq] <;> ring

private theorem column_derivative_algebra (u s c p d E : ℝ) (hs : s ≠ 0)
    (hsq : s * s = u) :
    (-(E * (1 / (2 * s))) / s ^ 2) * (p + c / 2) +
        (E / s) * (d * (1 / u) + p * (1 / u) / 2) =
      E / (u * s) * (d - c / 4) := by
  subst u
  field_simp [hs]
  ring

private theorem sourceColumnTimeDeriv_hasDerivAt_u
    {A u : ℝ} (hA : 0 < A) (hu : 0 < u) (t : ℝ) :
    HasDerivAt (sourceColumnTimeDeriv A t) (mixedDensity A t u) u := by
  have hlog := (Real.hasDerivAt_log hu.ne').const_add t
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hs : Real.sqrt u ≠ 0 := Real.sqrt_ne_zero'.mpr hu
  have h := ((hasDerivAt_const u (Real.exp (t / 2))).div
    (Real.hasDerivAt_sqrt hu.ne') hs).mul (hd.add (hc.div_const 2))
  convert h using 1
  · rfl
  · dsimp only [mixedDensity]
    simpa only [zero_mul, zero_sub, one_div] using
      (column_derivative_algebra u (Real.sqrt u)
        (sourceCorrelation explicitSecondDerivative A (t + Real.log u))
        (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u))
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u))
        (Real.exp (t / 2)) hs (Real.mul_self_sqrt hu.le)).symm

private theorem mixedDensity_continuousOn_cell
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    ContinuousOn (mixedDensity A t) (Icc k (k + 1)) := by
  intro u hu
  have hu0 : 0 < u := hk.trans_le hu.1
  have hl := (Real.continuousAt_log hu0.ne').const_add t
  have hc := (sourceCorrelation_contDiff A hA).continuous.continuousAt.comp hl
  have hd := ((sourceCorrelation_deriv_contDiff hA).continuous_deriv
    (by norm_num)).continuousAt.comp hl
  have hden := continuousAt_id.mul continuousAt_id.sqrt
  have hne : u * Real.sqrt u ≠ 0 :=
    mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0)
  exact ((continuousAt_const.div hden hne).mul
    (hd.sub (hc.div_const 4))).continuousWithinAt

private theorem sourceColumnTimeDeriv_sub_eq_neg_cell
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1) =
      -(∫ u in k..(k + 1), mixedDensity A t u) := by
  have hab : k ≤ k + 1 := le_add_of_nonneg_right (by norm_num)
  have hc : ContinuousOn (sourceColumnTimeDeriv A t) (Icc k (k + 1)) := by
    intro u hu
    exact (sourceColumnTimeDeriv_hasDerivAt_u hA (hk.trans_le hu.1) t).continuousAt
      .continuousWithinAt
  have hi := (mixedDensity_continuousOn_cell hA hk t).intervalIntegrable_of_Icc hab
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hab hc
    (fun u hu => sourceColumnTimeDeriv_hasDerivAt_u hA (hk.trans hu.1) t) hi
  linarith

private theorem source_products_eq_correlation (A t u : ℝ) :
    (∫ v : ℝ, normalizedTest explicitSecondDerivative A (v - t) *
      normalizedTest explicitSecondDerivative A (v + Real.log u)) =
      sourceCorrelation explicitSecondDerivative A (t + Real.log u) := by
  unfold sourceCorrelation
  calc
    _ = ∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + Real.log u) *
        normalizedTest explicitSecondDerivative A
          (v + Real.log u - (t + Real.log u)) := by
      apply integral_congr_ae
      filter_upwards [] with v
      rw [show v + Real.log u - (t + Real.log u) = v - t by ring, mul_comm]
    _ = _ := integral_add_right_eq_self
      (fun v : ℝ => normalizedTest explicitSecondDerivative A v *
        normalizedTest explicitSecondDerivative A (v - (t + Real.log u))) (Real.log u)

private theorem deriv_source_products_eq_neg_curvature
    {A : ℝ} (hA : 0 < A) (t u : ℝ) :
    (∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v - t) *
      deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u)) =
      -deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) := by
  have h := reflected_mixed_kernel_eq_negative_products hA t u
  rw [source_products_eq_correlation] at h
  linarith

private theorem cellInner_eq_scalar_products (r : ℝ → ℝ) (t u : ℝ) :
    cellInner r t u = errorExp t / (u * Real.sqrt u) *
      (∫ v : ℝ, r (v - t) * r (v + Real.log u)) := by
  unfold cellInner cellKernel
  simp_rw [show ∀ v : ℝ,
    errorExp t * r (v - t) * (r (v + Real.log u) / (u * Real.sqrt u)) =
      (errorExp t / (u * Real.sqrt u)) * (r (v - t) * r (v + Real.log u)) by
        intro v; ring]
  exact integral_const_mul _ _

private theorem source_cellInner_intervalIntegrable_u
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    IntervalIntegrable (cellInner (normalizedTest explicitSecondDerivative A) t)
      volume k (k + 1) := by
  have hc : ContinuousOn (cellInner (normalizedTest explicitSecondDerivative A) t)
      (Icc k (k + 1)) := by
    intro u hu
    have hu0 := hk.trans_le hu.1
    have he : cellInner (normalizedTest explicitSecondDerivative A) t = fun u =>
        errorExp t / (u * Real.sqrt u) *
          sourceCorrelation explicitSecondDerivative A (t + Real.log u) := by
      funext w
      rw [cellInner_eq_scalar_products, source_products_eq_correlation]
    rw [he]
    have hden := continuousAt_id.mul continuousAt_id.sqrt
    have hne := mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0)
    exact ((continuousAt_const.div hden hne).mul
      ((sourceCorrelation_contDiff A hA).continuous.continuousAt.comp
        ((Real.continuousAt_log hu0.ne').const_add t))).continuousWithinAt
  exact hc.intervalIntegrable_of_Icc (le_add_of_nonneg_right (by norm_num))

private theorem deriv_source_cellInner_intervalIntegrable_u
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    IntervalIntegrable (cellInner (deriv (normalizedTest explicitSecondDerivative A)) t)
      volume k (k + 1) := by
  have hc : ContinuousOn (cellInner (deriv (normalizedTest explicitSecondDerivative A)) t)
      (Icc k (k + 1)) := by
    intro u hu
    have hu0 := hk.trans_le hu.1
    have he : cellInner (deriv (normalizedTest explicitSecondDerivative A)) t = fun u =>
        errorExp t / (u * Real.sqrt u) *
          (-deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u)) := by
      funext w
      rw [cellInner_eq_scalar_products, deriv_source_products_eq_neg_curvature hA]
    rw [he]
    have hden := continuousAt_id.mul continuousAt_id.sqrt
    have hne := mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0)
    exact ((continuousAt_const.div hden hne).mul
      (((sourceCorrelation_deriv_contDiff hA).continuous_deriv
        (by norm_num)).continuousAt.comp
          ((Real.continuousAt_log hu0.ne').const_add t)).neg).continuousWithinAt
  exact hc.intervalIntegrable_of_Icc (le_add_of_nonneg_right (by norm_num))

private theorem error_column_difference_eq_two_cells
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    mangoldtLogError t *
        (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1)) =
      (∫ u in k..(k + 1), cellInner
        (deriv (normalizedTest explicitSecondDerivative A)) t u) +
        (1 / 4 : ℝ) * (∫ u in k..(k + 1), cellInner
          (normalizedTest explicitSecondDerivative A) t u) := by
  rw [sourceColumnTimeDeriv_sub_eq_neg_cell hA hk]
  calc
    _ = ∫ u in k..(k + 1), -mangoldtLogError t * mixedDensity A t u := by
      rw [intervalIntegral.integral_const_mul]
      ring
    _ = ∫ u in k..(k + 1),
        cellInner (deriv (normalizedTest explicitSecondDerivative A)) t u +
          (1 / 4 : ℝ) * cellInner (normalizedTest explicitSecondDerivative A) t u := by
      apply intervalIntegral.integral_congr
      intro u _
      rw [cellInner_eq_scalar_products, cellInner_eq_scalar_products,
        source_products_eq_correlation, deriv_source_products_eq_neg_curvature hA]
      dsimp only [mixedDensity, errorExp]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add
        (deriv_source_cellInner_intervalIntegrable_u hA hk t)
        ((source_cellInner_intervalIntegrable_u hA hk t).const_mul (1 / 4)),
        intervalIntegral.integral_const_mul]

private theorem cell_integral_intervalIntegrable_t
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) :
    IntervalIntegrable (fun t => ∫ u in k..(k + 1), cellInner r t u) volume l b := by
  have hf := (cellKernel_integrable r hc hlb hk hs).integral_prod_left.integral_prod_left
  rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hlb]
  simpa only [cellInner, intervalIntegral.integral_of_le
    (le_add_of_nonneg_right (by norm_num : (0 : ℝ) ≤ 1))] using hf

private theorem profile_cell_product_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A l b k : ℝ} (hlb : l ≤ b)
    (hk : 0 < k) (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (fun v => profileX r l b v * profileYCell r k v) := by
  have hf := (cellKernel_integrable r hc hlb hk hs).integral_prod_right
  convert hf using 1
  funext v
  unfold profileX profileYCell
  simp only [intervalIntegral.integral_of_le hlb,
    intervalIntegral.integral_of_le (le_add_of_nonneg_right (by norm_num : (0 : ℝ) ≤ 1))]
  symm
  exact integral_prod_mul
    (fun t : ℝ => errorExp t * r (v - t))
    (fun u : ℝ => r (v + Real.log u) / (u * Real.sqrt u))

private theorem error_column_difference_intervalIntegrable
    {A l b k : ℝ} (hA : 0 < A) (hlb : l ≤ b) (hk : 0 < k) :
    IntervalIntegrable (fun t => mangoldtLogError t *
      (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))) volume l b := by
  have hd := cell_integral_intervalIntegrable_t _
    ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num)) hlb hk
    (deriv_source_tsupport_subset hA)
  have hq := cell_integral_intervalIntegrable_t _
    (normalizedTest_contDiff A hA).continuous hlb hk (source_tsupport_subset hA)
  convert hd.add (hq.const_mul (1 / 4 : ℝ)) using 1
  funext t
  exact error_column_difference_eq_two_cells hA hk t

private theorem error_column_difference_integral_eq_profile_cells
    {A l b k : ℝ} (hA : 0 < A) (hlb : l ≤ b) (hk : 0 < k) :
    (∫ t in l..b, mangoldtLogError t *
      (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))) =
      (∫ v : ℝ, profileX (deriv (normalizedTest explicitSecondDerivative A)) l b v *
        profileYCell (deriv (normalizedTest explicitSecondDerivative A)) k v) +
        (1 / 4 : ℝ) * (∫ v : ℝ,
          profileX (normalizedTest explicitSecondDerivative A) l b v *
            profileYCell (normalizedTest explicitSecondDerivative A) k v) := by
  simp_rw [error_column_difference_eq_two_cells hA hk]
  rw [intervalIntegral.integral_add
    (cell_integral_intervalIntegrable_t _
      ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num)) hlb hk
      (deriv_source_tsupport_subset hA))
    ((cell_integral_intervalIntegrable_t _ (normalizedTest_contDiff A hA).continuous
      hlb hk (source_tsupport_subset hA)).const_mul (1 / 4)),
    intervalIntegral.integral_const_mul]
  rw [show (∫ t in l..b, ∫ u in k..(k + 1), cellInner
      (deriv (normalizedTest explicitSecondDerivative A)) t u) =
        ∫ v : ℝ, profileX (deriv (normalizedTest explicitSecondDerivative A)) l b v *
          profileYCell (deriv (normalizedTest explicitSecondDerivative A)) k v from
    actual_deriv_source_cell_factorization hA l b k hlb hk]
  rw [show (∫ t in l..b, ∫ u in k..(k + 1), cellInner
      (normalizedTest explicitSecondDerivative A) t u) =
        ∫ v : ℝ, profileX (normalizedTest explicitSecondDerivative A) l b v *
          profileYCell (normalizedTest explicitSecondDerivative A) k v from
    actual_source_cell_factorization hA l b k hlb hk]

private theorem finite_profile_product_integral
    (r : ℝ → ℝ) (hc : Continuous r) {A l b : ℝ} (hlb : l ≤ b)
    (hs : tsupport r ⊆ Icc (-A) A) (s : Finset ℕ) (B : ℕ → ℝ)
    (hpos : ∀ k ∈ s, 0 < (k : ℝ)) :
    (∫ v : ℝ, profileX r l b v * (∑ k ∈ s, B k * profileYCell r (k : ℝ) v)) =
      ∑ k ∈ s, B k * (∫ v : ℝ, profileX r l b v * profileYCell r (k : ℝ) v) := by
  have hfun : (fun v : ℝ => profileX r l b v *
      (∑ k ∈ s, B k * profileYCell r (k : ℝ) v)) =
      (fun v : ℝ => ∑ k ∈ s, B k *
        (profileX r l b v * profileYCell r (k : ℝ) v)) := by
    funext v
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [hfun, integral_finsetSum s (fun k hk =>
    (profile_cell_product_integrable r hc hlb (hpos k hk) hs).const_mul (B k))]
  apply Finset.sum_congr rfl
  intro k _
  exact integral_const_mul _ _

private theorem finite_signed_column_work_factorization
    {A l b : ℝ} (hA : 0 < A) (hlb : l ≤ b) (s : Finset ℕ) (B : ℕ → ℝ)
    (hpos : ∀ k ∈ s, 0 < (k : ℝ)) :
    (∫ t in l..b, mangoldtLogError t *
      (∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
        sourceColumnTimeDeriv A t ((k : ℝ) + 1)))) =
      (∫ v : ℝ, profileX (deriv (normalizedTest explicitSecondDerivative A)) l b v *
        (∑ k ∈ s, B k * profileYCell
          (deriv (normalizedTest explicitSecondDerivative A)) (k : ℝ) v)) +
        (1 / 4 : ℝ) * (∫ v : ℝ,
          profileX (normalizedTest explicitSecondDerivative A) l b v *
            (∑ k ∈ s, B k * profileYCell
              (normalizedTest explicitSecondDerivative A) (k : ℝ) v)) := by
  have he : (fun t : ℝ => mangoldtLogError t *
      (∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
        sourceColumnTimeDeriv A t ((k : ℝ) + 1)))) =
      (fun t : ℝ => ∑ k ∈ s, B k * (mangoldtLogError t *
        (sourceColumnTimeDeriv A t (k : ℝ) -
          sourceColumnTimeDeriv A t ((k : ℝ) + 1)))) := by
    funext t
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he, intervalIntegral.integral_finsetSum (fun k hk =>
    (error_column_difference_intervalIntegrable hA hlb (hpos k hk)).const_mul (B k))]
  simp_rw [intervalIntegral.integral_const_mul]
  calc
    _ = ∑ k ∈ s, B k *
        ((∫ v : ℝ, profileX (deriv (normalizedTest explicitSecondDerivative A)) l b v *
          profileYCell (deriv (normalizedTest explicitSecondDerivative A)) (k : ℝ) v) +
          (1 / 4 : ℝ) * (∫ v : ℝ,
            profileX (normalizedTest explicitSecondDerivative A) l b v *
              profileYCell (normalizedTest explicitSecondDerivative A) (k : ℝ) v)) := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [error_column_difference_integral_eq_profile_cells hA hlb (hpos k hk)]
    _ = _ := by
      rw [finite_profile_product_integral _
        ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num)) hlb
        (deriv_source_tsupport_subset hA) s B hpos,
        finite_profile_product_integral _ (normalizedTest_contDiff A hA).continuous hlb
        (source_tsupport_subset hA) s B hpos]
      simp_rw [mul_add, Finset.sum_add_distrib]
      rw [Finset.mul_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro k _
      ring

/-- The signed original error work is a plus pairing of two independent actual source rows.
X1 and Y1 are directly integrated first derivatives, not derivative aliases. -/
theorem jointMangoldtErrorWork_eq_actual_bilinear_profiles (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
    let X0 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * q (v - t)
    let X1 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * deriv q (v - t)
    let Y0 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), q (v + Real.log u) / (u * Real.sqrt u))
    let Y1 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), deriv q (v + Real.log u) /
        (u * Real.sqrt u))
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      (∫ v : ℝ, X1 v * Y1 v) + (1 / 4 : ℝ) * (∫ v : ℝ, X0 v * Y0 v) := by
  dsimp only
  have hp : 0 < A := by linarith
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let s := Finset.Ico (U + 1) (N / (U + 1))
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  have hpos : ∀ k ∈ s, 0 < (k : ℝ) := by
    intro k hk
    have hk0 : 0 < k := by have := (Finset.mem_Ico.mp hk).1; omega
    exact_mod_cast hk0
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (U : ℝ) := by
    exact_mod_cast (by have := vaughanCutoff_pos A hA; dsimp only [U]; omega : 0 < U)
  have hlb : Real.log (U : ℝ) ≤ Real.log (N : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast hUN)
  have hd (t : ℝ) : deriv (SourceJointMangoldtWork.jointMangoldtTestProfile A) t =
      ∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
        sourceColumnTimeDeriv A t ((k : ℝ) + 1)) := by
    have h : HasDerivAt (fun t : ℝ => ∑ k ∈ s,
        B k * (sourceColumn A (k : ℝ) t - sourceColumn A ((k : ℝ) + 1) t))
        (∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
          sourceColumnTimeDeriv A t ((k : ℝ) + 1))) t := by
      apply HasDerivAt.fun_sum
      intro k _
      exact ((sourceColumn_hasDerivAt hp (k : ℝ) t).sub
        (sourceColumn_hasDerivAt hp ((k : ℝ) + 1) t)).const_mul (B k)
    convert h.deriv using 1
    simp only [SourceJointMangoldtWork.jointMangoldtTestProfile,
      sourceColumn, U, N, s, B, Nat.cast_add, Nat.cast_one]
  unfold SourceJointMangoldtWork.jointMangoldtErrorWork
  simp_rw [hd]
  exact finite_signed_column_work_factorization hp hlb s B hpos

end
end FormalResearch.RiemannHypothesis.SourceActualMixedWorkFubini
