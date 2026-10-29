/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact Goldbach local factors at prime moduli

For a prime modulus `p`, the local Goldbach condition excludes the zero
residue and the target residue `N mod p`. The surviving residue count is
therefore `p - 1` when `p ∣ N`, and `p - 2` otherwise.

The normalized rational factor is the exact finite local density ratio

`p * residueCount / (p - 1)^2`.

For odd primes this splits into the universal factor
`1 - 1 / (p - 1)^2` and the divisor correction `(p - 1) / (p - 2)`.
At `p = 2`, the factor is two for even targets and zero for odd targets.

Only finite prime-modulus arithmetic is developed here. No infinite Euler
product, singular-series convergence, major/minor-arc estimate, or Goldbach
theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachLocalFactors

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.ConfigurationCounts

/-- Residues through one complete prime-modulus block that avoid both local
obstructions: zero and the target residue. -/
def goldbachPrimeResidues (p N : ℕ) : Finset ℕ :=
  ((Finset.range p).erase 0).erase (N % p)

/-- The exact number of locally admissible first-prime residue classes. -/
def goldbachPrimeResidueCount (p N : ℕ) : ℕ :=
  (goldbachPrimeResidues p N).card

/-- Membership retains the complete residue block and both excluded classes. -/
theorem mem_goldbachPrimeResidues {p N a : ℕ} :
    a ∈ goldbachPrimeResidues p N ↔
      a < p ∧ a ≠ 0 ∧ a ≠ N % p := by
  simp only [goldbachPrimeResidues, Finset.mem_erase, Finset.mem_range]
  aesop

/-- When the prime modulus divides the target, the two excluded residue
classes coincide. -/
theorem goldbachPrimeResidueCount_eq_sub_one {p N : ℕ}
    (hp : Nat.Prime p) (hdiv : p ∣ N) :
    goldbachPrimeResidueCount p N = p - 1 := by
  have hzero : 0 ∈ Finset.range p := Finset.mem_range.mpr hp.pos
  rw [goldbachPrimeResidueCount, goldbachPrimeResidues,
    Nat.mod_eq_zero_of_dvd hdiv, Finset.erase_idem,
    Finset.card_erase_of_mem hzero, Finset.card_range]

/-- When the prime modulus does not divide the target, zero and `N mod p`
are distinct excluded classes. -/
theorem goldbachPrimeResidueCount_eq_sub_two {p N : ℕ}
    (hp : Nat.Prime p) (hndiv : ¬ p ∣ N) :
    goldbachPrimeResidueCount p N = p - 2 := by
  have hzero : 0 ∈ Finset.range p := Finset.mem_range.mpr hp.pos
  have hmod : N % p ≠ 0 := fun hz => hndiv (Nat.dvd_of_mod_eq_zero hz)
  have htarget : N % p ∈ (Finset.range p).erase 0 := by
    exact Finset.mem_erase.mpr
      ⟨hmod, Finset.mem_range.mpr (Nat.mod_lt N hp.pos)⟩
  rw [goldbachPrimeResidueCount, goldbachPrimeResidues,
    Finset.card_erase_of_mem htarget,
    Finset.card_erase_of_mem hzero, Finset.card_range]
  omega

/-- Exact prime-modulus local count in its two arithmetic cases. -/
theorem goldbachPrimeResidueCount_formula {p N : ℕ}
    (hp : Nat.Prime p) :
    goldbachPrimeResidueCount p N =
      if p ∣ N then p - 1 else p - 2 := by
  by_cases hdiv : p ∣ N
  · rw [if_pos hdiv, goldbachPrimeResidueCount_eq_sub_one hp hdiv]
  · rw [if_neg hdiv, goldbachPrimeResidueCount_eq_sub_two hp hdiv]

/-- The modulus-two count is exactly the parity obstruction. -/
theorem goldbachPrimeResidueCount_two (N : ℕ) :
    goldbachPrimeResidueCount 2 N = if Even N then 1 else 0 := by
  simpa [even_iff_two_dvd] using
    (goldbachPrimeResidueCount_formula (N := N) Nat.prime_two)

