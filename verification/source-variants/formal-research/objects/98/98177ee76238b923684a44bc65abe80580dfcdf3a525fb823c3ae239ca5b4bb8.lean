import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Push
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Algebra.Order.Floor.Semiring

/-!
# An actual unmatched prime-power knot in the native source

Batch 26, `exact-profile-descent.md`, section 3, source revision
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. The interior inventory is
exactly the original positive von Mangoldt support below exp(2A), and every
such index belongs to the literal closed natural-floor inventory. Unique
factorization rules out complete multiplicative pairing. At every scale
past the first prime an actual positive-weight knot is interior, noncentral
and unequal to every opposite interior shifted endpoint.

This is a prerequisite of the written nonstationarity argument. The jump
of the complete translated source, its distributional stationarity equation
and the admissible profile descent witness are not proved here.

Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.BranchUnmatchedKnot

/-- The only possible simultaneous prime-power partners of two and three produce six. -/
theorem two_three_partners_eq_six {m k : ℕ} (hm : IsPrimePow m) (hk : IsPrimePow k)
    (h : 2 * m = 3 * k) : 2 * m = 6 := by
  have h3m : 3 ∣ m := by
    have h3 : 3 ∣ 2 * m := by rw [h]; exact dvd_mul_right 3 k
    rcases Nat.prime_three.dvd_mul.mp h3 with h2 | h3
    · norm_num at h2
    · exact h3
  have h2k : 2 ∣ k := by
    have h2 : 2 ∣ 3 * k := by rw [← h]; exact dvd_mul_right 2 m
    rcases Nat.prime_two.dvd_mul.mp h2 with h3 | h2
    · norm_num at h3
    · exact h2
  obtain ⟨p, a, hp, ha, hm_eq⟩ := (isPrimePow_nat_iff m).mp hm
  obtain ⟨q, b, hq, hb, hk_eq⟩ := (isPrimePow_nat_iff k).mp hk
  have hp3 : p = 3 := by
    have h3p : 3 ∣ p := Nat.prime_three.dvd_of_dvd_pow (hm_eq ▸ h3m)
    exact (Nat.prime_dvd_prime_iff_eq Nat.prime_three hp).mp h3p |>.symm
  have hq2 : q = 2 := by
    have h2q : 2 ∣ q := Nat.prime_two.dvd_of_dvd_pow (hk_eq ▸ h2k)
    exact (Nat.prime_dvd_prime_iff_eq Nat.prime_two hq).mp h2q |>.symm
  subst p q
  have hf := congrArg (fun n : ℕ ↦ n.factorization 3) h
  rw [Nat.factorization_mul (by norm_num) hm.ne_zero,
    Nat.factorization_mul (by norm_num) hk.ne_zero, ← hm_eq, ← hk_eq,
    Nat.Prime.factorization_pow Nat.prime_three,
    Nat.Prime.factorization_pow Nat.prime_two] at hf
  norm_num [Nat.prime_two.factorization, Nat.prime_three.factorization] at hf
  rw [← hm_eq, hf]
  norm_num

/-- The strict interior inventory is the literal source's positive von Mangoldt support. -/
def interiorInventory (X : ℝ) : Set ℕ :=
  {n | 2 ≤ n ∧ (n : ℝ) < X ∧ 0 < ArithmeticFunction.vonMangoldt n}

/-- Positive von Mangoldt weight is exactly prime-power membership here. -/
theorem mem_interiorInventory {n : ℕ} {X : ℝ} :
    n ∈ interiorInventory X ↔ 2 ≤ n ∧ (n : ℝ) < X ∧ IsPrimePow n := by
  simp [interiorInventory, ArithmeticFunction.vonMangoldt_pos_iff]

/-- Every strict interior positive-weight index is retained in the literal closed floor sum. -/
theorem interiorInventory_mem_closed_cutoff {X : ℝ} {n : ℕ}
    (hn : n ∈ interiorInventory X) : n ∈ Finset.Icc 2 ⌊X⌋₊ := by
  obtain ⟨hn2, hnX, _⟩ := mem_interiorInventory.mp hn
  exact Finset.mem_Icc.mpr ⟨hn2, Nat.le_floor hnX.le⟩

