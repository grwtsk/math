import FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Data.Nat.Squarefree
import Mathlib.Data.Nat.PrimeFin
import Mathlib.Tactic.Ring

set_option autoImplicit false

namespace PrimeRatioProductScratch

open Finset

noncomputable section

theorem ordered_disjoint_assignment_product (P : Finset ℕ) (w : ℕ → ℝ) :
    (∑ U ∈ P.powerset, ∑ V ∈ (P \ U).powerset,
      (∏ p ∈ U, w p) * (∏ p ∈ V, w p)) = ∏ p ∈ P, (1 + 2 * w p) := by
  calc
    _ = ∑ U ∈ P.powerset, (∏ p ∈ U, w p) * (∏ p ∈ P \ U, (1 + w p)) := by
      simp_rw [prod_one_add, mul_sum]
    _ = ∏ p ∈ P, (w p + (1 + w p)) := (prod_add w (fun p ↦ 1 + w p) P).symm
    _ = _ := by
      apply prod_congr rfl
      intro p _
      ring

theorem reciprocal_sqrt_product (S : Finset ℕ) :
    1 / Real.sqrt ((∏ p ∈ S, p : ℕ) : ℝ) = ∏ p ∈ S, (1 / Real.sqrt (p : ℝ)) := by
  rw [Nat.cast_prod, Real.sqrt_prod S (fun p _ ↦ Nat.cast_nonneg p), one_div,
    ← prod_inv_distrib]
  simp only [one_div]

theorem reciprocal_sqrt_products (S T : Finset ℕ) :
    1 / Real.sqrt (((∏ p ∈ S, p) * (∏ p ∈ T, p) : ℕ) : ℝ) =
      (∏ p ∈ S, (1 / Real.sqrt (p : ℝ))) * (∏ p ∈ T, (1 / Real.sqrt (p : ℝ))) := by
  rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg _), ← one_div_mul_one_div,
    ← reciprocal_sqrt_product S, ← reciprocal_sqrt_product T]

theorem prime_product_squarefree (S : Finset ℕ) (hS : ∀ p ∈ S, Nat.Prime p) :
    Squarefree (∏ p ∈ S, p) := by
  apply squarefree_prod_of_pairwise_isCoprime
    (fun p hp q hq hpq ↦ ?_) (fun p hp ↦ (hS p hp).squarefree)
  simp only [← Nat.coprime_iff_isRelPrime]
  exact (Nat.coprime_primes (hS p hp) (hS q hq)).mpr hpq

def assignments (P : Finset ℕ) : Finset (Σ _ : Finset ℕ, Finset ℕ) :=
  P.powerset.sigma (fun U ↦ (P \ U).powerset)

def joinAssignment (s : Σ _ : Finset ℕ, Finset ℕ) : ℕ × ℕ :=
  (∏ p ∈ s.1, p, ∏ p ∈ s.2, p)

def supportedPairs (P : Finset ℕ) : Finset (ℕ × ℕ) :=
  (assignments P).image joinAssignment

