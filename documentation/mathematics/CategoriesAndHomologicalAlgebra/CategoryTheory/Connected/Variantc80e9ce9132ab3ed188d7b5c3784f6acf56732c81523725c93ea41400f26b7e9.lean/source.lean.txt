-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatTransInOver.Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.NatTransInOver.Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Constructions/Over/Connected.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Reid Barton, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Creates
import Mathlib.CategoryTheory.Comma.Over.Basic
import Mathlib.CategoryTheory.IsConnected

/-!
# Connected limits in the over category

Shows that the forgetful functor `Over B ⥤ C` creates connected limits, in particular `Over B` has
any connected limit which `C` has.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NatTransInOver.Variantf6d007551e3a067273051db0abe8a4cebc9a70ffbc14c40d4c7de23ce0fd1ecc

universe v' u' v u

-- morphism levels before object levels. See note [CategoryTheory universes].
noncomputable section

open CategoryTheory CategoryTheory.Limits

variable {J : Type u'} [Category.{v'} J]
variable {C : Type u} [Category.{v} C]
variable {X : C}

namespace CategoryTheory.Over

namespace CreatesConnected

/-- (Impl) Given a diagram in the over category, produce a natural transformation from the
diagram legs to the specific object.
-/
def natTransInOver {B : C} (F : J ⥤ Over B) :
    F ⋙ forget B ⟶ (CategoryTheory.Functor.const J).obj B where
  app j := (F.obj j).hom

/-- (Impl) Given a cone in the base category, raise it to a cone in the over category. Note this is
where the connected assumption is used.
-/
@[simps]
def raiseCone [IsConnected J] {B : C} {F : J ⥤ Over B} (c : Cone (F ⋙ forget B)) :
    Cone F where
  pt := Over.mk (c.π.app (Classical.arbitrary J) ≫ (F.obj (Classical.arbitrary J)).hom)
  π :=
    { app := fun j =>
        Over.homMk (c.π.app j) (nat_trans_from_is_connected (c.π ≫ natTransInOver F) j _)
      naturality := by
        intro X Y f
        apply CommaMorphism.ext
        · simpa using (c.w f).symm
        · simp }

theorem raised_cone_lowers_to_original [IsConnected J] {B : C} {F : J ⥤ Over B}
    (c : Cone (F ⋙ forget B)) :
    (forget B).mapCone (raiseCone c) = c := by aesop_cat

/-- (Impl) Show that the raised cone is a limit. -/
def raisedConeIsLimit [IsConnected J] {B : C} {F : J ⥤ Over B} {c : Cone (F ⋙ forget B)}
    (t : IsLimit c) : IsLimit (raiseCone c) where
  lift s :=
    Over.homMk (t.lift ((forget B).mapCone s))
  uniq s m K := by
    ext1
    apply t.hom_ext
    intro j
    simp [← K j]

end CreatesConnected

/-- The forgetful functor from the over category creates any connected limit. -/
instance forgetCreatesConnectedLimits [IsConnected J] {B : C} :
    CreatesLimitsOfShape J (forget B) where
  CreatesLimit :=
    createsLimitOfReflectsIso fun c t =>
      { liftedCone := CreatesConnected.raiseCone c
        validLift := eqToIso (CreatesConnected.raised_cone_lowers_to_original c)
        makesLimit := CreatesConnected.raisedConeIsLimit t }

/-- The over category has any connected limit which the original category has. -/
instance has_connected_limits {B : C} [IsConnected J] [HasLimitsOfShape J C] :
    HasLimitsOfShape J (Over B) where
  has_limit F := hasLimit_of_created F (forget B)

end CategoryTheory.Over
