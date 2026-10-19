-- corpus-organization-transform:v1
-- Mathematical subject: Foundations.NumbersAndBasicStructures
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SqueezeScope.Variantab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95","provenance":{"attribution":"Organization assisted by OpenAI Codex under R.A. Jacob Martone direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SqueezeScope.Variantab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/think/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - Robert\u2019s MacBook Pro/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/simp_trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.SqueezeScope


namespace FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SqueezeScope.Variantab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95

set_option linter.missingDocs false

example : x + 1 = 1 + x := by simp? [Nat.add_comm, Nat.mul_comm]
example : 1 + 1 = 2 := by dsimp?

@[simp] def bar (z : Nat) := 1 + z
@[simp] def baz (z : Nat) := 1 + z

@[simp] def foo : Nat → Nat → Nat
  | 0, z => bar z
  | _+1, z => baz z

example : foo x y = 1 + y := by
  cases x <;> simp? -- two printouts:
  -- "Try this: simp only [foo, bar]"
  -- "Try this: simp only [foo, baz]"

example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp -- only one printout: "Try this: simp only [foo, baz, bar]"