/-- A prime local residue survives exactly when the modulus is odd or the
target passes the modulus-two parity condition. -/
theorem goldbachPrimeResidueCount_pos_iff {p N : ℕ}
    (hp : Nat.Prime p) :
    0 < goldbachPrimeResidueCount p N ↔ p ≠ 2 ∨ Even N := by
  by_cases hp2 : p = 2
  · subst p
    rw [goldbachPrimeResidueCount_two]
    by_cases hN : Even N <;> simp [hN]
  · have hpgt : 2 < p := lt_of_le_of_ne hp.two_le (Ne.symm hp2)
    rw [goldbachPrimeResidueCount_formula hp]
    by_cases hdiv : p ∣ N <;> simp [hdiv, hp2] <;> omega

/-- The exact normalized local density ratio at one prime modulus. -/
def goldbachPrimeLocalFactor (p N : ℕ) : ℚ :=
  (p : ℚ) * (goldbachPrimeResidueCount p N : ℚ) /
    (((p - 1 : ℕ) : ℚ) ^ 2)

/-- The universal odd-prime local factor. -/
def goldbachUniversalOddFactor (p : ℕ) : ℚ :=
  1 - 1 / (((p - 1 : ℕ) : ℚ) ^ 2)

/-- The target-dependent divisor correction at one odd prime. -/
def goldbachDivisorCorrection (p N : ℕ) : ℚ :=
  if p ∣ N then
    ((p - 1 : ℕ) : ℚ) / ((p - 2 : ℕ) : ℚ)
  else
    1

/-- Closed form of the normalized local density ratio. -/
theorem goldbachPrimeLocalFactor_formula {p N : ℕ}
    (hp : Nat.Prime p) :
    goldbachPrimeLocalFactor p N =
      if p ∣ N then
        (p : ℚ) / ((p - 1 : ℕ) : ℚ)
      else
        goldbachUniversalOddFactor p := by
  have hpq : (1 : ℚ) < (p : ℚ) := by
    exact_mod_cast hp.one_lt
  have hsub1 : (p : ℚ) - 1 ≠ 0 := by linarith
  by_cases hdiv : p ∣ N
  · rw [goldbachPrimeLocalFactor, goldbachPrimeResidueCount_eq_sub_one hp hdiv,
      if_pos hdiv, Nat.cast_sub hp.one_le]
    field_simp [hsub1] <;> ring
  · have hp2 : 2 ≤ p := hp.two_le
    rw [goldbachPrimeLocalFactor, goldbachPrimeResidueCount_eq_sub_two hp hdiv,
      if_neg hdiv, goldbachUniversalOddFactor,
      Nat.cast_sub hp.one_le, Nat.cast_sub hp2]
    field_simp [hsub1] <;> ring

/-- The modulus-two normalized factor is two for even targets and zero for
odd targets. -/
theorem goldbachPrimeLocalFactor_two (N : ℕ) :
    goldbachPrimeLocalFactor 2 N = if Even N then 2 else 0 := by
  rw [goldbachPrimeLocalFactor_formula Nat.prime_two]
  simp [goldbachUniversalOddFactor, even_iff_two_dvd]

/-- Positivity of the rational factor has exactly the same local-admissibility
condition as positivity of the residue count. -/
theorem goldbachPrimeLocalFactor_pos_iff {p N : ℕ}
    (hp : Nat.Prime p) :
    0 < goldbachPrimeLocalFactor p N ↔ p ≠ 2 ∨ Even N := by
  have hpq : (0 : ℚ) < (p : ℚ) := by exact_mod_cast hp.pos
  have hsub : (0 : ℚ) < ((p - 1 : ℕ) : ℚ) := by
    exact_mod_cast Nat.sub_pos_of_lt hp.one_lt
  have hden : (0 : ℚ) < (((p - 1 : ℕ) : ℚ) ^ 2) :=
    pow_pos hsub 2
  rw [goldbachPrimeLocalFactor, div_pos_iff_of_pos_right hden,
    mul_pos_iff_of_pos_left hpq]
  exact_mod_cast (goldbachPrimeResidueCount_pos_iff hp)

