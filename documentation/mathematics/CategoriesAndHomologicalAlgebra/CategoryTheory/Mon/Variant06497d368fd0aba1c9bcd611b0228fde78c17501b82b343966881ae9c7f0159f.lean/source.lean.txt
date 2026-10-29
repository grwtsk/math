-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant495a7df37c5626b5e22f9d29d8ec9ced507a62c8f99869eb0fb15c40b77a0806","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"495a7df37c5626b5e22f9d29d8ec9ced507a62c8f99869eb0fb15c40b77a0806","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Limits.Variant495a7df37c5626b5e22f9d29d8ec9ced507a62c8f99869eb0fb15c40b77a0806","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"495a7df37c5626b5e22f9d29d8ec9ced507a62c8f99869eb0fb15c40b77a0806","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Mon_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.CategoryTheory.Monoidal.Internal.Limits
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant495a7df37c5626b5e22f9d29d8ec9ced507a62c8f99869eb0fb15c40b77a0806

open CategoryTheory Limits

noncomputable section

-- We verify that we have successfully created special shapes of limits in `Mon_ C`,
-- assuming that only those special shapes existed in `C`.

-- To avoid unnecessarily adding imports in `Mathlib/CategoryTheory/Monoidal/Internal/Limits.lean`
-- this check lives in the test suite.

example (D : Type u) [Category.{v} D] [MonoidalCategory D] [HasTerminal D] :
  (⊤_ (Mon_ D)).X ≅ (⊤_ D) := PreservesTerminal.iso (Mon_.forget D)

example (D : Type u) [Category.{v} D] [MonoidalCategory D] [HasBinaryProducts D] (A B : Mon_ D) :
  (prod A B).X ≅ prod A.X B.X := PreservesLimitPair.iso (Mon_.forget D) A B
