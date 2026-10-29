-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OfNotIsCofinalRangeSplitting.Variantd008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.OfNotIsCofinalRangeSplitting.Variantd008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b","mathematical_subject":"Logic.SetTheory","original_sha256":"d008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/SetTheory/Cardinal/EventuallyConst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
module

public import Mathlib.Order.Filter.EventuallyConst
public import Mathlib.SetTheory.Cardinal.Aleph

/-!
# Eventually constant monotone functions

This file proves variations of the following theorem: if `α` is a linear order and `β` is a partial
order with `#β < cof α`, then any monotone function `f : α → β` must be eventually constant. In
particular, this applies for functions from `Cardinal.{u}` or `Ordinal.{u}` into a `Small.{u}` type.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OfNotIsCofinalRangeSplitting.Variantd008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b

public section

universe u v

variable {α : Type u} {β : Type v} [LinearOrder α] [PartialOrder β]

open Cardinal Filter Order Set

namespace Filter.EventuallyConst
variable {f : α → β}

theorem of_not_isCofinal_rangeSplitting [Nonempty α] (hf : Monotone f)
    (hf' : ¬ IsCofinal (range (rangeSplitting f))) : atTop.EventuallyConst f := by
  rw [eventuallyConst_atTop]
  obtain ⟨i, hi⟩ := not_isCofinal_iff.1 hf'
  refine ⟨i, fun j hij ↦ (hf hij).antisymm' <| (hf (hi _ ⟨⟨f j, j, rfl⟩, rfl⟩).le).trans' ?_⟩
  rw [apply_rangeSplitting f]

theorem of_monotone_of_lt_cof (hf : Monotone f) (hα : lift.{u} #β < lift.{v} (cof α)) :
    atTop.EventuallyConst f := by
  have : Nonempty α := by by_contra!; simp at hα
  refine .of_not_isCofinal_rangeSplitting hf ?_
  contrapose! hα
  classical let := hf.isChain_range.lt_of_le.linearOrder
  rw [← lift_cof_congr_of_strictMono (rangeSplitting_strictMono hf) hα, lift_le]
  exact (cof_le_cardinalMk _).trans (mk_set_le _)

theorem of_antitone_of_lt_cof (hf : Antitone f) (hα : lift.{u} #β < lift.{v} (cof α)) :
    atTop.EventuallyConst f :=
  .of_monotone_of_lt_cof (β := βᵒᵈ) hf.dual_right hα

end Filter.EventuallyConst

namespace Cardinal
variable {f : Cardinal.{v} → β} [Small.{v} β]

theorem eventuallyConst_of_monotone (hf : Monotone f) : atTop.EventuallyConst f := by
  refine .of_monotone_of_lt_cof hf ?_
  simpa [← small_iff_lift_mk_lt_univ]

theorem eventuallyConst_of_antitone (hf : Antitone f) : atTop.EventuallyConst f :=
  eventuallyConst_of_monotone (β := βᵒᵈ) hf

end Cardinal

namespace Ordinal
variable {f : Ordinal.{v} → β} [Small.{v} β]

theorem eventuallyConst_of_monotone (hf : Monotone f) : atTop.EventuallyConst f := by
  refine .of_monotone_of_lt_cof hf ?_
  simpa [← small_iff_lift_mk_lt_univ]

theorem eventuallyConst_of_antitone (hf : Antitone f) : atTop.EventuallyConst f :=
  eventuallyConst_of_monotone (β := βᵒᵈ) hf

end Ordinal
