import SourceActualTiltProjectedGrowth

/-!
The actual moving-height projected state has an unbounded retained norm.
The convergent arithmetic mass is a fixed positive coefficient, not a state
normalization or a bound on the complete signed readout.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualTiltProjectedDivergence
open Filter
open scoped Topology
open SourceActualTiltProjectedGrowth SourceActualTiltBandProjection
open SourceActualEulerCentralFrequency SourceActualRightBumpTail SourceActualBumpMovingHeight

private theorem right_mass_pos : 0 < actualRightLineMass (3 / 2) := by
  obtain ⟨A, hA, hh⟩ := (eventually_ge_atTop (1 : ℝ)).and
    actualTiltBandState_moving_energy_eventually_lower |>.exists
  have hp : 0 < actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 := by
    exact div_pos (mul_pos actualCentralFrequencyConstant_pos (Real.exp_pos _))
      (pow_pos (by linarith : 0 < A) _)
  have hm : 0 < actualRightLineMass (3 / 2) *
      ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := hp.trans_le hh
  exact pos_of_mul_pos_left hm (sq_nonneg _)

/-- The true moving-height band norm square has a fixed positive exponential lower bound. -/
theorem actualTiltBandState_moving_norm_sq_eventually_lower :
    ∀ᶠ A : ℝ in atTop,
      (actualCentralFrequencyConstant / actualRightLineMass (3 / 2)) *
        Real.exp (2 * A) / A ^ 10 ≤
          ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := by
  filter_upwards [actualTiltBandState_moving_energy_eventually_lower] with A hh
  have hd : (actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10) /
      actualRightLineMass (3 / 2) ≤
        ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2 := by
    apply (div_le_iff₀ right_mass_pos).2
    simpa only [mul_comm (actualRightLineMass (3 / 2))] using hh
  convert hd using 1
  ring

/-- The actual projected energy tends to infinity along all real scales. -/
theorem actualTiltBandState_moving_norm_sq_tendsto_atTop :
    Tendsto (fun A : ℝ => ‖actualTiltBandState A (actualBumpMovingHeight A (3 / 2))‖ ^ 2)
      atTop atTop := by
  have ht : Tendsto (fun A : ℝ => Real.exp (2 * A) / A ^ 10) atTop atTop := by
    apply tendsto_atTop_mono' atTop _ (Real.tendsto_exp_div_pow_atTop 10)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
    gcongr
    linarith
  have hk : 0 < actualCentralFrequencyConstant / actualRightLineMass (3 / 2) :=
    div_pos actualCentralFrequencyConstant_pos right_mass_pos
  have hh : Tendsto (fun A : ℝ =>
      (actualCentralFrequencyConstant / actualRightLineMass (3 / 2)) *
        Real.exp (2 * A) / A ^ 10) atTop atTop := by
    convert ht.const_mul_atTop hk using 1
    ext A
    ring
  exact tendsto_atTop_mono' atTop actualTiltBandState_moving_norm_sq_eventually_lower hh

end FormalResearch.RiemannHypothesis.SourceActualTiltProjectedDivergence
