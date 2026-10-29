-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaplace.Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualLaplace.Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf","mathematical_subject":"Analysis.Calculus","original_sha256":"09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/FixedLaplaceContinuationAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelLaplace
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Analysis.Convex.Topology

/-!
# Continuation of the actual fixed kernel Laplace integral

The admitted L1 source gives a holomorphic integral on the positive half-plane.
The source repaired product is analytic there, including its removed pole.
The initial identity therefore continues without a new arithmetic assumption.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaplace.Variant09dfee7beb121cf65b8e63747d035bc65fba1dd8b4fc96fe93864efc88a14daf

set_option autoImplicit false
namespace FixedLaplaceContinuationScratch
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedSourceFilter FixedSourceTransfer FixedKernelLaplace
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- The actual integral of the complete source kernel on the original positive time domain. -/
def actualLaplace (z : ℂ) : ℂ :=
  ∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))

private theorem decay_derivative_bound (a t : ℝ) (ha : 0 < a) :
    t * Real.exp (-a * t) ≤ 1 / a := by
  have h := Real.mul_exp_neg_le_exp_neg_one (a * t)
  have he : Real.exp (-1 : ℝ) ≤ 1 := Real.exp_le_one_iff.mpr (by norm_num)
  apply (le_div_iff₀ ha).mpr
  calc
    t * Real.exp (-a * t) * a = (a * t) * Real.exp (-(a * t)) := by
      rw [neg_mul]
      ring
    _ ≤ Real.exp (-1) := h
    _ ≤ 1 := he

/-- A local derivative bound by the admitted L1 kernel proves genuine complex differentiability. -/
theorem actualLaplace_differentiableAt (z : ℂ) (hz : 0 < z.re) :
    DifferentiableAt ℂ actualLaplace z := by
  let a : ℝ := z.re / 2
  have ha : 0 < a := by dsimp [a]; linarith
  let F : ℂ → ℝ → ℂ := fun w t ↦
    (fixedKernel t : ℂ) * Complex.exp ((-w) * (t : ℂ))
  let F' : ℂ → ℝ → ℂ := fun w t ↦
    (fixedKernel t : ℂ) * (Complex.exp ((-w) * (t : ℂ)) * (-(t : ℂ)))
  have hmeas (w : ℂ) : AEStronglyMeasurable (F w) (volume.restrict (Ioi 0)) := by
    exact (fixedKernel_measurable.complex_ofReal.aestronglyMeasurable).mul
      (by fun_prop)
  have hdmeas : AEStronglyMeasurable (F' z) (volume.restrict (Ioi 0)) := by
    exact (fixedKernel_measurable.complex_ofReal.aestronglyMeasurable).mul
      (by fun_prop)
  have hbound : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | a < w.re}, ‖F' w t‖ ≤ |fixedKernel t| / a := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    intro w hw
    have hexp : Real.exp (-w.re * t) ≤ Real.exp (-a * t) := by
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_right (neg_le_neg hw.le) ht.le
    have hh : t * Real.exp (-w.re * t) ≤ 1 / a :=
      (mul_le_mul_of_nonneg_left hexp ht.le).trans (decay_derivative_bound a t ha)
    dsimp [F']
    rw [norm_mul, norm_mul, norm_neg, Complex.norm_real, Complex.norm_real,
      Real.norm_eq_abs, Real.norm_eq_abs, Complex.norm_exp]
    rw [show |t| = t from abs_of_pos ht]
    simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
      Complex.neg_im, Complex.ofReal_im, mul_zero, sub_zero]
    calc
      |fixedKernel t| * (Real.exp (-w.re * t) * t) =
          |fixedKernel t| * (t * Real.exp (-w.re * t)) := by ring
      _ ≤ |fixedKernel t| * (1 / a) := mul_le_mul_of_nonneg_left hh (abs_nonneg _)
      _ = _ := by ring
  have hbint : Integrable (fun t : ℝ ↦ |fixedKernel t| / a)
      (volume.restrict (Ioi 0)) :=
    FixedKernelAdmission.fixedKernel_integrableOn_Ioi.abs.div_const a
  have hdiff : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | a < w.re}, HasDerivAt (F · t) (F' w t) w := by
    filter_upwards [] with t
    intro w _
    have h := (((hasDerivAt_id w).neg.mul_const (t : ℂ)).cexp).const_mul
      (fixedKernel t : ℂ)
    simpa only [Pi.neg_apply, id_eq, neg_mul, one_mul, F, F'] using h
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds
      (show a < z.re by dsimp [a]; linarith))
    (Eventually.of_forall hmeas) (fixedKernel_laplace_integrable z hz.le)
    hdmeas hbound hbint hdiff
  exact h.2.differentiableAt

/-- The exact source formula supplies differentiability away from its formula guard. -/
theorem V_differentiableAt_of_ne_zero (z : ℂ) (hz : z ≠ 0) :
    DifferentiableAt ℂ V z := by
  have hd : DifferentiableAt ℂ (fun w : ℂ ↦ (w ^ 2 - 1 / 4) * removedFilter w) z :=
    ((differentiableAt_id.pow 2).sub_const _).mul (removedFilter_differentiableAt z hz)
  apply hd.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds hz] with w hw
  exact V_eq_removedFilter w hw

