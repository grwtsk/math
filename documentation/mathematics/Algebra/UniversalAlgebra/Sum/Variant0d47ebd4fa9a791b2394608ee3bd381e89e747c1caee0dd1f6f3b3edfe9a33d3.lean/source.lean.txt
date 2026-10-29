-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.OneLeElimIff.Variant2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.OneLeElimIff.Variant2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Sum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Martin Dvorak. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Martin Dvorak
-/
import Mathlib.Algebra.Notation.Pi
import Mathlib.Order.Basic

/-!
# Interaction between `Sum.elim`, `≤`, and `0` or `1`

This file provides basic API for part-wise comparison of `Sum.elim` vectors against `0` or `1`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.OneLeElimIff.Variant2236daf98fd51ed412b50691ceb75afe83a65907988325bb020eb106cda8f255

namespace Sum

variable {α₁ α₂ β : Type*} [LE β] [One β] {v₁ : α₁ → β} {v₂ : α₂ → β}

@[to_additive]
lemma one_le_elim_iff : 1 ≤ Sum.elim v₁ v₂ ↔ 1 ≤ v₁ ∧ 1 ≤ v₂ :=
  const_le_elim_iff

@[to_additive]
lemma elim_le_one_iff : Sum.elim v₁ v₂ ≤ 1 ↔ v₁ ≤ 1 ∧ v₂ ≤ 1 :=
  elim_le_const_iff

end Sum
