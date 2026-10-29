-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variant058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CoeSmul.Variant058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Action/Flag.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Pointwise.Set.Basic
import Mathlib.Algebra.Order.Group.Action.End
import Mathlib.Order.Preorder.Chain

/-!
# Action on flags

Order isomorphisms act on flags.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CoeSmul.Variant058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd

open scoped Pointwise

variable {α : Type*}

namespace Flag
variable [Preorder α]

instance : SMul (α ≃o α) (Flag α) where smul e := map e

@[simp, norm_cast]
lemma coe_smul (e : α ≃o α) (s : Flag α) : (↑(e • s) : Set α) = e • s := rfl

instance : MulAction (α ≃o α) (Flag α) := SetLike.coe_injective.mulAction _ coe_smul

end Flag
