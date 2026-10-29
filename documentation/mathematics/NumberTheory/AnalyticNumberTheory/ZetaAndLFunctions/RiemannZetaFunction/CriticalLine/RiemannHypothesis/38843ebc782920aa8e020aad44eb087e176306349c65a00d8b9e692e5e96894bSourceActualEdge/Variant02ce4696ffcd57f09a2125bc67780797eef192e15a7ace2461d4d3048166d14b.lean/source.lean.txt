-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNegativeEdgeComplementScaledEventuallyPositive.Variant38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualNegativeEdgeComplementScaledEventuallyPositive.Variant38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-boundary-next/owner57/20261007T072529Z/bytes/38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894b--SourceActualEdgeComplementCancellation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroNormalizedCancellation
import SourceActualNegativeEdgeMangoldt

/-!
The genuinely negative upper-edge window and the complete original residual
force the full remaining inventory to be positive on the same exponential
scale. All other original atoms remain in the finite complement. This is a
relative cancellation theorem, not a uniform signed residual estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNegativeEdgeComplementScaledEventuallyPositive.Variant38843ebc782920aa8e020aad44eb087e176306349c65a00d8b9e692e5e96894b

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEdgeComplementCancellation
open Filter
open scoped Topology
open SourceActualZeroNormalizedCancellation SourceActualNegativeEdgeMangoldt
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

/-- The whole complementary source inventory has a positive normalized lower budget. -/
theorem actualNegativeEdgeComplement_scaled_eventually_positive :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualNegativeEdgeConstant / 2 ≤
        A ^ 9 * Real.exp (-A) * actualNegativeEdgeComplement A := by
  have hc := actualNegativeEdgeConstant_pos
  have hev := actualMertensResidual_scaled_tendsto_zero.eventually
    (Ioi_mem_nhds (by linarith : -(actualNegativeEdgeConstant / 2) < 0))
  obtain ⟨R0,hR0⟩ := eventually_atTop.1 hev
  obtain ⟨R1,hR1,hcomp⟩ := actualNegativeEdgeComplement_eventually_above_residual
  refine ⟨max R1 R0,hR1.trans (le_max_left _ _),?_⟩
  intro A hA
  have h1 : R1 ≤ A := (le_max_left _ _).trans hA
  have h0 : R0 ≤ A := (le_max_right _ _).trans hA
  have hp : 0 < A := by linarith
  have hs : 0 ≤ A ^ 9 * Real.exp (-A) := by positivity
  have hm := mul_le_mul_of_nonneg_left (hcomp A h1) hs
  have he : (A ^ 9 * Real.exp (-A)) *
      (actualNegativeEdgeConstant * Real.exp A / A ^ 9) = actualNegativeEdgeConstant := by
    rw [Real.exp_neg]
    field_simp
  rw [mul_add, he] at hm
  have hr := hR0 A h0
  linarith

/-- Actual complete complementary growth has the same exponential scale as the negative window. -/
theorem actualNegativeEdgeComplement_eventually_positive_growth :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 ≤
        actualNegativeEdgeComplement A := by
  obtain ⟨R,hR,hbound⟩ := actualNegativeEdgeComplement_scaled_eventually_positive
  refine ⟨R,hR,?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hs : 0 < A ^ 9 * Real.exp (-A) := by positivity
  calc
    _ = (actualNegativeEdgeConstant / 2) / (A ^ 9 * Real.exp (-A)) := by
      rw [Real.exp_neg]
      field_simp
    _ ≤ actualNegativeEdgeComplement A := (div_le_iff₀ hs).mpr
      (by simpa only [mul_comm] using hbound A hA)

/-- The complete positive complement diverges while the normalized full residual vanishes. -/
theorem actualNegativeEdgeComplement_tendsto_atTop :
    Tendsto actualNegativeEdgeComplement atTop atTop := by
  obtain ⟨R,hR,hbound⟩ := actualNegativeEdgeComplement_eventually_positive_growth
  have hl : Tendsto (fun A : ℝ =>
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) atTop atTop := by
    simpa only [mul_div_assoc] using (Real.tendsto_exp_div_pow_atTop 9).const_mul_atTop
      (half_pos actualNegativeEdgeConstant_pos)
  apply tendsto_atTop_mono' atTop _ hl
  filter_upwards [eventually_ge_atTop R] with A hA
  exact hbound A hA

end
end FormalResearch.RiemannHypothesis.SourceActualEdgeComplementCancellation
