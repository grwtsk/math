-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Slice.Variant0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Slice.Variant0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CategoryTheory.Slice


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Slice.Variant0b04658c7163abefc5bcd205a17e8b6fac4663a5b54b1d20b5d2d04b20162a3b

open CategoryTheory

variable (C : Type) [Category C] (X Y Z W U : C)
variable (f₁ f₂ : X ⟶ Y) (g g₁ g₂ : Y ⟶ Z) (h : Z ⟶ W) (l : W ⟶ U)

example (hyp : f₁ ≫ g₁ = f₂ ≫ g₂) : f₁ ≫ g₁ ≫ h ≫ l = (f₂ ≫ g₂) ≫ (h ≫ l) := by
  conv =>
    rhs
    slice 2 3
  show f₁ ≫ g₁ ≫ h ≫ l = f₂ ≫ (g₂ ≫ h) ≫ l
  conv =>
    lhs
    slice 1 2
    rw [hyp]
  show ((f₂ ≫ g₂) ≫ h) ≫ l = f₂ ≫ (g₂ ≫ h) ≫ l
  conv =>
    lhs
    slice 2 3

example (hyp : f₁ ≫ g₁ = f₂ ≫ g₂) : f₁ ≫ g₁ ≫ h ≫ l = (f₂ ≫ g₂) ≫ (h ≫ l) := by
  slice_lhs 1 2 => { rw [hyp] }; slice_rhs 1 2 => skip

example (h₁ : f₁ = f₂) : f₁ ≫ g ≫ h ≫ l = ((f₂ ≫ g) ≫ h) ≫ l := by
  slice_lhs 1 1 => rw [h₁]

example (h₁ : f₁ = f₂) : ((f₂ ≫ g) ≫ h) ≫ l = f₁ ≫ g ≫ h ≫ l := by
  slice_rhs 1 1 => rw [h₁]
