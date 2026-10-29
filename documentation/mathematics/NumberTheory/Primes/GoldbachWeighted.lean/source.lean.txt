/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.ConfigurationCounts
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Logarithmically weighted Goldbach mass

The finite mass below is supported on actual ordered prime pairs whose sum is
the announced natural number. Its positivity is equivalent to the existing
exact `goldbachCount`; no distribution estimate is introduced.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachWeighted

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.ConfigurationCounts

/-- The complete ordered box through the inclusive cutoff `N`. -/
def goldbachBox (N : ℕ) : Finset (ℕ × ℕ) :=
  (Finset.range (N + 1)).product (Finset.range (N + 1))

/-- Membership retains both inclusive coordinate bounds. -/
theorem mem_goldbachBox {N p q : ℕ} :
    (p, q) ∈ goldbachBox N ↔ p ≤ N ∧ q ≤ N := by
  simp only [goldbachBox, Finset.product_eq_sprod, Finset.mem_product, Finset.mem_range, Nat.lt_succ_iff]

/-- Prime-only logarithmic weight. Composite and boundary values contribute
zero rather than becoming sieve candidates or prime powers. -/
noncomputable def primeLogWeight (n : ℕ) : ℝ :=
  if Nat.Prime n then Real.log (n : ℝ) else 0

/-- Prime logarithmic weights are nonnegative. -/
theorem primeLogWeight_nonneg (n : ℕ) : 0 ≤ primeLogWeight n := by
  by_cases hn : Nat.Prime n
  · simp only [primeLogWeight, if_pos hn]
    exact hn.log_pos.le
  · simp [primeLogWeight, hn]

/-- Strict positivity identifies an actual prime, not merely a nonzero
arithmetic or sieve weight. -/
theorem primeLogWeight_pos_iff (n : ℕ) :
    0 < primeLogWeight n ↔ Nat.Prime n := by
  by_cases hn : Nat.Prime n
  · simp only [primeLogWeight, if_pos hn]
    constructor
    · intro _
      exact hn
    · intro _
      exact hn.log_pos
  · simp [primeLogWeight, hn]

/-- One ordered additive summand. Natural addition is tested before any
Fourier representation is introduced. -/
noncomputable def goldbachLogTerm (N : ℕ) (uv : ℕ × ℕ) : ℝ :=
  if uv.1 + uv.2 = N then primeLogWeight uv.1 * primeLogWeight uv.2 else 0

/-- Every ordered summand is nonnegative. -/
theorem goldbachLogTerm_nonneg (N : ℕ) (uv : ℕ × ℕ) :
    0 ≤ goldbachLogTerm N uv := by
  by_cases hsum : uv.1 + uv.2 = N
  · simp only [goldbachLogTerm, if_pos hsum]
    exact mul_nonneg (primeLogWeight_nonneg uv.1) (primeLogWeight_nonneg uv.2)
  · simp [goldbachLogTerm, hsum]

/-- A positive ordered summand is exactly an ordered Goldbach representation. -/
theorem goldbachLogTerm_pos_iff (N p q : ℕ) :
    0 < goldbachLogTerm N (p, q) ↔
      Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  by_cases hsum : p + q = N
  · by_cases hp : Nat.Prime p
    · by_cases hq : Nat.Prime q
      · constructor
        · intro _
          exact ⟨hp, hq, hsum⟩
        · intro _
          simp only [goldbachLogTerm, hsum, if_pos, primeLogWeight, hp, hq]
          exact mul_pos hp.log_pos hq.log_pos
      · simp [goldbachLogTerm, primeLogWeight, hsum, hp, hq]
    · simp [goldbachLogTerm, primeLogWeight, hsum, hp]
  · simp [goldbachLogTerm, hsum]

/-- The complete finite ordered logarithmic Goldbach mass. -/
noncomputable def goldbachLogMass (N : ℕ) : ℝ :=
  ∑ uv ∈ goldbachBox N, goldbachLogTerm N uv

/-- The complete mass is nonnegative. -/
theorem goldbachLogMass_nonneg (N : ℕ) : 0 ≤ goldbachLogMass N := by
  unfold goldbachLogMass
  exact Finset.sum_nonneg fun uv _ => goldbachLogTerm_nonneg N uv

/-- Positivity of the weighted source has exactly the literal two-prime
existential meaning. -/
theorem goldbachLogMass_pos_iff (N : ℕ) :
    0 < goldbachLogMass N ↔
      ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  unfold goldbachLogMass
  have hnonneg :
      ∀ uv ∈ goldbachBox N, 0 ≤ goldbachLogTerm N uv :=
    fun uv _ => goldbachLogTerm_nonneg N uv
  rw [Finset.sum_pos_iff_of_nonneg hnonneg]
  constructor
  · rintro ⟨⟨p, q⟩, _, hterm⟩
    exact ⟨p, q, (goldbachLogTerm_pos_iff N p q).mp hterm⟩
  · rintro ⟨p, q, hp, hq, hsum⟩
    have hpN : p ≤ N := by omega
    have hqN : q ≤ N := by omega
    exact ⟨(p, q), (mem_goldbachBox).2 ⟨hpN, hqN⟩,
      (goldbachLogTerm_pos_iff N p q).2 ⟨hp, hq, hsum⟩⟩

/-- The logarithmic mass and the existing exact count have identical
positivity, without identifying their numerical values. -/
theorem goldbachLogMass_pos_iff_count_pos (N : ℕ) :
    0 < goldbachLogMass N ↔ 0 < goldbachCount N := by
  rw [goldbachLogMass_pos_iff, goldbachCount_pos_iff]

end GRWTSK.NumberTheory.Primes.GoldbachWeighted
