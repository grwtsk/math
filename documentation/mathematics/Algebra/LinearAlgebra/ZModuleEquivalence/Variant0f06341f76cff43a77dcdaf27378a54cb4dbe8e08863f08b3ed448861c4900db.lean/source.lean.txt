-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleCat.Variant08e25556bac76b046c91d1e95a7561f78be825ba6ab5da383739fb78c2d432d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08e25556bac76b046c91d1e95a7561f78be825ba6ab5da383739fb78c2d432d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleCat.Variant08e25556bac76b046c91d1e95a7561f78be825ba6ab5da383739fb78c2d432d8","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"08e25556bac76b046c91d1e95a7561f78be825ba6ab5da383739fb78c2d432d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Category/GroupCat/ZModuleEquivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Algebra.Category.ModuleCat.Basic


namespace GRWTSK.Algebra.LinearAlgebra.ModuleCat.Variant08e25556bac76b046c91d1e95a7561f78be825ba6ab5da383739fb78c2d432d8

#align_import algebra.category.Group.Z_Module_equivalence from "leanprover-community/mathlib"@"bf1b813e20e108e8868341ca94bb3404a2506ae5"

/-!
The forgetful functor from ℤ-modules to additive commutative groups is
an equivalence of categories.

TODO:
either use this equivalence to transport the monoidal structure from `Module ℤ` to `Ab`,
or, having constructed that monoidal structure directly, show this functor is monoidal.
-/


open CategoryTheory

open CategoryTheory.Equivalence

universe u

namespace ModuleCat

/-- The forgetful functor from `ℤ` modules to `AddCommGroup` is full. -/
instance forget₂AddCommGroupFull : Full (forget₂ (ModuleCat ℤ) AddCommGroupCat.{u}) where
  preimage {A B}
    -- `AddMonoidHom.toIntLinearMap` doesn't work here because `A` and `B` are not
    -- definitionally equal to the canonical `AddCommGroup.intModule` module
    -- instances it expects.
    f := @LinearMap.mk _ _ _ _ _ _ _ _ _ A.isModule B.isModule
        { toFun := f,
          map_add' := AddMonoidHom.map_add (show A.carrier →+ B.carrier from f) }
        (fun n x => by
          convert AddMonoidHom.map_zsmul (show A.carrier →+ B.carrier from f) x n <;>
            ext <;> apply int_smul_eq_zsmul)
set_option linter.uppercaseLean3 false in
#align Module.forget₂_AddCommGroup_full ModuleCat.forget₂AddCommGroupFull

/-- The forgetful functor from `ℤ` modules to `AddCommGroup` is essentially surjective. -/
instance forget₂_addCommGroupCat_essSurj : EssSurj (forget₂ (ModuleCat ℤ) AddCommGroupCat.{u})
    where mem_essImage A :=
    ⟨ModuleCat.of ℤ A,
      ⟨{  hom := 𝟙 A
          inv := 𝟙 A }⟩⟩
set_option linter.uppercaseLean3 false in
#align Module.forget₂_AddCommGroup_ess_surj ModuleCat.forget₂_addCommGroupCat_essSurj

noncomputable instance forget₂AddCommGroupIsEquivalence :
    IsEquivalence (forget₂ (ModuleCat ℤ) AddCommGroupCat.{u}) :=
  Equivalence.ofFullyFaithfullyEssSurj (forget₂ (ModuleCat ℤ) AddCommGroupCat)
set_option linter.uppercaseLean3 false in
#align Module.forget₂_AddCommGroup_is_equivalence ModuleCat.forget₂AddCommGroupIsEquivalence

end ModuleCat
