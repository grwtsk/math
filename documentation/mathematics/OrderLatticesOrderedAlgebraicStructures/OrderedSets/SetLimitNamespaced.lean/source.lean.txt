-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsSuccLimitCoe.Variant9718a95f449d55aa64812a814b119c5c2b2ea1b5f3c72cafbf8a5eb463a97aa5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9718a95f449d55aa64812a814b119c5c2b2ea1b5f3c72cafbf8a5eb463a97aa5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.IsSuccLimitCoe.Variant9718a95f449d55aa64812a814b119c5c2b2ea1b5f3c72cafbf8a5eb463a97aa5","mathematical_subject":"Algebra.OrderTheory","original_sha256":"9718a95f449d55aa64812a814b119c5c2b2ea1b5f3c72cafbf8a5eb463a97aa5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Set/Limit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Order.SetIsMax
import Mathlib.Order.SuccPred.Limit

/-!
# Limit elements in Set.Ici

If `J` is a linearly ordered type, `j : J`,
and `m : Set.Ici j` is successor limit, then
`↑m : J` is also successor limit.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsSuccLimitCoe.Variant9718a95f449d55aa64812a814b119c5c2b2ea1b5f3c72cafbf8a5eb463a97aa5

universe u

namespace Set.Ici

lemma isSuccLimit_coe {J : Type u} [LinearOrder J] {j : J}
    (m : Set.Ici j) (hm : Order.IsSuccLimit m) :
    Order.IsSuccLimit m.1 :=
  ⟨Set.not_isMin_coe _ hm.1, fun b ↦ by
    simp only [CovBy, not_lt, not_and, not_forall, Classical.not_imp, not_le]
    intro hb
    by_cases hb' : j ≤ b
    · have := hm.2 ⟨b, hb'⟩
      rw [not_covBy_iff (by exact hb)] at this
      obtain ⟨⟨x, h₁⟩, h₂, h₃⟩ := this
      refine ⟨x, h₂, h₃⟩
    · simp only [not_le] at hb'
      refine ⟨j, hb', ?_⟩
      by_contra!
      apply hm.1
      rintro ⟨k, hk⟩ _
      exact this.trans (by simpa using hk)⟩

end Set.Ici
