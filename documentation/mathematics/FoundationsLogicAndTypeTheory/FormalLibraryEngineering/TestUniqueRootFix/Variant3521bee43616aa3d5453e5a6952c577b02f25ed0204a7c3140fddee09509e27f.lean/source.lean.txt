-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I.Variant0d08ad9bf09b1318395ba5c613392bf69232bcb8baf8563740f0c7eb7af6f2cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d08ad9bf09b1318395ba5c613392bf69232bcb8baf8563740f0c7eb7af6f2cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.I.Variant0d08ad9bf09b1318395ba5c613392bf69232bcb8baf8563740f0c7eb7af6f2cf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0d08ad9bf09b1318395ba5c613392bf69232bcb8baf8563740f0c7eb7af6f2cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_unique_root_fix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  Test interval_unique_root fix
-/
import LeanCert.Tactic.Discovery


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I.Variant0d08ad9bf09b1318395ba5c613392bf69232bcb8baf8563740f0c7eb7af6f2cf

open LeanCert.Core

-- Define an interval [1, 2]
def I_1_2 : IntervalRat := ⟨1, 2, by norm_num⟩

-- √2 is unique root of x² - 2 = 0 in [1, 2]
-- x² - 2 expressed as: Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.neg (Expr.const 2))
example : ∃! x, x ∈ I_1_2 ∧ Expr.eval (fun _ => x)
    (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.neg (Expr.const 2))) = 0 := by
  interval_unique_root

-- Linear function: x - 1.5 = 0 has unique root at 1.5 in [1, 2]
example : ∃! x, x ∈ I_1_2 ∧ Expr.eval (fun _ => x)
    (Expr.add (Expr.var 0) (Expr.neg (Expr.const (3/2)))) = 0 := by
  interval_unique_root

-- cos(x) = 0 has unique root near π/2 ≈ 1.57 in [1.4, 1.7]
def I_cos : IntervalRat := ⟨14/10, 17/10, by norm_num⟩

example : ∃! x, x ∈ I_cos ∧ Expr.eval (fun _ => x)
    (Expr.cos (Expr.var 0)) = 0 := by
  interval_unique_root
