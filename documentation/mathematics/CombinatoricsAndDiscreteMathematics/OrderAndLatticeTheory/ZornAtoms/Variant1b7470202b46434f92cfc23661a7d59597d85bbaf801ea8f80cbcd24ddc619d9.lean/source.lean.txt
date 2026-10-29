-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsCoatomicOfIsChainBounded.Variant1dc811af9d7229457eff8e3f347020397fceff4043d203124822c3e793f8d64e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1dc811af9d7229457eff8e3f347020397fceff4043d203124822c3e793f8d64e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.IsCoatomicOfIsChainBounded.Variant1dc811af9d7229457eff8e3f347020397fceff4043d203124822c3e793f8d64e","mathematical_subject":"Algebra.OrderTheory","original_sha256":"1dc811af9d7229457eff8e3f347020397fceff4043d203124822c3e793f8d64e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/ZornAtoms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Order.Zorn
import Mathlib.Order.Atoms

/-!
# Zorn lemma for (co)atoms

In this file we use Zorn's lemma to prove that a partial order is atomic if every nonempty chain
`c`, `⊥ ∉ c`, has a lower bound not equal to `⊥`. We also prove the order dual version of this
statement.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsCoatomicOfIsChainBounded.Variant1dc811af9d7229457eff8e3f347020397fceff4043d203124822c3e793f8d64e

open Set

/-- **Zorn's lemma**: A partial order is coatomic if every nonempty chain `c`, `⊤ ∉ c`, has an upper
bound not equal to `⊤`. -/
theorem IsCoatomic.of_isChain_bounded {α : Type*} [PartialOrder α] [OrderTop α]
    (h : ∀ c : Set α, IsChain (· ≤ ·) c → c.Nonempty → ⊤ ∉ c → ∃ x ≠ ⊤, x ∈ upperBounds c) :
    IsCoatomic α := by
  refine ⟨fun x => le_top.eq_or_lt.imp_right fun hx => ?_⟩
  have := zorn_le_nonempty₀ (Ico x ⊤) (fun c hxc hc y hy => ?_) x (left_mem_Ico.2 hx)
  · obtain ⟨y, hxy, hmax⟩ := this
    refine ⟨y, ⟨hmax.prop.2.ne, fun z hyz ↦ le_top.eq_or_lt.resolve_right fun hz => ?_⟩, hxy⟩
    exact hyz.ne <| hmax.eq_of_le ⟨hxy.trans hyz.le, hz⟩ hyz.le
  rcases h c hc ⟨y, hy⟩ fun h => (hxc h).2.ne rfl with ⟨z, hz, hcz⟩
  exact ⟨z, ⟨le_trans (hxc hy).1 (hcz hy), hz.lt_top⟩, hcz⟩

/-- **Zorn's lemma**: A partial order is atomic if every nonempty chain `c`, `⊥ ∉ c`, has a lower
bound not equal to `⊥`. -/
theorem IsAtomic.of_isChain_bounded {α : Type*} [PartialOrder α] [OrderBot α]
    (h :
      ∀ c : Set α,
        IsChain (· ≤ ·) c → c.Nonempty → ⊥ ∉ c → ∃ x ≠ ⊥, x ∈ lowerBounds c) :
    IsAtomic α :=
  isCoatomic_dual_iff_isAtomic.mp <| IsCoatomic.of_isChain_bounded fun c hc => h c hc.symm
