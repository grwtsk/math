-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomAddApply.Variant1765abc77df1ac51d384311946d98e963fa992f4f84efae8fdb73414e1e9c454","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1765abc77df1ac51d384311946d98e963fa992f4f84efae8fdb73414e1e9c454","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HomAddApply.Variant1765abc77df1ac51d384311946d98e963fa992f4f84efae8fdb73414e1e9c454","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1765abc77df1ac51d384311946d98e963fa992f4f84efae8fdb73414e1e9c454","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Category/GroupCat/Preadditive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.GroupCat.Basic
import Mathlib.CategoryTheory.Preadditive.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomAddApply.Variant1765abc77df1ac51d384311946d98e963fa992f4f84efae8fdb73414e1e9c454

#align_import algebra.category.Group.preadditive from "leanprover-community/mathlib"@"829895f162a1f29d0133f4b3538f4cd1fb5bffd3"

/-!
# The category of additive commutative groups is preadditive.
-/

open CategoryTheory

universe u

namespace AddCommGroupCat

-- porting note: this instance was not necessary in mathlib
instance (P Q : AddCommGroupCat) : AddCommGroup (P ⟶ Q) :=
  (inferInstance : AddCommGroup (AddMonoidHom P Q))

-- porting note: this lemma was not necessary in mathlib
@[simp]
lemma hom_add_apply {P Q : AddCommGroupCat} (f g : P ⟶ Q) (x : P) :
  (f + g) x = f x + g x := rfl

section

-- porting note: the simp attribute was locally deactivated here,
-- otherwise Lean would try to infer `Preadditive AddCommGroupCat`
-- in order to prove the axioms `add_comp` and `comp_add` in the
-- next instance declaration
attribute [-simp] Preadditive.add_comp Preadditive.comp_add

instance : Preadditive AddCommGroupCat where

end

end AddCommGroupCat
