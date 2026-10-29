/-
Copyright (c) 2025 Bhavik Mehta, Arend Mellendijk.
Copyright (c) 2026 grwtsk contributors.
SPDX-License-Identifier: Apache-2.0

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Lemma 2.2. The source paper credits Bhavik
Mehta for assistance using Lean to verify parts of an earlier version.

The fixed-parameter compression is adapted from Bhavik Mehta and Arend
Mellendijk's `NiceFactorization` development in `b-mehta/ABC-Exceptions`,
as maintained in `LeanPool/lean-pool`.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.QuantitativeAnatomicFactorization

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset UniqueFactorizationMonoid
open scoped BigOperators

/-- Uniform quantitative anatomic factorization in the form of
Bernert--Browning--Lichtman--Teräväinen, Lemma 2.2. The finite family `x j`
represents `n_{j+1}`; `c` is the small residual factor `n₀`. -/
theorem exists_uniform_anatomic_factorization
    {ε₀ : ℝ} (hε₀ : 0 < ε₀) :
    ∃ d : ℕ, 6 ≤ d ∧
      ∀ (n : ℕ), 0 < n → ∃ (x : Fin d → ℕ), ∃ c : ℕ,
        n = c * ∏ j, x j ^ (j.val + 1) ∧
        0 < c ∧
        (∀ j, 0 < x j) ∧
        (∀ i j, i ≠ j → Nat.Coprime (x i) (x j)) ∧
        (c : ℝ) ≤ (n : ℝ) ^ ε₀ ∧
        (n : ℝ) ^ (-ε₀) * ∏ j, x j ≤ (radical n : ℕ) ∧
        (radical n : ℕ) ≤ (n : ℝ) ^ ε₀ * ∏ j, x j := by
  let δ : ℝ := min ε₀ (1 / 4)
  have hδ_pos : 0 < δ := by
    dsimp [δ]
    exact lt_min hε₀ (by norm_num)
  have hδ_le : δ ≤ ε₀ := by
    dsimp [δ]
    exact min_le_left _ _
  have hδ_half : δ < 1 / 2 := by
    have hquarter : δ ≤ 1 / 4 := by
      dsimp [δ]
      exact min_le_right _ _
    linarith
  let d : ℕ := ⌊5 / 2 * δ⁻¹ ^ 2⌋₊
  have htwo : 2 < δ⁻¹ := by
    have hpos := hδ_pos
    rw [← inv_inv 2]
    gcongr
    linarith only [hδ_half]
  have hsq : (4 : ℝ) < δ⁻¹ ^ 2 := by
    have hleft : 0 < δ⁻¹ - 2 := sub_pos.mpr htwo
    have hright : 0 < δ⁻¹ + 2 := by linarith
    nlinarith [mul_pos hleft hright]
  have hd_six : 6 ≤ d := by
    dsimp [d]
    rw [Nat.le_floor_iff (by positivity : (0 : ℝ) ≤ 5 / 2 * δ⁻¹ ^ 2)]
    change (6 : ℝ) ≤ 5 / 2 * δ⁻¹ ^ 2
    nlinarith
  refine ⟨d, hd_six, ?_⟩
  intro n hn
  obtain ⟨x, c, hrec, hc, hcop, hlow, hupp, hc_pos, hx_pos, hx_le⟩ :=
    exists_fixed_anatomic_factorization
      (ε := δ) hδ_pos hδ_half (d := d) rfl
      (n := n) (X := n) hn le_rfl
  have hn_nat_one : 1 ≤ n := hn
  have hn_one : (1 : ℝ) ≤ n := by
    exact_mod_cast hn_nat_one
  have hcop' : ∀ i j, i ≠ j → Nat.Coprime (x i) (x j) := by
    intro i j hij
    rw [Nat.coprime_iff_gcd_eq_one]
    exact hcop i j hij
  have hc' : (c : ℝ) ≤ (n : ℝ) ^ ε₀ := by
    exact hc.trans (Real.rpow_le_rpow_of_exponent_le hn_one hδ_le)
  have hlow' :
      (n : ℝ) ^ (-ε₀) * ∏ j, x j ≤ (radical n : ℕ) := by
    calc
      (n : ℝ) ^ (-ε₀) * ∏ j, x j ≤
          (n : ℝ) ^ (-δ) * ∏ j, x j := by
        apply mul_le_mul_of_nonneg_right
          (Real.rpow_le_rpow_of_exponent_le hn_one (neg_le_neg hδ_le))
        positivity
      _ ≤ (radical n : ℕ) := hlow
  have hupp' :
      (radical n : ℕ) ≤ (n : ℝ) ^ ε₀ * ∏ j, x j := by
    calc
      (radical n : ℕ) ≤ (n : ℝ) ^ δ * ∏ j, x j := hupp
      _ ≤ (n : ℝ) ^ ε₀ * ∏ j, x j := by
        apply mul_le_mul_of_nonneg_right
          (Real.rpow_le_rpow_of_exponent_le hn_one hδ_le)
        positivity
  exact ⟨x, c, hrec, hc_pos, hx_pos, hcop', hc', hlow', hupp'⟩

/-- Pointwise specialization of the uniform anatomic factorization. The common
index bound depends only on `ε₀`, as exposed by the uniform theorem above. -/
theorem exists_anatomic_factorization
    {ε₀ : ℝ} (hε₀ : 0 < ε₀) {n : ℕ} (hn : 0 < n) :
    ∃ d : ℕ, 6 ≤ d ∧
      ∃ (x : Fin d → ℕ), ∃ c : ℕ,
        n = c * ∏ j, x j ^ (j.val + 1) ∧
        0 < c ∧
        (∀ j, 0 < x j) ∧
        (∀ i j, i ≠ j → Nat.Coprime (x i) (x j)) ∧
        (c : ℝ) ≤ (n : ℝ) ^ ε₀ ∧
        (n : ℝ) ^ (-ε₀) * ∏ j, x j ≤ (radical n : ℕ) ∧
        (radical n : ℕ) ≤ (n : ℝ) ^ ε₀ * ∏ j, x j := by
  obtain ⟨d, hd, hfactor⟩ := exists_uniform_anatomic_factorization hε₀
  exact ⟨d, hd, hfactor n hn⟩

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
