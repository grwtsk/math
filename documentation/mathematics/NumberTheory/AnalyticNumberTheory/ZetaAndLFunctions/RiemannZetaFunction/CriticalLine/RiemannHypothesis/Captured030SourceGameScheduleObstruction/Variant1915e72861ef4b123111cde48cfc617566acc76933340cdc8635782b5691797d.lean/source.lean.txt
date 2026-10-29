import FormalResearch.RiemannHypothesis.SourceFiniteGameBridge
import FormalResearch.RiemannHypothesis.SourcePairedSquareMainTerm

/-!
# A source-realizable obstruction to uniform prefix credit

The main-first first-prime schedule has mandatory initial debt at least A/2000.
Thus its all-prefix credit grows with A even if its terminal signed estimate
were bounded. Moving this independent main charge to the last cursor preserves
the exact signed total. The terminal arithmetic budget remains open.

Research direction, selection and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex / ChatGPT.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceGameScheduleObstruction

open SourceFiniteGameBridge SourceDiagonalMainTerm SourcePairedSquareMainTerm

theorem main_first_initial_gain (A : ℝ) :
    firstPrimeEventGain A 0 = -2 * (diagonalMainCoefficient A * A) := by
  simp [firstPrimeEventGain, WeightedPrimeAbel.primeLogInventory]

/-- This adverse prefix is an actual required source payment, not an added abstract path. -/
theorem main_first_initial_gain_le {A : ℝ} (hA : 1 ≤ A) :
    firstPrimeEventGain A 0 ≤ -(A / 2000) := by
  have hk := mul_le_mul_of_nonneg_right
    (diagonalMainCoefficient_ge_one_div_four_thousand hA) (show 0 ≤ A by linarith)
  rw [main_first_initial_gain]
  linarith

/-- Every proposed fixed all-prefix credit has a concrete real-scale counterexample. -/
theorem main_first_no_uniform_prefix_credit (c : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧
      (∑ i ∈ Finset.range 1, firstPrimeEventGain A i) < -c := by
  let A : ℝ := max 1 (2000 * (c + 1))
  have hA : 1 ≤ A := le_max_left _ _
  have hAc : 2000 * (c + 1) ≤ A := le_max_right _ _
  refine ⟨A, hA, ?_⟩
  simpa using lt_of_le_of_lt (main_first_initial_gain_le hA)
    (show -(A / 2000) < -c by linarith)

/-- An allowed representation refinement moves only the independent main payment. -/
def mainLastEventGain (A : ℝ) (n : ℕ) : ℝ :=
  firstPrimeEventGain A n -
    (if n = 0 then -2 * (diagonalMainCoefficient A * A) else 0) +
    if n = sourceEventCount A - 1 then -2 * (diagonalMainCoefficient A * A) else 0

/-- For the actual all-real domain, the refined initial event has exactly zero gain. -/
theorem main_last_initial_gain_zero {A : ℝ} (hA : 1 ≤ A) :
    mainLastEventGain A 0 = 0 := by
  have hx : (2 : ℝ) ≤ Real.exp (2 * A) := by
    have he := Real.add_one_le_exp (2 * A)
    linarith
  have hN : 2 ≤ ⌊Real.exp (2 * A)⌋₊ :=
    (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr hx
  have hn : (0 : ℕ) ≠ sourceEventCount A - 1 := by
    unfold sourceEventCount
    omega
  simp [mainLastEventGain, main_first_initial_gain, hn]

/-- The refined schedule preserves the complete native first-prime signed total. -/
theorem main_last_preserves_total (A : ℝ) :
    (∑ n ∈ Finset.range (sourceEventCount A), mainLastEventGain A n) =
      ∑ n ∈ Finset.range (sourceEventCount A), firstPrimeEventGain A n := by
  have hp : 0 < sourceEventCount A := by unfold sourceEventCount; omega
  have hl : sourceEventCount A - 1 < sourceEventCount A := by omega
  unfold mainLastEventGain
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
  simp only [Finset.sum_ite_eq', Finset.mem_range, hp, hl, if_true]
  ring

/-- The total-preserving refinement is consumed by the same actual arithmetic owner.
It removes the demonstrated main-first obstruction, not the missing terminal cap. -/
theorem estimate_of_main_last_certificates (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R)
    (h g e : ℝ → ℕ → ℝ)
    (hc : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      0 ≤ g A i + h A i - h A (i + 1))
    (hb : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      g A i - e A i ≤ mainLastEventGain A i)
    (hbudget : ∀ A : ℝ, R ≤ A → h A 0 - h A (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e A i ≤ C) :
    FormalResearch.SUCAS.CorrelationAssembly.EstimateObligation := by
  apply SourcePrimePowerPartition.estimate_of_firstPrime_tail
  refine ⟨C / 2, by positivity, R, hR, ?_⟩
  intro A hRA
  have ht := FiniteGainCertificates.terminal_lower id (h A) (g A)
    (mainLastEventGain A) (e A) (sourceEventCount A) C
    (hc A hRA) (hb A hRA) (hbudget A hRA)
  rw [main_last_preserves_total, sum_firstPrimeEventGain] at ht
  linarith

end FormalResearch.RiemannHypothesis.SourceGameScheduleObstruction
