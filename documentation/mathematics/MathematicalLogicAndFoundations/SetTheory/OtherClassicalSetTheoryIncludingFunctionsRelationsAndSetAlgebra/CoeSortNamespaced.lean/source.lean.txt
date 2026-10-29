-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Variantb7e66286b782b1775c67e0c31f3c680d293f7426d426674d52231e84c0860f11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7e66286b782b1775c67e0c31f3c680d293f7426d426674d52231e84c0860f11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Set.Variantb7e66286b782b1775c67e0c31f3c680d293f7426d426674d52231e84c0860f11","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b7e66286b782b1775c67e0c31f3c680d293f7426d426674d52231e84c0860f11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/CoeSort.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Johannes Hölzl, Reid Barton, Kim Morrison, Patrick Massot, Kyle Miller,
Minchao Wu, Yury Kudryashov, Floris van Doorn
-/
import Mathlib.Data.Set.Defs

/-!
# Coercing sets to types.

This file defines `Set.Elem s` as the type of all elements of the set `s`.
More advanced theorems about these definitions are located in other files in `Mathlib/Data/Set`.

## Main definitions

- `Set.Elem`: coercion of a set to a type; it is reducibly equal to `{x // x ∈ s}`;
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Set.Variantb7e66286b782b1775c67e0c31f3c680d293f7426d426674d52231e84c0860f11

namespace Set

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w}

/-- Given the set `s`, `Elem s` is the `Type` of element of `s`.

It is currently an abbreviation so that instance coming from `Subtype` are available.
If you're interested in making it a `def`, as it probably should be,
you'll then need to create additional instances (and possibly prove lemmas about them).
See e.g. `Mathlib/Data/Set/Order.lean`.
-/
@[coe, reducible] def Elem (s : Set α) : Type u := {x // x ∈ s}

/-- Coercion from a set to the corresponding subtype. -/
instance : CoeSort (Set α) (Type u) := ⟨Elem⟩

@[simp] theorem elem_mem {σ α} [I : Membership σ α] {S} :
    @Set.Elem σ (@Membership.mem σ α I S) = { x // x ∈ S } := rfl

end Set
