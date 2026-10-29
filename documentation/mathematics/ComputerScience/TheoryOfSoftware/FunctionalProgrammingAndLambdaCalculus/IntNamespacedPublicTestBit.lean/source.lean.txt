-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TestBit.Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TestBit.Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd","mathematical_subject":"Computation.DataStructures","original_sha256":"65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

public import Batteries.Data.Nat.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TestBit.Variant65653c6967624b6de2675b7877be5ace137431efed44a62402e83d6f75522dbd

@[expose] public section

namespace Int

/--
`testBit m n` returns whether the `(n+1)` least significant bit is `1` or `0`, using the two's
complement convention for negative `m`.
-/
def testBit : Int → Nat → Bool
  | ofNat m, n => Nat.testBit m n
  | negSucc m, n => !(Nat.testBit m n)

/--
Construct an integer from a sequence of bits using little endian convention.

The sign is determined using the two's complement convention: the result is negative if and only if
`n > 0` and `f (n-1) = true`.
-/
def ofBits (f : Fin n → Bool) :=
  if 2 * Nat.ofBits f < 2 ^ n then
    ofNat (Nat.ofBits f)
  else
    subNatNat (Nat.ofBits f) (2 ^ n)

@[simp] theorem ofBits_zero (f : Fin 0 → Bool) : ofBits f = 0 := by
  simp [ofBits]

@[simp] theorem testBit_ofBits_lt {f : Fin n → Bool} (h : i < n) :
    (ofBits f).testBit i = f ⟨i, h⟩ := by
  simp only [ofBits]
  split
  · simp only [testBit, Nat.testBit_ofBits_lt, h]
  · have hlt := Nat.ofBits_lt_two_pow f
    simp [subNatNat_of_lt hlt, testBit, Nat.sub_sub, Nat.testBit_two_pow_sub_succ hlt, h]

@[simp] theorem testBit_ofBits_ge {f : Fin n → Bool} (h : i ≥ n) :
    (ofBits f).testBit i = decide (ofBits f < 0) := by
  simp only [ofBits]
  split
  · have hge : ¬ ofNat (Nat.ofBits f) < 0 := by rw [Int.not_lt]; exact natCast_nonneg ..
    simp only [testBit, Nat.testBit_ofBits_ge _ _ h, hge, decide_false]
  · have hlt := Nat.ofBits_lt_two_pow f
    have h : 2 ^ n - Nat.ofBits f - 1 < 2 ^ i :=
      Nat.lt_of_lt_of_le (by omega) (Nat.pow_le_pow_right Nat.zero_lt_two h)
    simp [testBit, subNatNat_of_lt hlt, Nat.testBit_lt_two_pow h, negSucc_lt_zero]

theorem testBit_ofBits (f : Fin n → Bool) :
    (ofBits f).testBit i = if h : i < n then f ⟨i, h⟩ else decide (ofBits f < 0) := by
  split <;> simp_all
