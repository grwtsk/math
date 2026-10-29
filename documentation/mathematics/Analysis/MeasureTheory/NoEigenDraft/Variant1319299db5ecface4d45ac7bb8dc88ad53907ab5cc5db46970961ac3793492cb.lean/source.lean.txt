-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ShiftedDensityMeasure.Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.ShiftedDensityMeasure.Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"b6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass2/theta_review/NoEigenDraft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain
import Mathlib.MeasureTheory.Measure.WithDensity
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic


namespace GRWTSK.Analysis.MeasureTheory.ShiftedDensityMeasure.Variantb6652552cf2074b66fff170f1dc991b9228f73bb94c411cbb191c22dc96b0ea9

set_option autoImplicit false

namespace ContinuousThetaNoEigenDraft

open MeasureTheory Set
open scoped ENNReal
open FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain

noncomputable section

/-- Exact theta measure template, with arbitrary nonnegative density. -/
def shiftedDensityMeasure (t : ℝ) (density : ℝ → ℝ≥0∞) : Measure ℝ :=
  Measure.map (fun u : ℝ => u - t) ((volume.restrict (Ici t)).withDensity density)

/-- Translation is injective, so no singleton mass can be introduced. -/
theorem shiftedDensityMeasure_nullSingleton (t : ℝ) (density : ℝ → ℝ≥0∞) :
    NullSingletonClass (shiftedDensityMeasure t density) := by
  constructor
  intro r
  rw [shiftedDensityMeasure, Measure.map_apply (f := fun u : ℝ => u - t)
    (measurable_id.sub_const t)
    (measurableSet_singleton r)]
  have he : (fun u : ℝ => u - t) ⁻¹' ({r} : Set ℝ) = {r + t} := by
    ext u
    simp only [mem_preimage, mem_singleton_iff]
    constructor <;> intro h <;> linarith
  rw [he]
  simp

/-- For a null-singleton measure, every literal coordinate eigenvector is zero. -/
theorem coordinate_eigenvector_eq_zero (μ : Measure ℝ) [NullSingletonClass μ]
    (z : ℂ) (f : coordinateDomain μ)
    (h : coordinateMultiplication μ f = z • (f : Lp ℂ 2 μ)) :
    (f : Lp ℂ 2 μ) = 0 := by
  have hne : ∀ᵐ (x : ℝ) ∂μ, (x : ℂ) ≠ z := by
    filter_upwards [μ.ae_ne z.re] with x hx
    intro he
    have he' := congrArg Complex.re he
    simpa using hx he'
  apply Lp.ext
  filter_upwards [coordinateMultiplication_apply_ae μ f,
    Lp.coeFn_smul z (f : Lp ℂ 2 μ), Lp.coeFn_zero ℂ 2 μ, hne]
    with x ha hs hz hn
  rw [h, hs] at ha
  simp only [Pi.smul_apply, smul_eq_mul] at ha
  rw [hz]
  have hm : ((x : ℂ) - z) * (f : Lp ℂ 2 μ) x = 0 := by
    rw [sub_mul]
    exact sub_eq_zero.mpr (by simpa only [smul_eq_mul] using ha.symm)
  exact (mul_eq_zero.mp hm).resolve_left (sub_ne_zero.mpr hn)

/-- Specialization to the exact shifted-density template uses no eigen assumption. -/
theorem shiftedDensity_coordinate_eigenvector_eq_zero (t : ℝ) (density : ℝ → ℝ≥0∞)
    (z : ℂ) (f : coordinateDomain (shiftedDensityMeasure t density))
    (h : coordinateMultiplication (shiftedDensityMeasure t density) f =
      z • (f : Lp ℂ 2 (shiftedDensityMeasure t density))) :
    (f : Lp ℂ 2 (shiftedDensityMeasure t density)) = 0 := by
  have := shiftedDensityMeasure_nullSingleton t density
  exact coordinate_eigenvector_eq_zero _ z f h

#print axioms shiftedDensityMeasure_nullSingleton
#print axioms coordinate_eigenvector_eq_zero
#print axioms shiftedDensity_coordinate_eigenvector_eq_zero

end
end ContinuousThetaNoEigenDraft
