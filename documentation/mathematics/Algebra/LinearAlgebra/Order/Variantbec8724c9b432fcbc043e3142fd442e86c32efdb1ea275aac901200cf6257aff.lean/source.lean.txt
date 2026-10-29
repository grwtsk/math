-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Submodule.Variant453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Submodule.Variant453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/Submodule/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Module.Submodule.Defs
import Mathlib.Algebra.Order.Monoid.Basic

/-!
# Ordered instances on submodules
-/


namespace GRWTSK.Algebra.LinearAlgebra.Submodule.Variant453b80cf259a6e8a514dc4938eba182d571bb5867be65b7e5d9cf67f533cdc7c

namespace Submodule
variable {R M : Type*}

section OrderedMonoid
variable [Semiring R]

/-- A submodule of an ordered additive monoid is an ordered additive monoid. -/
instance toIsOrderedAddMonoid [AddCommMonoid M] [PartialOrder M] [IsOrderedAddMonoid M]
    [Module R M] (S : Submodule R M) :
    IsOrderedAddMonoid S :=
  Subtype.coe_injective.isOrderedAddMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

/-- A submodule of an ordered cancellative additive monoid is an ordered cancellative additive
monoid. -/
instance toIsOrderedCancelAddMonoid [AddCommMonoid M] [PartialOrder M]
    [IsOrderedCancelAddMonoid M] [Module R M] (S : Submodule R M) :
    IsOrderedCancelAddMonoid S :=
  Subtype.coe_injective.isOrderedCancelAddMonoid Subtype.val rfl (fun _ _ => rfl) fun _ _ => rfl

end OrderedMonoid

end Submodule
