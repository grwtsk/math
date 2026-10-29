-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TypeTags.Variant0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TypeTags.Variant0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/TypeTags/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.TypeTags.Basic
public import Mathlib.Basic.Finite.Defs
public import Mathlib.Data.Fintype.Card

/-!
# `Finite`, `Infinite` and `Fintype` are preserved by `Additive` and `Multiplicative`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TypeTags.Variant0929a115e5dd395dd2906ca5cee582f5ff924bc18c0e32c5186d9a5b01667eef

public section

assert_not_exists MonoidWithZero MulAction

universe u

variable {α : Type u}

instance [Finite α] : Finite (Additive α) :=
  Finite.of_equiv α (by rfl)

instance [Finite α] : Finite (Multiplicative α) :=
  Finite.of_equiv α (by rfl)

instance [h : Infinite α] : Infinite (Additive α) := h

instance [h : Infinite α] : Infinite (Multiplicative α) := h

instance Additive.fintype : ∀ [Fintype α], Fintype (Additive α) :=
  Fintype.ofEquiv α Additive.ofMul

instance Multiplicative.fintype : ∀ [Fintype α], Fintype (Multiplicative α) :=
  Fintype.ofEquiv α Multiplicative.ofAdd

@[simp] lemma Fintype.card_multiplicative (α : Type*) [Fintype α] :
    card (Multiplicative α) = card α := Finset.card_map _

@[simp] lemma Fintype.card_additive (α : Type*) [Fintype α] : card (Additive α) = card α :=
  Finset.card_map _
