-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SmallOfInjective.Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SmallOfInjective.Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911","mathematical_subject":"Logic.Foundations","original_sha256":"31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Small/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.Small.Defs
import Mathlib.Logic.Equiv.Set

/-!
# Instances and theorems for `Small`.

In particular we prove `small_of_injective` and `small_of_surjective`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SmallOfInjective.Variant31391701f26c1df8275e156b4029d31d696efb3207e75508225517f39d4a0911

assert_not_exists Countable

universe u w v v'

-- TODO(timotree3): lower the priority on this instance?
-- This instance applies to every synthesis problem of the form `Small ↥s` for some set `s`,
-- but we have lots of instances of `Small` for specific set constructions.
instance small_subtype (α : Type v) [Small.{w} α] (P : α → Prop) : Small.{w} { x // P x } :=
  small_map (equivShrink α).subtypeEquivOfSubtype'

theorem small_of_injective {α : Type v} {β : Type w} [Small.{u} β] {f : α → β}
    (hf : Function.Injective f) : Small.{u} α :=
  small_map (Equiv.ofInjective f hf)

theorem small_of_surjective {α : Type v} {β : Type w} [Small.{u} α] {f : α → β}
    (hf : Function.Surjective f) : Small.{u} β :=
  small_of_injective (Function.injective_surjInv hf)

instance (priority := 100) small_subsingleton (α : Type v) [Subsingleton α] : Small.{w} α := by
  rcases isEmpty_or_nonempty α with ⟨⟩
  · apply small_map (Equiv.equivPEmpty α)
  · apply small_map Equiv.punitOfNonemptyOfSubsingleton

/-- This can be seen as a version of `small_of_surjective` in which the function `f` doesn't
actually land in `β` but in some larger type `γ` related to `β` via an injective function `g`.
-/
theorem small_of_injective_of_exists {α : Type v} {β : Type w} {γ : Type v'} [Small.{u} α]
    (f : α → γ) {g : β → γ} (hg : Function.Injective g) (h : ∀ b : β, ∃ a : α, f a = g b) :
    Small.{u} β := by
  by_cases hβ : Nonempty β
  · refine small_of_surjective (f := Function.invFun g ∘ f) (fun b => ?_)
    obtain ⟨a, ha⟩ := h b
    exact ⟨a, by rw [Function.comp_apply, ha, Function.leftInverse_invFun hg]⟩
  · simp only [not_nonempty_iff] at hβ
    infer_instance

/-!
We don't define `Countable.toSmall` in this file, to keep imports to `Logic` to a minimum.
-/

instance small_Pi {α} (β : α → Type*) [Small.{w} α] [∀ a, Small.{w} (β a)] :
    Small.{w} (∀ a, β a) :=
  ⟨⟨∀ a' : Shrink α, Shrink (β ((equivShrink α).symm a')),
      ⟨Equiv.piCongr (equivShrink α) fun a => by simpa using equivShrink (β a)⟩⟩⟩

instance small_prod {α β} [Small.{w} α] [Small.{w} β] : Small.{w} (α × β) :=
  ⟨⟨Shrink α × Shrink β, ⟨Equiv.prodCongr (equivShrink α) (equivShrink β)⟩⟩⟩

instance small_sum {α β} [Small.{w} α] [Small.{w} β] : Small.{w} (α ⊕ β) :=
  ⟨⟨Shrink α ⊕ Shrink β, ⟨Equiv.sumCongr (equivShrink α) (equivShrink β)⟩⟩⟩

instance small_set {α} [Small.{w} α] : Small.{w} (Set α) :=
  ⟨⟨Set (Shrink α), ⟨Equiv.Set.congr (equivShrink α)⟩⟩⟩
