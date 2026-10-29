-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSourceNegativeDefectTailBound.Variant55013ce9fbf9c95e523556bec649e0a608c299272c5dbb16c00bf13b74d891bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"55013ce9fbf9c95e523556bec649e0a608c299272c5dbb16c00bf13b74d891bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualSourceNegativeDefectTailBound.Variant55013ce9fbf9c95e523556bec649e0a608c299272c5dbb16c00bf13b74d891bf","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"55013ce9fbf9c95e523556bec649e0a608c299272c5dbb16c00bf13b74d891bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T061333Z-1791353613539562000/SourceActualOffAxisEstimateEquivalence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualNegativeDefect

/-!
The unchanged all-scale Estimate is exactly equivalent to eventual constant
control of the prescribed source's negative defect and of the actual reduced
off-axis head's negative defect. The genuine archimedean upper estimate and the
strict/closed source endpoint identity supply the return to Estimate. No cap
or lower-bound witness is constructed here.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSourceNegativeDefectTailBound.Variant55013ce9fbf9c95e523556bec649e0a608c299272c5dbb16c00bf13b74d891bf

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualOffAxisEstimateEquivalence
open Filter
open scoped Topology
open SourcePairing SourceActualNegativeDefect SourceActualArchimedeanUpper
open SourceActualCriticalZeroHead SourceActualReducedZeroHeight
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

/-- A constant tail cap on the literal prescribed arithmetic defect. -/
def ActualSourceNegativeDefectTailBound : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    actualSourceNegativeDefect A ≤ K

/-- A constant tail cap on the same actual reduced off-axis zero head. -/
def ActualReducedOffAxisNegativeDefectTailBound : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    actualReducedOffAxisNegativeDefect A ≤ K

/-- The true source cap is equivalent to the unchanged all-scale Estimate. -/
theorem actualSourceNegativeDefectTailBound_iff_estimate :
    ActualSourceNegativeDefectTailBound ↔ CorrelationAssembly.EstimateObligation := by
  constructor
  · rintro ⟨K,hK,R,hR,hcap⟩
    apply estimate_of_mertens_residual_tail
    refine ⟨max 0 ((archimedeanMultiplier 0 + 18 * (162826 / 7623 : ℝ) + K) / 2),
      le_max_left _ _,R,hR,?_⟩
    intro A hA
    have hA1 : 1 ≤ A := hR.trans hA
    have harch := actual_archimedean_uniform_upper hA1
    have hneg : -sourceQuadraticValue explicitSecondDerivative A ≤ K :=
      (le_max_right _ _).trans (hcap A hA)
    have heq : sourceQuadraticValue explicitSecondDerivative A =
        archimedeanValue explicitSecondDerivative A - 2 * mertensResidual A := by
      rw [sourceQuadraticValue,
        EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA1,
        ← mertensResidual_eq_closedPrimeMoment A hA1]
    apply (show mertensResidual A ≤
      (archimedeanMultiplier 0 + 18 * (162826 / 7623 : ℝ) + K) / 2 by
        linarith).trans
    exact le_max_right _ _
  · rintro ⟨lower,hlower⟩
    refine ⟨max 0 (-lower),le_max_left _ _,1,le_rfl,?_⟩
    intro A hA
    exact max_le_max le_rfl (neg_le_neg (hlower A hA))

/-- The proved o(1) error transfers either constant cap with an eventual cost of one. -/
theorem actualReducedOffAxisNegativeDefectTailBound_iff_source :
    ActualReducedOffAxisNegativeDefectTailBound ↔ ActualSourceNegativeDefectTailBound := by
  have he : ∀ᶠ A : ℝ in atTop,
      |actualSourceNegativeDefect A - actualReducedOffAxisNegativeDefect A| ≤ 1 := by
    have hh := (tendsto_order.1 actualNegativeDefect_reducedOffAxis_tendsto_zero.norm).2
      (1 : ℝ) (by norm_num : (0 : ℝ) < 1)
    filter_upwards [hh] with A hA
    simpa only [Real.norm_eq_abs] using le_of_lt hA
  obtain ⟨R0,hR0⟩ := eventually_atTop.1 he
  constructor
  · rintro ⟨K,hK,R,hR,hcap⟩
    refine ⟨K+1,by linarith,max R R0,hR.trans (le_max_left _ _),?_⟩
    intro A hA
    have herr := (abs_le.mp (hR0 A ((le_max_right _ _).trans hA))).2
    have hc := hcap A ((le_max_left _ _).trans hA)
    linarith
  · rintro ⟨K,hK,R,hR,hcap⟩
    refine ⟨K+1,by linarith,max R R0,hR.trans (le_max_left _ _),?_⟩
    intro A hA
    have herr := (abs_le.mp (hR0 A ((le_max_right _ _).trans hA))).1
    have hc := hcap A ((le_max_left _ _).trans hA)
    linarith

/-- This is an exact equivalent target, with every real radius and actual weight retained. -/
theorem actualReducedOffAxisNegativeDefectTailBound_iff_estimate :
    ActualReducedOffAxisNegativeDefectTailBound ↔ CorrelationAssembly.EstimateObligation :=
  actualReducedOffAxisNegativeDefectTailBound_iff_source.trans
    actualSourceNegativeDefectTailBound_iff_estimate

/-- A lower bound for the signed real part of the actual finite head is exactly sufficient. -/
theorem actualReducedOffAxisHeadLowerTail_iff_estimate :
    (∃ lower R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      lower ≤ (actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re) ↔
        CorrelationAssembly.EstimateObligation := by
  apply Iff.trans _ actualReducedOffAxisNegativeDefectTailBound_iff_estimate
  constructor
  · rintro ⟨lower,R,hR,hlower⟩
    refine ⟨max 0 (-lower),le_max_left _ _,R,hR,?_⟩
    intro A hA
    exact max_le_max le_rfl (neg_le_neg (hlower A hA))
  · rintro ⟨K,hK,R,hR,hcap⟩
    refine ⟨-K,R,hR,?_⟩
    intro A hA
    have h : -(actualOffAxisZeroHeightHead A (actualReducedZeroHeight A)).re ≤ K :=
      (le_max_right _ _).trans (hcap A hA)
    linarith

end
end FormalResearch.RiemannHypothesis.SourceActualOffAxisEstimateEquivalence
