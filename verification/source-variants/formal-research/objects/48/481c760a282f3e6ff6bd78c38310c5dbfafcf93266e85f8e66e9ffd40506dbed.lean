import SourceExactOverlapSamplingConsumer

/-!
The literal source covariance-minus-main consumer, with an explicitly paid
reconstruction error and the new full sampling ledger. The supplied signed
witness includes the entire compensated source readout. No overlap-strip
transition is needed. The exact original finite prefix uses the same radius.
Direction and conceptual origin: grwtsk contributors.
Construction and native formalization: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16ExactReadoutConsumer
open RH16ExactOverlapConsumer RH16ExactOverlapSamplingConsumer RH16ExactSamplingTail
open FormalResearch.RiemannHypothesis
open SourceSamplingLedger SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimateTailReduction EstimateBetaSourceRecombination

/-- A reconstruction error is paid once, before the source sampling ledger. -/
def exactReadoutResidualBudget (D rho Q C_D : ℝ) : ℝ :=
  max 0 (D + rho + exactSamplingLedgerCost C_D Q)

theorem exactReadoutResidualBudget_nonneg (D rho Q C_D : ℝ) :
    0 ≤ exactReadoutResidualBudget D rho Q C_D := le_max_left _ _

/-- Literal arithmetic readout, not an independent model or free main term. -/
theorem residual_tail_of_actual_readout (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, Q ≤ A →
      mertensResidual A ≤ exactReadoutResidualBudget D rho Q C_D := by
  have hQ1 : (1 : ℝ) ≤ Q := by linarith
  obtain ⟨C_D, hD0, hledger⟩ := actual_ledger_tail_error hQ1
  refine ⟨C_D, hD0, ?_⟩
  intro A hQA
  have hA1 := hQ1.trans hQA
  have hr := hreadout A hQA
  have hl := (abs_le.mp (hledger A hQA)).2
  rw [actual_residual_decomposition A hA1]
  apply le_trans ?_ (le_max_right _ _)
  unfold exactSamplingLedgerCost
  linarith

/-- Original all-real observable with its original strict prime-prefix inventory. -/
theorem all_real_lower_of_actual_readout (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * exactReadoutResidualBudget D rho Q C_D) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_D, hD0, hres⟩ := residual_tail_of_actual_readout D rho Q hQ hreadout
  refine ⟨C_D, hD0, ?_⟩
  intro A hA
  by_cases hQA : Q ≤ A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA (hres A hQA))
  · have hprefix := prime_contribution_le_finite_budget A Q hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

/-- The same literal family has one fixed cap on its negative defect. -/
theorem actual_negative_defect_cap (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, 1 ≤ A →
      max 0 (-sourceQuadraticValue explicitSecondDerivative A) ≤
        max 0 (-min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices Q,
          |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
          (archimedeanMultiplier 0 - 2 * exactReadoutResidualBudget D rho Q C_D)) := by
  obtain ⟨C_D, hD0, hlower⟩ := all_real_lower_of_actual_readout D rho Q hQ hreadout
  refine ⟨C_D, hD0, ?_⟩
  intro A hA
  exact max_le_max le_rfl (neg_le_neg (hlower A hA))

/-- Existing tail-to-all-scale acceptance target; no new positivity gate. -/
theorem estimate_of_actual_readout (D rho Q : ℝ) (hQ : 91 ≤ Q)
    (hreadout : ∀ A : ℝ, Q ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D + rho) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_D, _, hres⟩ := residual_tail_of_actual_readout D rho Q hQ hreadout
  exact estimate_of_mertens_residual_tail
    ⟨exactReadoutResidualBudget D rho Q C_D,
      exactReadoutResidualBudget_nonneg _ _ _ _, Q, by linarith, hres⟩

end RH16ExactReadoutConsumer
