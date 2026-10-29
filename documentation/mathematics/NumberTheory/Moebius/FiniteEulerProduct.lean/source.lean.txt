/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Finite Euler products with a closed arithmetic cutoff

The expansion includes every prime subset. Only subsets whose product is at most
the cutoff enter the finite Möbius sum; all other signed terms remain in the
remainder. The statement includes cutoff zero and uses no growth premise.

The identities supply no asymptotic arithmetic estimate.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction.Moebius
namespace GRWTSK.NumberTheory.Moebius

variable {R : Type*} [CommRing R]

/-- Multiplicative arithmetic weights turn the signed prime-subset term into
the Möbius coefficient of its squarefree product. -/
theorem prime_subset_weight (f : ArithmeticFunction R) (hf : f.IsMultiplicative)
    (S : Finset ℕ) (hS : ∀ p ∈ S, p.Prime) :
    (∏ p ∈ S, -f p) = (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p) := by
  calc
    (∏ p ∈ S, -f p) = ∏ p ∈ S, (μ p : R) * f p := by
      apply Finset.prod_congr rfl
      intro p hp
      simp [ArithmeticFunction.moebius_apply_prime (hS p hp)]
    _ = (∏ p ∈ S, (μ p : R)) * ∏ p ∈ S, f p :=
      Finset.prod_mul_distrib
    _ = (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p) := by
      have hμ := (ArithmeticFunction.isMultiplicative_moebius.intCast (R := R)).map_prod_of_prime S hS
      simpa only [ArithmeticFunction.intCoe_apply] using
        congrArg₂ (fun x y : R => x * y) hμ.symm (hf.map_prod_of_prime S hS).symm

/-- Reindex precisely the born prime subsets. Nonsquarefree natural-number
summands vanish, so no nonzero coefficient is lost. -/
theorem born_prime_subset_sum (f : ArithmeticFunction R) (N : ℕ) :
    (∑ S ∈ (Nat.primesLE N).powerset.filter (fun S => (∏ p ∈ S, p) ≤ N),
      (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p)) =
    ∑ n ∈ Finset.Icc 1 N, (μ n : R) * f n := by
  classical
  apply Finset.sum_bij_ne_zero (fun S _ _ => ∏ p ∈ S, p)
  · intro S hS _
    rcases Finset.mem_filter.mp hS with ⟨hS, hcut⟩
    have hpr : ∀ p ∈ S, p.Prime := fun p hp =>
      Nat.prime_of_mem_primesLE (Finset.mem_powerset.mp hS hp)
    have hpos : 1 ≤ ∏ p ∈ S, p :=
      Nat.one_le_iff_ne_zero.mpr (Finset.prod_ne_zero_iff.mpr fun p hp =>
        (hpr p hp).ne_zero)
    exact Finset.mem_Icc.mpr ⟨hpos, hcut⟩
  · intro A hA _ B hB _ hab
    have hAf := Nat.primeFactors_prod (fun p hp =>
      Nat.prime_of_mem_primesLE (Finset.mem_powerset.mp (Finset.mem_filter.mp hA).1 hp))
    have hBf := Nat.primeFactors_prod (fun p hp =>
      Nat.prime_of_mem_primesLE (Finset.mem_powerset.mp (Finset.mem_filter.mp hB).1 hp))
    exact hAf.symm.trans ((congrArg Nat.primeFactors hab).trans hBf)
  · intro n hn hne
    have hnI := Finset.mem_Icc.mp hn
    have hsf : Squarefree n := by
      by_contra h
      exact hne (by simp [ArithmeticFunction.moebius_eq_zero_of_not_squarefree h])
    have heq := Nat.prod_primeFactors_of_squarefree hsf
    refine ⟨n.primeFactors, Finset.mem_filter.mpr ⟨Finset.mem_powerset.mpr ?_, ?_⟩,
      ?_, heq⟩
    · intro p hp
      have hpf := Nat.mem_primeFactors.mp hp
      exact Nat.mem_primesLE.mpr
        ⟨(Nat.le_of_dvd (by omega) hpf.2.1).trans hnI.2, hpf.1⟩
    · simpa only [heq] using hnI.2
    · simpa only [heq] using hne
  · intro S _ _
    rfl

/-- Exact cutoff identity for every multiplicative arithmetic weight over any
commutative ring. The full signed above-cutoff remainder is retained. -/
theorem finite_euler_product_cutoff (f : ArithmeticFunction R)
    (hf : f.IsMultiplicative) (N : ℕ) :
    (∏ p ∈ Nat.primesLE N, (1 - f p)) =
      (∑ n ∈ Finset.Icc 1 N, (μ n : R) * f n) +
      ∑ S ∈ (Nat.primesLE N).powerset.filter (fun S => N < ∏ p ∈ S, p),
        (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p) := by
  classical
  have hexpand :
      (∏ p ∈ Nat.primesLE N, (1 - f p)) =
      ∑ S ∈ (Nat.primesLE N).powerset, (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p) := by
    rw [show (∏ p ∈ Nat.primesLE N, (1 - f p)) =
        ∏ p ∈ Nat.primesLE N, (1 + -f p) by simp only [sub_eq_add_neg],
      Finset.prod_one_add]
    apply Finset.sum_congr rfl
    intro S hS
    exact prime_subset_weight f hf S fun p hp =>
      Nat.prime_of_mem_primesLE (Finset.mem_powerset.mp hS hp)
  rw [hexpand, ← born_prime_subset_sum f N]
  simpa only [not_le] using
    (Finset.sum_filter_add_sum_filter_not (Nat.primesLE N).powerset
      (fun S => (∏ p ∈ S, p) ≤ N)
      (fun S => (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p))).symm

/-- The zero-cutoff remainder consists of the empty subset and has value one. -/
theorem finite_euler_product_cutoff_zero (f : ArithmeticFunction R)
    (hf : f.IsMultiplicative) :
    (∑ S ∈ (Nat.primesLE 0).powerset.filter (fun S => 0 < ∏ p ∈ S, p),
      (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p)) = 1 := by
  simpa using (finite_euler_product_cutoff f hf 0).symm

end GRWTSK.NumberTheory.Moebius
