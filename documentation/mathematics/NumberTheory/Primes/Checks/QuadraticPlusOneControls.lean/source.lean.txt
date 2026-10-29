/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Controls for the `n^2 + 1` local and Gaussian boundary

These source controls distinguish coprime CRT multiplicativity from false
noncoprime use, retain prime-power moduli, preserve the fixed Gaussian
imaginary coordinate, and reject local admissibility as a prime certificate.

The controls have not been executed in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOneControls

open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots
open GRWTSK.NumberTheory.Primes.QuadraticPlusOneResidueCounting
open GRWTSK.NumberTheory.Primes.QuadraticGaussianLine
open GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary

noncomputable section

/-- Modulus one is explicit rather than a hidden denominator edge case. -/
theorem root_count_one_control :
    quadraticPlusOneRootCount 1 = 1 := by
  exact quadraticPlusOneRootCount_one

/-- The unique root modulo two is represented by one. -/
theorem root_count_two_control :
    quadraticPlusOneRootCount 2 = 1 ∧
      quadraticPlusOneResidues 2 = {1} := by
  constructor
  · exact quadraticPlusOneRootCount_two
  · decide

/-- Prime five is the first `1 mod 4` example and has two roots. -/
theorem prime_five_root_control :
    quadraticPlusOneRootCount 5 = 2 ∧
      quadraticPlusOneResidues 5 = {2, 3} := by
  constructor
  · exact quadraticPlusOneRootCount_prime_mod_four_one
      (by norm_num) (by norm_num)
  · decide

/-- Prime three is `3 mod 4` and has no root. -/
theorem prime_three_root_control :
    quadraticPlusOneRootCount 3 = 0 := by
  exact quadraticPlusOneRootCount_prime_mod_four_three
    (by norm_num) (by norm_num)

/-- Coprime multiplicativity works at `2*5=10`. -/
theorem coprime_multiplicativity_control :
    quadraticPlusOneRootCount 10 =
      quadraticPlusOneRootCount 2 *
        quadraticPlusOneRootCount 5 := by
  simpa using quadraticPlusOneRootCount_mul
    (m := 2) (n := 5) (by norm_num) (by norm_num)
      (by norm_num)

/-- The same formula is false for the noncoprime pair `(2,2)`: roots modulo
four are not obtained by multiplying the root count modulo two by itself. -/
theorem noncoprime_multiplicativity_rejected :
    quadraticPlusOneRootCount 4 = 0 ∧
      quadraticPlusOneRootCount 2 *
          quadraticPlusOneRootCount 2 = 1 := by
  decide

/-- Exact finite block count at `d=5`, `X=12`: two full blocks plus one
endpoint root. -/
theorem residue_block_count_control :
    quadraticPlusOneDivisorCount 5 12 = 5 ∧
      quadraticPlusOneCutoffError 5 12 = 1 := by
  decide

/-- The corresponding rational discrepancy is exactly `1/5`, hence below the
root-count allowance two. -/
theorem residue_discrepancy_control :
    quadraticPlusOneLocalDiscrepancy 5 12 = (1 / 5 : ℚ) ∧
      |quadraticPlusOneLocalDiscrepancy 5 12| ≤
        quadraticPlusOneRootCount 5 := by
  constructor
  · norm_num [quadraticPlusOneLocalDiscrepancy,
      quadraticPlusOneLocalMain,
      residue_block_count_control.1, prime_five_root_control.1]
  · exact abs_quadraticPlusOneLocalDiscrepancy_le
      (d := 5) (X := 12) (by norm_num)

/-- Prime-power modulus twenty-five has two lifted roots and cannot be dropped
from a sieve model merely because the prime-five roots are known. -/
theorem prime_power_modulus_control :
    quadraticPlusOneRootCount 25 = 2 ∧
      25 ∣ 7 ^ 2 + 1 := by
  decide

/-- Local survival for small moduli does not imply primality: `8^2+1=65` is
not divisible by two or three, but is composite. -/
theorem composite_local_survivor_control :
    ¬ 2 ∣ 8 ^ 2 + 1 ∧
      ¬ 3 ∣ 8 ^ 2 + 1 ∧
      ¬ Nat.Prime (8 ^ 2 + 1) := by
  norm_num

/-- The Gaussian line records the same composite value as an exact norm. -/
theorem gaussian_norm_sixty_five_control :
    (quadraticGaussianLine 8).norm = 65 := by
  norm_num [quadraticGaussianLine_norm]

/-- A concrete nontrivial Gaussian factorization of `8+i` retains the fixed
imaginary equation. -/
theorem gaussian_factorization_control :
    (⟨1, 2⟩ : GaussianInt) *
        (⟨2, -3⟩ : GaussianInt) =
      quadraticGaussianLine 8 := by
  exact (gaussian_product_eq_quadraticLine_iff
    1 2 2 (-3) 8).2 (by norm_num)

/-- Changing one sign loses the thin-line condition: the imaginary coordinate
is seven rather than one. -/
theorem fixed_imaginary_coordinate_control :
    ((⟨1, 2⟩ : GaussianInt) *
      (⟨2, 3⟩ : GaussianInt)).im = 7 ∧
      (⟨1, 2⟩ : GaussianInt) *
          (⟨2, 3⟩ : GaussianInt) ≠
        quadraticGaussianLine (-4) := by
  constructor
  · norm_num [gaussian_product_im]
  · intro h
    have him := congrArg Zsqrtd.im h
    norm_num [gaussian_product_im,
      quadraticGaussianLine] at him

/-- One prime value at `n=1` cannot be reused as a witness above every lower
index cutoff. -/
theorem repeated_index_reuse_rejected :
    ¬ (∀ B : ℕ, ∃ n : ℕ,
      B < n ∧ n = 1 ∧ Nat.Prime (n ^ 2 + 1)) := by
  intro h
  rcases h 1 with ⟨n, hn, rfl, hp⟩
  omega

/-- Exact local and Gaussian identities can coexist with zero prime count at a
small cutoff. -/
theorem exact_local_data_not_prime_witness :
    quadraticCount 0 = 0 ∧
      quadraticPlusOneRootCount 5 = 2 := by
  exact ⟨by decide, prime_five_root_control.1⟩

/-- Equality at the complete error budget is not a strict prime certificate. -/
theorem strict_quadratic_margin_rejected :
    ¬ ((2 : ℝ) + 1 < 3) := by
  norm_num

end
end GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOneControls
