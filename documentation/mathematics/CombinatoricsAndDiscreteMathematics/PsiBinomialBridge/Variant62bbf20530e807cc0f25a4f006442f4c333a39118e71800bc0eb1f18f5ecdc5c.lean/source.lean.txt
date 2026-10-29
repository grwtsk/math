import Folder.Rebuild.AnalyticNumberTheory.BinomialChebyshevBounds
import Mathlib.Data.Nat.Choose.Dvd
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Tactic

/-!
# Folder.Rebuild.AnalyticNumberTheory.PsiBinomialBridge

Finite dyadic strips and the checked theta-to-central-binomial bridge.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

def primePowerPairsInOpenClosedInterval
    (m n : Nat) : Finset (Nat × Nat) :=
  ((Finset.Icc 2 n).product (Finset.Icc 1 n)).filter
    (fun pk => Nat.Prime pk.1 ∧ m < pk.1 ^ pk.2 ∧ pk.1 ^ pk.2 ≤ n)

def primePowerPairsDyadicStrip
    (n : Nat) : Finset (Nat × Nat) :=
  primePowerPairsInOpenClosedInterval n (2 * n)

noncomputable def chebyshevPsiStrip
    (m n : Nat) : Real :=
  ∑ pk ∈ primePowerPairsInOpenClosedInterval m n, Real.log pk.1

noncomputable def chebyshevPsiDyadicStrip
    (n : Nat) : Real :=
  chebyshevPsiStrip n (2 * n)

def primesDyadicStrip
    (n : Nat) : Finset Nat :=
  (primesUpTo (2 * n)).filter (fun p => n < p)

theorem mem_primesDyadicStrip_iff
    {n p : Nat} :
    p ∈ primesDyadicStrip n ↔ Nat.Prime p ∧ n < p ∧ p ≤ 2 * n := by
  unfold primesDyadicStrip
  constructor
  · intro h
    have hh := Finset.mem_filter.mp h
    exact ⟨primesUpTo_prime hh.1, hh.2, (mem_primesUpTo_iff.mp hh.1).2⟩
  · intro h
    exact Finset.mem_filter.mpr
      ⟨mem_primesUpTo_iff.mpr ⟨h.1, h.2.2⟩, h.2.1⟩

theorem prime_dyadic_strip_dvd_centralBinomial
    {p n : Nat}
    (hp : Nat.Prime p)
    (hlo : n < p)
    (hhi : p ≤ 2 * n) :
    p ∣ centralBinomial n := by
  unfold centralBinomial
  rw [Nat.centralBinom_eq_two_mul_choose]
  exact hp.dvd_choose hlo (by omega) hhi

theorem one_le_factorization_centralBinomial_of_mem_strip
    {p n : Nat}
    (hp : p ∈ primesDyadicStrip n) :
    1 ≤ Nat.factorization (centralBinomial n) p := by
  rcases mem_primesDyadicStrip_iff.mp hp with ⟨hprime, hlo, hhi⟩
  have hdvd := prime_dyadic_strip_dvd_centralBinomial hprime hlo hhi
  exact (hprime.dvd_iff_one_le_factorization (centralBinomial_pos n).ne').mp hdvd

theorem log_centralBinomial_eq_sum_factorization
    (n : Nat) :
    Real.log (centralBinomial n) =
      ∑ p ∈ primesUpTo (2 * n),
        (Nat.factorization (centralBinomial n) p : Real) * Real.log p := by
  rw [Real.log_nat_eq_sum_factorization]
  let F := Nat.factorization (centralBinomial n)
  have hsupport : F.support ⊆ primesUpTo (2 * n) := by
    intro p hp_mem
    have hp_ne : F p ≠ 0 := Finsupp.mem_support_iff.mp hp_mem
    have hp_prime : Nat.Prime p := by
      by_contra hnp
      have hzero : F p = 0 := by
        simp [F, Nat.factorization_eq_zero_of_not_prime (centralBinomial n) hnp]
      exact hp_ne hzero
    have hp_pos : 0 < Nat.factorization (centralBinomial n) p :=
      Nat.pos_of_ne_zero hp_ne
    have hp_le : p ≤ 2 * n := by
      simpa [centralBinomial] using
        Nat.le_two_mul_of_factorization_centralBinom_pos
          (n := n) (p := p) hp_pos
    exact mem_primesUpTo_iff.mpr ⟨hp_prime, hp_le⟩
  exact
    Finsupp.sum_of_support_subset
      (f := F)
      (s := primesUpTo (2 * n))
      hsupport
      (fun p t => (t : Real) * Real.log (p : Real))
      (by intro p hp; simp)

theorem chebyshevTheta_two_mul_eq_theta_add_strip
    (n : Nat) :
    chebyshevTheta (2 * n) =
      chebyshevTheta n + ∑ p ∈ primesDyadicStrip n, Real.log p := by
  unfold chebyshevTheta primesDyadicStrip
  have hfilter :
      (primesUpTo (2 * n)).filter (fun p => ¬ n < p) = primesUpTo n := by
    ext p
    simp only [Finset.mem_filter, mem_primesUpTo_iff, not_lt]
    constructor
    · intro h
      exact ⟨h.1.1, h.2⟩
    · intro h
      exact ⟨⟨h.1, by omega⟩, h.2⟩
  have hsplit :=
    Finset.sum_filter_add_sum_filter_not
      (s := primesUpTo (2 * n))
      (p := fun p => n < p)
      (f := fun p => Real.log p)
  rw [← hsplit]
  rw [hfilter]
  abel

theorem primesDyadicStrip_log_sum_le_log_centralBinomial
    (n : Nat) :
    (∑ p ∈ primesDyadicStrip n, Real.log p) ≤
      Real.log (centralBinomial n) := by
  rw [log_centralBinomial_eq_sum_factorization]
  calc
    (∑ p ∈ primesDyadicStrip n, Real.log p)
        ≤ ∑ p ∈ primesDyadicStrip n,
            (Nat.factorization (centralBinomial n) p : Real) * Real.log p := by
          refine Finset.sum_le_sum ?_
          intro p hp
          have hfac :
              (1 : Real) ≤
                (Nat.factorization (centralBinomial n) p : Real) := by
            exact_mod_cast one_le_factorization_centralBinomial_of_mem_strip hp
          have hlog : 0 ≤ Real.log (p : Real) :=
            Real.log_nonneg
              (by exact_mod_cast (mem_primesDyadicStrip_iff.mp hp).1.one_le)
          nlinarith
    _ ≤ ∑ p ∈ primesUpTo (2 * n),
            (Nat.factorization (centralBinomial n) p : Real) * Real.log p := by
          exact
            Finset.sum_le_sum_of_subset_of_nonneg
              (by
                intro p hp
                exact (Finset.mem_filter.mp hp).1)
              (by
                intro p hp _hnot
                have hlog : 0 ≤ Real.log (p : Real) :=
                  Real.log_nonneg (by exact_mod_cast (primesUpTo_prime hp).one_le)
                have hfac :
                    0 ≤ (Nat.factorization (centralBinomial n) p : Real) := by
                  positivity
                exact mul_nonneg hfac hlog)

theorem chebyshevTheta_two_mul_sub_theta_le_log_centralBinomial
    (n : Nat) :
    chebyshevTheta (2 * n) - chebyshevTheta n ≤
      Real.log (centralBinomial n) := by
  have hsplit := chebyshevTheta_two_mul_eq_theta_add_strip n
  have hstrip := primesDyadicStrip_log_sum_le_log_centralBinomial n
  nlinarith

theorem chebyshevTheta_two_mul_sub_theta_le_n_log_four
    (n : Nat) :
    chebyshevTheta (2 * n) - chebyshevTheta n ≤
      (n : Real) * Real.log 4 := by
  exact
    (chebyshevTheta_two_mul_sub_theta_le_log_centralBinomial n).trans
      (log_centralBinomial_le_n_log_four n)

/-- Theorem target for the stronger psi strip/binomial bridge. -/
def ChebyshevPsiDyadicBinomialBridgeTarget : Prop :=
  ∀ n : Nat,
    chebyshevPsi (2 * n) - chebyshevPsi n ≤
      (n : Real) * Real.log 4

end AnalyticNumberTheory
end Rebuild
end Folder
