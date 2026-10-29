import CriticalRelativePairing
import IntegerWitnessTransfer

/-!
Same-radius actual-source critical pairing consumer. The all-real uniform pairing
bound is an explicit premise, not a constructed witness. The original actual
integer calibration and unchanged residual estimate consumer are reused.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex (issue ingestion).
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalRelativeConsumer
open OmegaResearch.CriticalRelativePairing
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- The actual lattice correction has the sharper loss at the original radius. -/
theorem integer_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hcritical : ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K) :
    ∀ A : ℝ, R ≤ A → integerJ A ≤ K + 1 + 10 / R := by
  intro A hRA
  have hp : 0 < R := by linarith
  have hd : 10 / A ≤ 10 / R :=
    div_le_div_of_nonneg_left (by norm_num) hp hRA
  have hi := integerJ_le_critical (hR.trans hRA)
  linarith [hcritical A hRA]

/-- Actual residual upper bound, retaining both quantitative correction losses. -/
theorem residual_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hcritical : ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K) :
    ∀ A : ℝ, R ≤ A → mertensResidual A ≤
      K + 1 + 10 / R + (riemannZeta (1 / 2)).re + 260 / R ^ 2 := by
  exact ContinuousResearch.IntegerWitnessTransfer.residual_bound_at_radius hR
    (integer_bound_at_radius hR hcritical)

/-- The unchanged original estimate follows conditionally; no K or R is supplied. -/
theorem estimate_of_criticalRelativePairing_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hcritical : ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 (K + 1 + 10 / R + (riemannZeta (1 / 2)).re + 260 / R ^ 2),
    le_max_left _ _, R, hR, ?_⟩
  intro A hRA
  exact (residual_bound_at_radius hR hcritical A hRA).trans (le_max_right _ _)

end FormalResearch.RiemannHypothesis.SourceCriticalRelativeConsumer
