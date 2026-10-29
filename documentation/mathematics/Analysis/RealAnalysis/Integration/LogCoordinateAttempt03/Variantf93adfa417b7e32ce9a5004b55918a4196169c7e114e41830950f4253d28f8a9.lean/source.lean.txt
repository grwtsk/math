-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LogL2.Variant54948425188276c8118eace2bc852258a14fa18385d8534debe8c2d6e133069c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54948425188276c8118eace2bc852258a14fa18385d8534debe8c2d6e133069c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LogL2.Variant54948425188276c8118eace2bc852258a14fa18385d8534debe8c2d6e133069c","mathematical_subject":"Analysis.Integration","original_sha256":"54948425188276c8118eace2bc852258a14fa18385d8534debe8c2d6e133069c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass24/log_coordinate/LogCoordinate-attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualComplexDilation
import Mathlib.MeasureTheory.Function.JacobianOneDim
import Mathlib.MeasureTheory.Measure.WithDensity

/-! Genuine logarithmic coordinate map: positive Lebesgue dx to full Lebesgue du.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
No density, target closure, Fourier Plancherel or RH property is assumed. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.LogL2.Variant54948425188276c8118eace2bc852258a14fa18385d8534debe8c2d6e133069c

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.LogCoordinate
open MeasureTheory Set Filter
open scoped ENNReal
open ContinuousResearch.PositiveDilation

abbrev LogL2 := Lp ℂ 2 (volume : Measure ℝ)

theorem integral_exp_jacobian (g : ℝ → ℝ) :
    (∫ x, g x ∂positiveMeasure) = ∫ u, Real.exp u * g (Real.exp u) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn g
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),
    smul_eq_mul,Measure.restrict_univ,positiveMeasure] using h

theorem integrable_exp_jacobian (g : ℝ → ℝ) :
    Integrable g positiveMeasure ↔ Integrable (fun u => Real.exp u * g (Real.exp u)) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (s:=univ) MeasurableSet.univ
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn g
  simpa only [image_univ,Real.range_exp,abs_of_pos (Real.exp_pos _),
    smul_eq_mul,IntegrableOn,Measure.restrict_univ,positiveMeasure] using h

theorem exp_quasi : Measure.QuasiMeasurePreserving Real.exp volume positiveMeasure := by
  refine ⟨Real.measurable_exp,Measure.AbsolutelyContinuous.mk (fun s hs hzero => ?_)⟩
  rw [Measure.map_apply Real.measurable_exp hs]
  have hpre : MeasurableSet (Real.exp ⁻¹' s) := hs.preimage Real.measurable_exp
  have hw : ∫⁻ u in Real.exp ⁻¹' s, ENNReal.ofReal (Real.exp u) = 0 := by
    have h := lintegral_image_eq_lintegral_abs_deriv_mul hpre
      (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
      Real.exp_injective.injOn (fun _ => (1 : ℝ≥0∞))
    have him : Real.exp '' (Real.exp ⁻¹' s) = s ∩ Ioi 0 := by
      rw [image_preimage_eq_inter_range,Real.range_exp]
    rw [him] at h
    have he : (∫⁻ u in Real.exp ⁻¹' s, ENNReal.ofReal (Real.exp u)) = positiveMeasure s := by
      simpa only [lintegral_one,abs_of_pos (Real.exp_pos _),mul_one,
        Measure.restrict_apply_univ,←Measure.restrict_apply hs,positiveMeasure] using h.symm
    exact he.trans hzero
  have hac : (volume : Measure ℝ) ≪ volume.withDensity (fun u => ENNReal.ofReal (Real.exp u)) :=
    withDensity_absolutelyContinuous' Real.measurable_exp.ennreal_ofReal.aemeasurable
      (Eventually.of_forall (fun u => ENNReal.ofReal_ne_zero_iff.mpr (Real.exp_pos u)))
  apply hac
  rw [withDensity_apply _ hpre]
  exact hw

theorem log_quasi : Measure.QuasiMeasurePreserving Real.log positiveMeasure volume := by
  refine ⟨Real.measurable_log,Measure.AbsolutelyContinuous.mk (fun s hs hzero => ?_)⟩
  rw [Measure.map_apply Real.measurable_log hs]
  change volume.restrict (Ioi 0) (Real.log ⁻¹' s) = 0
  rw [Measure.restrict_apply (hs.preimage Real.measurable_log)]
  have him : Real.log ⁻¹' s ∩ Ioi 0 = Real.exp '' s := by
    ext x
    constructor
    · rintro ⟨hx,hpos⟩
      exact ⟨Real.log x,hx,Real.exp_log hpos⟩
    · rintro ⟨u,hu,rfl⟩
      exact ⟨by simpa only [mem_preimage,Real.log_exp] using hu,Real.exp_pos u⟩
  rw [him]
  have h := lintegral_image_eq_lintegral_abs_deriv_mul hs
    (fun u _ => (Real.hasDerivAt_exp u).hasDerivWithinAt)
    Real.exp_injective.injOn (fun _ => (1 : ℝ≥0∞))
  have hr : (volume : Measure ℝ).restrict s = 0 := Measure.restrict_eq_zero.mpr hzero
  simpa only [lintegral_one,abs_of_pos (Real.exp_pos _),mul_one,hr,lintegral_zero_measure,Measure.restrict_apply_univ] using h

def logFunc (f : ℝ → ℂ) (u : ℝ) : ℂ := (Real.exp (u/2) : ℂ) * f (Real.exp u)
def positiveFunc (h : ℝ → ℂ) (x : ℝ) : ℂ :=
  (Real.exp (-(Real.log x)/2) : ℂ) * h (Real.log x)

theorem logFunc_norm_sq (f : ℝ → ℂ) (u : ℝ) :
    ‖logFunc f u‖^2 = Real.exp u * ‖f (Real.exp u)‖^2 := by
  rw [logFunc,norm_mul,Complex.norm_real,Real.norm_eq_abs,abs_of_pos (Real.exp_pos _),mul_pow]
  congr 1
  rw [pow_two,←Real.exp_add]
  congr 1
  ring

theorem logFunc_memLp {f : ℝ → ℂ} (hf : MemLp f 2 positiveMeasure) :
    MemLp (logFunc f) 2 (volume : Measure ℝ) := by
  have hm : AEStronglyMeasurable (logFunc f) volume :=
    (Complex.measurable_ofReal.comp (Real.measurable_exp.comp (measurable_id.div_const 2))).aestronglyMeasurable.mul
      (hf.aestronglyMeasurable.comp_quasiMeasurePreserving exp_quasi)
  apply (memLp_two_iff_integrable_sq_norm hm).mpr
  simpa only [logFunc_norm_sq] using
    (integrable_exp_jacobian (fun x => ‖f x‖^2)).mp
      ((memLp_two_iff_integrable_sq_norm hf.aestronglyMeasurable).mp hf)

end ContinuousResearch.LogCoordinate
