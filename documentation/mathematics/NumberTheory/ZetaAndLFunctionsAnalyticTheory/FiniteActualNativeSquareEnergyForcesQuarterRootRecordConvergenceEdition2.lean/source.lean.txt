import FormalResearch.RiemannHypothesis.Conversation.RecordSummability
import FormalResearch.RiemannHypothesis.Conversation.TailEnergyBarrier

/-!
# Finite actual native square energy forces quarter-root record convergence

Batch 12's tail barrier now uses the actual prime record increments, every
integer native width and the fixed entrance N. Finite total square energy
implies summable record height. Its future record deficit is bounded by the
vanishing tail energy times 2/sqrt(N+J), hence the deficit times the fourth root
of N+J tends to zero. Finite energy itself remains an arithmetic hypothesis.

Human record-survival direction: grwtsk contributors. Local actual-source
infinite consumer and Lean proof: OpenAI Codex. Mathlib sum limits and square
roots retain their identity; no prime-energy bound or RH proof is supplied.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeRecordTailEnergy

open RecordSummability NativeRecordConsumer OpenArithmeticSuppliers ArithmeticPrimitive
open Filter
open scoped BigOperators Topology
noncomputable section

/-- The energy term in this module, with the following exact parameterization.

def energyTerm (N j : ℕ) : ℝ := (primeRecordIncrement N j) ^ 2 / cellClock (N + j) (N + j + 1
: ℕ)
-/
def energyTerm (N j : ℕ) : ℝ := (primeRecordIncrement N j) ^ 2 /
  cellClock (N + j) (N + j + 1 : ℕ)
/-- The tail energy in this module, with the following exact parameterization.

def tailEnergy (N J : ℕ) : ℝ := ∑' j : ℕ, energyTerm N (j + J)
-/
def tailEnergy (N J : ℕ) : ℝ := ∑' j : ℕ, energyTerm N (j + J)
/-- The remaining record height in this module, with the following exact parameterization.

def remainingRecordHeight (N J : ℕ) : ℝ := ∑' j : ℕ, primeRecordIncrement N (j + J)
-/
def remainingRecordHeight (N J : ℕ) : ℝ := ∑' j : ℕ, primeRecordIncrement N (j + J)

theorem energy_term_nonneg {N : ℕ} (hN : 1 ≤ N) (j : ℕ) : 0 ≤ energyTerm N j :=
  div_nonneg (sq_nonneg _) (cellClock_pos (by omega : 1 ≤ N + j)).le

theorem finite_energy_implies_record_summable {N : ℕ} (hN : 1 ≤ N)
    (hfinite : Summable (energyTerm N)) : Summable (primeRecordIncrement N) := by
  apply (record_summable_iff_levels_bounded N).mpr
  let E := ∑' j : ℕ, energyTerm N j
  have hE0 : 0 ≤ E := tsum_nonneg (fun j => energy_term_nonneg hN j)
  have hW : 0 ≤ (2 : ℝ) / Real.sqrt N := by positivity
  refine ⟨Real.sqrt ((2 / Real.sqrt N) * E), Real.sqrt_nonneg _, ?_⟩
  intro K
  have hpartial : recordEnergy N K ≤ E :=
    hfinite.sum_le_tsum (Finset.range K) (fun j _ => energy_term_nonneg hN j)
  have hs := (actual_record_square_le (K := K) hN).trans
    (mul_le_mul_of_nonneg_left hpartial hW)
  have hroot := Real.sq_sqrt (mul_nonneg hW hE0)
  have hroot0 := Real.sqrt_nonneg ((2 / Real.sqrt N) * E)
  nlinarith

