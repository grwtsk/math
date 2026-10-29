/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.Primorial
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Composite Ramanujan sums for the Goldbach progression model

This module identifies the finite reduced-residue phase sum already used by
the Goldbach progression model with the classical integer Ramanujan sum.

For positive `q`, the integer source is written in the divisor form

`c_q(N) = sum_{d | gcd(q,N)} d * μ(q/d)`.

The same source is packaged as a multiplicative arithmetic function of the
modulus.  For a numerator coprime to the modulus, the reduced phase sum is
exactly `μ(q)`.  These are finite identities; no prime-distribution estimate,
infinite singular series, or Goldbach theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan

open scoped BigOperators Real ArithmeticFunction.Moebius
open Finset Nat
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge

noncomputable section

/-- The multiplicative divisor weight `d` when `d ∣ N`, and zero otherwise. -/
def goldbachRamanujanDivisorWeight
    (N : ℕ) : ArithmeticFunction ℤ :=
  ⟨fun d => if d ∣ N then (d : ℤ) else 0, by simp⟩

@[simp]
theorem goldbachRamanujanDivisorWeight_apply
    (N d : ℕ) :
    goldbachRamanujanDivisorWeight N d =
      if d ∣ N then (d : ℤ) else 0 := by
  rfl

/-- The fixed-target divisor weight is multiplicative in the modulus. -/
theorem isMultiplicative_goldbachRamanujanDivisorWeight
    (N : ℕ) :
    (goldbachRamanujanDivisorWeight N).IsMultiplicative := by
  rw [ArithmeticFunction.IsMultiplicative.iff_ne_zero]
  refine ⟨by simp [goldbachRamanujanDivisorWeight], ?_⟩
  intro a b ha hb hab
  simp only [goldbachRamanujanDivisorWeight,
    ArithmeticFunction.coe_mk]
  by_cases haN : a ∣ N
  · by_cases hbN : b ∣ N
    · have habN : a * b ∣ N :=
        hab.mul_dvd_of_dvd_of_dvd haN hbN
      rw [if_pos haN, if_pos hbN, if_pos habN]
      push_cast
      ring
    · have habN : ¬ a * b ∣ N := by
        intro h
        exact hbN (dvd_trans (dvd_mul_left b a) h)
      rw [if_pos haN, if_neg hbN, if_neg habN,
        mul_zero]
  · have habN : ¬ a * b ∣ N := by
      intro h
      exact haN (dvd_trans (dvd_mul_right a b) h)
    rw [if_neg haN, if_neg habN, zero_mul]

/-- The Ramanujan source as a Dirichlet convolution `μ * (d 1_{d|N})`. -/
def goldbachRamanujanArithmeticFunction
    (N : ℕ) : ArithmeticFunction ℤ :=
  (ArithmeticFunction.moebius : ArithmeticFunction ℤ) *
    goldbachRamanujanDivisorWeight N

/-- Integer-valued Ramanujan sum at modulus `q` and target `N`. -/
def goldbachRamanujanInteger
    (q N : ℕ) : ℤ :=
  goldbachRamanujanArithmeticFunction N q

/-- The Ramanujan arithmetic function is multiplicative in the modulus. -/
theorem isMultiplicative_goldbachRamanujanArithmeticFunction
    (N : ℕ) :
    (goldbachRamanujanArithmeticFunction N).IsMultiplicative := by
  unfold goldbachRamanujanArithmeticFunction
  exact ArithmeticFunction.isMultiplicative_moebius.mul
    (isMultiplicative_goldbachRamanujanDivisorWeight N)

