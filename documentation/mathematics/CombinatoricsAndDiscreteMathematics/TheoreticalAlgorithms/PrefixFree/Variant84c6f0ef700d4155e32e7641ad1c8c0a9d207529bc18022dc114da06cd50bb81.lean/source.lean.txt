-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsPrefixFree.Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IsPrefixFree.Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478","mathematical_subject":"Computation.DataStructures","original_sha256":"28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/InformationTheory/Coding/PrefixFree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Elazar Gershuni. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Elazar Gershuni
-/
module

public import Mathlib.Data.Set.Subsingleton
public import Mathlib.InformationTheory.Coding.UniquelyDecodable

/-!
# Prefix-Free Codes

This file defines prefix-free codes and proves that every prefix-free code not containing the
empty word is uniquely decodable.

## Main definitions

* `IsPrefixFree`: a set of words is prefix-free if two words in the set cannot be distinct when
  one is a prefix of the other.

## Main results

* `IsPrefixFree.isUniquelyDecodable`: a prefix-free code not containing the empty word is uniquely
  decodable.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsPrefixFree.Variant28186b2ec20bd34ab051bbbd51fb2fdf8a2e1116b9a8b3a1911804b500c8d478

@[expose] public section

namespace InformationTheory

variable {α : Type*} {S T : Set (List α)}

/-- A set of words is prefix-free if two words in the set cannot be distinct when one is a prefix
of the other. -/
def IsPrefixFree (S : Set (List α)) : Prop :=
  ∀ x ∈ S, ∀ y ∈ S, x <+: y → x = y

/-- A prefix-free set containing the empty word is the singleton containing the empty word. -/
lemma IsPrefixFree.eq_singleton_empty_of_empty_mem (hS : IsPrefixFree S) (hε : [] ∈ S) :
    S = {[]} := by
  rw [Set.eq_singleton_iff_unique_mem]
  exact ⟨hε, fun _ hx ↦ (hS _ hε _ hx List.nil_prefix).symm⟩

/-- Any subset of a prefix-free set is prefix-free. -/
lemma IsPrefixFree.anti (hS : IsPrefixFree S) (hTS : T ⊆ S) : IsPrefixFree T :=
  fun _ hx _ hy ↦ hS _ (hTS hx) _ (hTS hy)

/-- A prefix-free code not containing the empty word is uniquely decodable. -/
theorem IsPrefixFree.isUniquelyDecodable (hS : IsPrefixFree S) (hε : [] ∉ S) :
    IsUniquelyDecodable S := by
  intro L₁ L₂ hL₁ hL₂ hflatten
  induction L₁ generalizing L₂ with
  | nil =>
    cases L₂ with
    | nil => rfl
    | cons w L =>
      simp at hflatten
      grind
  | cons w₁ L₁ ih =>
    cases L₂ with
    | nil =>
      simp at hflatten
      grind
    | cons w₂ L₂ =>
      simp only [List.flatten_cons] at hflatten
      have hw : w₁ = w₂ := by
        rcases List.append_eq_append_iff.mp hflatten with
          ⟨t, hw₁, -⟩ | ⟨t, hw₂, -⟩
        · exact hS _ (hL₁ _ (.head ..)) _ (hL₂ _ (.head ..)) ⟨t, hw₁.symm⟩
        · exact (hS _ (hL₂ _ (.head ..)) _ (hL₁ _ (.head ..)) ⟨t, hw₂.symm⟩).symm
      subst w₂
      congr
      apply ih L₂
      · grind
      · grind
      · exact List.append_cancel_left hflatten

/-- A nontrivial prefix-free code is uniquely decodable. -/
theorem IsPrefixFree.isUniquelyDecodable_of_nontrivial (hS : IsPrefixFree S)
    (hS' : S.Nontrivial) : IsUniquelyDecodable S :=
  hS.isUniquelyDecodable fun hε ↦
    hS'.ne_singleton (hS.eq_singleton_empty_of_empty_mem hε)

end InformationTheory
