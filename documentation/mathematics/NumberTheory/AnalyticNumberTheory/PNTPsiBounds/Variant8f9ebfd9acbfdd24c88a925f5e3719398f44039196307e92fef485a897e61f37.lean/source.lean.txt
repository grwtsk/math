-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.AllChecksSlope111.Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.AllChecksSlope111.Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"c6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Examples/PNT_PsiBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.ChebyshevPsi

/-!
# Certified ψ(N) ≤ 1.11 * N bounds

This file provides certified bounds on the Chebyshev function ψ(N) ≤ 1.11 * N
for all N ≤ 11723, verified via `native_decide`.

## Interface

The main theorem is `psi_le_mul_11723`: for all 0 < x ≤ 11723, ψ(x) ≤ 1.11 * x.
This corresponds to PNT issue #844 (`psi_num_2`).
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.AllChecksSlope111.Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519

open Chebyshev (psi)
open LeanCert.Engine.ChebyshevPsi

namespace LeanCert.Examples.PNT_PsiBounds

/-! ### Core verification fact -/

/-- The incremental checker verifies ψ(N) ≤ 1.11 * N for all N = 1, ..., 11723. -/
theorem allChecks_11723_slope111_100 : checkAllPsiLeMulWith 11723 (111 / 100) 20 = true := by native_decide

/-- For each N ≤ 11723, `checkPsiLeMulWith` holds at slope `111/100`.
    Derived from allChecks_11723_slope111_100 via the formal bridge
    `checkAllPsiLeMulWith_implies_checkPsiLeMulWith`. -/
theorem checkPsiLeMul_le_11723 (N : ℕ) (hN : 0 < N) (hNb : N ≤ 11723) :
    checkPsiLeMulWith N (111 / 100) 20 = true :=
  checkAllPsiLeMulWith_implies_checkPsiLeMulWith 11723 (111 / 100) 20 allChecks_11723_slope111_100 N hN hNb

/-! ### Main theorems -/

/-- ψ(N) ≤ 1.11 * N for all natural N ≤ 11723. -/
theorem psi_le_nat (N : ℕ) (hN : 0 < N) (hNb : N ≤ 11723) :
    psi (N : ℝ) ≤ 111 / 100 * N := by
  have h :=
    psi_le_of_checkPsiLeMulWith N 20 (111 / 100) (checkPsiLeMul_le_11723 N hN hNb)
  have hcast : ((111 / 100 : ℚ) : ℝ) = 111 / 100 := by norm_num
  simpa [hcast] using h

/-- ψ(x) ≤ 1.11 * x for all real 0 < x ≤ 11723.
    This is the main theorem needed by PNT's `psi_num_2`. -/
theorem psi_le_mul_11723 (x : ℝ) (hx : 0 < x) (hxb : x ≤ 11723) :
    psi x ≤ 111 / 100 * x := by
  rw [Chebyshev.psi_eq_psi_coe_floor x]
  have hnn : (0 : ℝ) ≤ x := le_of_lt hx
  have hfloor_le : ⌊x⌋₊ ≤ 11723 := Nat.floor_le_of_le hxb
  rcases Nat.eq_zero_or_pos ⌊x⌋₊ with hf | hf
  · -- x < 1, so ⌊x⌋₊ = 0 and ψ(0) = 0
    simp only [hf, Nat.cast_zero]
    rw [Chebyshev.psi_eq_zero_of_lt_two (by norm_num : (0:ℝ) < 2)]
    linarith
  · have h1 := psi_le_nat ⌊x⌋₊ hf hfloor_le
    calc psi (⌊x⌋₊ : ℝ) ≤ 111 / 100 * ⌊x⌋₊ := h1
      _ ≤ 111 / 100 * x := by gcongr; exact Nat.floor_le hnn

end LeanCert.Examples.PNT_PsiBounds

