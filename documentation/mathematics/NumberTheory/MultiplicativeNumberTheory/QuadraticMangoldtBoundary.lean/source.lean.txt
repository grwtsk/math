/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt

set_option autoImplicit false

/-!
# Actual polynomial Mangoldt source and fresh-index margin

This instantiates the inherited prime-value boundary with the literal
sum of von Mangoldt weights at n^2+1. The complete correction is retained.
No lower bound for this thin source or upper correction estimate is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.QuadraticMangoldtBoundary

open scoped BigOperators ArithmeticFunction
open Finset ArithmeticFunction
open GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary
open GRWTSK.NumberTheory.Primes.ConfigurationCounts

noncomputable section

/-- The actual Mangoldt sum on the positive quadratic indices. -/
def quadraticMangoldtMass (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 X, Λ (n ^ 2 + 1)

/-- The entire finite correction, including every nonprime supported value. -/
def quadraticPrimePowerCorrection (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 X,
    (Λ (n ^ 2 + 1) - quadraticPrimeLogWeight n)

/-- Each prime-only weight is bounded by its actual Mangoldt weight. -/
theorem quadraticPrimeLogWeight_le_mangoldt (n : ℕ) :
    quadraticPrimeLogWeight n ≤ Λ (n ^ 2 + 1) := by
  by_cases h : 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1)
  · rw [quadraticPrimeLogWeight, if_pos h, vonMangoldt_apply_prime h.2]
    simp only [Nat.cast_add, Nat.cast_pow, Nat.cast_one, le_refl]
  · rw [quadraticPrimeLogWeight, if_neg h]
    exact vonMangoldt_nonneg

/-- The complete correction is nonnegative. -/
theorem quadraticPrimePowerCorrection_nonneg (X : ℕ) :
    0 ≤ quadraticPrimePowerCorrection X := by
  unfold quadraticPrimePowerCorrection
  apply Finset.sum_nonneg
  intro n hn
  exact sub_nonneg.mpr (quadraticPrimeLogWeight_le_mangoldt n)

/-- Exact source identity; this equality is not a correction estimate. -/
theorem quadraticMangoldtMass_eq_prime_add_correction (X : ℕ) :
    quadraticMangoldtMass X =
      quadraticPrimeLogMass X + quadraticPrimePowerCorrection X := by
  unfold quadraticMangoldtMass quadraticPrimeLogMass quadraticPrimePowerCorrection
  rw [sum_sub_distrib]
  ring

/-- One-cutoff positivity still requires both estimates and a strict margin. -/
theorem quadraticCount_pos_of_mangoldt_bounds {X : ℕ} {L E : ℝ}
    (hmain : L ≤ quadraticMangoldtMass X)
    (hcorr : quadraticPrimePowerCorrection X ≤ E)
    (hstrict : E < L) : 0 < quadraticCount X := by
  exact quadraticCount_pos_of_source_correction_bounds
    (quadraticMangoldtMass_eq_prime_add_correction X) hmain hcorr hstrict

/-- A strict increase of actual prime mass forces a genuinely new index. -/
theorem exists_fresh_quadraticPrime_of_mass_lt {B X : ℕ} (hBX : B ≤ X)
    (hmass : quadraticPrimeLogMass B < quadraticPrimeLogMass X) :
    ∃ n : ℕ, B < n ∧ n ≤ X ∧ 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1) := by
  by_contra hnone
  have hsubset : Finset.Icc 1 B ⊆ Finset.Icc 1 X := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans hBX⟩
  have heq : quadraticPrimeLogMass B = quadraticPrimeLogMass X := by
    unfold quadraticPrimeLogMass
    apply Finset.sum_subset hsubset
    intro n hn hnB
    have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
    have hnX : n ≤ X := (Finset.mem_Icc.mp hn).2
    have hBn : B < n := by
      simp only [Finset.mem_Icc, hn1, true_and] at hnB
      omega
    have hp : ¬ Nat.Prime (n ^ 2 + 1) := by
      intro hprime
      exact hnone ⟨n, hBn, hnX, hn1, hprime⟩
    simp [quadraticPrimeLogWeight, hp]
  linarith

/-- The fresh-index margin pays the entire old prime mass as well as the
complete proper-power correction. Equality does not suffice. -/
theorem exists_fresh_quadraticPrime_of_mangoldt_bounds
    {B X : ℕ} {L E : ℝ} (hBX : B ≤ X)
    (hmain : L ≤ quadraticMangoldtMass X)
    (hcorr : quadraticPrimePowerCorrection X ≤ E)
    (hstrict : quadraticPrimeLogMass B + E < L) :
    ∃ n : ℕ, B < n ∧ n ≤ X ∧ 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1) := by
  apply exists_fresh_quadraticPrime_of_mass_lt hBX
  rw [quadraticMangoldtMass_eq_prime_add_correction] at hmain
  linarith

end
end GRWTSK.NumberTheory.Primes.QuadraticMangoldtBoundary
