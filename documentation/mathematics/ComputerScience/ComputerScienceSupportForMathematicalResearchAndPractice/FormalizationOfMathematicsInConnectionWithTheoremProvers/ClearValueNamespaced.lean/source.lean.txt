-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant2fc40dece0efdc91064d9fc9bd14b95a4881de737c9e46c07dcff923a543fc0d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fc40dece0efdc91064d9fc9bd14b95a4881de737c9e46c07dcff923a543fc0d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variant2fc40dece0efdc91064d9fc9bd14b95a4881de737c9e46c07dcff923a543fc0d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2fc40dece0efdc91064d9fc9bd14b95a4881de737c9e46c07dcff923a543fc0d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/ClearValue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant2fc40dece0efdc91064d9fc9bd14b95a4881de737c9e46c07dcff923a543fc0d

example : let x := 22; 0 ≤ x := by
  intro x
  clear_value x
  fail_if_success clear_value x
  exact Nat.zero_le _

example : let x := 22; let y : Fin x := 0; y.1 < x := by
  intro x y
  fail_if_success clear_value x
  clear_value y
  clear_value x
  fail_if_success clear_value x
  fail_if_success clear_value y
  exact y.2

example : let x := 22; let y : Fin x := 0; y.1 < x := by
  intro x y
  fail_if_success clear_value x -- 0 depends on `x = Nat.succ _`
  clear_value y x
  fail_if_success clear_value x
  fail_if_success clear_value y
  exact y.2

example : let x := 22; let y : Fin x := 0; y.1 < x := by
  intro x y
  fail_if_success clear_value x
  clear_value x y
  fail_if_success clear_value x
  fail_if_success clear_value y
  exact y.2

example : let x := 22; let y : Nat := x; let z : Fin (y + 1) := 0; z.1 < y + 1 := by
  intro x y z
  clear_value x -- `0` depends on `x` but its OK
  exact z.2

example : let x := 22; let y : Nat := x; let z : Fin (y + 1) := 0; z.1 < y + 1 := by
  intro x y z
  clear_value y -- `0` depends on `y` but its OK
  exact z.2
