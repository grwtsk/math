-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IntNatAbsEqIffAssociated.Variant686f711d51c9d249c1bbba5daf5172fd35240cf48fe57013a1d34c3d2985dfa9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"686f711d51c9d249c1bbba5daf5172fd35240cf48fe57013a1d34c3d2985dfa9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IntNatAbsEqIffAssociated.Variant686f711d51c9d249c1bbba5daf5172fd35240cf48fe57013a1d34c3d2985dfa9","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"686f711d51c9d249c1bbba5daf5172fd35240cf48fe57013a1d34c3d2985dfa9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/Associated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.GroupWithZero.Associated
import Mathlib.Algebra.Ring.Int.Units
/-!
# Associated elements and the integers

This file contains some results on equality up to units in the integers.

## Main results

* `Int.natAbs_eq_iff_associated`: the absolute value is equal iff integers are associated
-/



namespace GRWTSK.Algebra.UniversalAlgebra.IntNatAbsEqIffAssociated.Variant686f711d51c9d249c1bbba5daf5172fd35240cf48fe57013a1d34c3d2985dfa9

theorem Int.natAbs_eq_iff_associated {a b : ℤ} : a.natAbs = b.natAbs ↔ Associated a b := by
  refine Int.natAbs_eq_natAbs_iff.trans ?_
  constructor
  · rintro (rfl | rfl)
    · rfl
    · exact ⟨-1, by simp⟩
  · rintro ⟨u, rfl⟩
    obtain rfl | rfl := Int.units_eq_one_or u
    · exact Or.inl (by simp)
    · exact Or.inr (by simp)