/-- Away from the two formula guards, the repaired product retains its genuine derivative. -/
theorem repairedTransfer_differentiableAt_of_ne (z : ℂ) (hz : z ≠ 0)
    (hzp : z ≠ 1 / 2) : DifferentiableAt ℂ repairedTransfer z := by
  have hp : (1 / 2 : ℂ) + z ≠ 1 := by
    intro h
    apply hzp
    linear_combination h
  have hd : DifferentiableAt ℂ
      (fun w : ℂ ↦ Complex.exp (-w) * riemannZeta (1 / 2 + w) * V w) z :=
    ((Complex.differentiable_exp.differentiableAt.comp z differentiableAt_id.neg).mul
      ((differentiableAt_riemannZeta hp).comp z ((differentiableAt_const (1 / 2 : ℂ)).add differentiableAt_id))).mul
        (V_differentiableAt_of_ne_zero z hz)
  apply hd.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds hzp] with w hw
  exact repairedTransfer_eq_product w hw

/-- The proved pole limit and punctured differentiability remove the source singularity. -/
theorem repairedTransfer_analyticAt_pole : AnalyticAt ℂ repairedTransfer (1 / 2) := by
  apply Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
    _ repairedTransfer_continuousAt_pole
  have hn : ∀ᶠ z : ℂ in 𝓝 (1 / 2), z ≠ 0 :=
    isOpen_compl_singleton.mem_nhds (by norm_num : (1 / 2 : ℂ) ≠ 0)
  filter_upwards [self_mem_nhdsWithin, hn.filter_mono nhdsWithin_le_nhds] with z hzp hz
  exact repairedTransfer_differentiableAt_of_ne z hz hzp

/-- The repaired arithmetic transfer is holomorphic throughout the positive half-plane. -/
theorem repairedTransfer_differentiableOn_positive :
    DifferentiableOn ℂ repairedTransfer {z : ℂ | 0 < z.re} := by
  intro z hz
  by_cases hzp : z = 1 / 2
  · subst z
    exact repairedTransfer_analyticAt_pole.differentiableAt.differentiableWithinAt
  · apply (repairedTransfer_differentiableAt_of_ne z _ hzp).differentiableWithinAt
    intro h
    subst z
    simp at hz

/-- The admitted integral is analytic throughout the positive half-plane. -/
theorem actualLaplace_analyticOn_positive :
    AnalyticOnNhd ℂ actualLaplace {z : ℂ | 0 < z.re} :=
  (show DifferentiableOn ℂ actualLaplace {z : ℂ | 0 < z.re} from
    fun z hz ↦ (actualLaplace_differentiableAt z hz).differentiableWithinAt).analyticOnNhd
      (isOpen_lt continuous_const Complex.continuous_re)

/-- The identity theorem continues the genuine initial integral identity, including the pole. -/
theorem actualLaplace_eq_repairedTransfer (z : ℂ) (hz : 0 < z.re) :
    actualLaplace z = repairedTransfer z := by
  have hopen : IsOpen {w : ℂ | 0 < w.re} := isOpen_lt continuous_const Complex.continuous_re
  have hL := actualLaplace_analyticOn_positive
  have hR := repairedTransfer_differentiableOn_positive.analyticOnNhd hopen
  have hconn : IsPreconnected {w : ℂ | 0 < w.re} :=
    ((convex_Ioi (0 : ℝ)).linear_preimage Complex.reLm).isPreconnected
  have heq : actualLaplace =ᶠ[𝓝 (1 : ℂ)] repairedTransfer := by
    filter_upwards [(isOpen_lt continuous_const Complex.continuous_re).mem_nhds
      (by norm_num : (1 / 2 : ℝ) < (1 : ℂ).re)] with w hw
    exact fixedKernel_laplace_eq_repairedTransfer w hw
  exact hL.eqOn_of_preconnected_of_eventuallyEq hR hconn
    (by norm_num : (1 : ℂ) ∈ {w : ℂ | 0 < w.re}) heq hz

