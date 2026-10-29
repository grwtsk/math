-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MonCatMax.Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MonCatMax.Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3","mathematical_subject":"Algebra.Groups","original_sha256":"5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Category/MonCat/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Algebra.Category.MonCat.Basic
import Mathlib.Algebra.Group.Pi
import Mathlib.CategoryTheory.Limits.Creates
import Mathlib.CategoryTheory.Limits.Types
import Mathlib.GroupTheory.Submonoid.Operations


namespace GRWTSK.Algebra.GroupTheory.MonCatMax.Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3

#align_import algebra.category.Mon.limits from "leanprover-community/mathlib"@"c43486ecf2a5a17479a32ce09e4818924145e90e"

/-!
# The category of (commutative) (additive) monoids has all limits

Further, these limits are preserved by the forgetful functor --- that is,
the underlying types are just the limits in the category of types.

-/

set_option linter.uppercaseLean3 false -- `Mon`

noncomputable section

open CategoryTheory

open CategoryTheory.Limits

universe v u

-- Porting note: typemax hack to fix universe complaints
/-- An alias for `MonCat.{max u v}`, to deal around unification issues. -/
@[to_additive (attr := nolint checkUnivs) AddMonCatMax
  "An alias for `AddMonCat.{max u v}`, to deal around unification issues."]
abbrev MonCatMax.{u1, u2} := MonCat.{max u1 u2}

namespace MonCat

variable {J : Type v} [SmallCategory J]

@[to_additive]
instance monoidObj (F : J ⥤ MonCatMax.{u,v} ) (j) : Monoid ((F ⋙ forget MonCat).obj j) := by
  change Monoid (F.obj j)
  infer_instance
#align Mon.monoid_obj MonCat.monoidObj
#align AddMon.add_monoid_obj AddMonCat.addMonoidObj

/-- The flat sections of a functor into `MonCat` form a submonoid of all sections.
-/
@[to_additive
      "The flat sections of a functor into `AddMonCat` form an additive submonoid of all sections."]
def sectionsSubmonoid (F : J ⥤ MonCatMax.{u,v}) : Submonoid (∀ j, F.obj j) where
  carrier := (F ⋙ forget MonCat).sections
  one_mem' {j} {j'} f := by simp
  mul_mem' {a} {b} ah bh {j} {j'} f := by
    simp only [Functor.comp_map, MonoidHom.map_mul, Pi.mul_apply]
    dsimp [Functor.sections] at ah bh
    rw [← ah f, ← bh f, forget_map, map_mul]
#align Mon.sections_submonoid MonCat.sectionsSubmonoid
#align AddMon.sections_add_submonoid AddMonCat.sectionsAddSubmonoid

@[to_additive]
instance limitMonoid (F : J ⥤ MonCatMax.{u,v}) :
    Monoid (Types.limitCone.{v, u} (F ⋙ forget MonCatMax.{u,v})).pt :=
  (sectionsSubmonoid.{v, u} F).toMonoid
#align Mon.limit_monoid MonCat.limitMonoid
#align AddMon.limit_add_monoid AddMonCat.limitAddMonoid

