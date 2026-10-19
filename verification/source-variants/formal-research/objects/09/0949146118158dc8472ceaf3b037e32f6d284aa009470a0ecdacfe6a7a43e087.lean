import FormalResearch.RiemannHypothesis.Conversation.InfiniteCausalRecords

/-!
# A bounded record path can have infinite square energy

Batches 10–12 distinguish a sufficient square-energy certificate from bounded
record height. This literal positive record path has total increase one and
total width one third, but each square-energy term is one. Its finite energy
is exactly N and its infinite square energy is not summable.

This simpler comparison path supports that qualitative boundary; it is not
the source's badly approximable two-frequency path, a prime counting system,
or a proof of divergence of actual prime record energy.

Human supplier distinction: grwtsk contributors. Local witness and Lean proof:
OpenAI Codex. Geometric-series infrastructure retains Mathlib identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.BoundedRecordEnergyCountermodel

open scoped BigOperators
noncomputable section

/-- The record step in this module, with the following exact parameterization.

def recordStep (n : ℕ) : ℝ := (1 / 2 : ℝ) ^ (n + 1)
-/
def recordStep (n : ℕ) : ℝ := (1 / 2 : ℝ) ^ (n + 1)
/-- The native width in this module, with the following exact parameterization.

def nativeWidth (n : ℕ) : ℝ := (1 / 4 : ℝ) ^ (n + 1)
-/
def nativeWidth (n : ℕ) : ℝ := (1 / 4 : ℝ) ^ (n + 1)
/-- The record height in this module, with the following exact parameterization.

def recordHeight (N : ℕ) : ℝ := ∑ n ∈ Finset.range N, recordStep n
-/
def recordHeight (N : ℕ) : ℝ := ∑ n ∈ Finset.range N, recordStep n
/-- The square energy in this module, with the following exact parameterization.

def squareEnergy (N : ℕ) : ℝ := ∑ n ∈ Finset.range N, (recordStep n) ^ 2 / nativeWidth n
-/
def squareEnergy (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, (recordStep n) ^ 2 / nativeWidth n

theorem record_step_pos (n : ℕ) : 0 < recordStep n := by
  unfold recordStep
  positivity

theorem width_pos (n : ℕ) : 0 < nativeWidth n := by
  unfold nativeWidth
  positivity

theorem total_record_height : HasSum recordStep 1 := by
  have h := hasSum_geometric_two.mul_left (1 / 2 : ℝ)
  have heq : recordStep = fun n => (1 / 2 : ℝ) * (1 / 2 : ℝ) ^ n := by
    funext n
    simp [recordStep, pow_succ, mul_comm]
  rw [heq]
  norm_num at h
  exact h

theorem total_native_width : HasSum nativeWidth (1 / 3 : ℝ) := by
  have h := (hasSum_geometric_of_lt_one (by norm_num : (0 : ℝ) ≤ 1 / 4)
    (by norm_num : (1 / 4 : ℝ) < 1)).mul_left (1 / 4 : ℝ)
  have heq : nativeWidth = fun n => (1 / 4 : ℝ) * (1 / 4 : ℝ) ^ n := by
    funext n
    simp [nativeWidth, pow_succ, mul_comm]
  rw [heq]
  norm_num at h
  exact h

theorem height_bounded (N : ℕ) : 0 ≤ recordHeight N ∧ recordHeight N ≤ 1 := by
  refine ⟨Finset.sum_nonneg (fun n _ => (record_step_pos n).le), ?_⟩
  have h := total_record_height.summable.sum_le_tsum
    (Finset.range N) (fun n _ => (record_step_pos n).le)
  rwa [total_record_height.tsum_eq] at h

theorem energy_term_one (n : ℕ) : (recordStep n) ^ 2 / nativeWidth n = 1 := by
  unfold recordStep nativeWidth
  rw [← pow_mul, Nat.mul_comm, pow_mul]
  norm_num

theorem finite_energy_exact (N : ℕ) : squareEnergy N = N := by
  simp [squareEnergy, energy_term_one]

theorem energy_unbounded (R : ℝ) : ∃ N : ℕ, R < squareEnergy N := by
  obtain ⟨N, hN⟩ := exists_nat_gt R
  exact ⟨N, by simpa only [finite_energy_exact] using hN⟩

theorem square_energy_not_summable :
    ¬ Summable (fun n => (recordStep n) ^ 2 / nativeWidth n) := by
  intro hsum
  obtain ⟨N, hN⟩ := energy_unbounded (∑' n, (recordStep n) ^ 2 / nativeWidth n)
  have hle : squareEnergy N ≤ ∑' n, (recordStep n) ^ 2 / nativeWidth n :=
    hsum.sum_le_tsum (Finset.range N) (fun n _ => by rw [energy_term_one]; norm_num)
  exact (not_lt_of_ge hle) hN

end
end GRWTSK.RiemannHypothesis.Conversation.BoundedRecordEnergyCountermodel
