-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.IsAffine.Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.IsAffine.Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/AlgebraicGeometry/AffineScheme.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.AlgebraicGeometry.GammaSpecAdjunction
import Mathlib.AlgebraicGeometry.OpenImmersion.Scheme
import Mathlib.CategoryTheory.Limits.Opposites
import Mathlib.RingTheory.Localization.InvSubmonoid


namespace GRWTSK.Geometry.AlgebraicGeometry.IsAffine.Variant8ae7ff00ceca27aeed5508522683451ddb8ab3b9d3e1cba4ecf6f08ddf675031

#align_import algebraic_geometry.AffineScheme from "leanprover-community/mathlib"@"88474d1b5af6d37c2ab728b757771bced7f5194c"

/-!
# Affine schemes

We define the category of `AffineScheme`s as the essential image of `Spec`.
We also define predicates about affine schemes and affine open sets.

## Main definitions

* `AlgebraicGeometry.AffineScheme`: The category of affine schemes.
* `AlgebraicGeometry.IsAffine`: A scheme is affine if the canonical map `X ⟶ Spec Γ(X)` is an
  isomorphism.
* `AlgebraicGeometry.Scheme.isoSpec`: The canonical isomorphism `X ≅ Spec Γ(X)` for an affine
  scheme.
* `AlgebraicGeometry.AffineScheme.equivCommRingCat`: The equivalence of categories
  `AffineScheme ≌ CommRingᵒᵖ` given by `AffineScheme.Spec : CommRingᵒᵖ ⥤ AffineScheme` and
  `AffineScheme.Γ : AffineSchemeᵒᵖ ⥤ CommRingCat`.
* `AlgebraicGeometry.IsAffineOpen`: An open subset of a scheme is affine if the open subscheme is
  affine.
* `AlgebraicGeometry.IsAffineOpen.fromSpec`: The immersion `Spec 𝒪ₓ(U) ⟶ X` for an affine `U`.

-/

set_option linter.uppercaseLean3 false

noncomputable section

open CategoryTheory CategoryTheory.Limits Opposite TopologicalSpace

universe u

namespace AlgebraicGeometry

open Spec (structureSheaf)

/-- The category of affine schemes -/
-- Poring note : removed
-- @[nolint has_nonempty_instance]
def AffineScheme :=
  Scheme.Spec.EssImageSubcategory
deriving Category
#align algebraic_geometry.AffineScheme AlgebraicGeometry.AffineScheme

/-- A Scheme is affine if the canonical map `X ⟶ Spec Γ(X)` is an isomorphism. -/
class IsAffine (X : Scheme) : Prop where
  affine : IsIso (ΓSpec.adjunction.unit.app X)
#align algebraic_geometry.is_affine AlgebraicGeometry.IsAffine

attribute [instance] IsAffine.affine

/-- The canonical isomorphism `X ≅ Spec Γ(X)` for an affine scheme. -/
def Scheme.isoSpec (X : Scheme) [IsAffine X] : X ≅ Scheme.Spec.obj (op <| Scheme.Γ.obj <| op X) :=
  asIso (ΓSpec.adjunction.unit.app X)
#align algebraic_geometry.Scheme.iso_Spec AlgebraicGeometry.Scheme.isoSpec

/-- Construct an affine scheme from a scheme and the information that it is affine.
Also see `AffineScheme.of` for a typeclass version. -/
@[simps]
def AffineScheme.mk (X : Scheme) (h : IsAffine X) : AffineScheme :=
  ⟨X, @mem_essImage_of_unit_isIso _ _ _ _ _ _ _ h.1⟩
#align algebraic_geometry.AffineScheme.mk AlgebraicGeometry.AffineScheme.mk

/-- Construct an affine scheme from a scheme. Also see `AffineScheme.mk` for a non-typeclass
version. -/
def AffineScheme.of (X : Scheme) [h : IsAffine X] : AffineScheme :=
  AffineScheme.mk X h
#align algebraic_geometry.AffineScheme.of AlgebraicGeometry.AffineScheme.of

/-- Type check a morphism of schemes as a morphism in `AffineScheme`. -/
def AffineScheme.ofHom {X Y : Scheme} [IsAffine X] [IsAffine Y] (f : X ⟶ Y) :
    AffineScheme.of X ⟶ AffineScheme.of Y :=
  f
#align algebraic_geometry.AffineScheme.of_hom AlgebraicGeometry.AffineScheme.ofHom

theorem mem_Spec_essImage (X : Scheme) : X ∈ Scheme.Spec.essImage ↔ IsAffine X :=
  ⟨fun h => ⟨Functor.essImage.unit_isIso h⟩, fun h => @mem_essImage_of_unit_isIso _ _ _ _ _ _ X h.1⟩
#align algebraic_geometry.mem_Spec_ess_image AlgebraicGeometry.mem_Spec_essImage

instance isAffineAffineScheme (X : AffineScheme.{u}) : IsAffine X.obj :=
  ⟨Functor.essImage.unit_isIso X.property⟩
#align algebraic_geometry.is_affine_AffineScheme AlgebraicGeometry.isAffineAffineScheme

instance SpecIsAffine (R : CommRingCatᵒᵖ) : IsAffine (Scheme.Spec.obj R) :=
  AlgebraicGeometry.isAffineAffineScheme ⟨_, Scheme.Spec.obj_mem_essImage R⟩
#align algebraic_geometry.Spec_is_affine AlgebraicGeometry.SpecIsAffine

theorem isAffineOfIso {X Y : Scheme} (f : X ⟶ Y) [IsIso f] [h : IsAffine Y] : IsAffine X := by
  rw [← mem_Spec_essImage] at h ⊢; exact Functor.essImage.ofIso (asIso f).symm h
#align algebraic_geometry.is_affine_of_iso AlgebraicGeometry.isAffineOfIso

namespace AffineScheme

/-- The `Spec` functor into the category of affine schemes. -/
def Spec : CommRingCatᵒᵖ ⥤ AffineScheme :=
  Scheme.Spec.toEssImage
#align algebraic_geometry.AffineScheme.Spec AlgebraicGeometry.AffineScheme.Spec

-- Porting note : cannot automatically derive
instance Spec_full : Full Spec := Full.toEssImage _

-- Porting note : cannot automatically derive
instance Spec_faithful : Faithful Spec := Faithful.toEssImage _

-- Porting note : cannot automatically derive
instance Spec_essSurj : EssSurj Spec := EssSurj.toEssImage (F := _)

/-- The forgetful functor `AffineScheme ⥤ Scheme`. -/
@[simps!]
def forgetToScheme : AffineScheme ⥤ Scheme :=
  Scheme.Spec.essImageInclusion
#align algebraic_geometry.AffineScheme.forget_to_Scheme AlgebraicGeometry.AffineScheme.forgetToScheme

-- Porting note : cannot automatically derive
instance forgetToScheme_full : Full forgetToScheme :=
show Full (Scheme.Spec.essImageInclusion) from inferInstance

-- Porting note : cannot automatically derive
instance forgetToScheme_faithful : Faithful forgetToScheme :=
show Faithful (Scheme.Spec.essImageInclusion) from inferInstance

