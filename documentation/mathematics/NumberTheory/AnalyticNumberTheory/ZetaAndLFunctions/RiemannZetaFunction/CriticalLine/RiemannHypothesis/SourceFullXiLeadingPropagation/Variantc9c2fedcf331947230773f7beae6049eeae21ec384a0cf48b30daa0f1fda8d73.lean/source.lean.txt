-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLeadingUpperOfLiteralFullXi.Variant7b28315e2b9c4229b7c7331a8ae68ab47c031611faa26ce195eb2a01dc10c0d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b28315e2b9c4229b7c7331a8ae68ab47c031611faa26ce195eb2a01dc10c0d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualLeadingUpperOfLiteralFullXi.Variant7b28315e2b9c4229b7c7331a8ae68ab47c031611faa26ce195eb2a01dc10c0d5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7b28315e2b9c4229b7c7331a8ae68ab47c031611faa26ce195eb2a01dc10c0d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791325071168176000/SourceFullXiLeadingPropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFullXiCesaroConsumer
import SourceLeadingCesaroPropagation

/-!
Apply the newly recovered exact full-Xi primitive identity to the checked sharp
leading consumers. No upper witness is supplied. Every complementary component
and the original source/real-scale domain is retained.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLeadingUpperOfLiteralFullXi.Variant7b28315e2b9c4229b7c7331a8ae68ab47c031611faa26ce195eb2a01dc10c0d5

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceFullXiLeadingPropagation
open MeasureTheory
open SourceFullXiCesaroConsumer SourceLeadingCesaroPropagation SourceLeadingTailBudget
open SourceActualPsiInverseSquare RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

theorem actual_leading_upper_of_literal_full_Xi (M A : ℝ) (hM : 0 ≤ M)
    (hA : 25600 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |shiftedPsiFullPrimitive t| ≤ M * (t - Real.log 2)) :
    actualLeadingRenormalizedTail A ≤
      (522 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91 -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_five_cesaro M A hM hA
  intro t ht
  rw [actualCesaroPrimitive_eq_literalXiKernel t ht]
  exact hG t ht

theorem actual_leading_upper_of_literal_full_Xi_signed_pairing
    (J A : ℝ) (hA : 25600 ≤ A)
    (hJ : -J ≤ ∫ t in Real.log 2..2 * A,
      shiftedPsiFullPrimitive t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t) :
    actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection 91 -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_signed_cesaro J A hA
  rw [signed_pairing_eq_literalXiKernel A (by linarith : 1 ≤ A)]
  exact hJ

end
end FormalResearch.RiemannHypothesis.SourceFullXiLeadingPropagation
