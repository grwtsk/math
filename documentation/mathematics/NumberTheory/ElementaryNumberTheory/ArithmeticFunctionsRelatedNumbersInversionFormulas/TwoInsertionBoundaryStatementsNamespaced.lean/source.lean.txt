-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.TwoInsertionBoundary.Variantcf7b45e7cd244b60c82fda9544d6cea43a787e2d3ce767b40246a1630e03d84d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf7b45e7cd244b60c82fda9544d6cea43a787e2d3ce767b40246a1630e03d84d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.TwoInsertionBoundary.Variantcf7b45e7cd244b60c82fda9544d6cea43a787e2d3ce767b40246a1630e03d84d","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"cf7b45e7cd244b60c82fda9544d6cea43a787e2d3ce767b40246a1630e03d84d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/TwoInsertionBoundaryStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.TwoInsertionBoundary


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.TwoInsertionBoundary.Variantcf7b45e7cd244b60c82fda9544d6cea43a787e2d3ce767b40246a1630e03d84d

set_option autoImplicit false

namespace TwoInsertionBoundaryStatementChecks

open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimeInsertion PrimeRatioProduct CorrelationSecondMoment ThetaRemainder SourceSampling

noncomputable section

example (P : Finset ℕ) (g U V : ℕ)
    (c : ℝ) (E : ℕ → ℝ) :
    rectangularContribution P g U V (fun q ↦ c * E q) =
      c * rectangularContribution P g U V E :=
  TwoInsertionBoundary.rectangularContribution_const_mul P g U V c E

example (A : ℝ) (P : Finset ℕ) (g U V : ℕ) :
    rectangularContribution P g U V
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / ((2 * q : ℕ) : ℝ)) =
        (1 / 2 : ℝ) * rectangularContribution P g U V
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.rectangular_rankOne_dilate_two A P g U V

example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
        rectangularContribution P g T T
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) -
        (if Nat.Coprime g 2 then 1 else 0) *
          rectangularContribution P g (T / 2) T
            (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.rankOne_square_insert_two A P g T hP h2P

example (P : Finset ℕ) (g T : ℕ) (E : ℕ → ℝ) :
    rectangularContribution P g T T E - rectangularContribution P g (T / 2) T E =
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) * E ((a.1 * a.2) * g ^ 2) :=
  TwoInsertionBoundary.rectangular_difference_eq_boundary P g T E

example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            (((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (((a.1 * a.2) * g ^ 2 : ℕ) : ℝ)) :=
  TwoInsertionBoundary.rankOne_square_insert_two_coprime A P g T hP h2P hg

example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : ¬Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T
      (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
        rectangularContribution P g T T
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.rankOne_square_insert_two_not_coprime A P g T hP h2P hg

example (P : Finset ℕ) (g U V : ℕ) (E F : ℕ → ℝ) :
    rectangularContribution P g U V (fun q ↦ E q - F q) =
      rectangularContribution P g U V E - rectangularContribution P g U V F :=
  TwoInsertionBoundary.rectangularContribution_sub P g U V E F

example (A : ℝ) (P : Finset ℕ) (g U V : ℕ) :
    rectangularContribution P g U V (fun q : ℕ ↦ ThetaKernelTransport.thetaKernel A q -
        ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
      rectangularContribution P g U V (ThetaKernelTransport.thetaKernel A) -
        rectangularContribution P g U V
          (fun q ↦ ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) :=
  TwoInsertionBoundary.thetaRemainder_rectangle_eq A P g U V

example (A : ℝ) (P : Finset ℕ) (g T : ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h2P : 2 ∉ P) (hg : Nat.Coprime g 2) :
    rectangularContribution (insert 2 P) g T T (fun q : ℕ ↦ ThetaKernelTransport.thetaKernel A q -
        ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (q : ℝ)) =
      rectangularContribution P g T T (ThetaKernelTransport.thetaKernel A) -
        2 * rectangularContribution P g (T / 2) T
          (fun q ↦ ThetaKernelTransport.thetaKernel A (2 * q)) -
      ∑ a ∈ (supportedPairs P).filter (fun a ↦ T / 2 < a.1 ∧ a.1 ≤ T ∧ a.2 ≤ T),
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            (((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) / (((a.1 * a.2) * g ^ 2 : ℕ) : ℝ)) :=
  TwoInsertionBoundary.thetaRemainder_insert_two_coprime A P g T hP h2P hg

example (d : ℕ) :
    (ArithmeticFunction.moebius (2 * d) : ℝ) =
      if Nat.Coprime d 2 then -(ArithmeticFunction.moebius d : ℝ) else 0 :=
  TwoInsertionBoundary.moebius_two_mul d

example (N : ℕ) (F : ℕ → ℝ) :
    (∑ d ∈ (Icc 1 N).filter (fun d ↦ ¬Nat.Coprime d 2),
      (ArithmeticFunction.moebius d : ℝ) * F d) =
      ∑ k ∈ Icc 1 (N / 2), (ArithmeticFunction.moebius (2 * k) : ℝ) * F (2 * k) :=
  TwoInsertionBoundary.even_sum_reindex N F

example (N : ℕ) (F : ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * F d) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F d) -
      ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F (2 * d) :=
  TwoInsertionBoundary.moebius_sum_two_split N F

example (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
      ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A (2 * d : ℕ) :=
  TwoInsertionBoundary.sourceLinear_two_split A N

example (A : ℝ) (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) =
      (∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
      ∑ d ∈ (Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d :=
  TwoInsertionBoundary.sourceLinear_two_difference_boundary A N

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |sourceSamplingKernel A x - sourceSamplingKernel A (2 * x)| ≤
      (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) / Real.sqrt x :=
  TwoInsertionBoundary.sourceSamplingKernel_two_difference_abs_le A x hA hx

example (N : ℕ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) -
      (1 / 2 : ℝ) * ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) :=
  TwoInsertionBoundary.reciprocal_moebius_two_split N

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * ((∑ d ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
        ∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A (2 * d : ℕ)) +
      2 * ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) *
        ((∑ d ∈ (Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) -
          (1 / 2 : ℝ) * ∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter
            (fun d ↦ Nat.Coprime d 2), (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * RoughClassReduction.roughClassMean A P +
      2 * PrimeSupportedBlock.primeSupportedBlock A P +
      2 * (PrimeBlockReduction.roughRatioRemainder A P -
        RoughClassReduction.roughClassMean A P) :=
  TwoInsertionBoundary.sourceQuadraticValue_two_split A P hA

example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * ((∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
        ∑ d ∈ (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) +
      2 * ((∫ x : ℝ, x * Real.exp (x / 2) *
            normalizedTest Realization.explicitSecondDerivative A x) ^ 2) *
        (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
      2 * RoughClassReduction.roughClassMean A P +
      2 * PrimeSupportedBlock.primeSupportedBlock A P +
      2 * (PrimeBlockReduction.roughRatioRemainder A P -
        RoughClassReduction.roughClassMean A P) :=
  TwoInsertionBoundary.sourceQuadraticValue_two_boundary A P hA

end
end TwoInsertionBoundaryStatementChecks
