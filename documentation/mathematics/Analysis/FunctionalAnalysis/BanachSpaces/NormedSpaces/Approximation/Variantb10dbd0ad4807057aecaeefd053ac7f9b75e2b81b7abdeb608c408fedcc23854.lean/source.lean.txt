-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.CertifiedApproximation.Variant99ce064e3c9abce4770f429bb4edca6ff096174f672825d86d1a41289c2b9198","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99ce064e3c9abce4770f429bb4edca6ff096174f672825d86d1a41289c2b9198","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.CertifiedApproximation.Variant99ce064e3c9abce4770f429bb4edca6ff096174f672825d86d1a41289c2b9198","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"99ce064e3c9abce4770f429bb4edca6ff096174f672825d86d1a41289c2b9198","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/GammaBridge/Approximation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GammaBridge.ParameterProfile
import Mathlib.Analysis.Normed.Module.Basic

/-! # Certified finite bridge approximation -/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.CertifiedApproximation.Variant99ce064e3c9abce4770f429bb4edca6ff096174f672825d86d1a41289c2b9198

namespace Mathematics.GammaBridge

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

structure CertifiedApproximation (bridge : Exact E) where
  compiled : ℝ → E
  errorBound : ℝ
  errorBoundNonnegative : 0 ≤ errorBound
  pointwiseError :
    ∀ time ∈ Set.Icc (0 : ℝ) 1,
      ‖compiled time - bridge.path time‖ ≤ errorBound

end Mathematics.GammaBridge
