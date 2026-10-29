-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Sup.Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Sup.Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d","mathematical_subject":"Algebra.OrderTheory","original_sha256":"16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Sym/Sym2/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.Sym.Sym2
import Mathlib.Order.Lattice

/-!
# Sorting the elements of `Sym2`

This files provides `Sym2.sortEquiv`, the forward direction of which is somewhat analogous to
`Multiset.sort`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Sup.Variant16252aa9bbc956071e3bad9bf406051cd3e7a0f0efcfb73755d6afa73368070d

namespace Sym2

variable {α}

/-- The supremum of the two elements. -/
def sup [SemilatticeSup α] (x : Sym2 α) : α := Sym2.lift ⟨(· ⊔ ·), sup_comm⟩ x

@[simp] theorem sup_mk [SemilatticeSup α] (a b : α) : s(a, b).sup = a ⊔ b := rfl

/-- The infimum of the two elements. -/
def inf [SemilatticeInf α] (x : Sym2 α) : α := Sym2.lift ⟨(· ⊓ ·), inf_comm⟩ x

@[simp] theorem inf_mk [SemilatticeInf α] (a b : α) : s(a, b).inf = a ⊓ b := rfl

protected theorem inf_le_sup [Lattice α] (s : Sym2 α) : s.inf ≤ s.sup := by
  cases s using Sym2.ind; simp [_root_.inf_le_sup]

/-- In a linear order, symmetric squares are canonically identified with ordered pairs. -/
@[simps!]
def sortEquiv [LinearOrder α] : Sym2 α ≃ { p : α × α // p.1 ≤ p.2 } where
  toFun s := ⟨(s.inf, s.sup), Sym2.inf_le_sup _⟩
  invFun p := Sym2.mk p
  left_inv := Sym2.ind fun a b => mk_eq_mk_iff.mpr <| by
    cases le_total a b with
    | inl h => simp [h]
    | inr h => simp [h]
  right_inv := Subtype.rec <| Prod.rec fun x y hxy =>
    Subtype.ext <| Prod.ext (by simp [hxy]) (by simp [hxy])

/-- In a linear order, two symmetric squares are equal if and only if
they have the same infimum and supremum. -/
theorem inf_eq_inf_and_sup_eq_sup [LinearOrder α] {s t : Sym2 α} :
    s.inf = t.inf ∧ s.sup = t.sup ↔ s = t := by
  induction' s with a b
  induction' t with c d
  obtain hab | hba := le_total a b <;> obtain hcd | hdc := le_total c d <;>
    aesop (add unsafe le_antisymm)

end Sym2
