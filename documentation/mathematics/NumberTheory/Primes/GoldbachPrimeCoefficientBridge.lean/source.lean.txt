/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Fourier.FiniteAdditiveProjector
import GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
import GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries
import Mathlib.Algebra.CharP.Basic
import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Prime denominator coefficients and Goldbach local factors

This module evaluates the finite arithmetic coefficient contributed by a prime
denominator in the canonical progression model.

The exact finite character calculation gives

`C_p(N) = 1 / (p - 1)` when `p ∣ N`, and
`C_p(N) = -1 / (p - 1)^2` otherwise.

Consequently `1 + C_p(N)` is exactly the prime-modulus local density factor
already defined in `GoldbachLocalFactors`. Finite products of these Euler
factors therefore agree with the existing finite Goldbach local products and,
once the cutoff contains two, with the existing truncated series.

This is finite character algebra only. It does not identify the denominator
sum in the circle integral with an Euler product, evaluate the clipped singular
integrals, or supply a prime-progression or minor-arc estimate.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge

open scoped BigOperators Real
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachLocalFactors
open GRWTSK.NumberTheory.Primes.GoldbachTruncatedSeries

noncomputable section

/-- The complete finite character sum at denominator `q` and integer
frequency `m`, written with the same real representatives as the rational-arc
model. -/
def goldbachFullIntegerPhaseSum (q : ℕ) (m : ℤ) : ℂ :=
  ∑ a ∈ Finset.range q,
    unitCharacter m (goldbachRationalArcCenter a q)

/-- The corresponding sum over reduced residue representatives. -/
def goldbachReducedIntegerPhaseSum (q : ℕ) (m : ℤ) : ℂ :=
  ∑ a ∈ goldbachCoprimeResidues q,
    unitCharacter m (goldbachRationalArcCenter a q)

/-- The real-representative character agrees with the canonical standard
additive character on `ZMod q`. -/
theorem unitCharacter_integer_rational_eq_stdAddChar
    (q : ℕ) [NeZero q] (m : ℤ) (a : ℕ) :
    unitCharacter m (goldbachRationalArcCenter a q) =
      ZMod.stdAddChar ((a : ZMod q) * (m : ZMod q)) := by
  have hcast :
      (a : ZMod q) * (m : ZMod q) =
        (((a : ℤ) * m : ℤ) : ZMod q) := by
    push_cast
    ring
  rw [hcast, ZMod.stdAddChar_coe]
  simp only [unitCharacter, fourier_coe_apply,
    goldbachRationalArcCenter, div_one]
  push_cast
  congr 1
  have hqC : (q : ℂ) ≠ 0 := by
    exact_mod_cast (NeZero.ne q)
  field_simp [hqC]

/-- Reindex the complete natural representative sum by `ZMod q`. -/
theorem goldbachFullIntegerPhaseSum_eq_zmod
    (q : ℕ) [NeZero q] (m : ℤ) :
    goldbachFullIntegerPhaseSum q m =
      ∑ x : ZMod q,
        ZMod.stdAddChar (x * (m : ZMod q)) := by
  unfold goldbachFullIntegerPhaseSum
  calc
    (∑ a ∈ Finset.range q,
        unitCharacter m (goldbachRationalArcCenter a q)) =
      ∑ a : Fin q,
        unitCharacter m
          (goldbachRationalArcCenter a.1 q) := by
            simpa using
              (Fin.sum_univ_eq_sum_range
                (fun a : ℕ =>
                  unitCharacter m
                    (goldbachRationalArcCenter a q)) q).symm
    _ =
      ∑ x : ZMod q,
        ZMod.stdAddChar (x * (m : ZMod q)) := by
      rw [← Equiv.sum_comp (ZMod.finEquiv q).toEquiv]

      apply Fintype.sum_congr
      intro a
      rw [unitCharacter_integer_rational_eq_stdAddChar]
      congr 2
      cases q with
      | zero => exact ((NeZero.ne 0) rfl).elim
      | succ n =>
        apply Fin.ext
        exact Nat.mod_eq_of_lt a.isLt

