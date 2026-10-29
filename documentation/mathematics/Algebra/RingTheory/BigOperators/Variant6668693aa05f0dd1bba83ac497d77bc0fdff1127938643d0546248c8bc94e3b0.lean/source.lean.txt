-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.RingTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingTheory.ListSumMem.Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ListSumMem.Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/TwoSidedIdeal/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/

import Mathlib.RingTheory.Congruence.BigOperators
import Mathlib.RingTheory.TwoSidedIdeal.Basic

/-!
# Interactions between `∑, ∏` and two sided ideals

-/


namespace GRWTSK.Algebra.RingTheory.ListSumMem.Variant1d1072afecb08e2fffb232477a252ddc37a5a13692b4c1b4b9f4992bf295da2f

namespace TwoSidedIdeal

section sum

variable {R : Type*} [NonUnitalNonAssocRing R] (I : TwoSidedIdeal R)

lemma listSum_mem {ι : Type*} (l : List ι) (f : ι → R) (hl : ∀ x ∈ l, f x ∈ I) :
    (l.map f).sum ∈ I := by
  rw [mem_iff, ← List.sum_map_zero]
  exact I.ringCon.listSum l hl

lemma multisetSum_mem {ι : Type*} (s : Multiset ι) (f : ι → R) (hs : ∀ x ∈ s, f x ∈ I) :
    (s.map f).sum ∈ I := by
  rw [mem_iff, ← Multiset.sum_map_zero]
  exact I.ringCon.multisetSum s hs

lemma finsetSum_mem {ι : Type*} (s : Finset ι) (f : ι → R) (hs : ∀ x ∈ s, f x ∈ I) :
    s.sum f ∈ I := by
  rw [mem_iff, ← Finset.sum_const_zero]
  exact I.ringCon.finsetSum s hs

end sum

section prod

section ring

variable {R : Type*} [Ring R] (I : TwoSidedIdeal R)

lemma listProd_mem {ι : Type*} (l : List ι) (f : ι → R) (hl : ∃ x ∈ l, f x ∈ I) :
    (l.map f).prod ∈ I := by
  induction l with
  | nil => simp only [List.not_mem_nil, false_and, exists_false] at hl
  | cons x l ih =>
    simp only [List.mem_cons, exists_eq_or_imp] at hl
    rcases hl with h | hal
    · simpa only [List.map_cons, List.prod_cons] using I.mul_mem_right _ _ h
    · simpa only [List.map_cons, List.prod_cons] using I.mul_mem_left _ _ <| ih hal

end ring

section commRing

variable {R : Type*} [CommRing R] (I : TwoSidedIdeal R)

lemma multiSetProd_mem {ι : Type*} (s : Multiset ι) (f : ι → R) (hs : ∃ x ∈ s, f x ∈ I) :
    (s.map f).prod ∈ I := by
  rcases s
  simpa using listProd_mem (hl := hs)

lemma finsetProd_mem {ι : Type*} (s : Finset ι) (f : ι → R) (hs : ∃ x ∈ s, f x ∈ I) :
    s.prod f ∈ I := by
  rcases s
  simpa using multiSetProd_mem (hs := hs)

end commRing

end prod

end TwoSidedIdeal
