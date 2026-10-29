import SourceStrictComplementaryEarlyBudget
import SourceUnconditionalCorrectedCalibration

/-!
Exploit the genuine negative early contribution once more in the original
complete signed source. The remaining short jets and actual complementary tail
are independently specified. A supplied joint arithmetic bound may spend the
proved 5A/128 cancellation. No such all-real witness is constructed here.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceSignedTailLinearConsumer

open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceStrictComplementaryEarlyBudget SourceStrictComplementaryLocalization
open SourceCorrectedOmegaPeanoTaylor SourceUnconditionalCorrectedCalibration
open SourceCompleteCorrectedAbelPairing SourceFullDivisorLogInventory
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateMertensAbel EstimateMertensResidual

noncomputable section

/-- The full signed short jets and genuine actual complementary tail, before head cancellation. -/
def signedShortAndComplementaryTail (A : ℝ) : ℝ :=
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
    correctedFourKappaJet A (Real.log (d : ℝ))) + complementarySignedTail A

/-- Genuine all-real complete source control spends only the proved negative head. -/
theorem complete_pairing_le_signed_short_tail_sub_linear (A : ℝ) (hA : 25600 ≤ A) :
    completeCorrectedAbelPairing A ≤ signedShortAndComplementaryTail A - (5 / 128 : ℝ) * A := by
  rw [← correctedCompleteOmega_eq_complete_pairing A (by linarith)]
  have he := literal_L_sub_plain_le_tail_sub_linear hA
  unfold correctedCompleteOmega signedShortAndComplementaryTail
  linarith

/-- Original residual upper comparison retains all real scales and the full source constant. -/
theorem mertensResidual_lt_signed_short_tail_sub_linear_add_zeta
    (A : ℝ) (hA : 25600 ≤ A) :
    mertensResidual A < signedShortAndComplementaryTail A - (5 / 128 : ℝ) * A +
      (riemannZeta (1 / 2)).re + 3 / 50 := by
  have hc := (abs_lt.mp (residual_sub_complete_pairing_sub_zeta_abs_lt A (by linarith))).2
  have he := complete_pairing_le_signed_short_tail_sub_linear A hA
  linarith

/-- A genuine joint linear tail budget implies the unchanged original all-real estimate. -/
theorem estimate_of_actual_signed_short_tail_linear_budget {K R : ℝ} (hR : 25600 ≤ R)
    (hjoint : ∀ A : ℝ, R ≤ A →
      signedShortAndComplementaryTail A ≤ K + (5 / 128 : ℝ) * A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_corrected_signed_tail (K := K) (by linarith : 117 ≤ R)
  intro A hRA
  have he := complete_pairing_le_signed_short_tail_sub_linear A (hR.trans hRA)
  have hj := hjoint A hRA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceSignedTailLinearConsumer
