-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.BlaschkeFactor.Variant273c84cdc203458f9ba3680954b0113f44fabf940196d7ee98747c46e29cec5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"273c84cdc203458f9ba3680954b0113f44fabf940196d7ee98747c46e29cec5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.BlaschkeFactor.Variant273c84cdc203458f9ba3680954b0113f44fabf940196d7ee98747c46e29cec5b","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"273c84cdc203458f9ba3680954b0113f44fabf940196d7ee98747c46e29cec5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/Complex/CanonicalDecomposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.Analysis.Complex.CanonicalDecomposition

/-!
# Canonical-decomposition notation

Compatibility notation for disk Blaschke factors in terms of Mathlib's `canonicalFactor`.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.BlaschkeFactor.Variant273c84cdc203458f9ba3680954b0113f44fabf940196d7ee98747c46e29cec5b

@[expose] public section

namespace Complex

/-- Blaschke factor on the disk of radius `R` with a zero at `w`; equal to `canonicalFactor`. -/
noncomputable abbrev blaschkeFactor (R : ℝ) (w : ℂ) : ℂ → ℂ := canonicalFactor R w

@[simp] lemma blaschkeFactor_def (R : ℝ) (w : ℂ) :
    blaschkeFactor R w = canonicalFactor R w :=
  rfl

end Complex
