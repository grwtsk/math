import FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance
import FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout

/-!
# The smallest remaining compensated arithmetic readout

grwtsk contributors retains credit for the originating Kapitza direction,
theorem selection, conceptual direction, corrections and evaluation. OpenAI
Codex supplied this specific combination of independently checked identities
on 7 October 2026. The source family, sign, normalization and real-scale cutoff
are unchanged. This module supplies exact reductions and paid comparison
constants, not an unconditional witness for issue #16.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction

open SourcePairing SourceKapitzaStorage SourceKapitzaReconstruction
open SourceKapitzaEventBalance SourceKapitzaCompensatedReadout
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimatePrimeSmoothDefect

/-- The complete correction equals the actual compensated readout plus a paid quadrature term. -/
theorem combined_terminal_eq_compensated (A : ℝ) (hA : 1 ≤ A) :
    combinedTerminalWork A + totalQuadraticWork A =
      compensatedSourceSum A - 1 + quadratureError A := by
  have hc := nonaffineWork_complete_balance A hA
  have hu := nonaffineWork_eq_compensated_sub_trend_add_error A hA
  unfold combinedTerminalWork
  linarith only [hc, hu]

theorem totalQuadraticWork_nonneg (A : ℝ) : 0 ≤ totalQuadraticWork A := by
  unfold totalQuadraticWork
  exact Finset.sum_nonneg (fun n _ => quadraticImpulse_nonneg _)

/-- This is the independent arithmetic premise still required after every paid comparison. -/
def CompensatedTailUpperBound : Prop :=
  ∃ R : ℝ, 1 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A → compensatedSourceSum A ≤ B

/-- The combined terminal tail upper bound in this module, with the following exact
parameterization.

This defines a condition; no witness is supplied by the definition.
def CombinedTerminalTailUpperBound : Prop := ∃ R : ℝ, 1 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A →
combinedTerminalWork A ≤ B
-/
def CombinedTerminalTailUpperBound : Prop :=
  ∃ R : ℝ, 1 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A → combinedTerminalWork A ≤ B

/-- The exact corrector relocates the signed obstruction.
Its paid comparisons do not discharge it. -/
theorem combined_terminal_tail_iff_compensated_tail :
    CombinedTerminalTailUpperBound ↔ CompensatedTailUpperBound := by
  constructor
  · rintro ⟨R, hR, B, hb⟩
    refine ⟨R, hR, B + quadraticConstant + 12, ?_⟩
    intro A hRA
    have hA : 1 ≤ A := hR.trans hRA
    have he := combined_terminal_eq_compensated A hA
    have hq := totalQuadraticWork_le A
    have hd := (abs_le.mp (quadratureError_abs_le A hA)).1
    have hdiv : 10 / A ≤ 10 := by
      have h := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 10)
        (by norm_num : (0 : ℝ) < 1) hA
      simpa using h
    have h := hb A hRA
    linarith
  · rintro ⟨R, hR, B, hb⟩
    refine ⟨R, hR, B + 10, ?_⟩
    intro A hRA
    have hA : 1 ≤ A := hR.trans hRA
    have he := combined_terminal_eq_compensated A hA
    have hq := totalQuadraticWork_nonneg A
    have hd := (abs_le.mp (quadratureError_abs_le A hA)).2
    have hdiv : 10 / A ≤ 10 := by
      have h := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 10)
        (by norm_num : (0 : ℝ) < 1) hA
      simpa using h
    have h := hb A hRA
    linarith

/-- Supplied one-sided arithmetic caps use the existing exact finite-prefix return. -/
theorem original_lower_of_compensated_cap (R B : ℝ) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → compensatedSourceSum A ≤ B) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R)
        (archimedeanMultiplier 0 + 2 - 2 * B - 2 * continuousDefect R - 20 / R) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hr := mertensResidual_le_of_compensated_cap R A B hR hRA (hS A hRA)
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    simp only [div_eq_mul_inv] at hr ⊢
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

/-- This consumer has no PNT, affine, reconstruction or geometric premise.
Its arithmetic cap is open. -/
theorem estimate_of_compensated_tail (hS : CompensatedTailUpperBound) :
    CorrelationAssembly.EstimateObligation := by
  rcases hS with ⟨R, hR, B, hB⟩
  exact ⟨_, original_lower_of_compensated_cap R B hR hB⟩

end FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction
