-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeMinimizeMv.Variant04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EdgeMinimizeMv.Variant04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0","mathematical_subject":"Foundations.Unclassified","original_sha256":"04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_edge_mv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.Discovery


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EdgeMinimizeMv.Variant04404e63715d136a214f4d3f5eaa1333486ad43178042f10cc53673bdf3d54c0

theorem edge_minimize_mv : ∃ m : ℚ, ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x * x + y * y ≥ m := by
  interval_minimize_mv

theorem edge_maximize_mv : ∃ M : ℚ, ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x + y ≤ M := by
  interval_maximize_mv
