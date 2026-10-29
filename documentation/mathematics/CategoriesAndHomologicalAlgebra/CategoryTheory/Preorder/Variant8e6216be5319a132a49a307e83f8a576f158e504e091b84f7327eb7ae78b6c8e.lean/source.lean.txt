-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsInitialBot.Variant7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsInitialBot.Variant7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Preorder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Sina Hazratpour. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sina Hazratpour, Joël Riou
-/

import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts

/-!
# (Co)limits in a preorder category

We provide basic results about the nullary and binary (co)products in the associated category of
a preordered type.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsInitialBot.Variant7f815130c59b4de70d14b6e9ecd20a9823090867124a7aad677630179c396226

universe u

open CategoryTheory Limits

namespace Preorder

variable (C : Type u)

section OrderBot

variable [Preorder C] [OrderBot C]

/-- The least element in a preordered type is initial in the category
associated to this preorder. -/
def isInitialBot : IsInitial (⊥ : C) := IsInitial.ofUnique _

instance : HasInitial C := hasInitial_of_unique ⊥

end OrderBot

section OrderTop

variable [Preorder C] [OrderTop C]

/-- The greatest element of a preordered type is terminal in the category
associated to this preorder. -/
def isTerminalTop : IsTerminal (⊤ : C) := IsTerminal.ofUnique _

instance : HasTerminal C := hasTerminal_of_unique ⊤

end OrderTop

section SemilatticeInf

variable {C} [SemilatticeInf C]

/-- The infimum of two elements in a preordered type is a binary product in
the category associated to this preorder. -/
def isLimitBinaryFan (X Y : C) :
    IsLimit (BinaryFan.mk (P := X ⊓ Y) (homOfLE inf_le_left) (homOfLE inf_le_right)) :=
  BinaryFan.isLimitMk (fun s ↦ homOfLE (le_inf (leOfHom s.fst) (leOfHom s.snd)))
    (by intros; rfl) (by intros; rfl) (by intros; rfl)

end SemilatticeInf

section SemilatticeSup

variable {C} [SemilatticeSup C]

/-- The supremum of two elements in a preordered type is a binary coproduct
in the category associated to this preorder. -/
def isColimitBinaryCofan (X Y : C) :
    IsColimit (BinaryCofan.mk (P := X ⊔ Y) (homOfLE le_sup_left) (homOfLE le_sup_right)) :=
  BinaryCofan.isColimitMk (fun s ↦ homOfLE (sup_le (leOfHom s.inl) (leOfHom s.inr)))
    (by intros; rfl) (by intros; rfl) (by intros; rfl)

end SemilatticeSup

end Preorder
