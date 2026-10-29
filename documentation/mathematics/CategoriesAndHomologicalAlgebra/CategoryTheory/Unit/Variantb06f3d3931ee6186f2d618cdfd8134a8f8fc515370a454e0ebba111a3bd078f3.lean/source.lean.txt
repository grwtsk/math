-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PunitCone.Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PunitCone.Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"aa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Unit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.PUnit
import Mathlib.CategoryTheory.Limits.HasLimits


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PunitCone.Variantaa36b42566945f0a395b3305e78cfd512b960be4516040a3842f07d3d8188bec

#align_import category_theory.limits.unit from "leanprover-community/mathlib"@"c85d2ff93210de84373ab4c9c6dba2b78494961e"

/-!
# `Discrete PUnit` has limits and colimits

Mostly for the sake of constructing trivial examples, we show all (co)cones into `Discrete PUnit`
are (co)limit (co)cones. We also show that such (co)cones exist, and that `Discrete PUnit` has all
(co)limits.
-/


universe v' v

open CategoryTheory

namespace CategoryTheory.Limits

variable {J : Type v} [Category.{v'} J] {F : J ⥤ Discrete PUnit}

/-- A trivial cone for a functor into `PUnit`. `punitConeIsLimit` shows it is a limit. -/
def punitCone : Cone F :=
  ⟨⟨⟨⟩⟩, (Functor.punitExt _ _).hom⟩
#align category_theory.limits.punit_cone CategoryTheory.Limits.punitCone

/-- A trivial cocone for a functor into `PUnit`. `punitCoconeIsLimit` shows it is a colimit. -/
def punitCocone : Cocone F :=
  ⟨⟨⟨⟩⟩, (Functor.punitExt _ _).hom⟩
#align category_theory.limits.punit_cocone CategoryTheory.Limits.punitCocone

/-- Any cone over a functor into `PUnit` is a limit cone.
-/
def punitConeIsLimit {c : Cone F} : IsLimit c where
  lift := fun s => eqToHom (by simp)
#align category_theory.limits.punit_cone_is_limit CategoryTheory.Limits.punitConeIsLimit

/-- Any cocone over a functor into `PUnit` is a colimit cocone.
-/
def punitCoconeIsColimit {c : Cocone F} : IsColimit c where
  desc := fun s => eqToHom (by simp)
#align category_theory.limits.punit_cocone_is_colimit CategoryTheory.Limits.punitCoconeIsColimit

instance : HasLimitsOfSize.{v', v} (Discrete PUnit) :=
  ⟨fun _ _ => ⟨fun _ => ⟨punitCone, punitConeIsLimit⟩⟩⟩

instance : HasColimitsOfSize.{v', v} (Discrete PUnit) :=
  ⟨fun _ _ => ⟨fun _ => ⟨punitCocone, punitCoconeIsColimit⟩⟩⟩

end CategoryTheory.Limits
