/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Root counts for prime powers

This module iterates the one-step odd-prime lift and treats powers of two
separately.  It supplies exact local factors only; it does not provide a
sieve estimate or a prime-value theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerCounts

open Finset
open GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots
open GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift

noncomputable section

/-- Reduction of a root to any positive divisor of the modulus. -/
theorem reducedResidue_mem
    {m n a : ℕ} (hm : 0 < m) (hmn : m ∣ n)
    (ha : a ∈ quadraticPlusOneResidues n) :
    a % m ∈ quadraticPlusOneResidues m := by
  rw [mem_quadraticPlusOneResidues]
  constructor
  · exact Nat.mod_lt _ hm
  · have hdiv : m ∣ a ^ 2 + 1 :=
      hmn.trans (mem_quadraticPlusOneResidues.mp ha).2
    have hmod : a % m ≡ a [MOD m] := Nat.mod_modEq _ _
    have hsq : (a % m) ^ 2 ≡ a ^ 2 [MOD m] := hmod.pow 2
    have hadd : (a % m) ^ 2 + 1 ≡ a ^ 2 + 1 [MOD m] :=
      hsq.add_right 1
    exact Nat.modEq_zero_iff_dvd.mp
      (hadd.trans hdiv.modEq_zero_nat)

/-- If a divisor modulus has no roots, neither does any multiple. -/
theorem quadraticPlusOneRootCount_eq_zero_of_dvd
    {m n : ℕ} (hm : 0 < m) (hmn : m ∣ n)
    (hzero : quadraticPlusOneRootCount m = 0) :
    quadraticPlusOneRootCount n = 0 := by
  apply Finset.card_eq_zero.mpr
  apply Finset.eq_empty_of_forall_notMem
  intro a ha
  have hred := reducedResidue_mem hm hmn ha
  have hempty : quadraticPlusOneResidues m = ∅ :=
    Finset.card_eq_zero.mp hzero
  have hfalse : a % m ∈ (∅ : Finset ℕ) := hempty ▸ hred
  exact Finset.notMem_empty _ hfalse

/-- Iteration of the one-step lift: odd-prime counts equal the first-level count. -/
theorem quadraticPlusOneRootCount_primePower_eq_prime
    {p k : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k) :
    quadraticPlusOneRootCount (p ^ k) =
      quadraticPlusOneRootCount p := by
  induction k, hk using Nat.le_induction with
  | base =>
      simp
  | succ k hk ih =>
      rw [quadraticPlusOneRootCount_primePower_succ hp hp2 hk]
      exact ih

/-- Every positive power of a prime `1 mod 4` has exactly two roots. -/
theorem quadraticPlusOneRootCount_primePower_mod_four_one
    {p k : ℕ} (hp : Nat.Prime p) (hmod : p % 4 = 1)
    (hk : 1 ≤ k) :
    quadraticPlusOneRootCount (p ^ k) = 2 := by
  have hp2 : p ≠ 2 := by
    intro h
    subst p
    norm_num at hmod
  rw [quadraticPlusOneRootCount_primePower_eq_prime hp hp2 hk]
  exact quadraticPlusOneRootCount_prime_mod_four_one hp hmod

/-- Every positive power of a prime `3 mod 4` has no roots. -/
theorem quadraticPlusOneRootCount_primePower_mod_four_three
    {p k : ℕ} (hp : Nat.Prime p) (hmod : p % 4 = 3)
    (hk : 1 ≤ k) :
    quadraticPlusOneRootCount (p ^ k) = 0 := by
  have hp2 : p ≠ 2 := by
    intro h
    subst p
    norm_num at hmod
  rw [quadraticPlusOneRootCount_primePower_eq_prime hp hp2 hk]
  exact quadraticPlusOneRootCount_prime_mod_four_three hp hmod

/-- There are no roots modulo four. -/
theorem quadraticPlusOneRootCount_four :
    quadraticPlusOneRootCount 4 = 0 := by
  decide

/-- The exceptional 2-adic branch dies at the second power and remains empty. -/
theorem quadraticPlusOneRootCount_two_power
    {k : ℕ} (hk : 2 ≤ k) :
    quadraticPlusOneRootCount (2 ^ k) = 0 := by
  have h4dvd : 4 ∣ 2 ^ k := by
    obtain ⟨j, rfl⟩ := Nat.exists_eq_add_of_le hk
    change 2 ^ 2 ∣ 2 ^ (2 + j)
    rw [pow_add]
    exact dvd_mul_right _ _
  exact quadraticPlusOneRootCount_eq_zero_of_dvd
    (by norm_num) h4dvd quadraticPlusOneRootCount_four

/-- Complete positive-exponent local count for the prime two. -/
theorem quadraticPlusOneRootCount_two_power_iff
    {k : ℕ} (hk : 1 ≤ k) :
    quadraticPlusOneRootCount (2 ^ k) =
      if k = 1 then 1 else 0 := by
  by_cases h1 : k = 1
  · subst k
    simpa using quadraticPlusOneRootCount_two
  · rw [if_neg h1]
    exact quadraticPlusOneRootCount_two_power (by omega)

/-- Rational local density attached to the exact finite root count. -/
def quadraticPlusOnePrimePowerDensity (p k : ℕ) : ℚ :=
  quadraticPlusOneRootCount (p ^ k) / (p ^ k : ℚ)

/-- The exact density at primes congruent to one modulo four. -/
theorem quadraticPlusOnePrimePowerDensity_mod_four_one
    {p k : ℕ} (hp : Nat.Prime p) (hmod : p % 4 = 1)
    (hk : 1 ≤ k) :
    quadraticPlusOnePrimePowerDensity p k =
      2 / (p ^ k : ℚ) := by
  rw [quadraticPlusOnePrimePowerDensity,
    quadraticPlusOneRootCount_primePower_mod_four_one hp hmod hk]
  norm_num

/-- The exact density at primes congruent to three modulo four. -/
theorem quadraticPlusOnePrimePowerDensity_mod_four_three
    {p k : ℕ} (hp : Nat.Prime p) (hmod : p % 4 = 3)
    (hk : 1 ≤ k) :
    quadraticPlusOnePrimePowerDensity p k = 0 := by
  rw [quadraticPlusOnePrimePowerDensity,
    quadraticPlusOneRootCount_primePower_mod_four_three hp hmod hk]
  norm_num

end
end GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerCounts
