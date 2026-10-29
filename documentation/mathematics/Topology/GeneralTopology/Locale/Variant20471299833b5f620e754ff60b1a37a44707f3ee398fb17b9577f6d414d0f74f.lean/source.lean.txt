-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Locale.Variant438e269b8dffb1d3fb572bb316437af9ea4c0763c6b82d2bb5d5121232419ac1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"438e269b8dffb1d3fb572bb316437af9ea4c0763c6b82d2bb5d5121232419ac1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Locale.Variant438e269b8dffb1d3fb572bb316437af9ea4c0763c6b82d2bb5d5121232419ac1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"438e269b8dffb1d3fb572bb316437af9ea4c0763c6b82d2bb5d5121232419ac1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/Locale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.Frm
import Mathlib.Topology.Category.CompHaus.Frm

/-!
# The category of locales

This file defines `Locale`, the category of locales. This is the opposite of the category of frames.
-/



namespace GRWTSK.Topology.GeneralTopology.Locale.Variant438e269b8dffb1d3fb572bb316437af9ea4c0763c6b82d2bb5d5121232419ac1

universe u

open CategoryTheory Opposite Order TopologicalSpace


/-- The category of locales. -/
def Locale :=
  Frmᵒᵖ deriving LargeCategory

namespace Locale

instance : CoeSort Locale Type* :=
  ⟨fun X => X.unop⟩

instance (X : Locale) : Frame X :=
  X.unop.str

/-- Construct a bundled `Locale` from a `Frame`. -/
def of (α : Type*) [Frame α] : Locale :=
  op <| Frm.of α

@[simp]
theorem coe_of (α : Type*) [Frame α] : ↥(of α) = α :=
  rfl

instance : Inhabited Locale :=
  ⟨of PUnit⟩

end Locale

/-- The forgetful functor from `Top` to `Locale` which forgets that the space has "enough points".
-/
@[simps!]
def topToLocale : TopCat ⥤ Locale :=
  topCatOpToFrm.rightOp

-- Note, `CompHaus` is too strong. We only need `T0Space`.
instance CompHausToLocale.faithful : (compHausToTop ⋙ topToLocale.{u}).Faithful :=
  ⟨fun h => by
    dsimp at h
    exact ConcreteCategory.ext (Opens.comap_injective (congr_arg Frm.Hom.hom
      (Quiver.Hom.op_inj h)))⟩
