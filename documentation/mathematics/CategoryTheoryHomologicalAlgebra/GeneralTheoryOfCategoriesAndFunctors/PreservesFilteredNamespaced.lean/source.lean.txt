-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesFilteredColimits.Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreservesFilteredColimits.Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Preserves/Filtered.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Justus Springer
-/
import Mathlib.CategoryTheory.Limits.Preserves.Basic
import Mathlib.CategoryTheory.Filtered


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesFilteredColimits.Variantc9d9f5ddc0ee4fe9da71254a9df25b387acb6fa60a813af3b5e5304129719431

#align_import category_theory.limits.preserves.filtered from "leanprover-community/mathlib"@"c43486ecf2a5a17479a32ce09e4818924145e90e"

/-!
# Preservation of filtered colimits and cofiltered limits.
Typically forgetful functors from algebraic categories preserve filtered colimits
(although not general colimits). See e.g. `Algebra/Category/MonCat/FilteredColimits`.

## Future work
This could be generalised to allow diagrams in lower universes.
-/


open CategoryTheory

open CategoryTheory.Functor

namespace CategoryTheory.Limits

universe v u₁ u₂ u₃

-- declare the `v`'s first; see `CategoryTheory.Category` for an explanation
variable {C : Type u₁} [Category.{v} C]

variable {D : Type u₂} [Category.{v} D]

variable {E : Type u₃} [Category.{v} E]

variable {J : Type v} [SmallCategory J] {K : J ⥤ C}

/--
A functor is said to preserve filtered colimits, if it preserves all colimits of shape `J`, where
`J` is a filtered category.
-/
class PreservesFilteredColimits (F : C ⥤ D) : Type max u₁ u₂ (v + 1) where
  preserves_filtered_colimits :
    ∀ (J : Type v) [SmallCategory J] [IsFiltered J], PreservesColimitsOfShape J F
#align category_theory.limits.preserves_filtered_colimits CategoryTheory.Limits.PreservesFilteredColimits

attribute [instance 100] PreservesFilteredColimits.preserves_filtered_colimits

instance (priority := 100) PreservesColimits.preservesFilteredColimits (F : C ⥤ D)
    [PreservesColimits F] : PreservesFilteredColimits F
    where preserves_filtered_colimits _ := inferInstance
#align category_theory.limits.preserves_colimits.preserves_filtered_colimits CategoryTheory.Limits.PreservesColimits.preservesFilteredColimits

instance compPreservesFilteredColimits (F : C ⥤ D) (G : D ⥤ E) [PreservesFilteredColimits F]
    [PreservesFilteredColimits G] : PreservesFilteredColimits (F ⋙ G)
    where preserves_filtered_colimits _ := inferInstance
#align category_theory.limits.comp_preserves_filtered_colimits CategoryTheory.Limits.compPreservesFilteredColimits

/-- A functor is said to preserve cofiltered limits, if it preserves all limits of shape `J`, where
`J` is a cofiltered category.
-/
class PreservesCofilteredLimits (F : C ⥤ D) : Type max u₁ u₂ (v + 1) where
  preserves_cofiltered_limits :
    ∀ (J : Type v) [SmallCategory J] [IsCofiltered J], PreservesLimitsOfShape J F
#align category_theory.limits.preserves_cofiltered_limits CategoryTheory.Limits.PreservesCofilteredLimits

attribute [instance 100] PreservesCofilteredLimits.preserves_cofiltered_limits

instance (priority := 100) PreservesLimits.preservesCofilteredLimits (F : C ⥤ D)
    [PreservesLimits F] : PreservesCofilteredLimits F
    where preserves_cofiltered_limits _ := inferInstance
#align category_theory.limits.preserves_limits.preserves_cofiltered_limits CategoryTheory.Limits.PreservesLimits.preservesCofilteredLimits

instance compPreservesCofilteredLimits (F : C ⥤ D) (G : D ⥤ E) [PreservesCofilteredLimits F]
    [PreservesCofilteredLimits G] : PreservesCofilteredLimits (F ⋙ G)
    where preserves_cofiltered_limits _ := inferInstance
#align category_theory.limits.comp_preserves_cofiltered_limits CategoryTheory.Limits.compPreservesCofilteredLimits

end CategoryTheory.Limits
