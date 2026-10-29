-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.TestSorry.Variantc689987c9f52f99e6a5ddb9e07ed4a560698b4a0a60fea63b3424bc8afac8d3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c689987c9f52f99e6a5ddb9e07ed4a560698b4a0a60fea63b3424bc8afac8d3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TestSorry.Variantc689987c9f52f99e6a5ddb9e07ed4a560698b4a0a60fea63b3424bc8afac8d3c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c689987c9f52f99e6a5ddb9e07ed4a560698b4a0a60fea63b3424bc8afac8d3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/InstanceTransparency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic

/-! # Test transparency level of `Div` field in `DivInvMonoid`

It is desirable that particular `DivInvMonoid`s have their `Div` instance not unfold at `.instance`
transparency level, in the same way that the `Div` field of a generic `DivInvMonoid` does not.

To ensure this, in examples where the `Div` field is defined as `fun a b ↦ a * b⁻¹`, we hide this
under one layer of other function (so for example the `Div` instance for `Rat` is defined to be
`⟨Rat.div⟩`, where `Rat.div` is defined to be `fun a b ↦ a * b⁻¹`).

This file checks that this and similar tricks have had the desired effect:
`with_reducible_and_instances apply mul_le_mul` fails although `apply mul_le_mul` succeeds.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TestSorry.Variantc689987c9f52f99e6a5ddb9e07ed4a560698b4a0a60fea63b3424bc8afac8d3c

private axiom test_sorry : ∀ {α}, α
set_option autoImplicit true

example {a b : α} [Field α] [LinearOrder α] [IsStrictOrderedRing α] : a / 2 ≤ b / 2 := by
  fail_if_success with_reducible_and_instances apply mul_le_mul -- fails, as desired
  exact test_sorry

example {a b : ℚ} : a / 2 ≤ b / 2 := by
  fail_if_success with_reducible_and_instances apply mul_le_mul -- fails, as desired
  apply mul_le_mul
  repeat exact test_sorry

example {a b : ℝ} : a / 2 ≤ b / 2 := by
  fail_if_success with_reducible_and_instances apply mul_le_mul -- fails, as desired
  apply mul_le_mul
  repeat exact test_sorry