/-- At odd primes, the normalized density is the universal factor times the
standard correction for primes dividing the target. -/
theorem goldbachPrimeLocalFactor_eq_universal_mul_correction {p N : ℕ}
    (hp : Nat.Prime p) (hp2 : p ≠ 2) :
    goldbachPrimeLocalFactor p N =
      goldbachUniversalOddFactor p * goldbachDivisorCorrection p N := by
  have hpgt : 2 < p := lt_of_le_of_ne hp.two_le (Ne.symm hp2)
  have hpq : (2 : ℚ) < (p : ℚ) := by exact_mod_cast hpgt
  have hsub1 : (p : ℚ) - 1 ≠ 0 := by linarith
  have hsub2 : (p : ℚ) - 2 ≠ 0 := by linarith
  rw [goldbachPrimeLocalFactor_formula hp]
  by_cases hdiv : p ∣ N
  · rw [if_pos hdiv, goldbachUniversalOddFactor,
      goldbachDivisorCorrection, if_pos hdiv,
      Nat.cast_sub hp.one_le, Nat.cast_sub hp.two_le]
    field_simp [hsub1, hsub2] <;> ring
  · simp [hdiv, goldbachUniversalOddFactor, goldbachDivisorCorrection]

/-- A finite prime set carries the exact product of its normalized local
density ratios. This is not an infinite singular series. -/
def finiteGoldbachLocalProduct (P : Finset ℕ) (N : ℕ) : ℚ :=
  ∏ p ∈ P, goldbachPrimeLocalFactor p N

/-- Every finite family of genuine prime local factors is positive for an
even target. -/
theorem finiteGoldbachLocalProduct_pos {P : Finset ℕ} {N : ℕ}
    (hP : ∀ p ∈ P, Nat.Prime p) (hN : Even N) :
    0 < finiteGoldbachLocalProduct P N := by
  unfold finiteGoldbachLocalProduct
  exact Finset.prod_pos fun p hp =>
    (goldbachPrimeLocalFactor_pos_iff (hP p hp)).2 (Or.inr hN)

/-- If the modulus-two factor is retained, every odd target makes the finite
local product vanish. -/
theorem finiteGoldbachLocalProduct_eq_zero_of_two_mem {P : Finset ℕ} {N : ℕ}
    (h2 : 2 ∈ P) (hN : ¬ Even N) :
    finiteGoldbachLocalProduct P N = 0 := by
  unfold finiteGoldbachLocalProduct
  exact Finset.prod_eq_zero h2 (by simp [goldbachPrimeLocalFactor_two, hN])

/-- On a finite family of odd primes, the local product splits into the
universal core and the target-dependent divisor corrections. -/
theorem finiteGoldbachLocalProduct_factorization {P : Finset ℕ} {N : ℕ}
    (hP : ∀ p ∈ P, Nat.Prime p) (hodd : ∀ p ∈ P, p ≠ 2) :
    finiteGoldbachLocalProduct P N =
      (∏ p ∈ P, goldbachUniversalOddFactor p) *
      ∏ p ∈ P, goldbachDivisorCorrection p N := by
  unfold finiteGoldbachLocalProduct
  calc
    (∏ p ∈ P, goldbachPrimeLocalFactor p N) =
        ∏ p ∈ P,
          (goldbachUniversalOddFactor p * goldbachDivisorCorrection p N) := by
      apply Finset.prod_congr rfl
      intro p hp
      exact goldbachPrimeLocalFactor_eq_universal_mul_correction
        (hP p hp) (hodd p hp)
    _ = _ := by rw [Finset.prod_mul_distrib]

end GRWTSK.NumberTheory.Primes.GoldbachLocalFactors