theorem actual_tail_square_bound {N : ℕ} (hN : 1 ≤ N)
    (hfinite : Summable (energyTerm N)) (J : ℕ) :
    (remainingRecordHeight N J) ^ 2 ≤ (2 / Real.sqrt (N + J : ℕ)) * tailEnergy N J := by
  have hr := finite_energy_implies_record_summable hN hfinite
  have hrJ : Summable (fun j => primeRecordIncrement N (j + J)) :=
    (summable_nat_add_iff J).mpr hr
  have heJ : Summable (fun j => energyTerm N (j + J)) :=
    (summable_nat_add_iff J).mpr hfinite
  have hfiniteBound (K : ℕ) :
      (∑ j ∈ Finset.range K, primeRecordIncrement N (j + J)) ^ 2 ≤
        (2 / Real.sqrt (N + J : ℕ)) * ∑ j ∈ Finset.range K, energyTerm N (j + J) := by
    let w : ℕ → ℝ := fun j => cellClock (N + J + j) (N + J + j + 1 : ℕ)
    let ρ : ℕ → ℝ := fun j => primeRecordIncrement N (j + J)
    have hw (j : ℕ) : 0 < w j := cellClock_pos (by omega)
    have h := TailEnergyBarrier.finite_square_bound w ρ hw K
    have hterms : (∑ j ∈ Finset.range K, (ρ j) ^ 2 / w j) =
        ∑ j ∈ Finset.range K, energyTerm N (j + J) := by
      apply Finset.sum_congr rfl
      intro j _
      simp only [ρ, w, energyTerm, Nat.add_comm j J, Nat.add_assoc]
    have hwidth : (∑ j ∈ Finset.range K, w j) ≤ 2 / Real.sqrt (N + J : ℕ) := by
      change (∑ j ∈ Finset.range K, cellClock (N + J + j) (N + J + j + 1 : ℕ)) ≤ _
      rw [native_width_telescope]
      have hi : 0 ≤ (1 : ℝ) / Real.sqrt (N + J + K : ℕ) := by positivity
      rw [show (2 : ℝ) / Real.sqrt (N + J : ℕ) =
        2 * (1 / Real.sqrt (N + J : ℕ)) by ring]
      linarith
    rw [hterms] at h
    exact h.trans (mul_le_mul_of_nonneg_right hwidth
      (Finset.sum_nonneg (fun j _ => energy_term_nonneg hN (j + J))))
  exact le_of_tendsto_of_tendsto' (hrJ.hasSum.tendsto_sum_nat.pow 2)
    (tendsto_const_nhds.mul heJ.hasSum.tendsto_sum_nat) hfiniteBound

theorem native_quarter_root_deficit_decay {N : ℕ} (hN : 1 ≤ N)
    (hfinite : Summable (energyTerm N)) :
    Tendsto (fun J => remainingRecordHeight N J *
      Real.sqrt (Real.sqrt (N + J : ℕ))) atTop (𝓝 0) := by
  have htail : Tendsto (tailEnergy N) atTop (𝓝 0) := tendsto_sum_nat_add (energyTerm N)
  have hupper : Tendsto (fun J => Real.sqrt (2 * tailEnergy N J)) atTop (𝓝 0) := by
    have hm : Tendsto (fun J => (2 : ℝ) * tailEnergy N J) atTop (𝓝 ((2 : ℝ) * 0)) :=
      tendsto_const_nhds.mul htail
    simpa only [mul_zero, Real.sqrt_zero] using hm.sqrt
  apply squeeze_zero (fun J => mul_nonneg
    (tsum_nonneg (fun j => CausalRecords.recordIncrement_nonneg _ _))
    (Real.sqrt_nonneg _)) _ hupper
  intro J
  change remainingRecordHeight N J * Real.sqrt (Real.sqrt (N + J : ℕ)) ≤
    Real.sqrt (2 * tailEnergy N J)
  have hs := actual_tail_square_bound hN hfinite J
  have hx : (0 : ℝ) < (N + J : ℕ) := by exact_mod_cast (by omega : 0 < N + J)
  have hroot : 0 < Real.sqrt (N + J : ℕ) := Real.sqrt_pos.mpr hx
  have hscaled : (remainingRecordHeight N J * Real.sqrt (Real.sqrt (N + J : ℕ))) ^ 2 ≤
      2 * tailEnergy N J := by
    calc
      _ = (remainingRecordHeight N J) ^ 2 * Real.sqrt (N + J : ℕ) := by
        rw [mul_pow, Real.sq_sqrt hroot.le]
      _ ≤ ((2 / Real.sqrt (N + J : ℕ)) * tailEnergy N J) * Real.sqrt (N + J : ℕ) :=
        mul_le_mul_of_nonneg_right hs hroot.le
      _ = _ := by field_simp
  have hE : 0 ≤ tailEnergy N J := tsum_nonneg (fun j => energy_term_nonneg hN (j + J))
  have hsq := Real.sq_sqrt (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) hE)
  have hsq0 := Real.sqrt_nonneg (2 * tailEnergy N J)
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeRecordTailEnergy
