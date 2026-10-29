-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.RestrictedInnerIntegrable.Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.RestrictedInnerIntegrable.Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf","mathematical_subject":"Analysis.Integration","original_sha256":"8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/HalfLineDuality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
The duality between actual zero extension and restriction. This module does not
supply or assume any convolution adjoint formula.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.RestrictedInnerIntegrable.Variant8a22522d6599ad57f0d17908f94b460ab8555bd056a48a69ddcbc0b57d16eecf

set_option autoImplicit false
namespace HalfLineDualityScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
noncomputable section

theorem restricted_inner_integrable (f : FullH) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (h t)) halfLineMeasure := by
  refine (L2.integrable_inner (𝕜 := ℂ) (restriction f) h).congr ?_
  filter_upwards [restriction_ae f] with t ht
  rw [ht]

theorem extended_inner_integrable (f : FullH) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (zeroExtension h t)) volume :=
  L2.integrable_inner (𝕜 := ℂ) f (zeroExtension h)

theorem inner_restriction_zeroExtension (f : FullH) (h : H) :
    inner ℂ (restriction f) h = inner ℂ f (zeroExtension h) := by
  rw [L2.inner_def, L2.inner_def]
  calc
    _ = ∫ t : ℝ, inner ℂ (f t) (h t) ∂halfLineMeasure := by
      apply integral_congr_ae
      filter_upwards [restriction_ae f] with t ht
      rw [ht]
    _ = ∫ t : ℝ, (Ioi (0 : ℝ)).indicator (fun x => inner ℂ (f x) (h x)) t := by
      exact (integral_indicator measurableSet_Ioi).symm
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [zeroExtension_ae h] with t ht
      rw [ht]
      by_cases htpos : t ∈ Ioi (0 : ℝ)
      · simp only [indicator_of_mem htpos]
      · simp only [indicator_of_notMem htpos, inner_zero_right]

theorem zeroExtension_adjoint : zeroExtension.toContinuousLinearMap.adjoint = restriction := by
  symm
  exact (ContinuousLinearMap.eq_adjoint_iff restriction
    zeroExtension.toContinuousLinearMap).mpr inner_restriction_zeroExtension

theorem restriction_adjoint : restriction.adjoint = zeroExtension.toContinuousLinearMap := by
  rw [← zeroExtension_adjoint, ContinuousLinearMap.adjoint_adjoint]

end
end HalfLineDualityScratch
