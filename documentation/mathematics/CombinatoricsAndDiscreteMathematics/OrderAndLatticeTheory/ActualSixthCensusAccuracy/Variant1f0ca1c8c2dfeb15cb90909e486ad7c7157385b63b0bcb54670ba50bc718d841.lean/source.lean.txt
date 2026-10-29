import FormalResearch.RiemannHypothesis.Conversation.ActualSixthCensusLimit
import Mathlib.Order.Filter.AtTopBot.Archimedean

/-!
# Prescribed relative accuracy and integer consumer of the actual sixth census

The exact leading coefficient is consumed as a quantified approximation:
for each positive relative tolerance there is one real radius beyond which
both bounds hold for the complete census. The same normalized limit survives
restriction to every sufficiently large integer radius; no off-grid coverage
is inferred from that restriction. Human exact-source and uniform-radius
direction: grwtsk contributors. Local asymptotic consumers: OpenAI Codex.
Earlier source definitions and upstream limit interfaces retain their names.
This is a unit-coefficient census, without arithmetic phases or Mobius signs;
it does not establish a signed exceptional-Gram bound or RH.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusAccuracy
open ActualSixthCensusLimit ActualCensusCutoff Filter
open scoped Topology
noncomputable section

theorem actual_sixth_census_integer_leading_coefficient :
    Tendsto (fun n : ℕ ↦ normalizedSixthCensus (n : ℝ)) atTop
      (𝓝 (1959910318080 : ℝ)) :=
  actual_complete_sixth_census_leading_coefficient.comp tendsto_natCast_atTop_atTop

theorem actual_sixth_census_eventual_relative_accuracy {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ A : ℝ in atTop,
      (1 - ε) * 1959910318080 < normalizedSixthCensus A ∧
        normalizedSixthCensus A < (1 + ε) * 1959910318080 := by
  have hlo : (1 - ε) * (1959910318080 : ℝ) < 1959910318080 := by nlinarith
  have hhi : (1959910318080 : ℝ) < (1 + ε) * 1959910318080 := by nlinarith
  exact ((tendsto_order.1 actual_complete_sixth_census_leading_coefficient).1 _ hlo).and
    ((tendsto_order.1 actual_complete_sixth_census_leading_coefficient).2 _ hhi)

theorem actual_sixth_census_prescribed_relative_bounds {ε : ℝ} (hε : 0 < ε) :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      (1 - ε) * 1959910318080 * (Real.exp (A / 3) / A ^ 9) < actualCensus A 6 ∧
        actualCensus A 6 <
          (1 + ε) * 1959910318080 * (Real.exp (A / 3) / A ^ 9) := by
  obtain ⟨R, hR⟩ := (actual_sixth_census_eventual_relative_accuracy hε).exists_forall_of_atTop
  refine ⟨max 1 R, le_max_left _ _, ?_⟩
  intro A hA
  have hpos : 0 < A := by have := le_trans (le_max_left 1 R) hA; linarith
  have hprice : 0 < Real.exp (A / 3) / A ^ 9 := by positivity
  have heq : normalizedSixthCensus A * (Real.exp (A / 3) / A ^ 9) = actualCensus A 6 := by
    unfold normalizedSixthCensus
    field_simp
  have h := hR A (le_trans (le_max_right 1 R) hA)
  constructor
  · simpa only [heq] using mul_lt_mul_of_pos_right h.1 hprice
  · simpa only [heq] using mul_lt_mul_of_pos_right h.2 hprice

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusAccuracy
