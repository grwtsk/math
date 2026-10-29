-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsLocalizationEpi.Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsLocalizationEpi.Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"cea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Ring/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.Category.Ring.Basic
import Mathlib.RingTheory.Localization.Away.Basic
import Mathlib.RingTheory.LocalRing.RingHom.Basic

/-!
# Ring-theoretic results in terms of categorical languages
-/


namespace GRWTSK.Algebra.IsLocalizationEpi.Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4

universe u

open CategoryTheory

instance localization_unit_isIso (R : CommRingCat) :
    IsIso (CommRingCat.ofHom <| algebraMap R (Localization.Away (1 : R))) :=
  Iso.isIso_hom (IsLocalization.atOne R (Localization.Away (1 : R))).toRingEquiv.toCommRingCatIso

instance localization_unit_isIso' (R : CommRingCat) :
    @IsIso CommRingCat _ R _ (CommRingCat.ofHom <| algebraMap R (Localization.Away (1 : R))) := by
  cases R
  exact localization_unit_isIso _

theorem IsLocalization.epi {R : Type*} [CommRing R] (M : Submonoid R) (S : Type _) [CommRing S]
    [Algebra R S] [IsLocalization M S] : Epi (CommRingCat.ofHom <| algebraMap R S) :=
  ⟨fun {T} _ _ h => CommRingCat.hom_ext <|
    @IsLocalization.ringHom_ext R _ M S _ _ T _ _ _ _ (congrArg CommRingCat.Hom.hom h)⟩

instance Localization.epi {R : Type*} [CommRing R] (M : Submonoid R) :
    Epi (CommRingCat.ofHom <| algebraMap R <| Localization M) :=
  IsLocalization.epi M _

instance Localization.epi' {R : CommRingCat} (M : Submonoid R) :
    @Epi CommRingCat _ R _ (CommRingCat.ofHom <| algebraMap R <| Localization M :) := by
  rcases R with ⟨α, str⟩
  exact IsLocalization.epi M _

@[instance]
theorem CommRingCat.isLocalHom_comp {R S T : CommRingCat} (f : R ⟶ S) (g : S ⟶ T)
    [IsLocalHom g.hom] [IsLocalHom f.hom] : IsLocalHom (f ≫ g).hom :=
  RingHom.isLocalHom_comp _ _

theorem isLocalHom_of_iso {R S : CommRingCat} (f : R ≅ S) : IsLocalHom f.hom.hom :=
  { map_nonunit := fun a ha => by
      convert f.inv.hom.isUnit_map ha
      simp }

-- see Note [lower instance priority]
@[instance 100]
theorem isLocalHom_of_isIso {R S : CommRingCat} (f : R ⟶ S) [IsIso f] :
    IsLocalHom f.hom :=
  isLocalHom_of_iso (asIso f)
