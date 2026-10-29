-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasCardinalLTOfMono.Variantbd4475de76c9fa3dde6cc75a2980410fb14ecfd2f342e260992893a7cfb0dad8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd4475de76c9fa3dde6cc75a2980410fb14ecfd2f342e260992893a7cfb0dad8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasCardinalLTOfMono.Variantbd4475de76c9fa3dde6cc75a2980410fb14ecfd2f342e260992893a7cfb0dad8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"bd4475de76c9fa3dde6cc75a2980410fb14ecfd2f342e260992893a7cfb0dad8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Subobject/HasCardinalLT.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Subobject.Basic
import Mathlib.SetTheory.Cardinal.HasCardinalLT

/-!
# Cardinality of Subobject

If `X ⟶ Y` is a monomorphism, and the cardinality of `Subobject Y`
is `< κ`, then the cardinality of `Subobject X` is also `< κ`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasCardinalLTOfMono.Variantbd4475de76c9fa3dde6cc75a2980410fb14ecfd2f342e260992893a7cfb0dad8

universe w v u

namespace CategoryTheory.Subobject

variable {C : Type u} [Category.{v} C]

lemma hasCardinalLT_of_mono {Y : C} {κ : Cardinal.{w}}
    (h : HasCardinalLT (Subobject Y) κ) {X : C} (f : X ⟶ Y) [Mono f] :
    HasCardinalLT (Subobject X) κ :=
  h.of_injective _ (map_obj_injective f)

end CategoryTheory.Subobject
