-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111","mathematical_subject":"Analysis.Calculus","original_sha256":"7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/Complex/CauchyIntegral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.Analysis.Complex.CauchyIntegral

/-!
# Entire functions from global differentiability

This file records a small bridge from complex differentiability on the plane to
`AnalyticOnNhd` on `Set.univ`.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111

@[expose] public section

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]

/-- A complex differentiable function is analytic on the entire plane. -/
protected theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111.Differentiable.analyticOnNhd {f : ℂ → E} (hf : Differentiable ℂ f) :
    AnalyticOnNhd ℂ f Set.univ :=
  fun _ _ => hf.analyticAt _
