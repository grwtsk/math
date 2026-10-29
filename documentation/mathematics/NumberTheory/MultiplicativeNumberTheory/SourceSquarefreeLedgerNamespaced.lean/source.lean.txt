-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SquarefreeLedgerCost.Variantaa2c5938107191e1aa8d9800da012eeafb6e265994f240d3f208e194fee45e97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa2c5938107191e1aa8d9800da012eeafb6e265994f240d3f208e194fee45e97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SquarefreeLedgerCost.Variantaa2c5938107191e1aa8d9800da012eeafb6e265994f240d3f208e194fee45e97","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"aa2c5938107191e1aa8d9800da012eeafb6e265994f240d3f208e194fee45e97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-squarefree-ledger/fresh-replay/SourceSquarefreeLedger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeSamplingConsumer
import SourceSharpDiagonalLedgerConsumer

/-!
The new actual finite-support sampling costs reach the original source ledger.
Direction: grwtsk contributors. Composition/formalization: Codex root.
The supplied full signed readout remains open; all original source terms stay.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SquarefreeLedgerCost.Variantaa2c5938107191e1aa8d9800da012eeafb6e265994f240d3f208e194fee45e97

set_option autoImplicit false
noncomputable section
namespace RH16SquarefreeLedger
open RH16SquarefreeSamplingConsumer RH16ExactSamplingTail RH16ExactTailEnergy
open RH16SharpDiagonalLedgerConsumer
open FormalResearch.RiemannHypothesis
open SourceSamplingLedger SourceSamplingCoefficients SourceSamplingPointwise
open SourcePairing SourceShortSamplingInventory SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimateTailReduction
open EstimateBetaSourceRecombination EstimateVaughanTranslationGate EstimateVaughanSource

def squarefreeLedgerCost (Q : Real) : Real :=
  sharpDiagonalCost Q + tailEnergyCoefficient Q *
    (144 / Q + 48 * (Real.log 4 + 4))

theorem actual_ledger_error_tail_squarefree (Q : Real) (hQ : 91 <= Q) :
    forall A : Real, Q <= A -> abs (betaMainLedger A + independentMainTerm A) <=
      squarefreeLedgerCost Q := by
  intro A hQA
  have hQ1 : (1 : Real) <= Q := by linarith
  have hdelta := tailEnergyCoefficient_pos Q
  have hA : 1 <= A := hQ1.trans hQA
  have hd := actual_diagonal_error_tail Q A hQ hQA
  have hl := actual_shortLog_error_tail_squarefree hQ1 hQA
  have hp := actual_shortPlain_error_tail_squarefree hQ1 hQA
  have hm : 144 * tailEnergyCoefficient Q / A <=
      144 * tailEnergyCoefficient Q / Q :=
    div_le_div_of_nonneg_left (by positivity) (by linarith) hQA
  rw [independentMainTerm, ledger_plus_coefficientMainTerm]
  have hd' : abs (typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : Real)) <= sharpDiagonalCost Q := hd
  have hl' : abs (shortLogSource A - shortLogMainTerm A
      (logLinearMain A samplingAlpha1 samplingAlpha2)) <=
      144 * tailEnergyCoefficient Q / Q := hl.trans hm
  have hp' : abs (shortPlainSource A - shortPlainMainTerm A
      (plainLinearMain A samplingAlpha0 samplingAlpha1)) <=
      48 * (Real.log 4 + 4) * tailEnergyCoefficient Q := hp
  unfold squarefreeLedgerCost
  rw [show sharpDiagonalCost Q + tailEnergyCoefficient Q *
    (144 / Q + 48 * (Real.log 4 + 4)) =
      sharpDiagonalCost Q + 144 * tailEnergyCoefficient Q / Q +
        48 * (Real.log 4 + 4) * tailEnergyCoefficient Q by ring]
  apply abs_le.mpr
  constructor <;> linarith only [(abs_le.mp hd').1, (abs_le.mp hd').2,
    (abs_le.mp hl').1, (abs_le.mp hl').2, (abs_le.mp hp').1, (abs_le.mp hp').2]

def squarefreeResidualBudget (D rho Q : Real) : Real :=
  max 0 (D + rho + squarefreeLedgerCost Q)

theorem squarefreeResidualBudget_nonneg (D rho Q : Real) :
    0 <= squarefreeResidualBudget D rho Q := le_max_left _ _

theorem residual_tail_of_readout_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, Q <= A -> mertensResidual A <= squarefreeResidualBudget D rho Q := by
  intro A hQA
  have hA : (1 : Real) <= A := by linarith
  have hr := hreadout A hQA
  have hl := (abs_le.mp (actual_ledger_error_tail_squarefree Q hQ A hQA)).2
  rw [actual_residual_decomposition A hA]
  apply le_trans ?_ (le_max_right _ _)
  change _ <= D + rho + squarefreeLedgerCost Q
  linarith

theorem estimate_of_readout_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    CorrelationAssembly.EstimateObligation := by
  exact estimate_of_mertens_residual_tail
    (by refine ⟨squarefreeResidualBudget D rho Q,
      squarefreeResidualBudget_nonneg D rho Q, Q, ?_,
      residual_tail_of_readout_squarefree D rho Q hQ hreadout⟩; linarith)

end RH16SquarefreeLedger
