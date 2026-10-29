-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Range.Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22","mathematical_subject":"Computation.DataStructures","original_sha256":"2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/Range.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kenny Lau
-/
import Mathlib.Algebra.Order.Ring.Int

/-!
# Intervals in ℤ

This file defines integer ranges. `range m n` is the set of integers greater than `m` and strictly
less than `n`.

## Note

This could be unified with `Data.List.Intervals`. See the TODOs there.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant2d982af1a6535fbb2725eae70f91d4922ffaed080e86ec96194339f1e1ed8f22

namespace Int

/-- List enumerating `[m, n)`. This is the ℤ variant of `List.Ico`. -/
def range (m n : ℤ) : List ℤ :=
  ((List.range (toNat (n - m))) : List ℕ).map fun (r : ℕ) => (m + r : ℤ)

theorem mem_range_iff {m n r : ℤ} : r ∈ range m n ↔ m ≤ r ∧ r < n := by
  simp only [range, List.mem_map, List.mem_range, lt_toNat, lt_sub_iff_add_lt, add_comm]
  exact ⟨fun ⟨a, ha⟩ => ha.2 ▸ ⟨le_add_of_nonneg_right (Int.natCast_nonneg _), ha.1⟩,
    fun h => ⟨toNat (r - m), by simp [toNat_of_nonneg (sub_nonneg.2 h.1), h.2] ⟩⟩

instance decidableLELT (P : Int → Prop) [DecidablePred P] (m n : ℤ) :
    Decidable (∀ r, m ≤ r → r < n → P r) :=
  decidable_of_iff (∀ r ∈ range m n, P r) <| by simp only [mem_range_iff, and_imp]

instance decidableLELE (P : Int → Prop) [DecidablePred P] (m n : ℤ) :
    Decidable (∀ r, m ≤ r → r ≤ n → P r) :=
  -- Add empty type ascription, otherwise it fails to find `Decidable` instance.
  decidable_of_iff (∀ r ∈ range m (n + 1), P r :) <| by
    simp only [mem_range_iff, and_imp, lt_add_one_iff]

instance decidableLTLT (P : Int → Prop) [DecidablePred P] (m n : ℤ) :
    Decidable (∀ r, m < r → r < n → P r) :=
  Int.decidableLELT P _ _

instance decidableLTLE (P : Int → Prop) [DecidablePred P] (m n : ℤ) :
    Decidable (∀ r, m < r → r ≤ n → P r) :=
  Int.decidableLELE P _ _

end Int
