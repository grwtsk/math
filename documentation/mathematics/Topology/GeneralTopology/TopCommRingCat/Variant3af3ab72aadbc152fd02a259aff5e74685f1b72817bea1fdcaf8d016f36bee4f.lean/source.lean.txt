-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TopCommRingCat.Variante3eeb5b0e4b9ff9bcd9c53ce827d506bad449cc2dfb69be09603eedf2a888dec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3eeb5b0e4b9ff9bcd9c53ce827d506bad449cc2dfb69be09603eedf2a888dec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TopCommRingCat.Variante3eeb5b0e4b9ff9bcd9c53ce827d506bad449cc2dfb69be09603eedf2a888dec","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e3eeb5b0e4b9ff9bcd9c53ce827d506bad449cc2dfb69be09603eedf2a888dec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/TopCommRingCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.Ring.Basic
import Mathlib.Topology.Category.TopCat.Basic
import Mathlib.Topology.Algebra.Ring.Basic

/-!
# Category of topological commutative rings

We introduce the category `TopCommRingCat` of topological commutative rings together with the
relevant forgetful functors to topological spaces and commutative rings.
-/



namespace GRWTSK.Topology.GeneralTopology.TopCommRingCat.Variante3eeb5b0e4b9ff9bcd9c53ce827d506bad449cc2dfb69be09603eedf2a888dec

universe u

open CategoryTheory


/-- A bundled topological commutative ring. -/
structure TopCommRingCat where
  /-- carrier of a topological commutative ring. -/
  α : Type u
  [isCommRing : CommRing α]
  [isTopologicalSpace : TopologicalSpace α]
  [isTopologicalRing : IsTopologicalRing α]

namespace TopCommRingCat

instance : Inhabited TopCommRingCat :=
  ⟨⟨PUnit⟩⟩

instance : CoeSort TopCommRingCat (Type u) :=
  ⟨TopCommRingCat.α⟩

attribute [instance] isCommRing isTopologicalSpace isTopologicalRing

instance : Category TopCommRingCat.{u} where
  Hom R S := { f : R →+* S // Continuous f }
  id R := ⟨RingHom.id R, by rw [RingHom.id]; continuity⟩
  comp f g :=
    ⟨g.val.comp f.val, by
      -- TODO automate
      cases f
      cases g
      continuity⟩

instance (R S : TopCommRingCat.{u}) : FunLike { f : R →+* S // Continuous f } R S where
  coe f := f.val
  coe_injective' _ _ h := Subtype.ext (DFunLike.coe_injective h)

instance : ConcreteCategory TopCommRingCat.{u} fun R S => { f : R →+* S // Continuous f } where
  hom f := f
  ofHom f := f

/-- Construct a bundled `TopCommRingCat` from the underlying type and the appropriate typeclasses.
-/
abbrev of (X : Type u) [CommRing X] [TopologicalSpace X] [IsTopologicalRing X] : TopCommRingCat :=
  ⟨X⟩

theorem coe_of (X : Type u) [CommRing X] [TopologicalSpace X] [IsTopologicalRing X] :
    (of X : Type u) = X := rfl

instance hasForgetToCommRingCat : HasForget₂ TopCommRingCat CommRingCat :=
  HasForget₂.mk' (fun R => CommRingCat.of R) (fun _ => rfl)
    (fun f => CommRingCat.ofHom f.val) HEq.rfl

instance forgetToCommRingCatTopologicalSpace (R : TopCommRingCat) :
    TopologicalSpace ((forget₂ TopCommRingCat CommRingCat).obj R) :=
  R.isTopologicalSpace

/-- The forgetful functor to `TopCat`. -/
instance hasForgetToTopCat : HasForget₂ TopCommRingCat TopCat :=
  HasForget₂.mk' (fun R => TopCat.of R) (fun _ => rfl) (fun f => TopCat.ofHom ⟨⇑f.1, f.2⟩) HEq.rfl

instance forgetToTopCatCommRing (R : TopCommRingCat) :
    CommRing ((forget₂ TopCommRingCat TopCat).obj R) :=
  R.isCommRing

instance forgetToTopCatTopologicalRing (R : TopCommRingCat) :
    IsTopologicalRing ((forget₂ TopCommRingCat TopCat).obj R) :=
  R.isTopologicalRing

/-- The forgetful functors to `Type` do not reflect isomorphisms,
but the forgetful functor from `TopCommRingCat` to `TopCat` does.
-/
instance : (forget₂ TopCommRingCat.{u} TopCat.{u}).ReflectsIsomorphisms where
  reflects {X Y} f _ := by
    -- We have an isomorphism in `TopCat`,
    let i_Top := asIso ((forget₂ TopCommRingCat TopCat).map f)
    -- and a `RingEquiv`.
    let e_Ring : X ≃+* Y := { f.1, ((forget TopCat).mapIso i_Top).toEquiv with }
    -- Putting these together we obtain the isomorphism we're after:
    exact
      ⟨⟨⟨e_Ring.symm, i_Top.inv.hom.2⟩,
          ⟨by
            ext x
            exact e_Ring.left_inv x, by
            ext x
            exact e_Ring.right_inv x⟩⟩⟩

end TopCommRingCat
