import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.EulerProduct.DirichletLSeries
import GRWTSK.NumberTheory.Moebius.FiniteProductResponseIdentification

/-! Unconditional finite Euler–Möbius identification and classical right-half-plane
Dirichlet/Euler identities for the literal integer source. The analytic identity
is used only under Re(s) > 1. The actual pickup and its actual Laplace integral
are defined here; no value or holomorphy of that integral is assumed. -/

noncomputable section
open scoped BigOperators
open MeasureTheory
namespace EulerP04RH.FEMI

def integerCoefficient (P : Finset ℕ) (n : ℕ) : ℤ :=
  ∑ U ∈ P.powerset, if ASBNP04.FiniteProduct.primeProduct U = n then
    (-1 : ℤ) ^ U.card else 0

theorem integerCoefficient_exact (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime) (n : ℕ) :
    integerCoefficient P n =
      if Squarefree n ∧ n.primeFactors ⊆ P then ArithmeticFunction.moebius n else 0 := by
  classical
  by_cases hn : Squarefree n ∧ n.primeFactors ⊆ P
  · rw [if_pos hn, integerCoefficient]
    have hprod : ASBNP04.FiniteProduct.primeProduct n.primeFactors = n :=
      Nat.prod_primeFactors_of_squarefree hn.1
    have hmem : n.primeFactors ∈ P.powerset := Finset.mem_powerset.mpr hn.2
    rw [Finset.sum_eq_single n.primeFactors]
    · rw [if_pos hprod]
      rw [← ASBNP04.FiniteProduct.moebius_primeProduct n.primeFactors
        (fun p hp => Nat.prime_of_mem_primeFactors hp), hprod]
    · intro U hU hne
      have hUP : U ⊆ P := Finset.mem_powerset.mp hU
      have hfalse : ASBNP04.FiniteProduct.primeProduct U ≠ n := by
        intro he
        apply hne
        exact ASBNP04.FiniteProduct.primeProduct_injective_on_primes U n.primeFactors
          (fun p hp => hP p (hUP hp))
          (fun p hp => Nat.prime_of_mem_primeFactors hp) (he.trans hprod.symm)
      simp [hfalse]
    · exact fun h => False.elim (h hmem)
  · rw [if_neg hn, integerCoefficient]
    apply Finset.sum_eq_zero
    intro U hU
    have hUP : U ⊆ P := Finset.mem_powerset.mp hU
    have hpr : ∀ p ∈ U, p.Prime := fun p hp => hP p (hUP hp)
    have hfalse : ASBNP04.FiniteProduct.primeProduct U ≠ n := by
      intro he
      apply hn
      constructor
      · rw [← he]
        exact ASBNP04.FiniteProduct.primeProduct_squarefree U hpr
      · rw [← he, ASBNP04.FiniteProduct.primeProduct_primeFactors U hpr]
        exact hUP
    simp [hfalse]

theorem repeated_prime_coefficient_zero (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    (n : ℕ) (hn : ¬ Squarefree n) : integerCoefficient P n = 0 := by
  rw [integerCoefficient_exact P hP n, if_neg (fun h => hn h.1)]

theorem divisor_moebius_sum (n : ℕ) :
    (∑ d ∈ n.divisors, ArithmeticFunction.moebius d) = if n = 1 then 1 else 0 := by
  have h := congrArg (fun f : ArithmeticFunction ℤ => f n)
    ArithmeticFunction.moebius_mul_coe_zeta
  simpa only [ArithmeticFunction.coe_mul_zeta_apply, ArithmeticFunction.one_apply] using h

theorem moebius_inversion {R : Type*} [CommRing R] {f g : ℕ → R} :
    (∀ n > 0, ∑ d ∈ n.divisors, f d = g n) ↔
      ∀ n > 0, ∑ d ∈ n.divisorsAntidiagonal,
        (ArithmeticFunction.moebius d.1 : R) * g d.2 = f n :=
  ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq

def moebiusDirichletTerm (s : ℂ) (n : ℕ) : ℂ :=
  (ArithmeticFunction.moebius n : ℂ) / (n : ℂ) ^ s

theorem moebiusDirichletTerm_eq (s : ℂ) (n : ℕ) :
    moebiusDirichletTerm s n =
      LSeries.term (fun n => (ArithmeticFunction.moebius n : ℂ)) s n := by
  by_cases hn : n = 0
  · simp [moebiusDirichletTerm, hn]
  · simp [moebiusDirichletTerm, LSeries.term, hn]

theorem moebiusDirichlet_summable (s : ℂ) (hs : 1 < s.re) :
    Summable (moebiusDirichletTerm s) := by
  have h := ArithmeticFunction.LSeriesSummable_moebius_iff.mpr hs
  exact h.congr (fun n => (moebiusDirichletTerm_eq s n).symm)

theorem moebiusDirichlet_eq_inv_zeta (s : ℂ) (hs : 1 < s.re) :
    (∑' n : ℕ, moebiusDirichletTerm s n) = (riemannZeta s)⁻¹ := by
  have h := ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius hs
  rw [ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs] at h
  have heq : (∑' n : ℕ, moebiusDirichletTerm s n) =
      LSeries (fun n => (ArithmeticFunction.moebius n : ℂ)) s :=
    tsum_congr (moebiusDirichletTerm_eq s)
  rw [heq]
  exact eq_inv_of_mul_eq_one_left (by simpa only [mul_comm] using h)

theorem reciprocal_zeta_hasProd (s : ℂ) (hs : 1 < s.re) :
    HasProd (fun p : Nat.Primes => 1 - (p : ℂ) ^ (-s)) (riemannZeta s)⁻¹ := by
  simpa only [inv_inv] using
    (riemannZeta_eulerProduct_hasProd hs).inv₀ (riemannZeta_ne_zero_of_one_lt_re hs)

theorem reciprocal_zeta_tprod (s : ℂ) (hs : 1 < s.re) :
    (∏' p : Nat.Primes, (1 - (p : ℂ) ^ (-s))) = (riemannZeta s)⁻¹ :=
  (reciprocal_zeta_hasProd s hs).tprod_eq

theorem moebius_sum_eq_euler_product (s : ℂ) (hs : 1 < s.re) :
    (∑' n : ℕ, moebiusDirichletTerm s n) =
      ∏' p : Nat.Primes, (1 - (p : ℂ) ^ (-s)) := by
  rw [moebiusDirichlet_eq_inv_zeta s hs, reciprocal_zeta_tprod s hs]

theorem finite_causal_pickup (T : ℝ) :
    PPNCP04.restrict T (PPNCP04.primeState (PPNCP04.primeInventory T)) =
      PPNCP04.restrict T (PPNCP04.pickup T) :=
  PPNCP04.completed_pickup_restriction T

/-- The actual globally completed pickup, evaluated at its own horizon. -/
def completedPickup (u : ℝ) : ℂ := (PPNCP04.pickup u u : ℂ)

/-- The actual improper Lebesgue Laplace integral. Its convergence and value
are separate propositions, never built into this definition. -/
def pickupLaplace (z : ℂ) : ℂ :=
  ∫ u : ℝ in Set.Ioi 0, Complex.exp (-z * (u : ℂ)) * completedPickup u

end EulerP04RH.FEMI

#print axioms EulerP04RH.FEMI.integerCoefficient_exact
#print axioms EulerP04RH.FEMI.divisor_moebius_sum
#print axioms EulerP04RH.FEMI.moebiusDirichlet_eq_inv_zeta
#print axioms EulerP04RH.FEMI.reciprocal_zeta_hasProd
#print axioms EulerP04RH.FEMI.finite_causal_pickup
