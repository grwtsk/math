-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Rank.Variant14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.Rank.Variant14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854","mathematical_subject":"Logic.SetTheory","original_sha256":"14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/SetTheory/Ordinal/Rank.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.SetTheory.Ordinal.Family

/-!
# Rank in a well-founded relation

For `r` a well-founded relation, `WellFounded.rank r a` is recursively defined as the least
ordinal greater than the ranks of all elements below `a`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Rank.Variant14991fe74f7d8db161eb417a7130160eb850f1aa2cee845f99c7443a5f83d854

@[expose] public section

universe u

variable {α : Type u} {a b : α}

/-! ### Rank of an accessible value -/

namespace Acc

variable {r : α → α → Prop}

/-- The rank of an element `a` accessible under a relation `r` is defined recursively as the
smallest ordinal greater than the ranks of all elements below it (i.e. elements `b` such that
`r b a`). -/
noncomputable def rank (h : Acc r a) : Ordinal.{u} :=
  Acc.recOn h fun a _h ih => ⨆ b : { b // r b a }, Order.succ (ih b b.2)

theorem rank_eq (h : Acc r a) :
    h.rank = ⨆ b : { b // r b a }, Order.succ (h.inv b.2).rank := by
  change (Acc.intro a fun _ => h.inv).rank = _
  rfl

/-- if `r a b` then the rank of `a` is less than the rank of `b`. -/
theorem rank_lt_of_rel (hb : Acc r b) (h : r a b) : (hb.inv h).rank < hb.rank :=
  (Order.lt_succ _).trans_le <| by
    rw [hb.rank_eq]
    exact Ordinal.le_iSup _ (⟨a, h⟩ : {a // r a b})

theorem mem_range_rank_of_le {o : Ordinal} (ha : Acc r a) (ho : o ≤ ha.rank) :
    ∃ (b : α) (hb : Acc r b), hb.rank = o := by
  obtain rfl | ho := ho.eq_or_lt
  · exact ⟨a, ha, rfl⟩
  · revert ho
    refine ha.recOn fun a ha IH ho ↦ ?_
    rw [rank_eq, Ordinal.lt_iSup_iff] at ho
    obtain ⟨⟨b, hb⟩, ho⟩ := ho
    rw [Order.lt_succ_iff] at ho
    obtain rfl | ho := ho.eq_or_lt
    exacts [⟨b, ha b hb, rfl⟩, IH _ hb ho]

end Acc

/-! ### Rank in a well-founded relation -/

namespace WellFounded

variable (r : α → α → Prop) [hwf : WellFounded r]

/-- The rank of an element `a` under a well-founded relation `r` is defined recursively as the
smallest ordinal greater than the ranks of all elements below it (i.e. elements `b` such that
`r b a`). -/
noncomputable def rank (a : α) : Ordinal.{u} :=
  (hwf.apply a).rank

theorem rank_eq (a : α) : rank r a = ⨆ b : { b // r b a }, Order.succ (rank r b) :=
  (hwf.apply a).rank_eq

variable {r : α → α → Prop} [hwf : WellFounded r]

theorem rank_lt_of_rel (h : r a b) : rank r a < rank r b :=
  Acc.rank_lt_of_rel _ h

theorem mem_range_rank_of_le {o : Ordinal} (h : o ≤ rank r a) : o ∈ Set.range (rank r) := by
  obtain ⟨b, hb, rfl⟩ := Acc.mem_range_rank_of_le (hwf.apply a) h
  exact ⟨b, rfl⟩

end WellFounded

theorem WellFoundedLT.rank_strictMono [Preorder α] [WellFoundedLT α] :
    StrictMono (WellFounded.rank (α := α) (· < ·)) :=
  fun _ _ => WellFounded.rank_lt_of_rel

theorem WellFoundedGT.rank_strictAnti [Preorder α] [WellFoundedGT α] :
    StrictAnti (WellFounded.rank (α := α) (· > ·)) :=
  fun _ _ a => WellFounded.rank_lt_of_rel a

@[simp]
theorem WellFounded.rank_eq_typein (r) [IsWellOrder α r] : rank r = Ordinal.typein r := by
  classical
  let := linearOrderOfSTO r
  ext a
  exact InitialSeg.eq (⟨(OrderEmbedding.ofStrictMono _ WellFoundedLT.rank_strictMono).ltEmbedding,
    fun a b h ↦ mem_range_rank_of_le h.le⟩) (Ordinal.typein r) a
