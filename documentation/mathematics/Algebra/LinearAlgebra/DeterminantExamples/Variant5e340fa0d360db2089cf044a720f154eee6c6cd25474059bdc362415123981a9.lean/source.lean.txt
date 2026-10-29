-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ExampleSquareMatrix.Variantda92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExampleSquareMatrix.Variantda92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b","mathematical_subject":"Foundations.Unclassified","original_sha256":"da92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/DeterminantExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","lake_or_runtime_control","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.Determinant

/-!
# Determinant examples

Certificate-only example of the finite-to-analytic determinant path:

  finite determinant payload
      → formal determinant symbols
      → explicit analytic authority records
      → analytic certificates

The examples are architectural smoke tests. They contain no analytic
determinant proofs.
This file is an architectural smoke test. It intentionally uses toy
propositions such as `True` to exercise routing and firewall statements. It
is not a Mathlib-backed analytic proof and is not imported by
`AnalyticNumberMathlib`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.ExampleSquareMatrix.Variantda92fd358d9ee38f675716072e065ea0de3e738c69f6c8114952a353a2e5bb8b

namespace AnalyticNumber
namespace DeterminantExamples

def exampleSquareMatrix : _root_.Number.Determinant.SquareFiniteMatrix where
  size := 2
  entries := fun i j =>
    match i.val, j.val with
    | 0, 0 => 1
    | 0, 1 => 2
    | 1, 0 => 3
    | _, _ => 4

def exampleFiniteDeterminantMatrix :
    _root_.Number.Determinant.FiniteDeterminantMatrix where
  matrix := exampleSquareMatrix
  determinantValue := -2
  determinantSound := True
  determinantSoundProof := trivial

def exampleFiniteDeterminantCoefficients :
    _root_.Number.Determinant.FiniteDeterminantCoefficients where
  coeffs := [1, -5, -2]
  coefficientHash := 100
  finiteSound := True
  finiteSoundProof := trivial

def exampleFiniteTracePowerSums :
    _root_.Number.Determinant.FiniteTracePowerSums where
  tracePowerSums := [5, 29]
  traceDepth := 2
  finiteSound := True
  finiteSoundProof := trivial

def exampleFinitePayload :
    _root_.Number.Determinant.FiniteDeterminantPayload where
  matrixData := [exampleFiniteDeterminantMatrix]
  determinantCoefficients := exampleFiniteDeterminantCoefficients
  tracePowerSums := exampleFiniteTracePowerSums
  payloadHash := 101
  finiteSound := True
  finiteSoundProof := trivial

def exampleDeterminantLine :
    Determinant.DeterminantLineSymbol where
  label := "det L"
  objectHash := 110
  baseCategoryLabel := "perfect complexes"

def exampleTargetDeterminantLine :
    Determinant.DeterminantLineSymbol where
  label := "det L'"
  objectHash := 111
  baseCategoryLabel := "perfect complexes"

def exampleLineMorphism :
    Determinant.DeterminantLineMorphismSymbol where
  source := exampleDeterminantLine
  target := exampleTargetDeterminantLine
  morphismHash := 112
  label := "comparison morphism"

def exampleZetaRegularizedSymbol :
    Determinant.ZetaRegularizedDeterminantSymbol where
  operatorLabel := "Δ"
  operatorHash := 120
  spectralCutLabel := "principal spectral cut"
  determinantLabel := "det_ζ(Δ)"

def exampleFredholmSymbol :
    Determinant.FredholmDeterminantSymbol where
  operatorLabel := "K"
  identityPlusTraceClassLabel := "I + K"
  perturbationHash := 130
  determinantLabel := "det(I + K)"

def exampleTraceLogSymbol :
    Determinant.TraceLogExpansionSymbol where
  fredholm := exampleFredholmSymbol
  tracePowerSumsHash := 131
  expansionLabel := "trace-log expansion of det(I + K)"

def exampleAnomalySymbol :
    Determinant.AnomalyFormulaSymbol where
  leftDeterminantLabel := "det_ζ(Δ)"
  rightDeterminantLabel := "det(I + K)"
  comparisonHash := 140
  anomalyLabel := "anomaly term"

def exampleDeterminantLineAuthority :
    Determinant.DeterminantLineAuthority where
  line := exampleDeterminantLine
  determinantLineConstructed := True
  determinantLineProof := trivial

def exampleDeterminantLineFunctorialityAuthority :
    Determinant.DeterminantLineFunctorialityAuthority where
  sourceLine := exampleDeterminantLine
  targetLine := exampleTargetDeterminantLine
  morphism := exampleLineMorphism
  functorialitySound := True
  functorialityProof := trivial
  compositionCompatible := True
  compositionCompatibleProof := trivial
  identityCompatible := True
  identityCompatibleProof := trivial

def exampleZetaRegularizedAuthority :
    Determinant.ZetaRegularizedDeterminantAuthority where
  determinant := exampleZetaRegularizedSymbol
  regularizationDefined := True
  regularizationDefinedProof := trivial
  spectralZetaContinuationSound := True
  spectralZetaContinuationProof := trivial
  determinantValueSound := True
  determinantValueProof := trivial

def exampleFredholmConvergenceAuthority :
    Determinant.FredholmDeterminantConvergenceAuthority where
  determinant := exampleFredholmSymbol
  traceClassPerturbationSound := True
  traceClassPerturbationProof := trivial
  determinantConvergesSound := True
  determinantConvergesProof := trivial
  finiteApproximationSound := True
  finiteApproximationProof := trivial

