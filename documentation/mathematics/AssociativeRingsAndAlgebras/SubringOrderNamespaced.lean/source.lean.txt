-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.OrderedSubtype.Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.OrderedSubtype.Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"dfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Subring/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Order.Hom.Ring
import Mathlib.Algebra.Order.Ring.InjSurj
import Mathlib.Algebra.Ring.Subring.Defs

/-!

# Subrings of ordered rings

We study subrings of ordered rings and prove their basic properties.

## Main definitions and results
* `Subring.orderedSubtype`: the inclusion `S → R` of a subring as an ordered ring homomorphism
* various ordered instances: a subring of an `OrderedRing`, `OrderedCommRing`, `LinearOrderedRing`,
  `toLinearOrderedCommRing` is again an ordering ring

-/


namespace GRWTSK.Algebra.UniversalAlgebra.OrderedSubtype.Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712

namespace Subring

variable {R : Type*}

/-- A subring of an ordered ring is an ordered ring. -/
instance toIsOrderedRing [Ring R] [PartialOrder R] [IsOrderedRing R] (s : Subring R) :
    IsOrderedRing s :=
  Subtype.coe_injective.isOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

/-- A subring of a strict ordered ring is a strict ordered ring. -/
instance toIsStrictOrderedRing [Ring R] [PartialOrder R] [IsStrictOrderedRing R]
    (s : Subring R) : IsStrictOrderedRing s :=
  Subtype.coe_injective.isStrictOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

/-- The inclusion `S → R` of a subring, as an ordered ring homomorphism. -/
def orderedSubtype {R : Type*} [Ring R] [PartialOrder R] (s : Subring R) :
    s →+*o R where
  __ := s.subtype
  monotone' := fun _ _ h ↦ h

variable {R : Type*} [Ring R] [PartialOrder R]

lemma orderedSubtype_coe (s : Subring R) : Subring.orderedSubtype s = Subring.subtype s := rfl

end Subring
