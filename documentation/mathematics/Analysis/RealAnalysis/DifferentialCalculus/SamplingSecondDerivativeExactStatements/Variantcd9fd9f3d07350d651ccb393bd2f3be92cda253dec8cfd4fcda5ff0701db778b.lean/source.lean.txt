-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SamplingSecondDerivative.Variant44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SamplingSecondDerivative.Variant44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600","mathematical_subject":"Analysis.Calculus","original_sha256":"44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/sampling-second-derivative-exact-statements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SamplingSecondDerivative


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SamplingSecondDerivative.Variant44526518db6bd37bc8143c1ceb1e9181527c32c4f8e1d35f34a8d2151afa1600

set_option autoImplicit false

open MeasureTheory Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationDifferenceMoments SourceSampling

example (A t : ℝ) : SamplingSecondDerivative.secondDifference A t =
    deriv (correlationDifference A) t - (3 / 2) * correlationDifference A t := rfl

example (A t : ℝ) (hA : 1 ≤ A) :
    SamplingSecondDerivative.secondDifference A t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        2 * deriv (sourceCorrelation explicitSecondDerivative A) t +
        (3 / 4) * sourceCorrelation explicitSecondDerivative A t :=
  SamplingSecondDerivative.secondDifference_eq A t hA

example (A : ℝ) (hA : 1 ≤ A) : Continuous (SamplingSecondDerivative.secondDifference A) :=
  SamplingSecondDerivative.secondDifference_continuous A hA

example (A t : ℝ) (hA : 1 ≤ A) :
    |SamplingSecondDerivative.secondDifference A t| ≤
      65 / (3 * A ^ 2) + 2 * Real.sqrt (65 / 3) / A + 3 / 4 :=
  SamplingSecondDerivative.secondDifference_abs_le A t hA

example (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    SamplingSecondDerivative.secondDifference A t = 0 :=
  SamplingSecondDerivative.secondDifference_zero_right A t hA ht

example (A x k : ℝ) (hA : 1 ≤ A) (hx : 0 < x) (hk : 0 < k) :
    HasDerivAt (fun y : ℝ ↦ 1 / y * (Real.log k / Real.sqrt (y * k) *
      correlationDifference A (Real.log (y * k))))
      (1 / x ^ 2 * (Real.log k / Real.sqrt (x * k) *
        SamplingSecondDerivative.secondDifference A (Real.log (x * k)))) x :=
  SamplingSecondDerivative.derivative_sampling_term_hasDerivAt A x k hA hx hk

example (A x : ℝ) (N : ℕ) (hA : 1 ≤ A) (hx : 0 < x)
    (hN : Real.exp (2 * A) / x ≤ (N : ℝ)) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      SamplingSecondDerivative.secondDifference A (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        SamplingSecondDerivative.secondDifference A (Real.log (x * (k : ℝ))) :=
  SamplingSecondDerivative.second_difference_sum_eq_fixed_sum A x N hA hx hN

example (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (deriv (sourceSamplingKernel A))
      (1 / x ^ 2 * ∑ k ∈ samplingIndices A x,
        Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
          SamplingSecondDerivative.secondDifference A (Real.log (x * (k : ℝ)))) x :=
  SamplingSecondDerivative.sourceSamplingKernel_derivative_hasDerivAt A x hA hx

example (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) (hs : HasCompactSupport F) :
    (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * deriv F t) =
      -(2 * (∫ t : ℝ, t * Real.exp (t / 2) * F t) +
        (1 / 2) * ∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * F t) :=
  SamplingSecondDerivative.derivative_secondMoment F hF hs

example (A : ℝ) (hA : 1 ≤ A) :
    (1 / 2 : ℝ) * (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * correlationDifference A t) =
      -CorrelationSecondMoment.sourceRankOneCoefficient A :=
  SamplingSecondDerivative.correlationDifference_secondMoment A hA
