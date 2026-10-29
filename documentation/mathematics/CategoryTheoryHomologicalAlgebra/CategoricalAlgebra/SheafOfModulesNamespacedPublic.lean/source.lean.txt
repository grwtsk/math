-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Variant90de857f7f858fbd7f3229d52b25dab00de32f3cc6512b51676f686557d042be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90de857f7f858fbd7f3229d52b25dab00de32f3cc6512b51676f686557d042be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Abelian.Variant90de857f7f858fbd7f3229d52b25dab00de32f3cc6512b51676f686557d042be","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"90de857f7f858fbd7f3229d52b25dab00de32f3cc6512b51676f686557d042be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Abelian/GrothendieckAxioms/SheafOfModules.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Sheaf.Abelian
public import Mathlib.Algebra.Category.ModuleCat.Sheaf.Colimits
public import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.PresheafOfModules

/-!
# The category of sheaves of modules is Grothendieck abelian


-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Variant90de857f7f858fbd7f3229d52b25dab00de32f3cc6512b51676f686557d042be

universe u

open CategoryTheory

namespace SheafOfModules

public instance {C : Type u} [SmallCategory C] {J : GrothendieckTopology C}
    (R : Sheaf J RingCat.{u}) :
    IsGrothendieckAbelian.{u} (SheafOfModules.{u} R) where
  hasFilteredColimitsOfSize := ⟨fun _ ↦ ⟨fun _ ↦ inferInstance⟩⟩
  ab5OfSize := ⟨fun K _ _ ↦
    (PresheafOfModules.sheafificationAdjunction (𝟙 R.obj)).hasExactColimitsOfShape K⟩
  hasSeparator :=
    .of_adjunction (PresheafOfModules.sheafificationAdjunction (𝟙 R.obj))

end SheafOfModules
