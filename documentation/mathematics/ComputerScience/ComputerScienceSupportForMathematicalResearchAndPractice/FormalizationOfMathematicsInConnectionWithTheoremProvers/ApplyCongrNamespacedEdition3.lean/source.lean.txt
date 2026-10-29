-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCongr.Variantbcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ApplyCongr.Variantbcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"bcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/apply_congr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ApplyCongr
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyCongr.Variantbcbf5fef5e38d0a5f3fa6b09b3a194840d5fca9bc8f6560a26f00e96ea2fea05

example (f g : ℤ → ℤ) (S : Finset ℤ) (h : ∀ m ∈ S, f m = g m) :
    Finset.sum S f = Finset.sum S g := by
  conv_lhs =>
    -- If we just call `congr` here, in the second goal we're helpless,
    -- because we are only given the opportunity to rewrite `f`.
    -- However `apply_congr` uses the appropriate `@[congr]` lemma,
    -- so we get to rewrite `f x`, in the presence of the crucial `H : x ∈ S` hypothesis.
    apply_congr
    · skip
    · simp [*]
