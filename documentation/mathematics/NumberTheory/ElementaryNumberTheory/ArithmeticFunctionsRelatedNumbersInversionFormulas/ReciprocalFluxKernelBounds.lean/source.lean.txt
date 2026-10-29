/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# Deterministic bounds for the reciprocal-prefix flux kernel

The square-root increments in the zero-mass reciprocal kernel have harmonic
square mass.  On the `n`th logarithmic cell this gives the explicit bound
`Q_n(u) ≤ 4 + 2 log n` for the deterministic kernel square mass.  The result
does not estimate the arithmetic reciprocal-prefix variation.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds

open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy

/-- A consecutive square-root increment has square at most the corresponding
harmonic weight. -/
theorem sqrt_increment_sq_le_reciprocal (k : ℕ) :
    (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) ^ 2 ≤
      1 / ((k + 1 : ℕ) : ℝ) := by
  have ha : 0 < Real.sqrt ((k + 1 : ℕ) : ℝ) := by positivity
  have hb : 0 ≤ Real.sqrt (k : ℝ) := Real.sqrt_nonneg _
  have hab : 0 ≤ Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ) := by
    exact sub_nonneg.mpr (Real.sqrt_le_sqrt (by exact_mod_cast Nat.le_succ k))
  have hconj :
      (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) *
          (Real.sqrt ((k + 1 : ℕ) : ℝ) + Real.sqrt (k : ℝ)) = 1 := by
    calc
      _ = Real.sqrt ((k + 1 : ℕ) : ℝ) ^ 2 - Real.sqrt (k : ℝ) ^ 2 := by ring
      _ = 1 := by
        rw [Real.sq_sqrt (by positivity), Real.sq_sqrt (by positivity)]
        norm_num
  have hrecip :
      Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ) =
        1 / (Real.sqrt ((k + 1 : ℕ) : ℝ) + Real.sqrt (k : ℝ)) := by
    rw [eq_div_iff]
    · exact hconj
    · positivity
  rw [hrecip, div_pow, one_pow]
  apply one_div_le_one_div_of_le
  · positivity
  · nlinarith [Real.sq_sqrt (show 0 ≤ ((k + 1 : ℕ) : ℝ) by positivity)]

/-- On and to the right of the left endpoint of the `n`th logarithmic cell,
the deterministic reciprocal-flux kernel has only logarithmic square mass. -/
theorem reciprocalFluxWeightSquareMass_le_log {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hlo : Real.log (n : ℝ) ≤ u) :
    reciprocalFluxWeightSquareMass u n ≤ 4 + 2 * Real.log n := by
  have hx : (0 : ℝ) < n := by exact_mod_cast hn
  have hexp : Real.exp (-u) ≤ 1 / (n : ℝ) := by
    calc
      Real.exp (-u) ≤ Real.exp (-Real.log (n : ℝ)) :=
        Real.exp_le_exp.mpr (neg_le_neg hlo)
      _ = 1 / (n : ℝ) := by rw [Real.exp_neg, Real.exp_log hx, one_div]
  have hhalf : Real.exp (-u / 2) ^ 2 = Real.exp (-u) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  unfold reciprocalFluxWeightSquareMass reciprocalFluxWeight
  calc
    (∑ k ∈ Finset.range n,
      (Real.exp (-u / 2) -
        (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ))) ^ 2) ≤
        ∑ k ∈ Finset.range n,
          (2 * Real.exp (-u) + 2 / ((k + 1 : ℕ) : ℝ)) := by
      apply Finset.sum_le_sum
      intro k _hk
      calc
        _ ≤ 2 * Real.exp (-u / 2) ^ 2 +
            2 * (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) ^ 2 := by
          nlinarith [sq_nonneg (Real.exp (-u / 2) +
            (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)))]
        _ ≤ 2 * Real.exp (-u) + 2 / ((k + 1 : ℕ) : ℝ) := by
          rw [hhalf]
          calc
            2 * Real.exp (-u) +
                2 * (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) ^ 2 ≤
              2 * Real.exp (-u) + 2 * (1 / ((k + 1 : ℕ) : ℝ)) :=
                add_le_add (le_refl _)
                  (mul_le_mul_of_nonneg_left
                    (sqrt_increment_sq_le_reciprocal k) (by norm_num))
            _ = _ := by ring
    _ = 2 * (n : ℝ) * Real.exp (-u) + 2 * (harmonic n : ℝ) := by
      rw [Finset.sum_add_distrib, Finset.sum_const, Finset.card_range,
        harmonic, Rat.cast_sum]
      simp_rw [Rat.cast_inv, Rat.cast_natCast, nsmul_eq_mul, Finset.mul_sum,
        div_eq_mul_inv]
      ring
    _ ≤ 2 + 2 * (1 + Real.log n) := by
      have hnexp : (n : ℝ) * Real.exp (-u) ≤ 1 := by
        calc
          _ ≤ (n : ℝ) * (1 / (n : ℝ)) :=
            mul_le_mul_of_nonneg_left hexp hx.le
          _ = 1 := by field_simp
      have hharm : (harmonic n : ℝ) ≤ 1 + Real.log n :=
        harmonic_le_one_add_log n
      linarith
    _ = 4 + 2 * Real.log n := by ring

end GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds.sqrt_increment_sq_le_reciprocal
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalFluxKernelBounds.reciprocalFluxWeightSquareMass_le_log
