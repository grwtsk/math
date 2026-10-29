/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebiusCorrection
import GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebius

/-!
# Complete positive correction of the density Möbius source

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
Every positive prime power and every natural input is retained. These finite
source facts assert no infinite moment, cancellation rate or polynomial budget.
-/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta

/-- Multiplicativity belongs to the fixed density source. -/
theorem density_moebius_function_multiplicative : densityMoebiusFunction.IsMultiplicative := by
  refine ⟨density_mobius_coefficient_one, ?_⟩
  intro m n h
  exact density_coefficient_mul_of_coprime h

/-- The complete Dirichlet correction is multiplicative. -/
theorem density_moebius_correction_multiplicative : densityMoebiusCorrection.IsMultiplicative :=
  density_moebius_function_multiplicative.mul ArithmeticFunction.isMultiplicative_zeta.natCast

/-- Prime powers are zeros in the original density source above exponent one. -/
theorem density_coefficient_prime_power {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    densityMobiusCoefficient (p ^ k) = if k = 1 then densityMobiusCoefficient p else 0 := by
  by_cases hk1 : k = 1
  · simp [hk1]
  · simp [densityMobiusCoefficient, moebiusReal,
      ArithmeticFunction.moebius_apply_prime_pow hp hk, hk1]

/-- Every positive prime power is retained in the correction with its exact value. -/
theorem density_moebius_correction_prime_power {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    densityMoebiusCorrection (p ^ k) = 1 / ((p : ℝ) + 1) := by
  induction k with
  | zero => exact False.elim (hk rfl)
  | succ k ih =>
    by_cases hk0 : k = 0
    · subst k
      simpa using density_moebius_correction_prime hp
    · rw [density_moebius_correction_divisors, Nat.sum_divisors_prime_pow hp,
        Finset.sum_range_succ, ← Nat.sum_divisors_prime_pow hp,
        ← density_moebius_correction_divisors, ih hk0,
        density_coefficient_prime_power hp (Nat.succ_ne_zero k), if_neg (by omega)]
      simp

/-- Global finite coefficient bounds, including the zero input. -/
theorem density_moebius_correction_bounds (n : ℕ) :
    0 ≤ densityMoebiusCorrection n ∧ densityMoebiusCorrection n ≤ 1 := by
  induction n using Nat.recOnPosPrimePosCoprime with
  | zero => simp
  | one => simp [density_moebius_correction_one]
  | prime_pow p k hp hk =>
    rw [density_moebius_correction_prime_power hp hk.ne']
    constructor
    · positivity
    · apply (div_le_one (by positivity : (0 : ℝ) < p + 1)).mpr
      have hp0 : (0 : ℝ) ≤ p := Nat.cast_nonneg p
      linarith
  | coprime a b _ha _hb hab ha' hb' =>
    rw [density_moebius_correction_multiplicative.map_mul_of_coprime hab]
    refine ⟨mul_nonneg ha'.1 hb'.1, ?_⟩
    simpa only [one_mul] using mul_le_mul ha'.2 hb'.2 hb'.1 (by norm_num : (0 : ℝ) ≤ 1)

theorem density_moebius_correction_nonneg (n : ℕ) : 0 ≤ densityMoebiusCorrection n :=
  (density_moebius_correction_bounds n).1

theorem density_moebius_correction_le_one (n : ℕ) : densityMoebiusCorrection n ≤ 1 :=
  (density_moebius_correction_bounds n).2

/-- Strict positivity on every positive integer; no squareful input is discarded. -/
theorem density_moebius_correction_pos {n : ℕ} (hn : n ≠ 0) :
    0 < densityMoebiusCorrection n := by
  revert hn
  induction n using Nat.recOnPosPrimePosCoprime with
  | zero => simp
  | one => intro _; simp [density_moebius_correction_one]
  | prime_pow p k hp hk =>
    intro _
    rw [density_moebius_correction_prime_power hp hk.ne']
    positivity
  | coprime a b ha hb hab ha' hb' =>
    intro _
    rw [density_moebius_correction_multiplicative.map_mul_of_coprime hab]
    exact mul_pos (ha' (by omega)) (hb' (by omega))

end GRWTSK.NumberTheory.ArithmeticFunctions
