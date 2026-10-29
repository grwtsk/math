import QuarterDigammaEndpoint
import ActualGammaBudget

/-! Scratch #146/#313: exact paper endpoint, unchanged Fourier G, actual budget.
Neither G nor the independently specified constant is defined by the desired
equality. Direction: grwtsk contributors. Scratch assembly: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.NormalizedGammaBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeAdmissibility
open ActualCommonMeanZeroSide

def paperEndpoint : ℝ := -Real.eulerMascheroniConstant -
  3*Real.log 2 - Real.pi/2 - Real.log Real.pi

theorem actual_endpoint_eq_paper : -archimedeanConstant = paperEndpoint := by
  unfold archimedeanConstant paperEndpoint
  rw [QuarterDigammaEndpoint.actual_quarter_real_value]
  ring

theorem sourceGammaValue_identity {A : ℝ} (hA : 1 ≤ A) :
    sourceGammaValue A = paperEndpoint +
      2*(∫ t : ℝ in Set.Ioi 0,
        ArchimedeanKernel.weightedDeficit (sourceCorrelation explicitSecondDerivative A) t) := by
  rw [← actual_endpoint_eq_paper]
  exact ActualGammaBudget.sourceGammaValue_identity hA

/-- Actual Gamma correction budget at the paper's exact normalized endpoint. -/
theorem sourceGammaValue_budget {A : ℝ} (hA : 1 ≤ A) :
    paperEndpoint ≤ sourceGammaValue A ∧ sourceGammaValue A ≤ paperEndpoint+390/A^2 := by
  rw [← actual_endpoint_eq_paper]
  exact ActualGammaBudget.sourceGammaValue_budget hA

#print axioms paperEndpoint
#print axioms actual_endpoint_eq_paper
#print axioms sourceGammaValue_identity
#print axioms sourceGammaValue_budget
end ContinuousResearch.NormalizedGammaBudget
