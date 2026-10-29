-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Varianteff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.I01.Varianteff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_stress_root.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.IntervalAuto


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Varianteff936005b3d8742c34520ebbcaecbc227265e9baeaa34a380998c2bd5547a93

open LeanCert.Core

def I01 : IntervalRat := ⟨0, 1, by norm_num⟩
def I23 : IntervalRat := ⟨2, 3, by norm_num⟩

-- Root-finding stress tests (prove no roots in a box).
example : ∀ x ∈ I01, Expr.eval (fun _ => x) (Expr.exp (Expr.var 0)) ≠ (0 : ℝ) := by
  root_bound 15

example : ∀ x ∈ I23,
    Expr.eval (fun _ => x)
      (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.neg (Expr.const 2))) ≠ (0 : ℝ) := by
  root_bound
