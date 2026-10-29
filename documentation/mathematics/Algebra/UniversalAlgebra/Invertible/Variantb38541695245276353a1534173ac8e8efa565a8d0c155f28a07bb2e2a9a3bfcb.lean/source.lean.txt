-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.InvertibleOfRingCharNotDvd.Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.InvertibleOfRingCharNotDvd.Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/CharP/Invertible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.Invertible
import Mathlib.Algebra.CharP.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.InvertibleOfRingCharNotDvd.Variant1a2b77431e20aa28cfbbd65c71d122a9a84bc9ed028791368743a98d341d53dc

#align_import algebra.char_p.invertible from "leanprover-community/mathlib"@"70fd9563a21e7b963887c9360bd29b2393e6225a"

/-!
# Invertibility of elements given a characteristic

This file includes some instances of `Invertible` for specific numbers in
characteristic zero. Some more cases are given as a `def`, to be included only
when needed. To construct instances for concrete numbers,
`invertibleOfNonzero` is a useful definition.
-/


variable {K : Type*}

section Field

variable [Field K]

/-- A natural number `t` is invertible in a field `K` if the characteristic of `K` does not divide
`t`. -/
def invertibleOfRingCharNotDvd {t : ℕ} (not_dvd : ¬ringChar K ∣ t) : Invertible (t : K) :=
  invertibleOfNonzero fun h => not_dvd ((ringChar.spec K t).mp h)
#align invertible_of_ring_char_not_dvd invertibleOfRingCharNotDvd

theorem not_ringChar_dvd_of_invertible {t : ℕ} [Invertible (t : K)] : ¬ringChar K ∣ t := by
  rw [← ringChar.spec, ← Ne.def]
  exact nonzero_of_invertible (t : K)
#align not_ring_char_dvd_of_invertible not_ringChar_dvd_of_invertible

/-- A natural number `t` is invertible in a field `K` of characteristic `p` if `p` does not divide
`t`. -/
def invertibleOfCharPNotDvd {p : ℕ} [CharP K p] {t : ℕ} (not_dvd : ¬p ∣ t) : Invertible (t : K) :=
  invertibleOfNonzero fun h => not_dvd ((CharP.cast_eq_zero_iff K p t).mp h)
#align invertible_of_char_p_not_dvd invertibleOfCharPNotDvd

-- warning: this could potentially loop with `Invertible.ne_zero` - if there is weird type-class
-- loops, watch out for that.
instance invertibleOfPos [CharZero K] (n : ℕ) [NeZero n] : Invertible (n : K) :=
  invertibleOfNonzero <| NeZero.out
#align invertible_of_pos invertibleOfPos

end Field

section DivisionRing

variable [DivisionRing K] [CharZero K]

instance invertibleSucc (n : ℕ) : Invertible (n.succ : K) :=
  invertibleOfNonzero (Nat.cast_ne_zero.mpr (Nat.succ_ne_zero _))
#align invertible_succ invertibleSucc

/-!
A few `Invertible n` instances for small numerals `n`. Feel free to add your own
number when you need its inverse.
-/


instance invertibleTwo : Invertible (2 : K) :=
  invertibleOfNonzero (by exact_mod_cast (by decide : 2 ≠ 0))
#align invertible_two invertibleTwo

instance invertibleThree : Invertible (3 : K) :=
  invertibleOfNonzero (by exact_mod_cast (by decide : 3 ≠ 0))
#align invertible_three invertibleThree

end DivisionRing