/-- The actual integral attains the proved removed-pole value. -/
theorem actualLaplace_at_pole : actualLaplace (1 / 2) = removedPoleValue := by
  rw [actualLaplace_eq_repairedTransfer (1 / 2) (by norm_num), repairedTransfer_at_pole]

/-- The actual integral has no retained artificial zero at the removed pole. -/
theorem actualLaplace_pole_ne_zero : actualLaplace (1 / 2) ≠ 0 := by
  rw [actualLaplace_at_pole]
  exact removedPoleValue_ne_zero

/-- The continued identity exposes the literal source integral without replacing the kernel. -/
theorem actual_laplace_integral_eq_repairedTransfer (z : ℂ) (hz : 0 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      repairedTransfer z :=
  actualLaplace_eq_repairedTransfer z hz

/-- The literal source integral has the nonzero exponential-times-slope pole value. -/
theorem actual_laplace_integral_at_pole :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-(1 / 2 : ℂ)) * (t : ℂ))) =
      Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ) :=
  actualLaplace_at_pole

/-- An original right-of-line nontrivial zero gives an actual integral zero, retaining all guards. -/
theorem actual_laplace_integral_zero_of_nontrivial (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ)
    (hρre : 1 / 2 < ρ.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) *
      Complex.exp ((-(ρ - 1 / 2)) * (t : ℂ))) = 0 := by
  rw [actual_laplace_integral_eq_repairedTransfer (ρ - 1 / 2) (by
    simp only [Complex.sub_re, Complex.div_ofNat_re, Complex.one_re]
    linarith)]
  exact repairedTransfer_zero_of_nontrivial ρ hρ

/-- Every right-half-plane occurrence retains its own actual integral zero and multiplicity slot. -/
theorem actual_laplace_integral_zero_occurrence
    (o : ZeroObject.ZeroOccurrence)
    (ho : 0 <
      (ZeroObject.shiftedValue o).re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) *
      Complex.exp ((-ZeroObject.shiftedValue o) *
        (t : ℂ))) = 0 := by
  rw [actual_laplace_integral_eq_repairedTransfer _ ho]
  exact repairedTransfer_zero_occurrence o

end
end FixedLaplaceContinuationScratch

set_option pp.proofs false

#print FixedLaplaceContinuationScratch.actualLaplace
#print axioms FixedLaplaceContinuationScratch.actualLaplace

#print FixedLaplaceContinuationScratch.actualLaplace_differentiableAt
#print axioms FixedLaplaceContinuationScratch.actualLaplace_differentiableAt

#print FixedLaplaceContinuationScratch.V_differentiableAt_of_ne_zero
#print axioms FixedLaplaceContinuationScratch.V_differentiableAt_of_ne_zero

#print FixedLaplaceContinuationScratch.repairedTransfer_differentiableAt_of_ne
#print axioms FixedLaplaceContinuationScratch.repairedTransfer_differentiableAt_of_ne

#print FixedLaplaceContinuationScratch.repairedTransfer_analyticAt_pole
#print axioms FixedLaplaceContinuationScratch.repairedTransfer_analyticAt_pole

#print FixedLaplaceContinuationScratch.repairedTransfer_differentiableOn_positive
#print axioms FixedLaplaceContinuationScratch.repairedTransfer_differentiableOn_positive

#print FixedLaplaceContinuationScratch.actualLaplace_analyticOn_positive
#print axioms FixedLaplaceContinuationScratch.actualLaplace_analyticOn_positive

#print FixedLaplaceContinuationScratch.actualLaplace_eq_repairedTransfer
#print axioms FixedLaplaceContinuationScratch.actualLaplace_eq_repairedTransfer

#print FixedLaplaceContinuationScratch.actualLaplace_at_pole
#print axioms FixedLaplaceContinuationScratch.actualLaplace_at_pole

#print FixedLaplaceContinuationScratch.actualLaplace_pole_ne_zero
#print axioms FixedLaplaceContinuationScratch.actualLaplace_pole_ne_zero

#print FixedLaplaceContinuationScratch.actual_laplace_integral_eq_repairedTransfer
#print axioms FixedLaplaceContinuationScratch.actual_laplace_integral_eq_repairedTransfer

#print FixedLaplaceContinuationScratch.actual_laplace_integral_at_pole
#print axioms FixedLaplaceContinuationScratch.actual_laplace_integral_at_pole

#print FixedLaplaceContinuationScratch.actual_laplace_integral_zero_of_nontrivial
#print axioms FixedLaplaceContinuationScratch.actual_laplace_integral_zero_of_nontrivial

#print FixedLaplaceContinuationScratch.actual_laplace_integral_zero_occurrence
#print axioms FixedLaplaceContinuationScratch.actual_laplace_integral_zero_occurrence
