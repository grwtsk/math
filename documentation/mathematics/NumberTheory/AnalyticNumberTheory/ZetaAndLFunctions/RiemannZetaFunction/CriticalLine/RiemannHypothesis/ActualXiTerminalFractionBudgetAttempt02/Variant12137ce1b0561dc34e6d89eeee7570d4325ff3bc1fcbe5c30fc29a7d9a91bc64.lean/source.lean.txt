import SourceActualXiWeightedIntegerMean
import RootActualXiExponentialEnvelope

/-!
The literal final logarithmic cell has an unconditional exponentially small
budget. Its real fractional length, closed floor and actual shifted Chebyshev
primitive are retained. Only this terminal cell is bounded; no weighted
integer mean or original signed arithmetic witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualXiTerminalFractionBudget
open MeasureTheory Set Filter
open scoped Interval Topology
open RootActualXiTailPrimitive RootActualXiExponentialEnvelope
open SourceActualXiLogStepDiscretization SourceActualXiWeightedIntegerMean
noncomputable section

/-- The true nonnegative last fractional cell of the actual primitive readout. -/
def actualXiTerminalFraction (T : ℝ) : ℝ :=
  |actualAnchoredXiTailPrimitive (Real.log (Nat.floor (Real.exp T) : ℝ))| *
    (T - Real.log (Nat.floor (Real.exp T) : ℝ))

private theorem terminal_orders {T : ℝ} (hT : Real.log 7 ≤ T) :
    7 ≤ Nat.floor (Real.exp T) ∧
      Real.log (Nat.floor (Real.exp T) : ℝ) ≤ T ∧
        T ≤ Real.log ((Nat.floor (Real.exp T) + 1 : ℕ) : ℝ) := by
  have hn := (actualXiLogStep_floor_guards hT).1
  have hp : 0 < (Nat.floor (Real.exp T) : ℝ) := by
    exact_mod_cast (show 0 < Nat.floor (Real.exp T) by omega)
  refine ⟨hn, ?_, ?_⟩
  · simpa only [Real.log_exp] using
      Real.log_le_log hp (Nat.floor_le (Real.exp_pos T).le)
  · have he : Real.exp T ≤ ((Nat.floor (Real.exp T) + 1 : ℕ) : ℝ) := by
      simpa only [Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one (Real.exp T)).le
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos T) he

/-- Every real terminal time keeps its genuine nonnegative fractional length. -/
theorem actualXiTerminalFraction_nonneg {T : ℝ} (hT : Real.log 7 ≤ T) :
    0 ≤ actualXiTerminalFraction T := by
  exact mul_nonneg (abs_nonneg _) (sub_nonneg.mpr (terminal_orders hT).2.1)

/-- The actual final fractional cell has a true inverse-square-root budget. -/
theorem actualXiTerminalFraction_le_inverse_sqrt {T : ℝ} (hT : Real.log 7 ≤ T) :
    actualXiTerminalFraction T ≤
      2 * actualXiExponentialEnvelopeConstant / Real.sqrt (Nat.floor (Real.exp T) : ℝ) := by
  let N : ℕ := Nat.floor (Real.exp T)
  have hn : 7 ≤ N := (terminal_orders hT).1
  have hp : 0 < (N : ℝ) := by exact_mod_cast (show 0 < N by omega)
  have hs : 0 < Real.sqrt (N : ℝ) := Real.sqrt_pos.2 hp
  have hd0 : 0 ≤ T - Real.log (N : ℝ) := sub_nonneg.mpr (terminal_orders hT).2.1
  have hd1 : T - Real.log (N : ℝ) ≤ 1 / (N : ℝ) := by
    have hh := Real.log_le_sub_one_of_pos
      (div_pos (by positivity : 0 < ((N + 1 : ℕ) : ℝ)) hp)
    rw [Real.log_div (by positivity) hp.ne'] at hh
    have hu : T ≤ Real.log ((N + 1 : ℕ) : ℝ) := (terminal_orders hT).2.2
    have he : ((N + 1 : ℕ) : ℝ) / (N : ℝ) - 1 = 1 / (N : ℝ) := by
      push_cast
      field_simp
      ring
    rw [he] at hh
    linarith
  have hl : Real.log 7 ≤ Real.log (N : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hn)
  have hf := actualAnchoredXiTailPrimitive_abs_le hl
  rw [Real.exp_half, Real.exp_log hp] at hf
  have hc : 0 ≤ actualXiExponentialEnvelopeConstant := by
    unfold actualXiExponentialEnvelopeConstant
    positivity
  have hfs : |actualAnchoredXiTailPrimitive (Real.log (N : ℝ))| ≤
      2 * actualXiExponentialEnvelopeConstant * Real.sqrt (N : ℝ) := by
    exact hf.trans (by nlinarith [Real.sqrt_nonneg 7])
  change |actualAnchoredXiTailPrimitive (Real.log (N : ℝ))| *
    (T - Real.log (N : ℝ)) ≤
      2 * actualXiExponentialEnvelopeConstant / Real.sqrt (N : ℝ)
  have hns : Real.sqrt (N : ℝ) * (1 / (N : ℝ)) = 1 / Real.sqrt (N : ℝ) := by
    field_simp
    nlinarith [Real.sq_sqrt hp.le]
  calc
    _ ≤ (2 * actualXiExponentialEnvelopeConstant * Real.sqrt (N : ℝ)) *
        (1 / (N : ℝ)) := mul_le_mul hfs hd1 hd0 (by positivity)
    _ = 2 * actualXiExponentialEnvelopeConstant *
        (Real.sqrt (N : ℝ) * (1 / (N : ℝ))) := by ring
    _ = _ := by rw [hns]; ring

private theorem sqrt_exp_half (t : ℝ) : Real.sqrt (Real.exp t) = Real.exp (t / 2) := by
  have hs := Real.sq_sqrt (Real.exp_pos t).le
  have he : (Real.exp (t / 2)) ^ 2 = Real.exp t := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  nlinarith [Real.exp_pos (t / 2), Real.sqrt_nonneg (Real.exp t)]

/-- The floor-dependent actual terminal cell decays along every real time. -/
theorem actualXiTerminalFraction_le_exponential {T : ℝ} (hT : Real.log 7 ≤ T) :
    actualXiTerminalFraction T ≤
      2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant * Real.exp (-T / 2) := by
  obtain ⟨hn, hh⟩ := actualXiLogStep_floor_guards hT
  have hp : 0 < (Nat.floor (Real.exp T) : ℝ) := by
    exact_mod_cast (show 0 < Nat.floor (Real.exp T) by omega)
  have hs : 0 < Real.sqrt (Nat.floor (Real.exp T) : ℝ) := Real.sqrt_pos.2 hp
  have h2 : 0 < Real.sqrt 2 := Real.sqrt_pos.2 (by norm_num)
  have hc : 0 ≤ actualXiExponentialEnvelopeConstant := by
    unfold actualXiExponentialEnvelopeConstant
    positivity
  have hs0 := Real.sqrt_le_sqrt hh
  rw [Real.sqrt_div (Real.exp_pos T).le, sqrt_exp_half] at hs0
  have hlo : Real.exp (T / 2) ≤ Real.sqrt 2 * Real.sqrt (Nat.floor (Real.exp T) : ℝ) := by
    simpa only [mul_comm] using (div_le_iff₀ h2).1 hs0
  apply (actualXiTerminalFraction_le_inverse_sqrt hT).trans
  calc
    _ = (2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant) /
        (Real.sqrt 2 * Real.sqrt (Nat.floor (Real.exp T) : ℝ)) := by field_simp
    _ ≤ (2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant) / Real.exp (T / 2) :=
      div_le_div_of_nonneg_left (by positivity) (Real.exp_pos _) hlo
    _ = _ := by
      rw [show -T / 2 = -(T / 2) by ring, Real.exp_neg]
      ring

/-- The actual last fraction tends to zero on the full real scale. -/
theorem actualXiTerminalFraction_tendsto_zero :
    Tendsto actualXiTerminalFraction atTop (𝓝 (0 : ℝ)) := by
  have he : Tendsto (fun T : ℝ => Real.exp (-T / 2)) atTop (𝓝 (0 : ℝ)) := by
    simpa only [Function.comp_apply, id_eq, neg_div] using
      Real.tendsto_exp_neg_atTop_nhds_zero.comp
      (tendsto_id.atTop_div_const (by norm_num : (0 : ℝ) < 2))
  have hb := he.const_mul (2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant)
  simp only [mul_zero] at hb
  apply squeeze_zero' _ _ hb
  · filter_upwards [eventually_ge_atTop (Real.log (7 : ℝ))] with T hT
    exact actualXiTerminalFraction_nonneg hT
  · filter_upwards [eventually_ge_atTop (Real.log (7 : ℝ))] with T hT
    exact actualXiTerminalFraction_le_exponential hT

/-- Complete integer cells recover the actual mean with only proved analytic finite errors. -/
theorem actualXiPrimitive_mean_prefix_error {T : ℝ} (hT : Real.log 7 ≤ T) :
    |(∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) -
      actualXiWeightedIntegerPrefix (Nat.floor (Real.exp T))| ≤
      actualXiLogStepErrorConstant +
        2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant * Real.exp (-T / 2) := by
  have h := actualXiPrimitive_mean_weighted_readout_error hT
  change |(∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) -
    (actualXiWeightedIntegerPrefix (Nat.floor (Real.exp T)) + actualXiTerminalFraction T)| ≤
      actualXiLogStepErrorConstant at h
  calc
    _ = |((∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) -
        (actualXiWeightedIntegerPrefix (Nat.floor (Real.exp T)) + actualXiTerminalFraction T)) +
          actualXiTerminalFraction T| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ actualXiLogStepErrorConstant + actualXiTerminalFraction T := by
      rw [abs_of_nonneg (actualXiTerminalFraction_nonneg hT)]
      exact add_le_add h le_rfl
    _ ≤ _ := add_le_add le_rfl (actualXiTerminalFraction_le_exponential hT)

end
end FormalResearch.RiemannHypothesis.ActualXiTerminalFractionBudget