/-- The global section functor of an affine scheme. -/
def Γ : AffineSchemeᵒᵖ ⥤ CommRingCat :=
  forgetToScheme.op ⋙ Scheme.Γ
#align algebraic_geometry.AffineScheme.Γ AlgebraicGeometry.AffineScheme.Γ

/-- The category of affine schemes is equivalent to the category of commutative rings. -/
def equivCommRingCat : AffineScheme ≌ CommRingCatᵒᵖ :=
  equivEssImageOfReflective.symm
#align algebraic_geometry.AffineScheme.equiv_CommRing AlgebraicGeometry.AffineScheme.equivCommRingCat

instance ΓIsEquiv : IsEquivalence Γ.{u} :=
  haveI : IsEquivalence Γ.{u}.rightOp.op := IsEquivalence.ofEquivalence equivCommRingCat.op
  Functor.isEquivalenceTrans Γ.{u}.rightOp.op (opOpEquivalence _).functor
#align algebraic_geometry.AffineScheme.Γ_is_equiv AlgebraicGeometry.AffineScheme.ΓIsEquiv

instance hasColimits : HasColimits AffineScheme.{u} :=
  haveI := Adjunction.has_limits_of_equivalence.{u} Γ.{u}
  Adjunction.has_colimits_of_equivalence.{u} (opOpEquivalence AffineScheme.{u}).inverse

instance hasLimits : HasLimits AffineScheme.{u} := by
  haveI := Adjunction.has_colimits_of_equivalence Γ.{u}
  haveI : HasLimits AffineScheme.{u}ᵒᵖᵒᵖ := Limits.hasLimits_op_of_hasColimits
  exact Adjunction.has_limits_of_equivalence (opOpEquivalence AffineScheme.{u}).inverse

noncomputable instance Γ_preservesLimits : PreservesLimits Γ.{u}.rightOp :=
  @Adjunction.isEquivalencePreservesLimits _ _ _ _ Γ.rightOp
    (IsEquivalence.ofEquivalence equivCommRingCat)

noncomputable instance forgetToScheme_preservesLimits : PreservesLimits forgetToScheme := by
  apply (config := { allowSynthFailures := true })
    @preservesLimitsOfNatIso _ _ _ _ _ _
      (isoWhiskerRight equivCommRingCat.unitIso forgetToScheme).symm
  change PreservesLimits (equivCommRingCat.functor ⋙ Scheme.Spec)
  infer_instance

end AffineScheme

/-- An open subset of a scheme is affine if the open subscheme is affine. -/
def IsAffineOpen {X : Scheme} (U : Opens X) : Prop :=
  IsAffine (X.restrict U.openEmbedding)
#align algebraic_geometry.is_affine_open AlgebraicGeometry.IsAffineOpen

/-- The set of affine opens as a subset of `opens X`. -/
def Scheme.affineOpens (X : Scheme) : Set (Opens X) :=
  {U : Opens X | IsAffineOpen U}
#align algebraic_geometry.Scheme.affine_opens AlgebraicGeometry.Scheme.affineOpens

theorem rangeIsAffineOpenOfOpenImmersion {X Y : Scheme} [IsAffine X] (f : X ⟶ Y)
    [H : IsOpenImmersion f] : IsAffineOpen (Scheme.Hom.opensRange f) := by
  refine' isAffineOfIso (IsOpenImmersion.isoOfRangeEq f (Y.ofRestrict _) _).inv
  exact Subtype.range_val.symm
#align algebraic_geometry.range_is_affine_open_of_open_immersion AlgebraicGeometry.rangeIsAffineOpenOfOpenImmersion

theorem topIsAffineOpen (X : Scheme) [IsAffine X] : IsAffineOpen (⊤ : Opens X) := by
  convert rangeIsAffineOpenOfOpenImmersion (𝟙 X)
  ext1
  exact Set.range_id.symm
#align algebraic_geometry.top_is_affine_open AlgebraicGeometry.topIsAffineOpen

instance Scheme.affineCoverIsAffine (X : Scheme) (i : X.affineCover.J) :
    IsAffine (X.affineCover.obj i) :=
  AlgebraicGeometry.SpecIsAffine _
#align algebraic_geometry.Scheme.affine_cover_is_affine AlgebraicGeometry.Scheme.affineCoverIsAffine

instance Scheme.affineBasisCoverIsAffine (X : Scheme) (i : X.affineBasisCover.J) :
    IsAffine (X.affineBasisCover.obj i) :=
  AlgebraicGeometry.SpecIsAffine _
#align algebraic_geometry.Scheme.affine_basis_cover_is_affine AlgebraicGeometry.Scheme.affineBasisCoverIsAffine

theorem isBasis_affine_open (X : Scheme) : Opens.IsBasis X.affineOpens := by
  rw [Opens.isBasis_iff_nbhd]
  rintro U x (hU : x ∈ (U : Set X))
  obtain ⟨S, hS, hxS, hSU⟩ := X.affineBasisCover_is_basis.exists_subset_of_mem_open hU U.isOpen
  refine' ⟨⟨S, X.affineBasisCover_is_basis.isOpen hS⟩, _, hxS, hSU⟩
  rcases hS with ⟨i, rfl⟩
  exact rangeIsAffineOpenOfOpenImmersion _
#align algebraic_geometry.is_basis_affine_open AlgebraicGeometry.isBasis_affine_open

/-- The open immersion `Spec 𝒪ₓ(U) ⟶ X` for an affine `U`. -/
def IsAffineOpen.fromSpec {X : Scheme} {U : Opens X} (hU : IsAffineOpen U) :
    Scheme.Spec.obj (op <| X.presheaf.obj <| op U) ⟶ X := by
  haveI : IsAffine (X.restrict U.openEmbedding) := hU
  have : U.openEmbedding.isOpenMap.functor.obj ⊤ = U := by
    ext1; exact Set.image_univ.trans Subtype.range_coe
  exact
    Scheme.Spec.map (X.presheaf.map (eqToHom this.symm).op).op ≫
      (X.restrict U.openEmbedding).isoSpec.inv ≫ X.ofRestrict _
#align algebraic_geometry.is_affine_open.from_Spec AlgebraicGeometry.IsAffineOpen.fromSpec

instance IsAffineOpen.isOpenImmersion_fromSpec {X : Scheme} {U : Opens X}
    (hU : IsAffineOpen U) : IsOpenImmersion hU.fromSpec := by
  delta IsAffineOpen.fromSpec; dsimp
  -- Porting note : this was automatic
  repeat apply (config := { allowSynthFailures := true }) PresheafedSpace.IsOpenImmersion.comp
#align algebraic_geometry.is_affine_open.is_open_immersion_from_Spec AlgebraicGeometry.IsAffineOpen.isOpenImmersion_fromSpec

theorem IsAffineOpen.fromSpec_range {X : Scheme} {U : Opens X} (hU : IsAffineOpen U) :
    Set.range hU.fromSpec.1.base = (U : Set X) := by
  delta IsAffineOpen.fromSpec; dsimp
  erw [← Category.assoc]
  rw [coe_comp, Set.range_comp, Set.range_iff_surjective.mpr, Set.image_univ]
  exact Subtype.range_coe
  rw [← TopCat.epi_iff_surjective]
  infer_instance
#align algebraic_geometry.is_affine_open.from_Spec_range AlgebraicGeometry.IsAffineOpen.fromSpec_range

theorem IsAffineOpen.fromSpec_image_top {X : Scheme} {U : Opens X} (hU : IsAffineOpen U) :
    hU.isOpenImmersion_fromSpec.base_open.isOpenMap.functor.obj ⊤ = U := by
  ext1; exact Set.image_univ.trans hU.fromSpec_range
#align algebraic_geometry.is_affine_open.from_Spec_image_top AlgebraicGeometry.IsAffineOpen.fromSpec_image_top

theorem IsAffineOpen.isCompact {X : Scheme} {U : Opens X} (hU : IsAffineOpen U) :
    IsCompact (U : Set X) := by
  convert @IsCompact.image _ _ _ _ Set.univ hU.fromSpec.1.base PrimeSpectrum.compactSpace.1
    ((fromSpec hU).val.base.2) -- Porting note : `continuity` can't do this
  convert hU.fromSpec_range.symm
  exact Set.image_univ
#align algebraic_geometry.is_affine_open.is_compact AlgebraicGeometry.IsAffineOpen.isCompact

theorem IsAffineOpen.imageIsOpenImmersion {X Y : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X ⟶ Y) [H : IsOpenImmersion f] : IsAffineOpen (f.opensFunctor.obj U) := by
  haveI : IsAffine _ := hU
  have : IsOpenImmersion (X.ofRestrict U.openEmbedding ≫ f) := PresheafedSpace.IsOpenImmersion.comp
    (hf := IsOpenImmersion.ofRestrict _ _) (hg := H)
  convert rangeIsAffineOpenOfOpenImmersion (X.ofRestrict U.openEmbedding ≫ f)
  ext1
  exact Set.image_eq_range _ _
#align algebraic_geometry.is_affine_open.image_is_open_immersion AlgebraicGeometry.IsAffineOpen.imageIsOpenImmersion

theorem isAffineOpen_iff_of_isOpenImmersion {X Y : Scheme} (f : X ⟶ Y) [H : IsOpenImmersion f]
    (U : Opens X) : IsAffineOpen (H.openFunctor.obj U) ↔ IsAffineOpen U := by
  -- Porting note : add this instance explicitly
  have : IsOpenImmersion (X.ofRestrict U.openEmbedding ≫ f) :=
    PresheafedSpace.IsOpenImmersion.comp (hf := inferInstance) (hg := H)
  refine' ⟨fun hU => @isAffineOfIso _ _
    (IsOpenImmersion.isoOfRangeEq (X.ofRestrict U.openEmbedding ≫ f) (Y.ofRestrict _) _).hom ?_ hU,
    fun hU => hU.imageIsOpenImmersion f⟩
  · rw [Scheme.comp_val_base, coe_comp, Set.range_comp]
    dsimp [Opens.inclusion]
    rw [ContinuousMap.coe_mk, ContinuousMap.coe_mk, Subtype.range_coe, Subtype.range_coe]
    rfl
  · infer_instance
#align algebraic_geometry.is_affine_open_iff_of_is_open_immersion AlgebraicGeometry.isAffineOpen_iff_of_isOpenImmersion

instance Scheme.quasi_compact_of_affine (X : Scheme) [IsAffine X] : CompactSpace X :=
  ⟨(topIsAffineOpen X).isCompact⟩
#align algebraic_geometry.Scheme.quasi_compact_of_affine AlgebraicGeometry.Scheme.quasi_compact_of_affine

theorem IsAffineOpen.fromSpec_base_preimage {X : Scheme} {U : Opens X}
    (hU : IsAffineOpen U) : (Opens.map hU.fromSpec.val.base).obj U = ⊤ := by
  ext1
  change hU.fromSpec.1.base ⁻¹' (U : Set X) = Set.univ
  rw [← hU.fromSpec_range, ← Set.image_univ]
  exact Set.preimage_image_eq _ PresheafedSpace.IsOpenImmersion.base_open.inj
#align algebraic_geometry.is_affine_open.from_Spec_base_preimage AlgebraicGeometry.IsAffineOpen.fromSpec_base_preimage

theorem Scheme.Spec_map_presheaf_map_eqToHom {X : Scheme} {U V : Opens X} (h : U = V) (W) :
    (Scheme.Spec.map (X.presheaf.map (eqToHom h).op).op).val.c.app W =
      eqToHom (by cases h; induction W using Opposite.rec'; dsimp; simp) := by
  have : Scheme.Spec.map (X.presheaf.map (𝟙 (op U))).op = 𝟙 _ := by
    rw [X.presheaf.map_id, op_id, Scheme.Spec.map_id]
  cases h
  refine' (Scheme.congr_app this _).trans _
  erw [Category.id_comp]
  simp [eqToHom_map]
#align algebraic_geometry.Scheme.Spec_map_presheaf_map_eqToHom AlgebraicGeometry.Scheme.Spec_map_presheaf_map_eqToHom

-- Porting note : this compiles very slowly now
set_option maxHeartbeats 600000 in
theorem IsAffineOpen.SpecΓIdentity_hom_app_fromSpec {X : Scheme} {U : Opens X}
    (hU : IsAffineOpen U) :
    SpecΓIdentity.hom.app (X.presheaf.obj <| op U) ≫ hU.fromSpec.1.c.app (op U) =
      (Scheme.Spec.obj _).presheaf.map (eqToHom hU.fromSpec_base_preimage).op := by
  haveI : IsAffine _ := hU
  have e₁ := SpecΓIdentity.hom.naturality (X.presheaf.map (eqToHom U.openEmbedding_obj_top).op)
  rw [← IsIso.comp_inv_eq] at e₁
  have e₂ := ΓSpec.adjunction_unit_app_app_top (X.restrict U.openEmbedding)
  erw [← e₂] at e₁
  simp only [Functor.id_map, Quiver.Hom.unop_op, Functor.comp_map, ← Functor.map_inv, ← op_inv,
    LocallyRingedSpace.Γ_map, Category.assoc, Functor.rightOp_map, inv_eqToHom] at e₁
  delta IsAffineOpen.fromSpec Scheme.isoSpec
  rw [Scheme.comp_val_c_app, Scheme.comp_val_c_app, ← e₁]
  simp_rw [Category.assoc]
  erw [← X.presheaf.map_comp_assoc]
  rw [← op_comp]
  have e₃ :
    U.openEmbedding.isOpenMap.adjunction.counit.app U ≫ eqToHom U.openEmbedding_obj_top.symm =
      U.openEmbedding.isOpenMap.functor.map (eqToHom U.inclusion_map_eq_top) :=
    Subsingleton.elim _ _
  -- Porting note : `e₄` needs two more explicit inputs
  have e₄ := (asIso (ΓSpec.adjunction.unit.app
    (X.restrict U.openEmbedding))).inv.1.c.naturality_assoc
  dsimp at e₄
  replace e₄ := @e₄ (op ⊤) (op <| (Opens.map U.inclusion).obj U)
    (eqToHom U.inclusion_map_eq_top).op
  erw [e₃, e₄, ← Scheme.comp_val_c_app_assoc, IsIso.inv_hom_id]
  simp only [eqToHom_map, eqToHom_op, Scheme.Spec_map_presheaf_map_eqToHom, eqToHom_unop, unop_op]
  erw [Scheme.Spec_map_presheaf_map_eqToHom, Category.id_comp]
  simp only [eqToHom_trans]
#align algebraic_geometry.is_affine_open.Spec_Γ_identity_hom_app_from_Spec AlgebraicGeometry.IsAffineOpen.SpecΓIdentity_hom_app_fromSpec

@[elementwise]
theorem IsAffineOpen.fromSpec_app_eq {X : Scheme} {U : Opens X} (hU : IsAffineOpen U) :
    hU.fromSpec.1.c.app (op U) =
      SpecΓIdentity.inv.app (X.presheaf.obj <| op U) ≫
        (Scheme.Spec.obj _).presheaf.map (eqToHom hU.fromSpec_base_preimage).op :=
  by rw [← hU.SpecΓIdentity_hom_app_fromSpec, Iso.inv_hom_id_app_assoc]
#align algebraic_geometry.is_affine_open.from_Spec_app_eq AlgebraicGeometry.IsAffineOpen.fromSpec_app_eq

theorem IsAffineOpen.basicOpenIsAffine {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) : IsAffineOpen (X.basicOpen f) := by
  -- Porting note : this instance needs to be manually added, though no explicit argument is
  -- provided.
  have o1 : IsOpenImmersion <|
    Scheme.Spec.map
      (CommRingCat.ofHom (algebraMap ((X.presheaf.obj <| op U)) (Localization.Away f))).op ≫
    hU.fromSpec
  · exact PresheafedSpace.IsOpenImmersion.comp (hf := inferInstance) (hg := inferInstance)
  convert
    rangeIsAffineOpenOfOpenImmersion
      (Scheme.Spec.map
          (CommRingCat.ofHom (algebraMap (X.presheaf.obj (op U)) (Localization.Away f))).op ≫
        hU.fromSpec)
  ext1
  have :
    hU.fromSpec.val.base '' (hU.fromSpec.val.base ⁻¹' (X.basicOpen f : Set X)) =
      (X.basicOpen f : Set X) := by
    rw [Set.image_preimage_eq_inter_range, Set.inter_eq_left_iff_subset, hU.fromSpec_range]
    exact Scheme.basicOpen_le _ _
  rw [Scheme.Hom.opensRange_coe, Scheme.comp_val_base, ← this, coe_comp, Set.range_comp]
  -- Porting note : `congr 1` did not work
  apply congr_arg (_ '' ·)
  refine' (Opens.coe_inj.mpr <| Scheme.preimage_basicOpen hU.fromSpec f).trans _
  refine' Eq.trans _ (PrimeSpectrum.localization_away_comap_range (Localization.Away f) f).symm
  congr 1
  have : (Opens.map hU.fromSpec.val.base).obj U = ⊤ := by
    ext1
    change hU.fromSpec.1.base ⁻¹' (U : Set X) = Set.univ
    rw [← hU.fromSpec_range, ← Set.image_univ]
    exact Set.preimage_image_eq _ PresheafedSpace.IsOpenImmersion.base_open.inj
  refine' Eq.trans _ (Opens.coe_inj.mpr <| basicOpen_eq_of_affine f)
  have lm : ∀ s, (Opens.map hU.fromSpec.val.base).obj U ⊓ s = s := fun s => this.symm ▸ top_inf_eq
  refine' Opens.coe_inj.mpr <| Eq.trans _ (lm _)
  refine'
    Eq.trans _
      ((Scheme.Spec.obj <| op <| X.presheaf.obj <| op U).basicOpen_res _ (eqToHom this).op)
  -- Porting note : changed `rw` to `erw`
  erw [← comp_apply]
  congr 2
  rw [Iso.eq_inv_comp]
  erw [hU.SpecΓIdentity_hom_app_fromSpec]
#align algebraic_geometry.is_affine_open.basic_open_is_affine AlgebraicGeometry.IsAffineOpen.basicOpenIsAffine

theorem IsAffineOpen.mapRestrictBasicOpen {X : Scheme} (r : X.presheaf.obj (op ⊤))
    {U : Opens X} (hU : IsAffineOpen U) :
    IsAffineOpen ((Opens.map (X.ofRestrict (X.basicOpen r).openEmbedding).1.base).obj U) := by
  apply
    (isAffineOpen_iff_of_isOpenImmersion (X.ofRestrict (X.basicOpen r).openEmbedding) _).mp
  delta PresheafedSpace.IsOpenImmersion.openFunctor
  dsimp
  erw [Opens.functor_obj_map_obj, Opens.openEmbedding_obj_top, inf_comm, ←
    Scheme.basicOpen_res _ _ (homOfLE le_top).op]
  exact hU.basicOpenIsAffine _
#align algebraic_geometry.is_affine_open.map_restrict_basic_open AlgebraicGeometry.IsAffineOpen.mapRestrictBasicOpen

theorem Scheme.map_PrimeSpectrum_basicOpen_of_affine (X : Scheme) [IsAffine X]
    (f : Scheme.Γ.obj (op X)) :
    (Opens.map X.isoSpec.hom.1.base).obj (PrimeSpectrum.basicOpen f) = X.basicOpen f := by
  rw [← basicOpen_eq_of_affine]
  trans
    (Opens.map X.isoSpec.hom.1.base).obj
      ((Scheme.Spec.obj (op (Scheme.Γ.obj (op X)))).basicOpen
        ((inv (X.isoSpec.hom.1.c.app (op ((Opens.map (inv X.isoSpec.hom).val.base).obj ⊤))))
          ((X.presheaf.map (eqToHom <| by congr)) f)))
  · congr
    · rw [← IsIso.inv_eq_inv, IsIso.inv_inv, IsIso.Iso.inv_inv, NatIso.app_hom]
      -- Porting note : added this `change` to prevent timeout
      change SpecΓIdentity.hom.app (X.presheaf.obj <| op ⊤) = _
      rw [← ΓSpec.adjunction_unit_app_app_top X]
      rfl
    · rw [eqToHom_map]; rfl
  · dsimp; congr
    refine' (Scheme.preimage_basicOpen _ _).trans _
    -- Porting note : changed `rw` to `erw`
    erw [IsIso.inv_hom_id_apply, Scheme.basicOpen_res_eq]
#align algebraic_geometry.Scheme.map_prime_spectrum_basic_open_of_affine AlgebraicGeometry.Scheme.map_PrimeSpectrum_basicOpen_of_affine

theorem isBasis_basicOpen (X : Scheme) [IsAffine X] :
    Opens.IsBasis (Set.range (X.basicOpen : X.presheaf.obj (op ⊤) → Opens X)) := by
  delta Opens.IsBasis
  convert PrimeSpectrum.isBasis_basic_opens.inducing
    (TopCat.homeoOfIso (Scheme.forgetToTop.mapIso X.isoSpec)).inducing using 1
  ext
  simp only [Set.mem_image, exists_exists_eq_and]
  constructor
  · rintro ⟨_, ⟨x, rfl⟩, rfl⟩
    refine' ⟨_, ⟨_, ⟨x, rfl⟩, rfl⟩, _⟩
    exact congr_arg Opens.carrier (X.map_PrimeSpectrum_basicOpen_of_affine x)
  · rintro ⟨_, ⟨_, ⟨x, rfl⟩, rfl⟩, rfl⟩
    refine' ⟨_, ⟨x, rfl⟩, _⟩
    exact congr_arg Opens.carrier (X.map_PrimeSpectrum_basicOpen_of_affine x).symm
#align algebraic_geometry.is_basis_basic_open AlgebraicGeometry.isBasis_basicOpen

theorem IsAffineOpen.exists_basicOpen_le {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    {V : Opens X} (x : V) (h : ↑x ∈ U) :
    ∃ f : X.presheaf.obj (op U), X.basicOpen f ≤ V ∧ ↑x ∈ X.basicOpen f := by
  haveI : IsAffine _ := hU
  obtain ⟨_, ⟨_, ⟨r, rfl⟩, rfl⟩, h₁, h₂⟩ :=
    (isBasis_basicOpen (X.restrict U.openEmbedding)).exists_subset_of_mem_open (x.2 : ⟨x, h⟩ ∈ _)
      ((Opens.map U.inclusion).obj V).isOpen
  have :
    U.openEmbedding.isOpenMap.functor.obj ((X.restrict U.openEmbedding).basicOpen r) =
      X.basicOpen (X.presheaf.map (eqToHom U.openEmbedding_obj_top.symm).op r) := by
    refine' (Scheme.image_basicOpen (X.ofRestrict U.openEmbedding) r).trans _
    erw [← Scheme.basicOpen_res_eq _ _ (eqToHom U.openEmbedding_obj_top).op]
    rw [← comp_apply, ← CategoryTheory.Functor.map_comp, ← op_comp, eqToHom_trans, eqToHom_refl,
      op_id, CategoryTheory.Functor.map_id, Scheme.Hom.invApp]
    erw [PresheafedSpace.IsOpenImmersion.ofRestrict_invApp]
    congr
  use X.presheaf.map (eqToHom U.openEmbedding_obj_top.symm).op r
  rw [← this]
  exact ⟨Set.image_subset_iff.mpr h₂, ⟨_, h⟩, h₁, rfl⟩
#align algebraic_geometry.is_affine_open.exists_basic_open_le AlgebraicGeometry.IsAffineOpen.exists_basicOpen_le

instance algebra_section_section_basicOpen {X : Scheme} {U : Opens X} (f : X.presheaf.obj (op U)) :
    Algebra (X.presheaf.obj (op U)) (X.presheaf.obj (op <| X.basicOpen f)) :=
  (X.presheaf.map (homOfLE <| RingedSpace.basicOpen_le _ f : _ ⟶ U).op).toAlgebra

theorem IsAffineOpen.opens_map_fromSpec_basicOpen {X : Scheme} {U : Opens X}
    (hU : IsAffineOpen U) (f : X.presheaf.obj (op U)) :
    (Opens.map hU.fromSpec.val.base).obj (X.basicOpen f) =
      -- Porting note : need to supply first argument in ↓ explicitly
      RingedSpace.basicOpen (unop <| LocallyRingedSpace.forgetToSheafedSpace.op.obj <|
        Spec.toLocallyRingedSpace.rightOp.obj <| X.presheaf.obj <| op U)
      (SpecΓIdentity.inv.app (X.presheaf.obj <| op U) f) := by
  erw [LocallyRingedSpace.preimage_basicOpen]
  refine' Eq.trans _
    (RingedSpace.basicOpen_res_eq
      (Scheme.Spec.obj <| op <| X.presheaf.obj (op U)).toLocallyRingedSpace.toRingedSpace
      (eqToHom hU.fromSpec_base_preimage).op _)
  -- Porting note : `congr` does not work
  refine congr_arg (RingedSpace.basicOpen _ ·) ?_
  -- Porting note : change `rw` to `erw`
  erw [← comp_apply]
  congr
  erw [← hU.SpecΓIdentity_hom_app_fromSpec]
  rw [Iso.inv_hom_id_app_assoc]
#align algebraic_geometry.is_affine_open.opens_map_from_Spec_basic_open AlgebraicGeometry.IsAffineOpen.opens_map_fromSpec_basicOpen

/-- The canonical map `Γ(𝒪ₓ, D(f)) ⟶ Γ(Spec 𝒪ₓ(U), D(Spec_Γ_identity.inv f))`
This is an isomorphism, as witnessed by an `is_iso` instance. -/
def basicOpenSectionsToAffine {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) :
    X.presheaf.obj (op <| X.basicOpen f) ⟶
      (Scheme.Spec.obj <| op <| X.presheaf.obj (op U)).presheaf.obj
        (op <| Scheme.basicOpen _ <| SpecΓIdentity.inv.app (X.presheaf.obj (op U)) f) :=
  hU.fromSpec.1.c.app (op <| X.basicOpen f) ≫
    (Scheme.Spec.obj <| op <| X.presheaf.obj (op U)).presheaf.map
      (eqToHom <| (hU.opens_map_fromSpec_basicOpen f).symm).op
#align algebraic_geometry.basic_open_sections_to_affine AlgebraicGeometry.basicOpenSectionsToAffine

instance basicOpenSectionsToAffine_isIso {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) : IsIso (basicOpenSectionsToAffine hU f) := by
  delta basicOpenSectionsToAffine
  apply (config := { allowSynthFailures := true }) IsIso.comp_isIso
  · apply PresheafedSpace.IsOpenImmersion.isIso_of_subset
    rw [hU.fromSpec_range]
    exact RingedSpace.basicOpen_le _ _

set_option maxHeartbeats 310000 in
theorem isLocalization_basicOpen {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) : IsLocalization.Away f (X.presheaf.obj (op <| X.basicOpen f)) := by
  apply
    (IsLocalization.isLocalization_iff_of_ringEquiv (Submonoid.powers f)
        (asIso <|
            basicOpenSectionsToAffine hU f ≫
              (Scheme.Spec.obj _).presheaf.map
                (eqToHom (basicOpen_eq_of_affine _).symm).op).commRingCatIsoToRingEquiv).mpr
  convert StructureSheaf.IsLocalization.to_basicOpen _ f using 1
  -- Porting note : more hand holding is required here, the next 4 lines were not necessary
  delta StructureSheaf.openAlgebra
  congr 1
  rw [CommRingCat.ringHom_comp_eq_comp, Iso.commRingIsoToRingEquiv_toRingHom, asIso_hom]
  dsimp [CommRingCat.ofHom]
  change X.presheaf.map _ ≫ basicOpenSectionsToAffine hU f ≫ _ = _
  delta basicOpenSectionsToAffine
  simp only [Scheme.comp_val_c_app, Category.assoc]
  -- Porting note : `erw naturality_assoc` for some reason does not work, so changed to a version
  -- where `naturality` is used, the good thing is that `erw` is changed back to `rw`
  simp only [←Category.assoc]
  rw [hU.fromSpec.val.c.naturality, hU.fromSpec_app_eq]
  -- simp only [Category.assoc]
  -- rw [hU.fromSpec_app_eq]
  dsimp
  simp only [Category.assoc, ← Functor.map_comp, ← op_comp]
  apply StructureSheaf.toOpen_res
#align algebraic_geometry.is_localization_basic_open AlgebraicGeometry.isLocalization_basicOpen

instance isLocalization_away_of_isAffine {X : Scheme} [IsAffine X] (r : X.presheaf.obj (op ⊤)) :
    IsLocalization.Away r (X.presheaf.obj (op <| X.basicOpen r)) :=
  isLocalization_basicOpen (topIsAffineOpen X) r

theorem isLocalization_of_eq_basicOpen {X : Scheme} {U V : Opens X} (i : V ⟶ U)
    (hU : IsAffineOpen U) (r : X.presheaf.obj (op U)) (e : V = X.basicOpen r) :
    @IsLocalization.Away _ _ r (X.presheaf.obj (op V)) _ (X.presheaf.map i.op).toAlgebra := by
  subst e; convert isLocalization_basicOpen hU r using 3
#align algebraic_geometry.is_localization_of_eq_basic_open AlgebraicGeometry.isLocalization_of_eq_basicOpen

instance ΓRestrictAlgebra {X : Scheme} {Y : TopCat} {f : Y ⟶ X} (hf : OpenEmbedding f) :
    Algebra (Scheme.Γ.obj (op X)) (Scheme.Γ.obj (op <| X.restrict hf)) :=
  (Scheme.Γ.map (X.ofRestrict hf).op).toAlgebra
#align algebraic_geometry.Γ_restrict_algebra AlgebraicGeometry.ΓRestrictAlgebra

instance Γ_restrict_isLocalization (X : Scheme.{u}) [IsAffine X] (r : Scheme.Γ.obj (op X)) :
    IsLocalization.Away r (Scheme.Γ.obj (op <| X.restrict (X.basicOpen r).openEmbedding)) :=
  isLocalization_of_eq_basicOpen _ (topIsAffineOpen X) r (Opens.openEmbedding_obj_top _)
#align algebraic_geometry.Γ_restrict_is_localization AlgebraicGeometry.Γ_restrict_isLocalization

theorem basicOpen_basicOpen_is_basicOpen {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) (g : X.presheaf.obj (op <| X.basicOpen f)) :
    ∃ f' : X.presheaf.obj (op U), X.basicOpen f' = X.basicOpen g := by
  haveI := isLocalization_basicOpen hU f
  obtain ⟨x, ⟨_, n, rfl⟩, rfl⟩ := IsLocalization.surj'' (Submonoid.powers f) g
  use f * x
  rw [Algebra.smul_def, Scheme.basicOpen_mul, Scheme.basicOpen_mul]
  erw [Scheme.basicOpen_res]
  refine' (inf_eq_left.mpr _).symm
  -- Porting note : a little help is needed here
  convert inf_le_left (α := Opens X) using 1
  apply Scheme.basicOpen_of_isUnit
  apply
    Submonoid.leftInv_le_isUnit _
      (IsLocalization.toInvSubmonoid (Submonoid.powers f) (X.presheaf.obj (op <| X.basicOpen f))
        _).prop
#align algebraic_geometry.basic_open_basic_open_is_basic_open AlgebraicGeometry.basicOpen_basicOpen_is_basicOpen

theorem exists_basicOpen_le_affine_inter {X : Scheme} {U V : Opens X} (hU : IsAffineOpen U)
    (hV : IsAffineOpen V) (x : X) (hx : x ∈ U ⊓ V) :
    ∃ (f : X.presheaf.obj <| op U) (g : X.presheaf.obj <| op V),
      X.basicOpen f = X.basicOpen g ∧ x ∈ X.basicOpen f := by
  obtain ⟨f, hf₁, hf₂⟩ := hU.exists_basicOpen_le ⟨x, hx.2⟩ hx.1
  obtain ⟨g, hg₁, hg₂⟩ := hV.exists_basicOpen_le ⟨x, hf₂⟩ hx.2
  obtain ⟨f', hf'⟩ :=
    basicOpen_basicOpen_is_basicOpen hU f (X.presheaf.map (homOfLE hf₁ : _ ⟶ V).op g)
  replace hf' := (hf'.trans (RingedSpace.basicOpen_res _ _ _)).trans (inf_eq_right.mpr hg₁)
  exact ⟨f', g, hf', hf'.symm ▸ hg₂⟩
#align algebraic_geometry.exists_basic_open_le_affine_inter AlgebraicGeometry.exists_basicOpen_le_affine_inter

/-- The prime ideal of `𝒪ₓ(U)` corresponding to a point `x : U`. -/
noncomputable def IsAffineOpen.primeIdealOf {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (x : U) : PrimeSpectrum (X.presheaf.obj <| op U) :=
  (Scheme.Spec.map
          (X.presheaf.map
              (eqToHom <|
                  show U.openEmbedding.isOpenMap.functor.obj ⊤ = U from
                    Opens.ext (Set.image_univ.trans Subtype.range_coe)).op).op).1.base
    ((@Scheme.isoSpec (X.restrict U.openEmbedding) hU).hom.1.base x)
#align algebraic_geometry.is_affine_open.prime_ideal_of AlgebraicGeometry.IsAffineOpen.primeIdealOf

theorem IsAffineOpen.fromSpec_primeIdealOf {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (x : U) : hU.fromSpec.val.base (hU.primeIdealOf x) = x.1 := by
  dsimp only [IsAffineOpen.fromSpec, Subtype.coe_mk]
  -- Porting note : in the porting note of `Scheme.comp_val_base`, it says that `elementwise` is
  -- unnecessary, indeed, the linter did not like it, so I just use `elementwise_of%` instead of
  -- adding the corresponding lemma in `Scheme.lean` file
  erw [← elementwise_of% Scheme.comp_val_base, ← elementwise_of% Scheme.comp_val_base]
  simp only [← Functor.map_comp_assoc, ← Functor.map_comp, ← op_comp, eqToHom_trans, op_id,
    eqToHom_refl, CategoryTheory.Functor.map_id, Category.id_comp, Iso.hom_inv_id_assoc]
  -- Porting note : `simpa` did not like this rfl
  rfl
#align algebraic_geometry.is_affine_open.from_Spec_prime_ideal_of AlgebraicGeometry.IsAffineOpen.fromSpec_primeIdealOf

-- Porting note : the original proof does not compile under 0 `heartbeat`, so partially rewritten
-- but after the rewrite, I still can't get it compile under `200000`
set_option maxHeartbeats 640000 in
theorem IsAffineOpen.isLocalization_stalk_aux {X : Scheme} (U : Opens X)
    [IsAffine (X.restrict U.openEmbedding)] :
    (inv (ΓSpec.adjunction.unit.app (X.restrict U.openEmbedding))).1.c.app
        (op ((Opens.map U.inclusion).obj U)) =
    X.presheaf.map (op <| eqToHom <| by rw [Opens.inclusion_map_eq_top]; rfl) ≫
      toSpecΓ (X.presheaf.obj <| op (U.openEmbedding.isOpenMap.functor.obj ⊤)) ≫
      (Scheme.Spec.obj <| op <| X.presheaf.obj _).presheaf.map
        (op <| eqToHom <| by rw [Opens.inclusion_map_eq_top]; rfl) := by
  have e :
    (Opens.map (inv (ΓSpec.adjunction.unit.app (X.restrict U.openEmbedding))).1.base).obj
        ((Opens.map U.inclusion).obj U) =
      ⊤ :=
    by rw [Opens.inclusion_map_eq_top]; rfl
  rw [Scheme.inv_val_c_app, IsIso.comp_inv_eq, Scheme.app_eq _ e,
    ΓSpec.adjunction_unit_app_app_top]
  simp only [Category.assoc, eqToHom_op, eqToHom_map]
  erw [Scheme.presheaf_map_eqToHom_op, Scheme.presheaf_map_eqToHom_op]
  simp only [eqToHom_trans_assoc, eqToHom_refl, Category.id_comp]
  erw [SpecΓIdentity.inv_hom_id_app_assoc]
  rw [eqToHom_trans]
#align algebraic_geometry.is_affine_open.is_localization_stalk_aux AlgebraicGeometry.IsAffineOpen.isLocalization_stalk_aux

set_option maxHeartbeats 3200000 in
theorem IsAffineOpen.isLocalization_stalk_aux' {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (y : PrimeSpectrum (X.presheaf.obj <| op U)) (hy : hU.fromSpec.1.base y ∈ U) :
    hU.fromSpec.val.c.app (op U) ≫ (Scheme.Spec.obj <| op (X.presheaf.obj <| op U)).presheaf.germ
      (U := (Opens.map hU.fromSpec.val.base).obj U) ⟨y, hy⟩ =
    StructureSheaf.toStalk (X.presheaf.obj <| op U) y := by
  haveI : IsAffine _ := hU
  delta IsAffineOpen.fromSpec Scheme.isoSpec StructureSheaf.toStalk
  simp only [Scheme.comp_val_c_app, Category.assoc]
  dsimp only [Functor.op, asIso_inv, unop_op]
  erw [IsAffineOpen.isLocalization_stalk_aux]
  simp only [Category.assoc]
  conv_lhs => rw [← Category.assoc]
  erw [← X.presheaf.map_comp, Spec_Γ_naturality_assoc]
  congr 1
  simp only [← Category.assoc]
  convert
    (Spec.structureSheaf (X.presheaf.obj <| op U)).presheaf.germ_res
      (U := (Opens.map hU.fromSpec.val.base).obj U) (homOfLE le_top) ⟨y, hy⟩ using 2
  rw [Category.assoc]
  erw [NatTrans.naturality]
  rw [← LocallyRingedSpace.Γ_map_op, ← LocallyRingedSpace.Γ.map_comp_assoc, ← op_comp]
  erw [← Scheme.Spec.map_comp]
  rw [← op_comp, ← X.presheaf.map_comp]
  convert_to LocallyRingedSpace.Γ.map
    (Quiver.Hom.op <| Scheme.Spec.map (X.presheaf.map (𝟙 (op U))).op) ≫ _ = _
  simp only [CategoryTheory.Functor.map_id, op_id]
  erw [CategoryTheory.Functor.map_id]
  rw [Category.id_comp]
  rfl

set_option maxHeartbeats 800000 in
theorem IsAffineOpen.isLocalization_stalk' {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (y : PrimeSpectrum (X.presheaf.obj <| op U)) (hy : hU.fromSpec.1.base y ∈ U) :
  haveI : IsAffine _ := hU
  -- haveI : Nonempty U := ⟨hU.fromSpec.1.base y⟩
  @IsLocalization.AtPrime
    (R := X.presheaf.obj <| op U)
    (S := X.presheaf.stalk <| hU.fromSpec.1.base y) _ _
    ((TopCat.Presheaf.algebra_section_stalk X.presheaf _)) y.asIdeal _ := by
  apply
    (@IsLocalization.isLocalization_iff_of_ringEquiv (R := X.presheaf.obj <| op U)
      (S := X.presheaf.stalk (hU.fromSpec.1.base y)) _ y.asIdeal.primeCompl _
      (TopCat.Presheaf.algebra_section_stalk X.presheaf ⟨hU.fromSpec.1.base y, hy⟩) _ _
      (asIso <| PresheafedSpace.stalkMap hU.fromSpec.1 y).commRingCatIsoToRingEquiv).mpr
  -- Porting note : need to know what the ring is and after convert, instead of equality
  -- we get an `iff`.
  convert StructureSheaf.IsLocalization.to_stalk (X.presheaf.obj <| op U) y using 1
  delta IsLocalization.AtPrime StructureSheaf.stalkAlgebra
  rw [iff_iff_eq]
  congr 2
  rw [RingHom.algebraMap_toAlgebra]
  refine' (PresheafedSpace.stalkMap_germ hU.fromSpec.1 _ ⟨_, hy⟩).trans _
  apply hU.isLocalization_stalk_aux' y hy

-- Porting note : I have splitted this into two lemmas
theorem IsAffineOpen.isLocalization_stalk {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (x : U) : IsLocalization.AtPrime (X.presheaf.stalk x) (hU.primeIdealOf x).asIdeal := by
  rcases x with ⟨x, hx⟩
  let y := hU.primeIdealOf ⟨x, hx⟩
  have : hU.fromSpec.val.base y = x := hU.fromSpec_primeIdealOf ⟨x, hx⟩
  -- Porting note : this is painful now, need to provide explicit instance
  change @IsLocalization (M := y.asIdeal.primeCompl) (S := X.presheaf.stalk x) _ _
    (TopCat.Presheaf.algebra_section_stalk X.presheaf ⟨x, hx⟩)
  clear_value y
  subst this
  convert hU.isLocalization_stalk' y hx
#align algebraic_geometry.is_affine_open.is_localization_stalk AlgebraicGeometry.IsAffineOpen.isLocalization_stalk

/-- The basic open set of a section `f` on an affine open as an `X.affineOpens`. -/
@[simps]
def Scheme.affineBasicOpen (X : Scheme) {U : X.affineOpens} (f : X.presheaf.obj <| op U) :
    X.affineOpens :=
  ⟨X.basicOpen f, U.prop.basicOpenIsAffine f⟩
#align algebraic_geometry.Scheme.affine_basic_open AlgebraicGeometry.Scheme.affineBasicOpen

-- Porting note : linter complains that LHS is not in simp-normal-form. However, the error provided
-- by linter seems to tell me that left hand side should be changed in to something exactly the same
-- as before. I am not sure if this is caused by LHS being written with all explicit argument,
-- I am not sure if this is intentional or not.
@[simp, nolint simpNF]
theorem IsAffineOpen.basicOpen_fromSpec_app {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) :
    @Scheme.basicOpen (Scheme.Spec.obj <| op (X.presheaf.obj <| op U))
        ((Opens.map hU.fromSpec.1.base).obj U) (hU.fromSpec.1.c.app (op U) f) =
      PrimeSpectrum.basicOpen f := by
  rw [← Scheme.basicOpen_res_eq _ _ (eqToHom hU.fromSpec_base_preimage.symm).op,
    basicOpen_eq_of_affine', IsAffineOpen.fromSpec_app_eq]
  congr
  -- Porting note : change `rw` to `erw`
  erw [← comp_apply, ← comp_apply]
  rw [Category.assoc, ← Functor.map_comp (self := (Scheme.Spec.obj <|
    op (X.presheaf.obj <| op U)).presheaf), eqToHom_op,
    eqToHom_op, eqToHom_trans, eqToHom_refl, CategoryTheory.Functor.map_id]
  -- Porting note : change `rw` to `erw`
  erw [Category.comp_id]
  rw [← Iso.app_inv, Iso.inv_hom_id]
  rfl
#align algebraic_geometry.is_affine_open.basic_open_from_Spec_app AlgebraicGeometry.IsAffineOpen.basicOpen_fromSpec_app

theorem IsAffineOpen.fromSpec_map_basicOpen {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) :
    (Opens.map hU.fromSpec.val.base).obj (X.basicOpen f) = PrimeSpectrum.basicOpen f := by
  simp only [IsAffineOpen.basicOpen_fromSpec_app, Scheme.preimage_basicOpen, eq_self_iff_true]
#align algebraic_geometry.is_affine_open.from_Spec_map_basic_open AlgebraicGeometry.IsAffineOpen.fromSpec_map_basicOpen

theorem IsAffineOpen.basicOpen_union_eq_self_iff {X : Scheme} {U : Opens X}
    (hU : IsAffineOpen U) (s : Set (X.presheaf.obj <| op U)) :
    ⨆ f : s, X.basicOpen (f : X.presheaf.obj <| op U) = U ↔ Ideal.span s = ⊤ := by
  trans ⋃ i : s, (PrimeSpectrum.basicOpen i.1).1 = Set.univ
  trans
    hU.fromSpec.1.base ⁻¹' (⨆ f : s, X.basicOpen (f : X.presheaf.obj <| op U)).1 =
      hU.fromSpec.1.base ⁻¹' U.1
  · refine' ⟨fun h => by rw [h], _⟩
    intro h
    apply_fun Set.image hU.fromSpec.1.base at h
    rw [Set.image_preimage_eq_inter_range, Set.image_preimage_eq_inter_range, hU.fromSpec_range]
      at h
    simp only [Set.inter_self, Opens.carrier_eq_coe, Set.inter_eq_right_iff_subset] at h
    ext1
    refine' Set.Subset.antisymm _ h
    simp only [Set.iUnion_subset_iff, SetCoe.forall, Opens.coe_iSup]
    intro x _
    exact X.basicOpen_le x
  · simp only [Opens.iSup_def, Subtype.coe_mk, Set.preimage_iUnion]
    -- Porting note : need an extra rewrite here, after simp, it is in `↔` form
    rw [iff_iff_eq]
    congr 3
    · refine congr_arg (Set.iUnion ·) ?_
      ext1 x
      exact congr_arg Opens.carrier (hU.fromSpec_map_basicOpen _)
    · exact congr_arg Opens.carrier hU.fromSpec_base_preimage
  · simp only [Opens.carrier_eq_coe, PrimeSpectrum.basicOpen_eq_zeroLocus_compl]
    rw [← Set.compl_iInter, Set.compl_univ_iff, ← PrimeSpectrum.zeroLocus_iUnion, ←
      PrimeSpectrum.zeroLocus_empty_iff_eq_top, PrimeSpectrum.zeroLocus_span]
    simp only [Set.iUnion_singleton_eq_range, Subtype.range_val_subtype, Set.setOf_mem_eq]
#align algebraic_geometry.is_affine_open.basic_open_union_eq_self_iff AlgebraicGeometry.IsAffineOpen.basicOpen_union_eq_self_iff

theorem IsAffineOpen.self_le_basicOpen_union_iff {X : Scheme} {U : Opens X}
    (hU : IsAffineOpen U) (s : Set (X.presheaf.obj <| op U)) :
    (U ≤ ⨆ f : s, X.basicOpen (f : X.presheaf.obj <| op U)) ↔ Ideal.span s = ⊤ := by
  rw [← hU.basicOpen_union_eq_self_iff, @comm _ Eq]
  refine' ⟨fun h => le_antisymm h _, le_of_eq⟩
  simp only [iSup_le_iff, SetCoe.forall]
  intro x _
  exact X.basicOpen_le x
#align algebraic_geometry.is_affine_open.self_le_basic_open_union_iff AlgebraicGeometry.IsAffineOpen.self_le_basicOpen_union_iff

/-- Let `P` be a predicate on the affine open sets of `X` satisfying
1. If `P` holds on `U`, then `P` holds on the basic open set of every section on `U`.
2. If `P` holds for a family of basic open sets covering `U`, then `P` holds for `U`.
3. There exists an affine open cover of `X` each satisfying `P`.

Then `P` holds for every affine open of `X`.

This is also known as the **Affine communication lemma** in [*The rising sea*][RisingSea]. -/
@[elab_as_elim]
theorem of_affine_open_cover {X : Scheme} (V : X.affineOpens) (S : Set X.affineOpens)
    {P : X.affineOpens → Prop}
    (hP₁ : ∀ (U : X.affineOpens) (f : X.presheaf.obj <| op U.1), P U → P (X.affineBasicOpen f))
    (hP₂ :
      ∀ (U : X.affineOpens) (s : Finset (X.presheaf.obj <| op U))
        (_ : Ideal.span (s : Set (X.presheaf.obj <| op U)) = ⊤),
        (∀ f : s, P (X.affineBasicOpen f.1)) → P U)
    (hS : (⋃ i : S, i : Set X) = Set.univ) (hS' : ∀ U : S, P U) : P V := by
  classical
  have : ∀ (x : V.1), ∃ f : X.presheaf.obj <| op V.1,
      ↑x ∈ X.basicOpen f ∧ P (X.affineBasicOpen f) := by
    intro x
    have : ↑x ∈ (Set.univ : Set X) := trivial
    rw [← hS] at this
    obtain ⟨W, hW⟩ := Set.mem_iUnion.mp this
    obtain ⟨f, g, e, hf⟩ := exists_basicOpen_le_affine_inter V.prop W.1.prop x ⟨x.prop, hW⟩
    refine' ⟨f, hf, _⟩
    convert hP₁ _ g (hS' W) using 1
    ext1
    exact e
  choose f hf₁ hf₂ using this
  suffices Ideal.span (Set.range f) = ⊤ by
    obtain ⟨t, ht₁, ht₂⟩ := (Ideal.span_eq_top_iff_finite _).mp this
    apply hP₂ V t ht₂
    rintro ⟨i, hi⟩
    obtain ⟨x, rfl⟩ := ht₁ hi
    exact hf₂ x
  rw [← V.prop.self_le_basicOpen_union_iff]
  intro x hx
  rw [iSup_range', SetLike.mem_coe, Opens.mem_iSup]
  exact ⟨_, hf₁ ⟨x, hx⟩⟩
#align algebraic_geometry.of_affine_open_cover AlgebraicGeometry.of_affine_open_cover

end AlgebraicGeometry
