-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightedPoleCorrelation.Variantef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.WeightedPoleCorrelation.Variantef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68","mathematical_subject":"Analysis.Calculus","original_sha256":"ef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/ef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePoleReducedCorrelation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

/-!
# The conjugated one-pole-reduced primitive

The exact weighted source has derivative order D²(D+1) on this cross-correlation.
Classical differentiability is proved before any use of totalized derivatives.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightedPoleCorrelation.Variantef8a6fac0764817b991b03b4b46304b8a68ea9e7de881bf209e4492a0a7cdc68

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePoleReducedWeight

open MeasureTheory
open scoped ContDiff
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity PrimePowerDescent EstimatePoleReducedCorrelation

noncomputable section

/-- Exponential conjugation of the actual one-pole-reduced cross-correlation. -/
def weightedPoleCorrelation (A t : ℝ) : ℝ :=
  Real.exp (-t/2) * poleReducedCorrelation A t

/-- The second classical derivative is the primitive used by finite Stieltjes summation. -/
def poleReducedPrimitive (A t : ℝ) : ℝ :=
  deriv (deriv (weightedPoleCorrelation A)) t

/-- Classical C² regularity of the conjugated function. -/
theorem weightedPoleCorrelation_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 2 (weightedPoleCorrelation A) :=
  ((contDiff_id.neg.div_const 2).exp).mul (poleReducedCorrelation_contDiff A hA)

/-- The first conjugated derivative retains both terms with their exact signs. -/
theorem weightedPoleCorrelation_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (weightedPoleCorrelation A)
      (Real.exp (-t/2) * (deriv (poleReducedCorrelation A) t -
        poleReducedCorrelation A t / 2)) t := by
  have hH := (poleReducedCorrelation_contDiff A hA).differentiable (by norm_num)
  have hd := (((hasDerivAt_id t).neg.div_const 2).exp).mul hH.differentiableAt.hasDerivAt
  apply hd.congr_deriv
  dsimp only [Pi.neg_apply, id_eq]
  ring

/-- Exact first-derivative function identity. -/
theorem weightedPoleCorrelation_deriv (A : ℝ) (hA : 0 < A) :
    deriv (weightedPoleCorrelation A) = fun t ↦ Real.exp (-t/2) *
      (deriv (poleReducedCorrelation A) t - poleReducedCorrelation A t / 2) :=
  funext fun t ↦ (weightedPoleCorrelation_hasDerivAt A t hA).deriv

/-- Conjugating D²-1/4 gives D²+D, for the exact one-pole cross-correlation. -/
theorem poleReducedPrimitive_add_deriv (A t : ℝ) (hA : 0 < A) :
    poleReducedPrimitive A t + deriv (weightedPoleCorrelation A) t =
      Real.exp (-t/2) * sourceCorrelation explicitSecondDerivative A t := by
  have hH := poleReducedCorrelation_contDiff A hA
  have hH' : ContDiff ℝ 1 (deriv (poleReducedCorrelation A)) := hH.deriv'
  have hd := (((hasDerivAt_id t).neg.div_const 2).exp).mul
    ((hH'.differentiable (by norm_num)).differentiableAt.hasDerivAt.sub
      (((hH.differentiable (by norm_num)).differentiableAt.hasDerivAt).div_const 2))
  change HasDerivAt (fun s ↦ Real.exp (-s/2) *
    (deriv (poleReducedCorrelation A) s - poleReducedCorrelation A s / 2)) _ t at hd
  unfold poleReducedPrimitive
  rw [weightedPoleCorrelation_deriv A hA, hd.deriv]
  rw [← poleReducedCorrelation_pole_operator A t hA]
  dsimp only [Pi.sub_apply, Pi.neg_apply, id_eq]
  ring

/-- The second derivative is C¹ by the checked operator relation and source C¹ theorem. -/
theorem poleReducedPrimitive_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (poleReducedPrimitive A) := by
  have heq : poleReducedPrimitive A = fun t ↦
      Real.exp (-t/2) * sourceCorrelation explicitSecondDerivative A t -
        deriv (weightedPoleCorrelation A) t := by
    funext t
    linarith [poleReducedPrimitive_add_deriv A t hA]
  rw [heq]
  exact (((contDiff_id.neg.div_const 2).exp).mul (sourceCorrelation_contDiff A hA)).sub
    (weightedPoleCorrelation_contDiff A hA).deriv'

/-- The derivative of G' is precisely F, with genuine differentiability. -/
theorem weightedPoleCorrelation_deriv_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (deriv (weightedPoleCorrelation A)) (poleReducedPrimitive A t) t :=
  ((weightedPoleCorrelation_contDiff A hA).differentiable_deriv_two t).hasDerivAt

/-- The exact source weight is F'+F. No fifth derivative is introduced. -/
theorem sourceWeight_eq_poleReducedPrimitive (A t : ℝ) (hA : 0 < A) :
    sourceWeight explicitSecondDerivative A t =
      deriv (poleReducedPrimitive A) t + poleReducedPrimitive A t := by
  have heq : exponentialTest (sourceCorrelation explicitSecondDerivative A) =
      fun s ↦ poleReducedPrimitive A s + deriv (weightedPoleCorrelation A) s := by
    funext s
    exact (poleReducedPrimitive_add_deriv A s hA).symm
  have hF := poleReducedPrimitive_contDiff A hA
  have hd := ((hF.differentiable (by norm_num)).differentiableAt.hasDerivAt).add
    (weightedPoleCorrelation_deriv_hasDerivAt A t hA)
  change HasDerivAt (fun s ↦ poleReducedPrimitive A s +
    deriv (weightedPoleCorrelation A) s) _ t at hd
  have hw := exponentialTest_deriv _ (sourceCorrelation_contDiff A hA) t
  rw [heq, hd.deriv] at hw
  exact hw.symm

/-- All upper traces needed by the finite pole transfer vanish at the actual endpoint. -/
theorem poleReduced_upper_endpoints (A : ℝ) (hA : 0 < A) :
    poleReducedCorrelation A (2 * A) = 0 ∧
      deriv (weightedPoleCorrelation A) (2 * A) = 0 ∧ poleReducedPrimitive A (2 * A) = 0 := by
  have hz := poleReducedCorrelation_zero_of_two_mul_le_abs A (2 * A) hA (le_abs_self _)
  have hg : deriv (weightedPoleCorrelation A) (2 * A) = 0 := by
    rw [(weightedPoleCorrelation_hasDerivAt A (2 * A) hA).deriv, hz.1, hz.2]
    ring
  refine ⟨hz.1, hg, ?_⟩
  have hi := poleReducedPrimitive_add_deriv A (2 * A) hA
  rw [hg, sourceCorrelation_upper_endpoint A hA] at hi
  simpa using hi

end
end EstimatePoleReducedWeight
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
