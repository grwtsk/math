-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UpperObservation.Variant2836a74e4d801b1e9a86b85d5e594ff1a36adebbe3ee705e05d411c6e6f03a74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2836a74e4d801b1e9a86b85d5e594ff1a36adebbe3ee705e05d411c6e6f03a74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UpperObservation.Variant2836a74e4d801b1e9a86b85d5e594ff1a36adebbe3ee705e05d411c6e6f03a74","mathematical_subject":"Analysis.Integration","original_sha256":"2836a74e4d801b1e9a86b85d5e594ff1a36adebbe3ee705e05d411c6e6f03a74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/UpperObservationSourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperObservation


namespace GRWTSK.Analysis.RealAnalysis.Integration.UpperObservation.Variant2836a74e4d801b1e9a86b85d5e594ff1a36adebbe3ee705e05d411c6e6f03a74

set_option autoImplicit false
namespace UpperObservationExactStatements
open MeasureTheory Finset
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity UpperObservation
noncomputable section

example (A : ℝ) (T : Finset ℕ) (x : ℝ) :
    finiteObservation A T x =
      ∑ i ∈ T, (ArithmeticFunction.moebius i : ℝ) / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i) := rfl

example (A x : ℝ) (n : ℕ)
    (hA : 1 ≤ A) (hx : 0 ≤ x) (hn : ⌊Real.exp A⌋₊ < n) :
    normalizedTest explicitSecondDerivative A (x + Real.log n) = 0 :=
  UpperObservation.source_shift_zero_above_cutoff A x n hA hx hn

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 ≤ x) :
    (∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
      finiteObservation A (Icc 1 ⌊Real.exp A⌋₊) (x + Real.log k)) =
      normalizedTest explicitSecondDerivative A x :=
  UpperObservation.finite_observation_inversion A x hA hx

example (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 ≤ x) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x = 0 :=
  UpperObservation.upper_observation_zero_of_log_two_le A x hA hx

example (A x : ℝ) (k : ℕ) (hA : 1 ≤ A)
    (hx : 0 ≤ x) (hk : 2 ≤ k) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (x + Real.log k) = 0 :=
  UpperObservation.upper_observation_shift_zero A x k hA hx hk

example (A x : ℝ)
    (hA : 1 ≤ A) (hx : 0 ≤ x) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x =
      normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k) :=
  UpperObservation.upper_observation_eq_source_sub_lower_shifts A x hA hx

example (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    Continuous (finiteObservation A T) :=
  UpperObservation.finiteObservation_continuous A T hA

example (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    HasCompactSupport (finiteObservation A T) :=
  UpperObservation.finiteObservation_hasCompactSupport A T hA

example (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ (finiteObservation A T x) ^ 2) :=
  UpperObservation.finiteObservation_square_integrable A T hA

example (A c : ℝ) (T U : Finset ℕ)
    (hA : 1 ≤ A) :
    Integrable (fun x ↦ finiteObservation A T x * finiteObservation A U (c - x)) :=
  UpperObservation.finiteObservation_reflection_integrable A c T U hA

example (A a b c : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + a) *
      normalizedTest explicitSecondDerivative A (c - x + b)) =
      sourceCorrelation explicitSecondDerivative A (c + a + b) :=
  UpperObservation.shifted_source_reflection A a b c hA

example (A c : ℝ) (T U : Finset ℕ) (hA : 1 ≤ A) :
    (∫ x : ℝ, finiteObservation A T x * finiteObservation A U (c - x)) =
      ∑ i ∈ T, ∑ j ∈ U,
        ((ArithmeticFunction.moebius i : ℝ) / Real.sqrt i) *
        ((ArithmeticFunction.moebius j : ℝ) / Real.sqrt j) *
        sourceCorrelation explicitSecondDerivative A (c + Real.log i + Real.log j) :=
  UpperObservation.finiteObservation_reflection_eq A c T U hA

example (f : ℝ → ℝ) (b c : ℝ)
    (hf : Continuous f) (hcf : HasCompactSupport f)
    (hzero : ∀ x, b ≤ x → f x = 0) (hbc : b ≤ c) :
    |∫ x : ℝ, f x * f (c - x)| ≤ ∫ x : ℝ in Set.Icc 0 b, (f x) ^ 2 :=
  UpperObservation.reflection_abs_le_local_square f b c hf hcf hzero hbc

example (A c : ℝ) (hA : 1 ≤ A)
    (hc : Real.log 2 ≤ c) :
    |∫ x : ℝ, finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x *
      finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (c - x)| ≤
      ∫ x : ℝ in Set.Icc 0 (Real.log 2),
        (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2 :=
  UpperObservation.upper_reflection_abs_le_local_square A c hA hc

example (A : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ in Set.Icc 0 (Real.log 2),
      (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2) =
    ∫ x : ℝ in Set.Icc 0 (Real.log 2),
      (normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k)) ^ 2 :=
  UpperObservation.upper_local_square_eq_core_error A hA

example (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x : ℝ ↦
      (normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k)) ^ 2)
      (Set.Icc 0 (Real.log 2)) :=
  UpperObservation.core_error_square_integrableOn A hA

example (A : ℝ) (k : ℕ) (hA : 1 ≤ A) (hk : 1 ≤ k) :
    UpperBoundaryChannels.upperChannel A k = Real.log (k : ℝ) / Real.sqrt k *
      ∫ x : ℝ, finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x *
        finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (Real.log k - x) :=
  UpperObservation.upperChannel_eq_reflection A k hA hk

example (A : ℝ) (k : ℕ) (hA : 1 ≤ A) (hk : 2 ≤ k) :
    |UpperBoundaryChannels.upperChannel A k| ≤ Real.log (k : ℝ) / Real.sqrt k *
      ∫ x : ℝ in Set.Icc 0 (Real.log 2),
        (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2 :=
  UpperObservation.upperChannel_abs_le_local_square A k hA hk

example (A : ℝ) (hA : 1 ≤ A) :
    UpperBoundaryChannels.coreValue A -
      2 * (Real.log 2 / Real.sqrt 2 + Real.log 3 / Real.sqrt 3) *
        (∫ x : ℝ in Set.Icc 0 (Real.log 2),
          (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2) ≤
      sourceQuadraticValue explicitSecondDerivative A :=
  UpperObservation.sourceQuadraticValue_ge_core_sub_local_square A hA

end
end UpperObservationExactStatements