/-- Above the first prime, some actual interior source index has no multiplicative partner. -/
theorem exists_unmatched_index {X : ℝ} (hX : 2 < X) :
    ∃ n ∈ interiorInventory X, ¬ ∃ m ∈ interiorInventory X, X = (n : ℝ) * m := by
  by_cases h3 : X ≤ 3
  · refine ⟨2, mem_interiorInventory.mpr ⟨le_rfl, hX, Nat.prime_two.isPrimePow⟩, ?_⟩
    rintro ⟨m, hm, heq⟩
    have hm2 : (2 : ℝ) ≤ m := by exact_mod_cast (mem_interiorInventory.mp hm).1
    norm_num at heq
    nlinarith
  · have h3X : 3 < X := lt_of_not_ge h3
    by_contra h
    push Not at h
    obtain ⟨m, hm, hXm⟩ := h 2 (mem_interiorInventory.mpr
      ⟨le_rfl, hX, Nat.prime_two.isPrimePow⟩)
    obtain ⟨k, hk, hXk⟩ := h 3 (mem_interiorInventory.mpr
      ⟨by omega, h3X, Nat.prime_three.isPrimePow⟩)
    have heq : 2 * m = 3 * k := by exact_mod_cast hXm.symm.trans hXk
    have h6 := two_three_partners_eq_six (mem_interiorInventory.mp hm).2.2
      (mem_interiorInventory.mp hk).2.2 heq
    have hX6 : X = 6 := by
      rw [hXm]
      exact_mod_cast h6
    obtain ⟨j, hj, hXj⟩ := h 5 (mem_interiorInventory.mpr
      ⟨by omega, by norm_num only [Nat.cast_ofNat]; linarith, (by decide : Nat.Prime 5).isPrimePow⟩)
    have hj2 : (2 : ℝ) ≤ j := by exact_mod_cast (mem_interiorInventory.mp hj).1
    norm_num at hXj
    nlinarith

/-- A multiplicatively unmatched source index has no opposite shifted endpoint at its knot. -/
theorem unmatched_no_opposite_endpoint {A : ℝ} {n : ℕ}
    (hn : n ∈ interiorInventory (Real.exp (2 * A)))
    (hu : ¬ ∃ m ∈ interiorInventory (Real.exp (2 * A)), Real.exp (2 * A) = (n : ℝ) * m)
    {m : ℕ} (hm : m ∈ interiorInventory (Real.exp (2 * A))) :
    A - Real.log n ≠ -A + Real.log m := by
  intro heq
  have hn0 : (0 : ℝ) < n := by
    exact_mod_cast (by have := (mem_interiorInventory.mp hn).1; omega : 0 < n)
  have hm0 : (0 : ℝ) < m := by
    exact_mod_cast (by have := (mem_interiorInventory.mp hm).1; omega : 0 < m)
  apply hu
  refine ⟨m, hm, ?_⟩
  have hsum : 2 * A = Real.log n + Real.log m := by linarith
  rw [hsum, Real.exp_add, Real.exp_log hn0, Real.exp_log hm0]

/-- An unmatched source knot is not the reflection center. -/
theorem unmatched_knot_ne_zero {A : ℝ} {n : ℕ}
    (hn : n ∈ interiorInventory (Real.exp (2 * A)))
    (hu : ¬ ∃ m ∈ interiorInventory (Real.exp (2 * A)), Real.exp (2 * A) = (n : ℝ) * m) :
    A - Real.log n ≠ 0 := by
  intro heq
  apply unmatched_no_opposite_endpoint hn hu hn
  linarith

/-- At every scale after the first prime, an actual positive-weight source knot is interior,
noncentral and unequal to every opposite interior shifted endpoint. -/
theorem exists_unmatched_knot {A : ℝ} (hA : Real.log 2 / 2 < A) :
    ∃ n ∈ interiorInventory (Real.exp (2 * A)),
      -A < A - Real.log n ∧ A - Real.log n < A ∧ A - Real.log n ≠ 0 ∧
      ∀ m ∈ interiorInventory (Real.exp (2 * A)),
        A - Real.log n ≠ -A + Real.log m := by
  have hX : 2 < Real.exp (2 * A) := by
    have h := Real.exp_lt_exp.mpr (by linarith : Real.log 2 < 2 * A)
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using h
  obtain ⟨n, hn, hu⟩ := exists_unmatched_index hX
  obtain ⟨hn2, hnX, _⟩ := mem_interiorInventory.mp hn
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hn1 : (1 : ℝ) < n := by exact_mod_cast (by omega : 1 < n)
  have hlog := Real.log_lt_log hn0 hnX
  rw [Real.log_exp] at hlog
  refine ⟨n, hn, by linarith, ?_, unmatched_knot_ne_zero hn hu, ?_⟩
  · linarith [Real.log_pos hn1]
  · intro m hm
    exact unmatched_no_opposite_endpoint hn hu hm

end FormalResearch.RiemannHypothesis.BranchUnmatchedKnot