theorem assignment_subsets (P : Finset ℕ) (s : Σ _ : Finset ℕ, Finset ℕ)
    (hs : s ∈ assignments P) : s.1 ⊆ P ∧ s.2 ⊆ P ∧ Disjoint s.1 s.2 := by
  obtain ⟨hU, hV⟩ := mem_sigma.mp hs
  have hU' := mem_powerset.mp hU
  have hV' := mem_powerset.mp hV
  refine ⟨hU', fun p hp ↦ (mem_sdiff.mp (hV' hp)).1, ?_⟩
  apply disjoint_left.mpr
  intro p hpU hpV
  exact (mem_sdiff.mp (hV' hpV)).2 hpU

theorem assignment_primeFactors (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (s : Σ _ : Finset ℕ, Finset ℕ) (hs : s ∈ assignments P) :
    (joinAssignment s).1.primeFactors = s.1 ∧ (joinAssignment s).2.primeFactors = s.2 := by
  have hsub := assignment_subsets P s hs
  exact ⟨Nat.primeFactors_prod (fun p hp ↦ hP p (hsub.1 hp)),
    Nat.primeFactors_prod (fun p hp ↦ hP p (hsub.2.1 hp))⟩

theorem joinAssignment_injOn (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    Set.InjOn joinAssignment (assignments P) := by
  intro s hs t ht he
  have h1 := congrArg (fun p : ℕ × ℕ ↦ p.1.primeFactors) he
  have h2 := congrArg (fun p : ℕ × ℕ ↦ p.2.primeFactors) he
  rw [(assignment_primeFactors P hP s hs).1, (assignment_primeFactors P hP t ht).1] at h1
  rw [(assignment_primeFactors P hP s hs).2, (assignment_primeFactors P hP t ht).2] at h2
  cases s
  cases t
  simp only [Sigma.mk.injEq]
  exact ⟨h1, heq_of_eq h2⟩

theorem mem_supportedPairs_iff (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) (d e : ℕ) :
    (d, e) ∈ supportedPairs P ↔
      Squarefree d ∧ Squarefree e ∧ Nat.Coprime d e ∧
        d.primeFactors ⊆ P ∧ e.primeFactors ⊆ P := by
  constructor
  · intro h
    obtain ⟨s, hs, he⟩ := mem_image.mp h
    have hsub := assignment_subsets P s hs
    have hsfU := prime_product_squarefree s.1 (fun p hp ↦ hP p (hsub.1 hp))
    have hsfV := prime_product_squarefree s.2 (fun p hp ↦ hP p (hsub.2.1 hp))
    have hfac := assignment_primeFactors P hP s hs
    have hcop : Nat.Coprime (joinAssignment s).1 (joinAssignment s).2 := by
      apply (Nat.disjoint_primeFactors hsfU.ne_zero hsfV.ne_zero).mp
      change Disjoint (joinAssignment s).1.primeFactors (joinAssignment s).2.primeFactors
      rw [hfac.1, hfac.2]
      exact hsub.2.2
    have hd : (joinAssignment s).1 = d := congrArg Prod.fst he
    have he' : (joinAssignment s).2 = e := congrArg Prod.snd he
    rw [← hd, ← he']
    refine ⟨hsfU, hsfV, hcop, ?_, ?_⟩
    · rw [hfac.1]
      exact hsub.1
    · rw [hfac.2]
      exact hsub.2.1
  · rintro ⟨hd, he, hcop, hdP, heP⟩
    apply mem_image.mpr
    refine ⟨⟨d.primeFactors, e.primeFactors⟩, ?_, ?_⟩
    · apply mem_sigma.mpr
      refine ⟨mem_powerset.mpr hdP, mem_powerset.mpr ?_⟩
      intro p hp
      apply mem_sdiff.mpr
      refine ⟨heP hp, ?_⟩
      intro hpd
      exact disjoint_left.mp hcop.disjoint_primeFactors hpd hp
    · exact Prod.ext (Nat.prod_primeFactors_of_squarefree hd)
        (Nat.prod_primeFactors_of_squarefree he)

theorem supportedPairs_weight_sum (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    (∑ p ∈ supportedPairs P, 1 / Real.sqrt ((p.1 * p.2 : ℕ) : ℝ)) =
      ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) := by
  rw [supportedPairs, sum_image (joinAssignment_injOn P hP)]
  change (∑ s ∈ assignments P,
    1 / Real.sqrt (((∏ p ∈ s.1, p) * (∏ p ∈ s.2, p) : ℕ) : ℝ)) = _
  simp_rw [reciprocal_sqrt_products]
  rw [assignments, sum_sigma, ordered_disjoint_assignment_product]
  apply prod_congr rfl
  intro p _
  ring

theorem supportedPairs_moebius_weight_sum (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    (∑ p ∈ supportedPairs P,
      |(ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ)| /
        Real.sqrt ((p.1 * p.2 : ℕ) : ℝ)) =
      ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) := by
  rw [← supportedPairs_weight_sum P hP]
  apply sum_congr rfl
  intro p hp
  have hs := (mem_supportedPairs_iff P hP p.1 p.2).mp hp
  have h1 : |(ArithmeticFunction.moebius p.1 : ℝ)| = 1 := by
    exact_mod_cast ArithmeticFunction.abs_moebius_eq_one_of_squarefree hs.1
  have h2 : |(ArithmeticFunction.moebius p.2 : ℝ)| = 1 := by
    exact_mod_cast ArithmeticFunction.abs_moebius_eq_one_of_squarefree hs.2.1
  rw [abs_mul, h1, h2, one_mul]

theorem squareful_ratio_coefficient_zero (g u v : ℕ) (huv : Nat.Coprime u v)
    (hsq : ¬Squarefree (u * v)) :
    (ArithmeticFunction.moebius (g * u) : ℝ) * (ArithmeticFunction.moebius (g * v) : ℝ) = 0 := by
  rw [FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio.moebius_ratio_identity g u v huv,
    ArithmeticFunction.moebius_eq_zero_of_not_squarefree hsq]
  simp

end
end PrimeRatioProductScratch

#print axioms PrimeRatioProductScratch.ordered_disjoint_assignment_product
#print axioms PrimeRatioProductScratch.reciprocal_sqrt_product
#print axioms PrimeRatioProductScratch.reciprocal_sqrt_products
#print axioms PrimeRatioProductScratch.prime_product_squarefree
#print axioms PrimeRatioProductScratch.assignments
#print axioms PrimeRatioProductScratch.joinAssignment
#print axioms PrimeRatioProductScratch.supportedPairs
#print axioms PrimeRatioProductScratch.assignment_subsets
#print axioms PrimeRatioProductScratch.assignment_primeFactors
#print axioms PrimeRatioProductScratch.joinAssignment_injOn
#print axioms PrimeRatioProductScratch.mem_supportedPairs_iff
#print axioms PrimeRatioProductScratch.supportedPairs_weight_sum
#print axioms PrimeRatioProductScratch.supportedPairs_moebius_weight_sum
#print axioms PrimeRatioProductScratch.squareful_ratio_coefficient_zero