/-- Convolution form over divisors of the modulus. -/
theorem goldbachRamanujanInteger_eq_sum_divisors
    {q N : ℕ} (_hq : q ≠ 0) :
    goldbachRamanujanInteger q N =
      ∑ d ∈ q.divisors,
        if d ∣ N then
          (d : ℤ) * ArithmeticFunction.moebius (q / d)
        else 0 := by
  classical
  unfold goldbachRamanujanInteger goldbachRamanujanArithmeticFunction
  rw [ArithmeticFunction.mul_apply, Nat.sum_divisorsAntidiagonal'
    (fun x y => ArithmeticFunction.moebius x * goldbachRamanujanDivisorWeight N y)]
  apply Finset.sum_congr rfl
  intro d hd
  rw [goldbachRamanujanDivisorWeight_apply]
  split_ifs <;> ring

/-- Classical divisor formula using divisors of `gcd(q,N)`. -/
theorem goldbachRamanujanInteger_eq_gcd_divisorSum
    {q N : ℕ} (hq : 0 < q) :
    goldbachRamanujanInteger q N =
      ∑ d ∈ (Nat.gcd q N).divisors,
        (d : ℤ) * ArithmeticFunction.moebius (q / d) := by
  classical
  rw [goldbachRamanujanInteger_eq_sum_divisors hq.ne']
  have hset : q.divisors.filter (fun d => d ∣ N) = (Nat.gcd q N).divisors := by
    ext d
    simp only [Finset.mem_filter, Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hdq, _⟩, hdN⟩
      exact ⟨Nat.dvd_gcd hdq hdN, (Nat.gcd_pos_of_pos_left N hq).ne'⟩
    · rintro ⟨hdg, _⟩
      exact ⟨⟨dvd_trans hdg (Nat.gcd_dvd_left q N), hq.ne'⟩,
        dvd_trans hdg (Nat.gcd_dvd_right q N)⟩
  rw [← hset, Finset.sum_filter]

/-- On a coprime target, the Ramanujan integer is the Möbius value. -/
theorem goldbachRamanujanInteger_of_coprime
    {q N : ℕ} (hq : 0 < q)
    (hcop : q.Coprime N) :
    goldbachRamanujanInteger q N =
      ArithmeticFunction.moebius q := by
  rw [goldbachRamanujanInteger_eq_gcd_divisorSum hq,
    hcop.gcd_eq_one]
  simp

/-- Prime-modulus Ramanujan sum. -/
theorem goldbachRamanujanInteger_prime
    {p N : ℕ} (hp : p.Prime) :
    goldbachRamanujanInteger p N =
      if p ∣ N then (p : ℤ) - 1 else -1 := by
  by_cases hdiv : p ∣ N
  · have hgcd : Nat.gcd p N = p :=
      Nat.gcd_eq_left_iff_dvd.mpr hdiv
    rw [goldbachRamanujanInteger_eq_gcd_divisorSum hp.pos,
      hgcd, if_pos hdiv]
    rw [hp.divisors, Finset.sum_insert (by simpa only [Finset.mem_singleton] using hp.ne_one.symm), Finset.sum_singleton]
    rw [Nat.div_one, Nat.div_self hp.pos, ArithmeticFunction.moebius_apply_prime hp]
    simp
    ring
  · have hcop : p.Coprime N :=
      (hp.coprime_iff_not_dvd).2 hdiv
    rw [goldbachRamanujanInteger_of_coprime hp.pos hcop,
      ArithmeticFunction.moebius_apply_prime hp,
      if_neg hdiv]

/-- Multiplicativity of the integer Ramanujan source in coprime moduli. -/
theorem goldbachRamanujanInteger_mul_of_coprime
    {q r N : ℕ}
    (_hq : q ≠ 0) (_hr : r ≠ 0)
    (hqr : q.Coprime r) :
    goldbachRamanujanInteger (q * r) N =
      goldbachRamanujanInteger q N *
        goldbachRamanujanInteger r N := by
  exact
    (isMultiplicative_goldbachRamanujanArithmeticFunction N).map_mul_of_coprime
      hqr

/-- Divisor reflection `d ↦ q / d` is an involution on positive divisors. -/
theorem goldbachDivisorReflection
    {q d : ℕ} (hq : 0 < q)
    (hd : d ∈ q.divisors) :
    q / d ∈ q.divisors ∧ q / (q / d) = d := by
  have hd0 : 0 < d := pos_of_mem_divisors hd
  rcases (mem_divisors.mp hd).1 with ⟨k, rfl⟩
  have hk0 : 0 < k := by
    by_contra hk
    have hkz : k = 0 := Nat.eq_zero_of_not_pos hk
    subst k
    simp at hq
  constructor
  · apply mem_divisors.mpr
    constructor
    · refine ⟨d, ?_⟩
      simp [hd0.ne', mul_comm]
    · exact (mul_pos hd0 hk0).ne'
  · simp [hd0.ne', hk0.ne']

/-- Möbius divisor indicator for coprimality. -/
def goldbachMoebiusCoprimeIndicator
    (q a : ℕ) : ℤ :=
  ∑ d ∈ (Nat.gcd q a).divisors,
    ArithmeticFunction.moebius d

/-- The Möbius divisor indicator is one exactly on reduced residues. -/
theorem goldbachMoebiusCoprimeIndicator_eq
    {q a : ℕ} (_hq : 0 < q) :
    goldbachMoebiusCoprimeIndicator q a =
      if q.Coprime a then 1 else 0 := by
  classical
  have hconv := congrArg
    (fun f : ArithmeticFunction ℤ => f (Nat.gcd q a))
    ArithmeticFunction.coe_zeta_mul_moebius
  rw [ArithmeticFunction.coe_zeta_mul_apply, ArithmeticFunction.one_apply] at hconv
  simpa only [goldbachMoebiusCoprimeIndicator, Nat.coprime_iff_gcd_eq_one] using hconv

/-- Multiples of one positive divisor in a complete residue interval are
reindexed by the quotient modulus. -/
theorem goldbachMultiplePhaseFiber
    {q d N : ℕ} (hq : 0 < q)
    (hd : d ∈ q.divisors) :
    (∑ a ∈ Finset.range q with d ∣ a,
        unitCharacter (N : ℤ)
          (goldbachRationalArcCenter a q)) =
      goldbachFullIntegerPhaseSum (q / d) (N : ℤ) := by
  classical
  have hd0 : 0 < d := pos_of_mem_divisors hd
  have hdq : d ∣ q := (mem_divisors.mp hd).1
  unfold goldbachFullIntegerPhaseSum
  apply Finset.sum_bij (fun a _ha => a / d)
  · intro a ha
    have ha0 : a < q := mem_range.mp (mem_filter.mp ha).1
    apply mem_range.mpr
    apply (Nat.div_lt_iff_lt_mul hd0).2
    simpa only [Nat.div_mul_cancel hdq] using ha0
  · intro a₁ h₁ a₂ h₂ hdiv
    calc
      a₁ = (a₁ / d) * d := (Nat.div_mul_cancel (mem_filter.mp h₁).2).symm
      _ = (a₂ / d) * d := by rw [hdiv]
      _ = a₂ := Nat.div_mul_cancel (mem_filter.mp h₂).2
  · intro b hb
    refine ⟨d * b, ?_, Nat.mul_div_cancel_left b hd0⟩
    rw [mem_filter, mem_range]
    refine ⟨?_, dvd_mul_right d b⟩
    have h := Nat.mul_lt_mul_of_pos_left (mem_range.mp hb) hd0
    simpa only [mul_comm d (q / d), Nat.div_mul_cancel hdq] using h
  · intro a ha
    have hda : d ∣ a := (mem_filter.mp ha).2
    have hdR : (d : ℝ) ≠ 0 := by exact_mod_cast hd0.ne'
    have hqR : (q : ℝ) ≠ 0 := by exact_mod_cast hq.ne'
    have hcenter : goldbachRationalArcCenter a q =
        goldbachRationalArcCenter (a / d) (q / d) := by
      unfold goldbachRationalArcCenter
      rw [Nat.cast_div hda hdR, Nat.cast_div hdq hdR]
      field_simp [hdR, hqR]
    rw [hcenter]

/-- Correct finite Möbius expansion of the reduced phase sum. -/
theorem goldbachReducedIntegerPhaseSum_eq_moebiusExpansion
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (N : ℤ) =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius (q / d) : ℂ) *
          (if d ∣ N then (d : ℂ) else 0) := by
  classical
  have hindicator (a : ℕ) :
      (goldbachMoebiusCoprimeIndicator q a : ℂ) =
        ∑ d ∈ q.divisors, if d ∣ a then (ArithmeticFunction.moebius d : ℂ) else 0 := by
    have hset : q.divisors.filter (fun d => d ∣ a) = (Nat.gcd q a).divisors := by
      ext d
      simp only [Finset.mem_filter, Nat.mem_divisors]
      constructor
      · rintro ⟨⟨hdq, _⟩, hda⟩
        exact ⟨Nat.dvd_gcd hdq hda, (Nat.gcd_pos_of_pos_left a hq).ne'⟩
      · rintro ⟨hdg, _⟩
        exact ⟨⟨dvd_trans hdg (Nat.gcd_dvd_left q a), hq.ne'⟩,
          dvd_trans hdg (Nat.gcd_dvd_right q a)⟩
    unfold goldbachMoebiusCoprimeIndicator
    rw [← hset, Finset.sum_filter]
    push_cast
    apply Finset.sum_congr rfl
    intro d hd
    split_ifs <;> simp
  unfold goldbachReducedIntegerPhaseSum
    goldbachCoprimeResidues
  rw [Finset.sum_filter]
  calc
    (∑ a ∈ Finset.range q,
        if q.Coprime a then
          unitCharacter (N : ℤ)
            (goldbachRationalArcCenter a q)
        else 0) =
      ∑ a ∈ Finset.range q,
        (goldbachMoebiusCoprimeIndicator q a : ℂ) *
          unitCharacter (N : ℤ)
            (goldbachRationalArcCenter a q) := by
              apply Finset.sum_congr rfl
              intro a ha
              rw [goldbachMoebiusCoprimeIndicator_eq hq]
              by_cases hcop : q.Coprime a
              · simp only [if_pos hcop, Int.cast_one, one_mul]
              · simp only [if_neg hcop, Int.cast_zero, zero_mul]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          (∑ a ∈ Finset.range q with d ∣ a,
            unitCharacter (N : ℤ)
              (goldbachRationalArcCenter a q)) := by
              simp_rw [hindicator, Finset.sum_mul, ite_mul, zero_mul]
              rw [Finset.sum_comm]
              apply Finset.sum_congr rfl
              intro d hd
              rw [Finset.mul_sum, Finset.sum_filter]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          goldbachFullIntegerPhaseSum (q / d) (N : ℤ) := by
              apply Finset.sum_congr rfl
              intro d hd
              rw [goldbachMultiplePhaseFiber hq hd]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius d : ℂ) *
          (if q / d ∣ N then ((q / d : ℕ) : ℂ) else 0) := by
              apply Finset.sum_congr rfl
              intro d hd
              have hquot0 : 0 < q / d :=
                Nat.div_pos (Nat.le_of_dvd hq
                  (mem_divisors.mp hd).1) (Nat.pos_of_mem_divisors hd)
              let : NeZero (q / d) := ⟨hquot0.ne'⟩
              rw [goldbachFullIntegerPhaseSum_formula]
              have hzero :
                  ((N : ℤ) : ZMod (q / d)) = 0 ↔
                    q / d ∣ N := by
                simpa using
                  ZMod.natCast_eq_zero_iff N (q / d)
              by_cases hdiv : q / d ∣ N
              · rw [if_pos (hzero.2 hdiv), if_pos hdiv]
              · rw [if_neg (fun hz => hdiv (hzero.1 hz)),
                  if_neg hdiv, mul_zero]
    _ =
      ∑ d ∈ q.divisors,
        (ArithmeticFunction.moebius (q / d) : ℂ) *
          (if d ∣ N then (d : ℂ) else 0) := by
              apply Finset.sum_bij (fun d _hd => q / d)
              · intro d hd
                exact (goldbachDivisorReflection hq hd).1
              · intro d₁ h₁ d₂ h₂ hdiv
                calc
                  d₁ = q / (q / d₁) := (goldbachDivisorReflection hq h₁).2.symm
                  _ = q / (q / d₂) := by rw [hdiv]
                  _ = d₂ := (goldbachDivisorReflection hq h₂).2
              · intro d hd
                exact ⟨q / d, (goldbachDivisorReflection hq hd).1,
                  (goldbachDivisorReflection hq hd).2⟩
              · intro d hd
                rw [(goldbachDivisorReflection hq hd).2]

/-- The reduced-residue phase sum is exactly the integer Ramanujan sum. -/
theorem goldbachReducedIntegerPhaseSum_eq_ramanujanInteger
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (N : ℤ) =
      (goldbachRamanujanInteger q N : ℂ) := by
  rw [goldbachReducedIntegerPhaseSum_eq_moebiusExpansion hq,
    goldbachRamanujanInteger_eq_sum_divisors hq.ne']
  push_cast
  apply Finset.sum_congr rfl
  intro d hd
  by_cases hdN : d ∣ N
  · rw [if_pos hdN, if_pos hdN]
    ring
  · rw [if_neg hdN, if_neg hdN]
    simp

/-- The reduced phase sum is even in its integer frequency. -/
theorem goldbachReducedIntegerPhaseSum_neg_nat
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (-(N : ℤ)) =
      goldbachReducedIntegerPhaseSum q (N : ℤ) := by
  rw [goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq]
  unfold goldbachReducedIntegerPhaseSum
  calc
    (∑ a ∈ goldbachCoprimeResidues q,
        unitCharacter (-(N : ℤ))
          (goldbachRationalArcCenter a q)) =
      starRingEnd ℂ
        (∑ a ∈ goldbachCoprimeResidues q,
          unitCharacter (N : ℤ)
            (goldbachRationalArcCenter a q)) := by
              rw [map_sum]
              apply Finset.sum_congr rfl
              intro a ha
              change fourier (-(N : ℤ)) _ = (starRingEnd ℂ) (fourier (N : ℤ) _)
              exact fourier_neg
    _ = starRingEnd ℂ (goldbachRamanujanInteger q N : ℂ) := by
      exact congrArg (starRingEnd ℂ) (goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq)
    _ = (goldbachRamanujanInteger q N : ℂ) := by
      simp

/-- Negative-target specialization used by the Goldbach denominator
coefficient. -/
theorem goldbachReducedIntegerPhaseSum_neg_target_eq_ramanujanInteger
    {q N : ℕ} (hq : 0 < q) :
    goldbachReducedIntegerPhaseSum q (-(N : ℤ)) =
      (goldbachRamanujanInteger q N : ℂ) := by
  rw [goldbachReducedIntegerPhaseSum_neg_nat hq,
    goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq]

/-- For every reduced numerator, the normalized coefficient is
`μ(q) / φ(q)`. -/
theorem goldbachNormalizedRamanujanCoefficient_of_coprime
    {q a : ℕ} (hq : 0 < q)
    (ha : q.Coprime a) :
    goldbachNormalizedRamanujanCoefficient a q =
      (ArithmeticFunction.moebius q : ℂ) /
        (Nat.totient q : ℂ) := by
  unfold goldbachNormalizedRamanujanCoefficient
  rw [goldbachCoprimePhaseSum_eq_reducedIntegerPhaseSum,
    goldbachReducedIntegerPhaseSum_eq_ramanujanInteger hq,
    goldbachRamanujanInteger_of_coprime hq ha]
  ring

end
end GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan
