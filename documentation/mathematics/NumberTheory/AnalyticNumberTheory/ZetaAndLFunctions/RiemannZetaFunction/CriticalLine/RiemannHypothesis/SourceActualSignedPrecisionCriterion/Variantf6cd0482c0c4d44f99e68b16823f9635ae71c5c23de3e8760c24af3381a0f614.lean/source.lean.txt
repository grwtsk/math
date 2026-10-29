-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualResidualEqTwiceVariationSkew.Variant3a2a07fc03e59d824b9c0c6b8a763e9122bee4e37986977a0c2ce3a556448a0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a2a07fc03e59d824b9c0c6b8a763e9122bee4e37986977a0c2ce3a556448a0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualResidualEqTwiceVariationSkew.Variant3a2a07fc03e59d824b9c0c6b8a763e9122bee4e37986977a0c2ce3a556448a0e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3a2a07fc03e59d824b9c0c6b8a763e9122bee4e37986977a0c2ce3a556448a0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T074256Z-1791358976335401000/SourceActualSignedPrecisionCriterion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualSignedVariationFraction

/-!
The remaining one-sided precision is stated on the literal complete positive
and negative prime-power variation. Its denominator is the independently
defined actual absolute moment. The reciprocal has an exponential upper bound,
but no constant residual cap is constructed or inferred from a relative rate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualResidualEqTwiceVariationSkew.Variant3a2a07fc03e59d824b9c0c6b8a763e9122bee4e37986977a0c2ce3a556448a0e

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualSignedPrecisionCriterion
open Filter
open scoped Topology
open SourceActualSignedVariationFraction SourceActualAbsolutePrimeMomentObstruction
open SourceActualNegativeEdgeMangoldt SourceActualArchimedeanUpper SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMertensResidual
noncomputable section

/-- The full signed source residual is exactly twice the actual mass times its skew. -/
theorem actualResidual_eq_twice_variation_skew {A : ℝ} (hA : 1 ≤ A)
    (hV : actualClosedAbsolutePrimeMoment A ≠ 0) :
    mertensResidual A = 2 * actualClosedAbsolutePrimeMoment A *
      (actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2) := by
  have hs := actualClosedAbsolutePrimeMoment_eq_variation_sum A
  have hd := actualMertensResidual_eq_variation_difference hA
  field_simp
  nlinarith

/-- The exact required upper bound retains the sign and the full mass denominator. -/
theorem actualResidual_le_iff_positive_fraction {A K : ℝ} (hA : 1 ≤ A)
    (hV : 0 < actualClosedAbsolutePrimeMoment A) :
    mertensResidual A ≤ K ↔
      actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A ≤
        1 / 2 + K / (2 * actualClosedAbsolutePrimeMoment A) := by
  have h := actualResidual_eq_twice_variation_skew hA (ne_of_gt hV)
  have hp : 0 < 2 * actualClosedAbsolutePrimeMoment A := by positivity
  rw [add_comm (1 / 2 : ℝ) (K / (2 * actualClosedAbsolutePrimeMoment A)),
    ← sub_le_iff_le_add, le_div_iff₀ hp]
  nlinarith

/-- The equivalent negative fraction criterion is a lower bound, not an upper bound. -/
theorem actualResidual_le_iff_negative_fraction {A K : ℝ} (hA : 1 ≤ A)
    (hV : 0 < actualClosedAbsolutePrimeMoment A) :
    mertensResidual A ≤ K ↔
      1 / 2 - K / (2 * actualClosedAbsolutePrimeMoment A) ≤
        actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A := by
  have hs := actualClosedAbsolutePrimeMoment_eq_variation_sum A
  have hd := actualMertensResidual_eq_variation_difference hA
  have hn : actualNegativePrimeVariation A / actualClosedAbsolutePrimeMoment A =
      1 - actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A := by
    field_simp
    linarith
  rw [hn, actualResidual_le_iff_positive_fraction hA hV]
  constructor <;> intro h <;> linarith

/-- One fixed constant bounds the one-sided excess at every real tail scale. -/
def ActualPositiveVariationPrecisionTailBound : Prop :=
  ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    0 < actualClosedAbsolutePrimeMoment A ∧
      actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A ≤
        1 / 2 + K / (2 * actualClosedAbsolutePrimeMoment A)

/-- This precision is exactly an eventual upper cap for the unchanged residual. -/
theorem actualPositiveVariationPrecisionTailBound_iff_residual :
    ActualPositiveVariationPrecisionTailBound ↔
      ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
        mertensResidual A ≤ K := by
  constructor
  · rintro ⟨K,hK,R,hR,hcap⟩
    refine ⟨K,hK,R,hR,?_⟩
    intro A hA
    obtain ⟨hV,hp⟩ := hcap A hA
    exact (actualResidual_le_iff_positive_fraction (hR.trans hA) hV).mpr hp
  · rintro ⟨K,hK,R,hR,hcap⟩
    obtain ⟨Rv,hRv,hv⟩ := actualClosedAbsolutePrimeMoment_eventually_lower
    refine ⟨K,hK,max R Rv,hR.trans (le_max_left _ _),?_⟩
    intro A hA
    have hAr : R ≤ A := (le_max_left _ _).trans hA
    have hAv : Rv ≤ A := (le_max_right _ _).trans hA
    have hAp : 0 < A := by linarith [hR.trans hAr]
    have hpos : 0 < (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 := by
      have hc := actualNegativeEdgeConstant_pos
      positivity
    have hV := hpos.trans_le (hv A hAv)
    exact ⟨hV,(actualResidual_le_iff_positive_fraction (hR.trans hAr) hV).mp
      (hcap A hAr)⟩

/-- The actual one-sided fraction criterion is equivalent to the original Estimate. -/
theorem actualPositiveVariationPrecisionTailBound_iff_estimate :
    ActualPositiveVariationPrecisionTailBound ↔ CorrelationAssembly.EstimateObligation := by
  rw [actualPositiveVariationPrecisionTailBound_iff_residual]
  constructor
  · exact estimate_of_mertens_residual_tail
  · rintro ⟨lower,hlower⟩
    let K := max 0 ((archimedeanMultiplier 0 + 18 * (162826 / 7623 : ℝ) - lower) / 2)
    refine ⟨K,le_max_left _ _,1,le_rfl,?_⟩
    intro A hA
    have harch := actual_archimedean_uniform_upper hA
    have hsource := hlower A hA
    have heq : sourceQuadraticValue explicitSecondDerivative A =
        archimedeanValue explicitSecondDerivative A - 2 * mertensResidual A := by
      rw [sourceQuadraticValue,
        EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA,
        ← mertensResidual_eq_closedPrimeMoment A hA]
    have hr : mertensResidual A ≤
        (archimedeanMultiplier 0 + 18 * (162826 / 7623 : ℝ) - lower) / 2 := by
      linarith
    exact hr.trans (le_max_right _ _)

/-- The independently proved true mass lower bound bounds its reciprocal exponentially. -/
theorem actualAbsoluteVariation_inverse_eventually_exp_bound :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      0 < actualClosedAbsolutePrimeMoment A ∧
        1 / actualClosedAbsolutePrimeMoment A ≤
          2 * A ^ 9 * Real.exp (-A) / actualNegativeEdgeConstant := by
  obtain ⟨R,hR,hv⟩ := actualClosedAbsolutePrimeMoment_eventually_lower
  have hc := actualNegativeEdgeConstant_pos
  refine ⟨R,by linarith,?_⟩
  intro A hA
  have hAp : 0 < A := by linarith
  have hmass := hv A hA
  have hl : 0 < (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 := by positivity
  refine ⟨hl.trans_le hmass,?_⟩
  calc
    _ ≤ 1 / ((actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) :=
      div_le_div₀ (by norm_num : (0 : ℝ) ≤ 1) le_rfl hl hmass
    _ = _ := by
      rw [Real.exp_neg]
      field_simp

/-- A cap would imply this weaker exponential fraction budget; it supplies no cap. -/
theorem actualResidual_cap_implies_positive_fraction_exp_budget {K R : ℝ}
    (hK : 0 ≤ K) (hR : 1 ≤ R)
    (hcap : ∀ A : ℝ, R ≤ A → mertensResidual A ≤ K) :
    ∃ R1 : ℝ, 1 ≤ R1 ∧ ∀ A : ℝ, R1 ≤ A →
      actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A ≤
        1 / 2 + K * A ^ 9 * Real.exp (-A) / actualNegativeEdgeConstant := by
  obtain ⟨Rv,hRv,hv⟩ := actualAbsoluteVariation_inverse_eventually_exp_bound
  refine ⟨max R Rv,hR.trans (le_max_left _ _),?_⟩
  intro A hA
  have hAr : R ≤ A := (le_max_left _ _).trans hA
  obtain ⟨hV,hiv⟩ := hv A ((le_max_right _ _).trans hA)
  have hp := (actualResidual_le_iff_positive_fraction (hR.trans hAr) hV).mp
    (hcap A hAr)
  have hm := mul_le_mul_of_nonneg_left hiv (show 0 ≤ K / 2 by positivity)
  have heq : (K / 2) * (1 / actualClosedAbsolutePrimeMoment A) =
      K / (2 * actualClosedAbsolutePrimeMoment A) := by ring
  rw [heq] at hm
  have heq2 : (K / 2) * (2 * A ^ 9 * Real.exp (-A) / actualNegativeEdgeConstant) =
      K * A ^ 9 * Real.exp (-A) / actualNegativeEdgeConstant := by ring
  rw [heq2] at hm
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualSignedPrecisionCriterion
