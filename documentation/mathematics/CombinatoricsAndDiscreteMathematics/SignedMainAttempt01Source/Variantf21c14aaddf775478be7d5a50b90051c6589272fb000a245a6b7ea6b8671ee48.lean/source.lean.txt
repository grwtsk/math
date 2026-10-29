-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AdaptiveLogSample.Variantd646987b4367f2825bdc7ec747517251b94f7740972ee56d3bee8f2d0814e017","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d646987b4367f2825bdc7ec747517251b94f7740972ee56d3bee8f2d0814e017","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AdaptiveLogSample.Variantd646987b4367f2825bdc7ec747517251b94f7740972ee56d3bee8f2d0814e017","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d646987b4367f2825bdc7ec747517251b94f7740972ee56d3bee8f2d0814e017","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/signed/signed-main-attempt01.source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveVaughanNoLongProducts

/-! Exact retained signed sampling main and error after adaptive finite refinement.
No uniform estimate is asserted. Direction, selection, corrections and evaluation:
grwtsk contributors. Scratch formal construction: Codex/ChatGPT assistance. -/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AdaptiveLogSample.Variantd646987b4367f2825bdc7ec747517251b94f7740972ee56d3bee8f2d0814e017

set_option autoImplicit false
noncomputable section
namespace RH16AdaptiveVaughan
open ArithmeticFunction
open scoped BigOperators
open RH16CompleteDivisorCancellation
open FormalResearch.RiemannHypothesis SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimatePlainKernel

def adaptiveLogSample (A : ℝ) (d : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
    Real.log k * sourcePlainWeight A ((d * k : ℕ) : ℝ)

def adaptivePlainSample (A : ℝ) (d m : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
    sourcePlainWeight A ((d * m * k : ℕ) : ℝ)

/-- Universal signed mains J1 and J0 retain their independent source definitions. -/
def adaptiveIndependentMain (A : ℝ) : ℝ :=
  (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A),
    vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    sourceLogSamplingMainTerm A (d : ℝ)) -
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
      sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)))

/-- The error is one signed joint row, including every short and long retained term. -/
def adaptiveSignedSamplingError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    ((adaptiveLogSample A d - sourceLogSamplingMainTerm A (d : ℝ)) -
      (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
        (adaptivePlainSample A d m - sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))))

/-- All signed corrections remain joint; this is the original full prime-power row. -/
theorem fullMangoldtRow_eq_adaptiveIndependentMain_add_signedError
    (A : ℝ) (hA : 1 ≤ A) :
    fullMangoldtRow A = adaptiveIndependentMain A + adaptiveSignedSamplingError A := by
  rw [fullMangoldtRow_eq_adaptiveSampledHead A hA]
  unfold adaptiveSampledHead adaptiveIndependentMain adaptiveSignedSamplingError
    adaptiveLogSample adaptivePlainSample
  simp_rw [mul_sub, Finset.sum_sub_distrib, Finset.mul_sum]
  ring

end RH16AdaptiveVaughan
