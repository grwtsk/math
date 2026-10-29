-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.HarmonicPos.Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PadicNumbers.SourceCorpus.HarmonicPos.Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3","mathematical_subject":"NumberTheory.PadicNumbers","original_sha256":"61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/Harmonic/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Koundinya Vajjha. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Koundinya Vajjha, Thomas Browning
-/
import Mathlib.NumberTheory.Harmonic.Defs
import Mathlib.NumberTheory.Padics.PadicNumbers
import Mathlib.Tactic.Positivity

/-!

The nth Harmonic number is not an integer. We formalize the proof using
2-adic valuations. This proof is due to Kürschák.

Reference:
https://kconrad.math.uconn.edu/blurbs/gradnumthy/padicharmonicsum.pdf

-/


namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.HarmonicPos.Variant61a5bdcaedc770c1c9c75c19f54ad1fc0c90fa03f590755a6849f4c1633df8c3

lemma harmonic_pos {n : ℕ} (Hn : n ≠ 0) : 0 < harmonic n := by
  unfold harmonic
  rw [← Finset.nonempty_range_iff] at Hn
  positivity

/-- The 2-adic valuation of the n-th harmonic number is the negative of the logarithm
    of n. -/
theorem padicValRat_two_harmonic (n : ℕ) : padicValRat 2 (harmonic n) = -Nat.log 2 n := by
  induction n with
  | zero => simp
  | succ n ih =>
    rcases eq_or_ne n 0 with rfl | hn
    · simp
    rw [harmonic_succ]
    have key : padicValRat 2 (harmonic n) ≠ padicValRat 2 (↑(n + 1))⁻¹ := by
      rw [ih, padicValRat.inv, padicValRat.of_nat, Ne, neg_inj, Nat.cast_inj]
      exact Nat.log_ne_padicValNat_succ hn
    rw [padicValRat.add_eq_min (harmonic_succ n ▸ (harmonic_pos n.succ_ne_zero).ne')
        (harmonic_pos hn).ne' (inv_ne_zero (Nat.cast_ne_zero.mpr n.succ_ne_zero)) key, ih,
        padicValRat.inv, padicValRat.of_nat, min_neg_neg, neg_inj, ← Nat.cast_max, Nat.cast_inj]
    exact Nat.max_log_padicValNat_succ_eq_log_succ n

/-- The 2-adic norm of the n-th harmonic number is 2 raised to the logarithm of n in base 2. -/
lemma padicNorm_two_harmonic {n : ℕ} (hn : n ≠ 0) :
    ‖(harmonic n : ℚ_[2])‖ = 2 ^ (Nat.log 2 n) := by
  rw [padicNormE.eq_padicNorm, padicNorm.eq_zpow_of_nonzero (harmonic_pos hn).ne',
    padicValRat_two_harmonic, neg_neg, zpow_natCast, Rat.cast_pow, Rat.cast_natCast, Nat.cast_ofNat]

/-- The n-th harmonic number is not an integer for n ≥ 2. -/
theorem harmonic_not_int {n : ℕ} (h : 2 ≤ n) : ¬ (harmonic n).isInt := by
  apply padicNorm.not_int_of_not_padic_int 2
  rw [padicNorm.eq_zpow_of_nonzero (harmonic_pos (ne_zero_of_lt h)).ne',
      padicValRat_two_harmonic, neg_neg, zpow_natCast]
  exact one_lt_pow₀ one_lt_two (Nat.log_pos one_lt_two h).ne'