def exampleTraceLogExpansionAuthority :
    Determinant.TraceLogExpansionAuthority where
  expansion := exampleTraceLogSymbol
  tracePowersDefined := True
  tracePowersDefinedProof := trivial
  expansionConvergesSound := True
  expansionConvergesProof := trivial
  traceLogIdentitySound := True
  traceLogIdentityProof := trivial

def exampleAnomalyFormulaAuthority :
    Determinant.AnomalyFormulaAuthority where
  anomaly := exampleAnomalySymbol
  determinantComparisonSound := True
  determinantComparisonProof := trivial
  anomalyTermSound := True
  anomalyTermProof := trivial
  anomalyFormulaSound := True
  anomalyFormulaProof := trivial

theorem example_finite_payload_boundary_summary :
    exampleFinitePayload.finiteSound ∧
      ¬ _root_.Number.Determinant.FinitePayloadConstructsDeterminantLine
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsDeterminantLineFunctoriality
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsZetaRegularizedDeterminant
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsFredholmDeterminantConvergence
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsTraceLogExpansion
          exampleFinitePayload ∧
      ¬ _root_.Number.Determinant.FinitePayloadOwnsAnomalyFormula
          exampleFinitePayload :=
  _root_.Number.Determinant.finite_determinant_payload_boundary_summary
    exampleFinitePayload

theorem example_determinant_symbol_boundary_summary :
    ¬ Determinant.DeterminantLineSymbolOwnsFunctoriality
        exampleDeterminantLine ∧
      ¬ Determinant.DeterminantLineSymbolOwnsAnalyticComparison
          exampleDeterminantLine ∧
      ¬ Determinant.ZetaRegularizedDeterminantSymbolOwnsRegularization
          exampleZetaRegularizedSymbol ∧
      ¬ Determinant.FredholmDeterminantSymbolOwnsConvergence
          exampleFredholmSymbol ∧
      ¬ Determinant.TraceLogExpansionSymbolOwnsExpansion
          exampleTraceLogSymbol ∧
      ¬ Determinant.AnomalyFormulaSymbolOwnsFormula
          exampleAnomalySymbol :=
  Determinant.determinant_symbol_boundary_summary
    exampleDeterminantLine
    exampleZetaRegularizedSymbol
    exampleFredholmSymbol
    exampleTraceLogSymbol
    exampleAnomalySymbol

theorem example_determinant_line_authorized :
    exampleDeterminantLineAuthority.determinantLineConstructed :=
  Determinant.determinant_line_authorized exampleDeterminantLineAuthority

theorem example_determinant_line_functoriality_authorized :
    exampleDeterminantLineFunctorialityAuthority.functorialitySound ∧
      exampleDeterminantLineFunctorialityAuthority.compositionCompatible ∧
      exampleDeterminantLineFunctorialityAuthority.identityCompatible :=
  Determinant.determinant_line_functoriality_authorized
    exampleDeterminantLineFunctorialityAuthority

theorem example_zeta_regularized_determinant_authorized :
    exampleZetaRegularizedAuthority.regularizationDefined ∧
      exampleZetaRegularizedAuthority.spectralZetaContinuationSound ∧
      exampleZetaRegularizedAuthority.determinantValueSound :=
  Determinant.zeta_regularized_determinant_authorized
    exampleZetaRegularizedAuthority

theorem example_fredholm_determinant_convergence_authorized :
    exampleFredholmConvergenceAuthority.traceClassPerturbationSound ∧
      exampleFredholmConvergenceAuthority.determinantConvergesSound ∧
      exampleFredholmConvergenceAuthority.finiteApproximationSound :=
  Determinant.fredholm_determinant_convergence_authorized
    exampleFredholmConvergenceAuthority

theorem example_trace_log_expansion_authorized :
    exampleTraceLogExpansionAuthority.tracePowersDefined ∧
      exampleTraceLogExpansionAuthority.expansionConvergesSound ∧
      exampleTraceLogExpansionAuthority.traceLogIdentitySound :=
  Determinant.trace_log_expansion_authorized
    exampleTraceLogExpansionAuthority

theorem example_anomaly_formula_authorized :
    exampleAnomalyFormulaAuthority.determinantComparisonSound ∧
      exampleAnomalyFormulaAuthority.anomalyTermSound ∧
      exampleAnomalyFormulaAuthority.anomalyFormulaSound :=
  Determinant.anomaly_formula_authorized
    exampleAnomalyFormulaAuthority

def exampleDeterminantLineCertificate : AnalyticCertificate :=
  Determinant.determinantLineCertificate exampleDeterminantLineAuthority

def exampleDeterminantLineFunctorialityCertificate : AnalyticCertificate :=
  Determinant.determinantLineFunctorialityCertificate
    exampleDeterminantLineFunctorialityAuthority

def exampleZetaRegularizedDeterminantCertificate : AnalyticCertificate :=
  Determinant.zetaRegularizedDeterminantCertificate
    exampleZetaRegularizedAuthority

def exampleFredholmConvergenceCertificate : AnalyticCertificate :=
  Determinant.fredholmDeterminantConvergenceCertificate
    exampleFredholmConvergenceAuthority

def exampleTraceLogExpansionCertificate : AnalyticCertificate :=
  Determinant.traceLogExpansionCertificate
    exampleTraceLogExpansionAuthority

def exampleAnomalyFormulaCertificate : AnalyticCertificate :=
  Determinant.anomalyFormulaCertificate
    exampleAnomalyFormulaAuthority

end DeterminantExamples
end AnalyticNumber
