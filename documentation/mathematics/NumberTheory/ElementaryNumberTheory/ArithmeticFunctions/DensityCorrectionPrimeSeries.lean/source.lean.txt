/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.PositiveDensityCorrection
import Mathlib.Analysis.SpecificLimits.Basic

/-!
# Complete prime-power series of the density correction

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
Every omitted exponent is retained through an exact convergent tail. These
local series do not assert global summability or an arithmetic growth witness.
-/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ArithmeticFunctions

/-- Literal complete coefficient of every shifted positive prime power. -/
theorem density_correction_prime_weighted_term {p : ℕ} (hp : p.Prime)
    (q : ℝ) (K k : ℕ) :
    densityMoebiusCorrection (p ^ (k + K + 1)) * q ^ (k + K + 1) =
      (q ^ (K + 1) / ((p : ℝ) + 1)) * q ^ k := by
  rw [density_moebius_correction_prime_power hp (by omega),
    show k + K + 1 = (K + 1) + k by omega, pow_add]
  ring

/-- Convergence and exact mass of the full omitted positive-exponent tail. -/
theorem density_correction_prime_hasSum_tail {p : ℕ} (hp : p.Prime)
    {q : ℝ} (hq0 : 0 ≤ q) (hq1 : q < 1) (K : ℕ) :
    HasSum (fun k : ℕ => densityMoebiusCorrection (p ^ (k + K + 1)) * q ^ (k + K + 1))
      (q ^ (K + 1) / (((p : ℝ) + 1) * (1 - q))) := by
  have h := (hasSum_geometric_of_lt_one hq0 hq1).mul_left
    (q ^ (K + 1) / ((p : ℝ) + 1))
  have he : (fun k : ℕ => q ^ (K + 1) / ((p : ℝ) + 1) * q ^ k) =
      (fun k : ℕ => densityMoebiusCorrection (p ^ (k + K + 1)) * q ^ (k + K + 1)) := by
    funext k
    exact (density_correction_prime_weighted_term hp q K k).symm
  rw [he] at h
  simpa [div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm] using h

theorem density_correction_prime_tsum_tail {p : ℕ} (hp : p.Prime)
    {q : ℝ} (hq0 : 0 ≤ q) (hq1 : q < 1) (K : ℕ) :
    (∑' k : ℕ, densityMoebiusCorrection (p ^ (k + K + 1)) * q ^ (k + K + 1)) =
      q ^ (K + 1) / (((p : ℝ) + 1) * (1 - q)) :=
  (density_correction_prime_hasSum_tail hp hq0 hq1 K).tsum_eq

theorem density_correction_prime_summable {p : ℕ} (hp : p.Prime)
    {q : ℝ} (hq0 : 0 ≤ q) (hq1 : q < 1) :
    Summable (fun k : ℕ => densityMoebiusCorrection (p ^ (k + 1)) * q ^ (k + 1)) := by
  simpa only [Nat.add_zero] using (density_correction_prime_hasSum_tail hp hq0 hq1 0).summable

/-- Exact reciprocal local algebra, with positive denominators guaranteed by primality. -/
theorem density_prime_reciprocal_mass_algebra {p : ℕ} (hp : p.Prime) :
    (1 / (p : ℝ)) / (((p : ℝ) + 1) * (1 - 1 / (p : ℝ))) =
      1 / ((p : ℝ)^2 - 1) := by
  have hp0 : (p : ℝ) ≠ 0 := by exact_mod_cast hp.ne_zero
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hs : (p : ℝ)^2 - 1 ≠ 0 := by nlinarith
  have hm : (p : ℝ) - 1 ≠ 0 := by linarith
  field_simp [hp0, hs, hm]
  ring

/-- Actual reciprocal prime-power series, including every positive exponent. -/
theorem density_correction_prime_reciprocal_hasSum {p : ℕ} (hp : p.Prime) :
    HasSum (fun k : ℕ => densityMoebiusCorrection (p ^ (k + 1)) / (p : ℝ) ^ (k + 1))
      (1 / ((p : ℝ)^2 - 1)) := by
  have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hq : (1 / (p : ℝ)) < 1 := (div_lt_one hp0).mpr hp1
  have h := density_correction_prime_hasSum_tail hp (one_div_nonneg.mpr hp0.le) hq 0
  simpa only [Nat.add_zero, zero_add, pow_one, one_div_pow, ← div_eq_mul_one_div,
    density_prime_reciprocal_mass_algebra hp] using h

/-- Exact reciprocal tail after the first K positive powers; none is deleted. -/
theorem density_correction_prime_reciprocal_tail {p : ℕ} (hp : p.Prime) (K : ℕ) :
    (∑' k : ℕ, densityMoebiusCorrection (p ^ (k + K + 1)) / (p : ℝ) ^ (k + K + 1)) =
      (1 / (p : ℝ)) ^ K / ((p : ℝ)^2 - 1) := by
  have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hq : (1 / (p : ℝ)) < 1 := (div_lt_one hp0).mpr hp1
  have h := density_correction_prime_tsum_tail hp (one_div_nonneg.mpr hp0.le) hq K
  simp only [one_div_pow, ← div_eq_mul_one_div] at h
  rw [h]
  calc
    (1 / (p : ℝ) ^ (K + 1)) / (((p : ℝ) + 1) * (1 - 1 / (p : ℝ))) =
        (1 / (p : ℝ)) ^ K * ((1 / (p : ℝ)) / (((p : ℝ) + 1) * (1 - 1 / (p : ℝ)))) := by
      rw [← one_div_pow, pow_succ]
      ring
    _ = (1 / (p : ℝ)) ^ K / ((p : ℝ)^2 - 1) := by
      rw [density_prime_reciprocal_mass_algebra hp]
      ring

/-- The exponent-zero atom plus all positive powers gives the exact Euler factor. -/
theorem density_correction_prime_reciprocal_factor {p : ℕ} (hp : p.Prime) :
    1 + (∑' k : ℕ, densityMoebiusCorrection (p ^ (k + 1)) / (p : ℝ) ^ (k + 1)) =
      (p : ℝ)^2 / ((p : ℝ)^2 - 1) := by
  rw [(density_correction_prime_reciprocal_hasSum hp).tsum_eq]
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hs : (p : ℝ)^2 - 1 ≠ 0 := by nlinarith
  field_simp
  ring

end GRWTSK.NumberTheory.ArithmeticFunctions