/-- Exact finite orthogonality for the complete denominator character sum. -/
theorem goldbachFullIntegerPhaseSum_formula
    (q : ℕ) [NeZero q] (m : ℤ) :
    goldbachFullIntegerPhaseSum q m =
      if (m : ZMod q) = 0 then (q : ℂ) else 0 := by
  rw [goldbachFullIntegerPhaseSum_eq_zmod]
  simpa [ZMod.card, mul_comm] using
    (AddChar.sum_mulShift
      (m : ZMod q)
      (ZMod.isPrimitive_stdAddChar q))

/-- At a prime denominator, the reduced natural representatives are exactly
the complete representatives with zero removed. -/
theorem goldbachCoprimeResidues_eq_erase_zero
    {p : ℕ} (hp : Nat.Prime p) :
    goldbachCoprimeResidues p =
      (Finset.range p).erase 0 := by
  ext a
  simp only [goldbachCoprimeResidues,
    Finset.mem_filter, Finset.mem_range,
    Finset.mem_erase]
  constructor
  · rintro ⟨hap, hcoprime⟩
    refine ⟨?_, hap⟩
    intro ha0
    subst a
    simpa [hp.ne_one] using hcoprime
  · rintro ⟨ha0, hap⟩
    refine ⟨hap, (hp.coprime_iff_not_dvd).2 ?_⟩
    exact Nat.not_dvd_of_pos_of_lt
      (Nat.pos_of_ne_zero ha0) hap

/-- Every integer character takes the value one at the zero rational
representative. -/
theorem unitCharacter_integer_zero_center
    (q : ℕ) (m : ℤ) :
    unitCharacter m (goldbachRationalArcCenter 0 q) = 1 := by
  simp [unitCharacter, goldbachRationalArcCenter,
    fourier_eval_zero]

/-- Prime-denominator reduced character sum. The statement retains the exact
modular zero test before it is specialized to the Goldbach target. -/
theorem goldbachReducedIntegerPhaseSum_prime
    {p : ℕ} (hp : Nat.Prime p) (m : ℤ) :
    goldbachReducedIntegerPhaseSum p m =
      if (m : ZMod p) = 0 then (p : ℂ) - 1 else -1 := by
  letI : NeZero p := ⟨hp.ne_zero⟩
  have hmem : 0 ∈ Finset.range p :=
    Finset.mem_range.mpr hp.pos
  have hsplit :
      goldbachReducedIntegerPhaseSum p m +
          unitCharacter m
            (goldbachRationalArcCenter 0 p) =
        goldbachFullIntegerPhaseSum p m := by
    unfold goldbachReducedIntegerPhaseSum
      goldbachFullIntegerPhaseSum
    rw [goldbachCoprimeResidues_eq_erase_zero hp]
    exact Finset.sum_erase_add _ _ hmem
  rw [unitCharacter_integer_zero_center] at hsplit
  rw [goldbachFullIntegerPhaseSum_formula] at hsplit
  by_cases hm : (m : ZMod p) = 0
  · rw [if_pos hm] at hsplit ⊢
    exact (eq_sub_iff_add_eq).2 hsplit
  · rw [if_neg hm] at hsplit ⊢
    exact (eq_neg_iff_add_eq_zero).2 hsplit

/-- Specialization of the reduced prime-denominator character sum to the
negative Goldbach target frequency. -/
theorem goldbachReducedIntegerPhaseSum_prime_target
    {p N : ℕ} (hp : Nat.Prime p) :
    goldbachReducedIntegerPhaseSum p (-(N : ℤ)) =
      if p ∣ N then (((p - 1 : ℕ) : ℂ)) else -1 := by
  rw [goldbachReducedIntegerPhaseSum_prime hp]
  have hzero :
      ((-(N : ℤ) : ℤ) : ZMod p) = 0 ↔ p ∣ N := by
    simp only [Int.cast_neg, Int.cast_natCast, neg_eq_zero]
    exact ZMod.natCast_eq_zero_iff N p
  by_cases hdiv : p ∣ N
  · rw [if_pos hdiv, if_pos (hzero.2 hdiv)]
    simpa only [Nat.cast_one] using
      (Nat.cast_sub (R := ℂ) hp.one_le).symm
  · rw [if_neg hdiv, if_neg]
    exact fun hz => hdiv (hzero.1 hz)

/-- Symmetry of the finite rational phase under interchange of numerator and
frequency. -/
theorem unitCharacter_rational_mul_comm
    (q a r : ℕ) :
    unitCharacter (r : ℤ)
        (goldbachRationalArcCenter a q) =
      unitCharacter (a : ℤ)
        (goldbachRationalArcCenter r q) := by
  simp only [unitCharacter, fourier_coe_apply,
    goldbachRationalArcCenter, div_one]
  push_cast
  congr 1
  ring

/-- The existing coprime phase sum is the reduced integer phase sum with
frequency equal to the numerator. -/
theorem goldbachCoprimePhaseSum_eq_reducedIntegerPhaseSum
    (a q : ℕ) :
    goldbachCoprimePhaseSum a q =
      goldbachReducedIntegerPhaseSum q (a : ℤ) := by
  unfold goldbachCoprimePhaseSum
    goldbachReducedIntegerPhaseSum
    goldbachCoprimeResidues
  apply Finset.sum_congr rfl
  intro r hr
  exact unitCharacter_rational_mul_comm q a r

/-- At a prime denominator and reduced numerator, the normalized finite
Ramanujan coefficient is exactly `-1 / (p - 1)`. -/
theorem goldbachNormalizedRamanujanCoefficient_prime
    {p a : ℕ} (hp : Nat.Prime p)
    (ha : p.Coprime a) :
    goldbachNormalizedRamanujanCoefficient a p =
      -((((p - 1 : ℕ) : ℂ))⁻¹) := by
  letI : NeZero p := ⟨hp.ne_zero⟩
  have ha0 : (a : ZMod p) ≠ 0 := by
    intro hzero
    have hdiv : p ∣ a :=
      (ZMod.natCast_eq_zero_iff a p).1 hzero
    exact (hp.coprime_iff_not_dvd.1 ha) hdiv
  unfold goldbachNormalizedRamanujanCoefficient
  rw [Nat.totient_prime hp,
    goldbachCoprimePhaseSum_eq_reducedIntegerPhaseSum,
    goldbachReducedIntegerPhaseSum_prime hp]
  simp only [Int.cast_natCast, if_neg ha0]
  ring

/-- The total arithmetic coefficient at one denominator, before any singular
integral is identified across numerators. -/
def goldbachProgressionDenominatorCoefficient
    (q N : ℕ) : ℂ :=
  ∑ a ∈ goldbachCoprimeResidues q,
    goldbachProgressionArithmeticCoefficient N a q

/-- At a prime denominator, the coefficient is the squared normalized
Ramanujan factor times the reduced negative-target phase sum. -/
theorem goldbachProgressionDenominatorCoefficient_prime_factor
    {p N : ℕ} (hp : Nat.Prime p) :
    goldbachProgressionDenominatorCoefficient p N =
      ((((p - 1 : ℕ) : ℂ))⁻¹) ^ 2 *
        goldbachReducedIntegerPhaseSum p (-(N : ℤ)) := by
  unfold goldbachProgressionDenominatorCoefficient
    goldbachProgressionArithmeticCoefficient
  calc
    (∑ a ∈ goldbachCoprimeResidues p,
        goldbachNormalizedRamanujanCoefficient a p *
          goldbachNormalizedRamanujanCoefficient a p *
          unitCharacter (-(N : ℤ))
            (goldbachRationalArcCenter a p)) =
      ∑ a ∈ goldbachCoprimeResidues p,
        ((((p - 1 : ℕ) : ℂ))⁻¹) ^ 2 *
          unitCharacter (-(N : ℤ))
            (goldbachRationalArcCenter a p) := by
      apply Finset.sum_congr rfl
      intro a ha
      have hcoprime : p.Coprime a :=
        (Finset.mem_filter.mp ha).2
      rw [goldbachNormalizedRamanujanCoefficient_prime
        hp hcoprime]
      ring
    _ =
      ((((p - 1 : ℕ) : ℂ))⁻¹) ^ 2 *
        goldbachReducedIntegerPhaseSum p (-(N : ℤ)) := by
      unfold goldbachReducedIntegerPhaseSum
      rw [Finset.mul_sum]

