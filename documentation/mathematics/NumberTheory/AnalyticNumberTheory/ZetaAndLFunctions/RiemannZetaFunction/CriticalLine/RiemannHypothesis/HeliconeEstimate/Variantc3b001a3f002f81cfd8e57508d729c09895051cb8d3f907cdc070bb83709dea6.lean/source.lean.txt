import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerPhaseDefect
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import FormalResearch.RiemannHypothesis.PhaseInvolution
import FormalResearch.RiemannHypothesis.Landau.Bridge

/-!
# Exact remaining prime-power phase compensation

The spectral lens and finite phase identities reduce the remaining arithmetic
work to compensating the complete strict prime-power budget by its integrated
phase defect. The archimedean lower bound and every bounded radius interval
are already proved. This module applies those results to an explicitly OPEN
tail proposition and proves its implication to the unchanged estimate and RH
targets. It constructs no proof of that tail proposition. The equivalence with
the existing Mertens residual frontier is proved explicitly: the new spectral
representation does not by itself shrink the unresolved arithmetic estimate.

The nonnegative phase defect alone is insufficient: its baseline is `-2 W_A`.
Neither zero simplicity nor a positive matrix for a different source is used.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace HeliconeEstimate

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis
open PrimePowerPhaseDefect CorrelationAssembly

noncomputable section

/-- Every actual arithmetic phase has the exact finite reflection dictionary.
This connects the logarithmic phase to the proved matrix identities. -/
theorem prime_phase_defect_dictionary (ξ : ℝ) (n : ℕ) :
    ((2 - 2 * Real.cos (ξ * Real.log n) : ℝ) : ℂ) =
        Matrix.det (1 - phaseRotation (MultiplicativePhase.chi ξ n)) ∧
      Matrix.det (1 - phaseRotation (MultiplicativePhase.chi ξ n)) =
        2 - Matrix.trace (phaseRotation (MultiplicativePhase.chi ξ n)) ∧
      2 - Matrix.trace (phaseRotation (MultiplicativePhase.chi ξ n)) =
        (1 / 2 : ℂ) * Matrix.trace
          ((phaseReflection (MultiplicativePhase.chi ξ n) - phaseReflection 1) ^ 2) := by
  rw [← MultiplicativePhase.normSq_one_sub_chi]
  exact unit_phase_defect_dictionary _ (MultiplicativePhase.chi_normSq ξ n)

/-- A unit phase and positive weight can have zero defect and a strictly
negative signed packet. Thus defect positivity cannot delete its baseline. -/
theorem positive_phase_defect_does_not_remove_baseline :
    ∃ χ : ℂ, ∃ w : ℝ, Complex.normSq χ = 1 ∧ 0 < w ∧
      0 ≤ w * Complex.normSq (1 - χ) ∧
        -2 * w + w * Complex.normSq (1 - χ) < 0 := by
  exact ⟨1, 1, by norm_num⟩

/-- OPEN: a single constant controls the uncompensated strict prime-power
budget at every sufficiently large real radius. The density and phase defect
are the proved actual source objects. No existence witness is supplied. -/
def PrimePhaseCompensationTail : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → 2 * totalWeight A ≤ phaseDefectMass A + C

/-- The open tail proposition concerns only the arithmetic contribution,
after the exact spectral correlation representation has been proved. -/
theorem prime_phase_compensation_tail_iff_prime_contribution_tail :
    PrimePhaseCompensationTail ↔
      ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧
        ∀ A : ℝ, R ≤ A →
          primePowerContribution Realization.explicitSecondDerivative A ≤ C / 2 := by
  constructor
  · rintro ⟨C, hC, R, hR, htail⟩
    refine ⟨C, hC, R, hR, ?_⟩
    intro A hRA
    rw [actual_primePowerContribution_eq_budget_sub_half_defect A (hR.trans hRA)]
    have h := htail A hRA
    linarith
  · rintro ⟨C, hC, R, hR, htail⟩
    refine ⟨C, hC, R, hR, ?_⟩
    intro A hRA
    have h := htail A hRA
    rw [actual_primePowerContribution_eq_budget_sub_half_defect A (hR.trans hRA)] at h
    linarith

/-- Exact comparison with the existing arithmetic frontier. A new phase
representation alone does not discharge or reduce that open bound. -/
theorem prime_phase_compensation_tail_iff_mertens_residual_tail :
    PrimePhaseCompensationTail ↔ EstimateMertensResidual.MertensResidualTailUpperBound := by
  rw [prime_phase_compensation_tail_iff_prime_contribution_tail]
  have heq (A : ℝ) (hA : 1 ≤ A) :
      EstimateMertensResidual.mertensResidual A =
        primePowerContribution Realization.explicitSecondDerivative A := by
    rw [EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA,
      EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA]
  constructor
  · rintro ⟨C, hC, R, hR, htail⟩
    refine ⟨C / 2, by positivity, R, hR, ?_⟩
    intro A hRA
    rw [heq A (hR.trans hRA)]
    exact htail A hRA
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨2 * D, by positivity, R, hR, ?_⟩
    intro A hRA
    have h := htail A hRA
    rw [heq A (hR.trans hRA)] at h
    linarith

/-- The only premise is the named open arithmetic tail bound. The Gamma
contribution already has a source-faithful uniform lower bound. -/
theorem quadratic_tail_of_prime_phase_compensation
    (h : PrimePhaseCompensationTail) : EstimateTailReduction.QuadraticTailLowerBound := by
  obtain ⟨C, _, R, hR, htail⟩ := h
  refine ⟨archimedeanMultiplier 0 - C, R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
  have hp := htail A hRA
  rw [actual_sourceQuadraticValue_eq_budget_add_phaseDefectMass A hA]
  linarith

/-- The existing finite-prefix theorem supplies every omitted radius, so this
implication reaches the exact all-scale target rather than a tail substitute. -/
theorem estimate_of_prime_phase_compensation
    (h : PrimePhaseCompensationTail) : EstimateObligation :=
  EstimateTailReduction.estimate_of_quadratic_tail_lower_bound
    (quadratic_tail_of_prime_phase_compensation h)

/-- Conditional use of the already proved exact Landau bridge. This theorem
does not inhabit the open compensation proposition or the reserved RH root. -/
theorem riemann_hypothesis_of_prime_phase_compensation
    (h : PrimePhaseCompensationTail) : _root_.RiemannHypothesis :=
  FormalResearch.RiemannHypothesis.Landau.Bridge.riemann_hypothesis_of_uniform_lower_bound
    (estimate_of_prime_phase_compensation h)

end
end HeliconeEstimate
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
