-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sym2.Variant98c413053c9cc4994429ec838da5cec1479febada00f34def62bfdd067645e95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98c413053c9cc4994429ec838da5cec1479febada00f34def62bfdd067645e95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Sym2.Variant98c413053c9cc4994429ec838da5cec1479febada00f34def62bfdd067645e95","mathematical_subject":"Computation.DataStructures","original_sha256":"98c413053c9cc4994429ec838da5cec1479febada00f34def62bfdd067645e95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Multiset/Sym.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.List.Sym

/-! # Unordered tuples of elements of a multiset

Defines `Multiset.sym` and the specialized `Multiset.sym2` for computing multisets of all
unordered n-tuples from a given multiset. These are multiset versions of `Nat.multichoose`.

## Main declarations

* `Multiset.sym2`: `xs.sym2` is the multiset of all unordered pairs of elements from `xs`,
  with multiplicity. The multiset's values are in `Sym2 α`.

## TODO

* Once `List.Perm.sym` is defined, define
  ```lean
  protected def sym (n : Nat) (m : Multiset α) : Multiset (Sym α n) :=
    m.liftOn (fun xs => xs.sym n) (List.perm.sym n)
  ```
  and then use this to remove the `DecidableEq` assumption from `Finset.sym`.

* `theorem injective_sym2 : Function.Injective (Multiset.sym2 : Multiset α → _)`

* `theorem strictMono_sym2 : StrictMono (Multiset.sym2 : Multiset α → _)`

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sym2.Variant98c413053c9cc4994429ec838da5cec1479febada00f34def62bfdd067645e95

namespace Multiset

variable {α β : Type*}

section Sym2

/-- `m.sym2` is the multiset of all unordered pairs of elements from `m`, with multiplicity.
If `m` has no duplicates then neither does `m.sym2`. -/
protected def sym2 (m : Multiset α) : Multiset (Sym2 α) :=
  m.liftOn (fun xs => xs.sym2) fun _ _ h => by rw [coe_eq_coe]; exact h.sym2

@[simp] theorem sym2_coe (xs : List α) : (xs : Multiset α).sym2 = xs.sym2 := rfl

@[simp]
theorem sym2_eq_zero_iff {m : Multiset α} : m.sym2 = 0 ↔ m = 0 :=
  m.inductionOn fun xs => by simp

@[simp]
theorem sym2_zero : (0 : Multiset α).sym2 = 0 := rfl

theorem sym2_cons (a : α) (m : Multiset α) :
    (m.cons a).sym2 = ((m.cons a).map <| fun b => s(a, b)) + m.sym2 :=
  m.inductionOn fun _ => rfl

theorem sym2_map (f : α → β) (m : Multiset α) :
    (m.map f).sym2 = m.sym2.map (Sym2.map f) :=
  m.inductionOn fun xs => by simp [List.sym2_map]

theorem mk_mem_sym2_iff {m : Multiset α} {a b : α} :
    s(a, b) ∈ m.sym2 ↔ a ∈ m ∧ b ∈ m :=
  m.inductionOn fun xs => by simp [List.mk_mem_sym2_iff]

theorem mem_sym2_iff {m : Multiset α} {z : Sym2 α} :
    z ∈ m.sym2 ↔ ∀ y ∈ z, y ∈ m :=
  m.inductionOn fun xs => by simp [List.mem_sym2_iff]

protected theorem Nodup.sym2 {m : Multiset α} (h : m.Nodup) : m.sym2.Nodup :=
  m.inductionOn (fun _ h => List.Nodup.sym2 h) h

open scoped List in
@[simp, mono]
theorem sym2_mono {m m' : Multiset α} (h : m ≤ m') : m.sym2 ≤ m'.sym2 := by
  refine Quotient.inductionOn₂ m m' (fun xs ys h => ?_) h
  suffices xs <+~ ys from this.sym2
  simpa only [quot_mk_to_coe, coe_le, sym2_coe] using h

theorem monotone_sym2 : Monotone (Multiset.sym2 : Multiset α → _) := fun _ _ => sym2_mono

theorem card_sym2 {m : Multiset α} :
    Multiset.card m.sym2 = Nat.choose (Multiset.card m + 1) 2 := by
  refine m.inductionOn fun xs => ?_
  simp [List.length_sym2]

theorem dedup_sym2 [DecidableEq α] (m : Multiset α) : m.sym2.dedup = m.dedup.sym2 :=
  m.inductionOn fun xs => by simp [List.dedup_sym2]

end Sym2

end Multiset