/-- `limit.π (F ⋙ forget MonCat) j` as a `MonoidHom`. -/
@[to_additive "`limit.π (F ⋙ forget AddMonCat) j` as an `AddMonoidHom`."]
noncomputable def limitπMonoidHom (F : J ⥤ MonCatMax.{u, v}) (j : J) :
  (Types.limitCone.{v, u} (F ⋙ forget MonCatMax.{u, v})).pt →*
    ((F ⋙ forget MonCat.{max v u}).obj j) :=
  { toFun := (Types.limitCone.{v, u} (F ⋙ forget MonCatMax.{u, v})).π.app j,
    map_one' := rfl
    map_mul' := fun _ _ => rfl }
#align Mon.limit_π_monoid_hom MonCat.limitπMonoidHom
#align AddMon.limit_π_add_monoid_hom AddMonCat.limitπAddMonoidHom

namespace HasLimits

-- The next two definitions are used in the construction of `HasLimits MonCat`.
-- After that, the limits should be constructed using the generic limits API,
-- e.g. `limit F`, `limit.cone F`, and `limit.isLimit F`.
/-- Construction of a limit cone in `MonCat`.
(Internal use only; use the limits API.)
-/
@[to_additive "(Internal use only; use the limits API.)"]
noncomputable def limitCone (F : J ⥤ MonCatMax.{u,v}) : Cone F :=
  { pt := MonCat.of (Types.limitCone (F ⋙ forget _)).pt
    π :=
    { app := limitπMonoidHom F
      naturality := fun _ _ f =>
        set_option linter.deprecated false in
        MonoidHom.coe_inj ((Types.limitCone (F ⋙ forget _)).π.naturality f) } }
#align Mon.has_limits.limit_cone MonCat.HasLimits.limitCone
#align AddMon.has_limits.limit_cone AddMonCat.HasLimits.limitCone

/-- Witness that the limit cone in `MonCat` is a limit cone.
(Internal use only; use the limits API.)
-/
@[to_additive "(Internal use only; use the limits API.)"]
noncomputable def limitConeIsLimit (F : J ⥤ MonCatMax.{u,v}) : IsLimit (limitCone F) := by
  refine IsLimit.ofFaithful (forget MonCatMax) (Types.limitConeIsLimit.{v,u} _)
    (fun s => ⟨⟨_, ?_⟩, ?_⟩) (fun s => rfl) <;>
  aesop_cat
#align Mon.has_limits.limit_cone_is_limit MonCat.HasLimits.limitConeIsLimit
#align AddMon.has_limits.limit_cone_is_limit AddMonCat.HasLimits.limitConeIsLimit

end HasLimits

open HasLimits

/-- The category of monoids has all limits. -/
@[to_additive "The category of additive monoids has all limits."]
instance hasLimitsOfSize : HasLimitsOfSize.{v} MonCatMax.{u,v} where
  has_limits_of_shape _ _ :=
    { has_limit := fun F =>
        HasLimit.mk
          { cone := limitCone F
            isLimit := limitConeIsLimit F } }
#align Mon.has_limits_of_size MonCat.hasLimitsOfSize
#align AddMon.has_limits_of_size AddMonCat.hasLimitsOfSize

@[to_additive]
instance hasLimits : HasLimits MonCat.{u} :=
  MonCat.hasLimitsOfSize.{u, u}
#align Mon.has_limits MonCat.hasLimits
#align AddMon.has_limits AddMonCat.hasLimits

/-- The forgetful functor from monoids to types preserves all limits.

This means the underlying type of a limit can be computed as a limit in the category of types. -/
@[to_additive "The forgetful functor from additive monoids to types preserves all limits.\n\n
This means the underlying type of a limit can be computed as a limit in the category of types."]
noncomputable instance forgetPreservesLimitsOfSize :
    PreservesLimitsOfSize.{v} (forget MonCatMax.{u,v}) where
  preservesLimitsOfShape {_} _ :=
    { preservesLimit := fun {F} =>
        preservesLimitOfPreservesLimitCone (limitConeIsLimit F)
          (Types.limitConeIsLimit (F ⋙ forget _)) }
#align Mon.forget_preserves_limits_of_size MonCat.forgetPreservesLimitsOfSize
#align AddMon.forget_preserves_limits_of_size AddMonCat.forgetPreservesLimitsOfSize

@[to_additive]
noncomputable instance forgetPreservesLimits : PreservesLimits (forget MonCat.{u}) :=
  MonCat.forgetPreservesLimitsOfSize.{u, u}
#align Mon.forget_preserves_limits MonCat.forgetPreservesLimits
#align AddMon.forget_preserves_limits AddMonCat.forgetPreservesLimits

end MonCat

open MonCat

-- Porting note: typemax hack

/-- An alias for `CommMonCat.{max u v}`, to deal around unification issues. -/
@[to_additive (attr := nolint checkUnivs) AddCommMonCatMax
  "An alias for `AddCommMonCat.{max u v}`, to deal around unification issues."]
abbrev CommMonCatMax.{u1, u2} := CommMonCat.{max u1 u2}

namespace CommMonCat

variable {J : Type v} [SmallCategory J]

@[to_additive]
instance commMonoidObj (F : J ⥤ CommMonCatMax.{u,v}) (j) :
    CommMonoid ((F ⋙ forget CommMonCatMax.{u,v}).obj j) := by
  change CommMonoid (F.obj j)
  infer_instance
#align CommMon.comm_monoid_obj CommMonCat.commMonoidObj
#align AddCommMon.add_comm_monoid_obj AddCommMonCat.addCommMonoidObj

@[to_additive]
instance limitCommMonoid (F : J ⥤ CommMonCatMax.{u,v}) :
    CommMonoid (Types.limitCone.{v,u} (F ⋙ forget CommMonCatMax.{u,v})).pt :=
  @Submonoid.toCommMonoid (∀ j, F.obj j) _
    (MonCat.sectionsSubmonoid (F ⋙ forget₂ CommMonCatMax.{u,v} MonCatMax.{u,v}))
#align CommMon.limit_comm_monoid CommMonCat.limitCommMonoid
#align AddCommMon.limit_add_comm_monoid AddCommMonCat.limitAddCommMonoid

/-- We show that the forgetful functor `CommMonCat ⥤ MonCat` creates limits.

All we need to do is notice that the limit point has a `CommMonoid` instance available,
and then reuse the existing limit. -/
@[to_additive "We show that the forgetful functor `AddCommMonCat ⥤ AddMonCat` creates limits.\n\n
All we need to do is notice that the limit point has an `AddCommMonoid` instance available,\n
and then reuse the existing limit."]
noncomputable instance forget₂CreatesLimit (F : J ⥤ CommMonCatMax.{u,v}) :
    CreatesLimit F (forget₂ CommMonCat MonCatMax.{u, v}) :=
  createsLimitOfReflectsIso fun c' t =>
    { liftedCone :=
        { pt := CommMonCat.of (Types.limitCone (F ⋙ forget CommMonCat)).pt
          π :=
            { app := MonCat.limitπMonoidHom (F ⋙ forget₂ CommMonCatMax.{u,v} MonCatMax.{u,v})
              naturality :=
                (MonCat.HasLimits.limitCone
                      (F ⋙ forget₂ CommMonCat MonCat.{max v u})).π.naturality } }
      validLift := by apply IsLimit.uniqueUpToIso (MonCat.HasLimits.limitConeIsLimit _) t
      makesLimit :=
        IsLimit.ofFaithful (forget₂ CommMonCat MonCat.{max v u})
          (MonCat.HasLimits.limitConeIsLimit _) (fun s => _) fun s => rfl }

/-- A choice of limit cone for a functor into `CommMonCat`.
(Generally, you'll just want to use `limit F`.)
-/
@[to_additive "A choice of limit cone for a functor into `AddCommMonCat`.
(Generally, you'll just want to use `limit F`.)"]
noncomputable def limitCone (F : J ⥤ CommMonCatMax.{u,v}) : Cone F :=
  liftLimit (limit.isLimit (F ⋙ forget₂ CommMonCatMax.{u,v} MonCatMax.{u,v}))
#align CommMon.limit_cone CommMonCat.limitCone
#align AddCommMon.limit_cone AddCommMonCat.limitCone

/-- The chosen cone is a limit cone.
(Generally, you'll just want to use `limit.cone F`.)
-/
@[to_additive
      "The chosen cone is a limit cone. (Generally, you'll just want to use\n`limit.cone F`.)"]
noncomputable def limitConeIsLimit (F : J ⥤ CommMonCatMax.{u,v}) : IsLimit (limitCone F) :=
  liftedLimitIsLimit _
#align CommMon.limit_cone_is_limit CommMonCat.limitConeIsLimit
#align AddCommMon.limit_cone_is_limit AddCommMonCat.limitConeIsLimit

/-- The category of commutative monoids has all limits. -/
@[to_additive "The category of additive commutative monoids has all limits."]
instance hasLimitsOfSize : HasLimitsOfSize.{v, v} CommMonCatMax.{u,v} where
  has_limits_of_shape _ _ :=
    { has_limit := fun F => hasLimit_of_created F (forget₂ CommMonCatMax.{u,v} MonCatMax.{u,v}) }
#align CommMon.has_limits_of_size CommMonCat.hasLimitsOfSize
#align AddCommMon.has_limits_of_size AddCommMonCat.hasLimitsOfSize

@[to_additive]
instance hasLimits : HasLimits CommMonCat.{u} :=
  CommMonCat.hasLimitsOfSize.{u, u}
#align CommMon.has_limits CommMonCat.hasLimits
#align AddCommMon.has_limits AddCommMonCat.hasLimits

/-- The forgetful functor from commutative monoids to monoids preserves all limits.

This means the underlying type of a limit can be computed as a limit in the category of monoids. -/
@[to_additive AddCommMonCat.forget₂AddMonPreservesLimits "The forgetful functor from additive\n
commutative monoids to additive monoids preserves all limits.\n\n
This means the underlying type of a limit can be computed as a limit in the category of additive\n
monoids."]
noncomputable instance forget₂MonPreservesLimitsOfSize :
    PreservesLimitsOfSize.{v, v} (forget₂ CommMonCatMax.{u,v} MonCatMax.{u,v}) where
  preservesLimitsOfShape {J} 𝒥 := { preservesLimit := fun {F} => by infer_instance }
#align CommMon.forget₂_Mon_preserves_limits_of_size CommMonCat.forget₂MonPreservesLimitsOfSize
#align AddCommMon.forget₂_AddMon_preserves_limits AddCommMonCat.forget₂AddMonPreservesLimits

@[to_additive]
noncomputable instance forget₂MonPreservesLimits :
    PreservesLimits (forget₂ CommMonCat MonCat.{u}) :=
  CommMonCat.forget₂MonPreservesLimitsOfSize.{u, u}
#align CommMon.forget₂_Mon_preserves_limits CommMonCat.forget₂MonPreservesLimits
#align AddCommMon.forget₂_Mon_preserves_limits AddCommMonCat.forget₂MonPreservesLimits

/-- The forgetful functor from commutative monoids to types preserves all limits.

This means the underlying type of a limit can be computed as a limit in the category of types. -/
@[to_additive "The forgetful functor from additive commutative monoids to types preserves all\n
limits.\n\n
This means the underlying type of a limit can be computed as a limit in the category of types."]
noncomputable instance forgetPreservesLimitsOfSize :
    PreservesLimitsOfSize.{v, v} (forget CommMonCatMax.{u, v}) where
  preservesLimitsOfShape {_} _ :=
    { preservesLimit := fun {F} =>
        -- Porting note: we need to specify `F` here explicitly.
        @Limits.compPreservesLimit _ _ _ _ _ _ F _ _
          (forget₂ CommMonCatMax.{u, v} MonCatMax.{u, v}) (forget MonCat) _ _ }
#align CommMon.forget_preserves_limits_of_size CommMonCat.forgetPreservesLimitsOfSize
#align AddCommMon.forget_preserves_limits_of_size AddCommMonCat.forgetPreservesLimitsOfSize

@[to_additive]
noncomputable instance forgetPreservesLimits : PreservesLimits (forget CommMonCat.{u}) :=
  CommMonCat.forgetPreservesLimitsOfSize.{u, u}
#align CommMon.forget_preserves_limits CommMonCat.forgetPreservesLimits
#align AddCommMon.forget_preserves_limits AddCommMonCat.forgetPreservesLimits

end CommMonCat