/-- Closed prime-denominator coefficient formula. -/
theorem goldbachProgressionDenominatorCoefficient_prime_formula
    {p N : ℕ} (hp : Nat.Prime p) :
    goldbachProgressionDenominatorCoefficient p N =
      if p ∣ N then
        (((p - 1 : ℕ) : ℂ))⁻¹
      else
        -((((p - 1 : ℕ) : ℂ))⁻¹) ^ 2 := by
  rw [goldbachProgressionDenominatorCoefficient_prime_factor hp,
    goldbachReducedIntegerPhaseSum_prime_target hp]
  have hden : (((p - 1 : ℕ) : ℂ)) ≠ 0 := by
    exact_mod_cast (Nat.sub_pos_of_lt hp.one_lt).ne'
  by_cases hdiv : p ∣ N
  · simp only [if_pos hdiv]
    field_simp [hden] <;> ring
  · simp only [if_neg hdiv]
    ring

/-- Adding the prime-denominator coefficient to one recovers exactly the
existing prime-modulus Goldbach local factor. -/
theorem one_add_goldbachProgressionDenominatorCoefficient_eq_localFactor
    {p N : ℕ} (hp : Nat.Prime p) :
    (1 : ℂ) +
        goldbachProgressionDenominatorCoefficient p N =
      (goldbachPrimeLocalFactor p N : ℂ) := by
  rw [goldbachProgressionDenominatorCoefficient_prime_formula hp,
    goldbachPrimeLocalFactor_formula hp]
  have hden : (((p - 1 : ℕ) : ℂ)) ≠ 0 := by
    exact_mod_cast (Nat.sub_pos_of_lt hp.one_lt).ne'
  by_cases hdiv : p ∣ N
  · rw [if_pos hdiv, if_pos hdiv]
    push_cast
    simp only [Nat.cast_sub hp.one_le] at hden ⊢
    field_simp [hden] <;> ring
  · rw [if_neg hdiv, if_neg hdiv]
    unfold goldbachUniversalOddFactor
    push_cast
    simp only [Nat.cast_sub hp.one_le] at hden ⊢
    field_simp [hden] <;> ring

/-- The Euler factor supplied by one prime denominator. -/
def goldbachPrimeCoefficientEulerFactor
    (p N : ℕ) : ℂ :=
  1 + goldbachProgressionDenominatorCoefficient p N

/-- Finite product of the prime-denominator Euler factors. -/
def goldbachFiniteCoefficientEulerProduct
    (P : Finset ℕ) (N : ℕ) : ℂ :=
  ∏ p ∈ P, goldbachPrimeCoefficientEulerFactor p N

/-- One prime-denominator Euler factor is the cast of the existing local
factor. -/
theorem goldbachPrimeCoefficientEulerFactor_eq_localFactor
    {p N : ℕ} (hp : Nat.Prime p) :
    goldbachPrimeCoefficientEulerFactor p N =
      (goldbachPrimeLocalFactor p N : ℂ) := by
  exact
    one_add_goldbachProgressionDenominatorCoefficient_eq_localFactor hp

/-- A finite family of genuine prime denominator factors agrees exactly with
the cast of the existing finite local product. -/
theorem goldbachFiniteCoefficientEulerProduct_eq_localProduct
    {P : Finset ℕ} {N : ℕ}
    (hP : ∀ p ∈ P, Nat.Prime p) :
    goldbachFiniteCoefficientEulerProduct P N =
      (finiteGoldbachLocalProduct P N : ℂ) := by
  unfold goldbachFiniteCoefficientEulerProduct
    finiteGoldbachLocalProduct
  push_cast
  apply Finset.prod_congr rfl
  intro p hp
  exact goldbachPrimeCoefficientEulerFactor_eq_localFactor
    (hP p hp)

/-- Once the cutoff contains two, the finite coefficient Euler product equals
the cast of the existing truncated Goldbach series. -/
theorem goldbachFiniteCoefficientEulerProduct_eq_truncatedSeries
    {Q N : ℕ} (hQ : 2 ≤ Q) :
    goldbachFiniteCoefficientEulerProduct
        (goldbachPrimeCutoff Q) N =
      (goldbachTruncatedSeries Q N : ℂ) := by
  rw [goldbachFiniteCoefficientEulerProduct_eq_localProduct
    (P := goldbachPrimeCutoff Q)
    (N := N)
    (fun p hp => (mem_goldbachPrimeCutoff.1 hp).1)]
  rw [goldbachTruncatedSeries_eq_cutoffProduct hQ]

end
end GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
