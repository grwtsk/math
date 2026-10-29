-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant1717093b97cf0c34da1b8719189a7ef3ba47394bed80e8dfd28e17496461c4d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1717093b97cf0c34da1b8719189a7ef3ba47394bed80e8dfd28e17496461c4d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestSorry.Variant1717093b97cf0c34da1b8719189a7ef3ba47394bed80e8dfd28e17496461c4d4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1717093b97cf0c34da1b8719189a7ef3ba47394bed80e8dfd28e17496461c4d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/mod_cases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ModCases


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant1717093b97cf0c34da1b8719189a7ef3ba47394bed80e8dfd28e17496461c4d4

private axiom test_sorry : ∀ {a}, a
example (n : ℤ) : 3 ∣ n ^ 3 - n := by
  mod_cases n % 3
  · guard_hyp H :ₛ n ≡ 0 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; exact test_sorry
  · guard_hyp H :ₛ n ≡ 1 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; exact test_sorry
  · guard_hyp H :ₛ n ≡ 2 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; exact test_sorry

example (n : ℕ) : 3 ∣ n ^ 3 + n := by
  mod_cases n % 3
  · guard_hyp H :~ n ≡ 0 [MOD 3]; guard_target = 3 ∣ n ^ 3 + n; exact test_sorry
  · guard_hyp H :~ n ≡ 1 [MOD 3]; guard_target = 3 ∣ n ^ 3 + n; exact test_sorry
  · guard_hyp H :~ n ≡ 2 [MOD 3]; guard_target = 3 ∣ n ^ 3 + n; exact test_sorry

-- test case for https://github.com/leanprover-community/mathlib4/issues/1851
example (n : ℕ) (z : ℤ) : n = n := by
  induction n with
  | zero => rfl
  | succ n _ih =>
     mod_cases _h : z % 2
     · exact test_sorry
     · exact test_sorry
