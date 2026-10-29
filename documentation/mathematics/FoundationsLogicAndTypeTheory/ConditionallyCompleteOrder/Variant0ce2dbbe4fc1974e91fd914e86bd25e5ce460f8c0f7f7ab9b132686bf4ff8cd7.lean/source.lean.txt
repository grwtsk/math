-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CsSupEqGreatestOfBdd.Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CsSupEqGreatestOfBdd.Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"fdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/ConditionallyCompleteOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Order.ConditionallyCompleteLattice.Basic
import Mathlib.Data.Int.LeastGreatest

/-!
## `ℤ` forms a conditionally complete linear order

The integers form a conditionally complete linear order.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.CsSupEqGreatestOfBdd.Variantfdff48788fbdbbd9fcebe0be7cc1bbf9346be437cd1e457714594e068b62c312

open Int


noncomputable section

open scoped Classical in
instance instConditionallyCompleteLinearOrder : ConditionallyCompleteLinearOrder ℤ where
  __ := instLinearOrder
  __ := LinearOrder.toLattice
  sSup s :=
    if h : s.Nonempty ∧ BddAbove s then
      greatestOfBdd (Classical.choose h.2) (Classical.choose_spec h.2) h.1
    else 0
  sInf s :=
    if h : s.Nonempty ∧ BddBelow s then
      leastOfBdd (Classical.choose h.2) (Classical.choose_spec h.2) h.1
    else 0
  le_csSup s n hs hns := by
    have : s.Nonempty ∧ BddAbove s := ⟨⟨n, hns⟩, hs⟩
    simp only [dif_pos this]
    exact (greatestOfBdd _ _ _).2.2 n hns
  csSup_le s n hs hns := by
    have : s.Nonempty ∧ BddAbove s := ⟨hs, ⟨n, hns⟩⟩
    simp only [dif_pos this]
    exact hns (greatestOfBdd _ (Classical.choose_spec this.2) _).2.1
  csInf_le s n hs hns := by
    have : s.Nonempty ∧ BddBelow s := ⟨⟨n, hns⟩, hs⟩
    simp only [dif_pos this]
    exact (leastOfBdd _ _ _).2.2 n hns
  le_csInf s n hs hns := by
    have : s.Nonempty ∧ BddBelow s := ⟨hs, ⟨n, hns⟩⟩
    simp only [dif_pos this]
    exact hns (leastOfBdd _ (Classical.choose_spec this.2) _).2.1
  csSup_of_not_bddAbove := fun s hs ↦ by simp [hs]
  csInf_of_not_bddBelow := fun s hs ↦ by simp [hs]

namespace Int

theorem csSup_eq_greatest_of_bdd {s : Set ℤ} [DecidablePred (· ∈ s)] (b : ℤ) (Hb : ∀ z ∈ s, z ≤ b)
    (Hinh : ∃ z : ℤ, z ∈ s) : sSup s = greatestOfBdd b Hb Hinh := by
  have : s.Nonempty ∧ BddAbove s := ⟨Hinh, b, Hb⟩
  simp only [sSup, dif_pos this]
  convert (coe_greatestOfBdd_eq Hb (Classical.choose_spec (⟨b, Hb⟩ : BddAbove s)) Hinh).symm

@[simp]
theorem csSup_empty : sSup (∅ : Set ℤ) = 0 :=
  dif_neg (by simp)

theorem csSup_of_not_bdd_above {s : Set ℤ} (h : ¬BddAbove s) : sSup s = 0 :=
  dif_neg (by simp [h])

theorem csInf_eq_least_of_bdd {s : Set ℤ} [DecidablePred (· ∈ s)] (b : ℤ) (Hb : ∀ z ∈ s, b ≤ z)
    (Hinh : ∃ z : ℤ, z ∈ s) : sInf s = leastOfBdd b Hb Hinh := by
  have : s.Nonempty ∧ BddBelow s := ⟨Hinh, b, Hb⟩
  simp only [sInf, dif_pos this]
  convert (coe_leastOfBdd_eq Hb (Classical.choose_spec (⟨b, Hb⟩ : BddBelow s)) Hinh).symm

@[simp]
theorem csInf_empty : sInf (∅ : Set ℤ) = 0 :=
  dif_neg (by simp)

theorem csInf_of_not_bdd_below {s : Set ℤ} (h : ¬BddBelow s) : sInf s = 0 :=
  dif_neg (by simp [h])

theorem csSup_mem {s : Set ℤ} (h1 : s.Nonempty) (h2 : BddAbove s) : sSup s ∈ s := by
  convert (greatestOfBdd _ (Classical.choose_spec h2) h1).2.1
  exact dif_pos ⟨h1, h2⟩

theorem csInf_mem {s : Set ℤ} (h1 : s.Nonempty) (h2 : BddBelow s) : sInf s ∈ s := by
  convert (leastOfBdd _ (Classical.choose_spec h2) h1).2.1
  exact dif_pos ⟨h1, h2⟩

end Int

end

--  this example tests that the `Lattice ℤ` instance is computable;
-- i.e., that is is not found via the noncomputable instance in this file.
example : Lattice ℤ := inferInstance
