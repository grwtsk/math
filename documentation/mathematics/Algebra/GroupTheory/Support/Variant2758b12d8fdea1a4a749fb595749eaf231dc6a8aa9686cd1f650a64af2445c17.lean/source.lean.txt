-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Supports.Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Supports.Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f","mathematical_subject":"Algebra.Groups","original_sha256":"306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/GroupAction/Support.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Basic
import Mathlib.Algebra.Group.Pointwise.Set.Scalar

/-!
# Support of an element under an action action

Given an action of a group `G` on a type `α`, we say that a set `s : Set α` supports an element
`a : α` if, for all `g` that fix `s` pointwise, `g` fixes `a`.

This is crucial in Fourier-Motzkin constructions.
-/


namespace GRWTSK.Algebra.GroupTheory.Supports.Variant306573eff68cb12f92bed9610c1f06461898ccefb67ee9f6e1ad0ead66d9072f

assert_not_exists MonoidWithZero

open Pointwise

variable {G H α β : Type*}

namespace MulAction

section SMul

variable (G) [SMul G α] [SMul G β]

/-- A set `s` supports `b` if `g • b = b` whenever `g • a = a` for all `a ∈ s`. -/
@[to_additive "A set `s` supports `b` if `g +ᵥ b = b` whenever `g +ᵥ a = a` for all `a ∈ s`."]
def Supports (s : Set α) (b : β) :=
  ∀ g : G, (∀ ⦃a⦄, a ∈ s → g • a = a) → g • b = b

variable {s t : Set α} {a : α} {b : β}

@[to_additive]
theorem supports_of_mem (ha : a ∈ s) : Supports G s a := fun _ h => h ha

variable {G}

@[to_additive]
theorem Supports.mono (h : s ⊆ t) (hs : Supports G s b) : Supports G t b := fun _ hg =>
  (hs _) fun _ ha => hg <| h ha

end SMul

variable [Group H] [SMul G α] [SMul G β] [MulAction H α] [SMul H β] [SMulCommClass G H β]
  [SMulCommClass G H α] {s : Set α} {b : β}

-- TODO: This should work without `SMulCommClass`
@[to_additive]
theorem Supports.smul (g : H) (h : Supports G s b) : Supports G (g • s) (g • b) := by
  rintro g' hg'
  rw [smul_comm, h]
  rintro a ha
  have := Set.forall_mem_image.1 hg' ha
  rwa [smul_comm, smul_left_cancel_iff] at this

end MulAction
