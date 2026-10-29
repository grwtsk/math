-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ProdZeroZeroLtIff.Variantd49861588e13037a9a8a27905f46477101f153cd1d7cb2cf28c9caee28ae3d7c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d49861588e13037a9a8a27905f46477101f153cd1d7cb2cf28c9caee28ae3d7c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ProdZeroZeroLtIff.Variantd49861588e13037a9a8a27905f46477101f153cd1d7cb2cf28c9caee28ae3d7c","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"d49861588e13037a9a8a27905f46477101f153cd1d7cb2cf28c9caee28ae3d7c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Fin/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Order.Group.Nat
public import Mathlib.Order.Fin.Basic

/-!
# Properties of the order on a binary product of `Fin` types

-/


namespace GRWTSK.Algebra.UniversalAlgebra.ProdZeroZeroLtIff.Variantd49861588e13037a9a8a27905f46477101f153cd1d7cb2cf28c9caee28ae3d7c

namespace Fin

variable {p q : ℕ}

public lemma prod_zero_zero_lt_iff (i : Fin (p + 1) × Fin (q + 1)) :
    (0, 0) < i ↔ 0 < i.1.val + i.2.val := by
  rw [Prod.lt_iff]
  grind

public lemma prod_lt_last_last_iff (i : Fin (p + 1) × Fin (q + 1)) :
    i < (Fin.last _, Fin.last _) ↔ i.1.val + i.2.val < p + q := by
  simp only [Prod.lt_iff, Fin.lt_def]
  grind

public lemma prod_exists_lt_lt_of_le_of_le
    (k₀ k₂ : Fin p × Fin q) (h₀₂ : k₀ ≤ k₂)
    (h : k₀.1.val + k₀.2.val + 2 ≤ k₂.1.val + k₂.2.val) :
    ∃ k₁, k₀ < k₁ ∧ k₁ < k₂ := by
  obtain ⟨p, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (n := p) (by grind)
  obtain ⟨q, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (n := q) (by grind)
  obtain ⟨x₀, y₀⟩ := k₀
  obtain ⟨x₂, y₂⟩ := k₂
  simp only [Prod.le_def] at h₀₂ h
  obtain ⟨hx, hy⟩ := h₀₂
  obtain hx' | rfl := hx.lt_or_eq
  · obtain hy' | rfl := hy.lt_or_eq
    · exact ⟨⟨x₀, y₂⟩, by aesop⟩
    · obtain ⟨x₂', rfl⟩ := x₂.eq_succ_of_ne_zero (Fin.ne_zero_of_lt hx')
      refine ⟨⟨x₂'.castSucc, y₀⟩, ?_⟩
      rw [Fin.val_succ] at h
      simp [Fin.lt_def]
      grind
  · obtain ⟨y₂', rfl⟩ := y₂.eq_succ_of_ne_zero (by grind)
    refine ⟨⟨x₀, y₂'.castSucc⟩, ?_⟩
    rw [Fin.val_succ] at h
    simp [Fin.lt_def]
    lia

end Fin
