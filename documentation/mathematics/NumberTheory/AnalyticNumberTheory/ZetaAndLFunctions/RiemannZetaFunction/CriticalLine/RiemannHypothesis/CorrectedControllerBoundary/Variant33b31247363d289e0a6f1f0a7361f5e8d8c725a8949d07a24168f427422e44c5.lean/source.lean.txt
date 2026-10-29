-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BoundaryFilter.Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BoundaryFilter.Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/CorrectedControllerBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic
import FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceBoundary


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BoundaryFilter.Variant4cae1c42516b61060aaac59ec945fd2a6967e769dac0dd9259e8e1ea1170f3fc

namespace FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDelta
noncomputable def boundaryFilter (ε h t : ℝ) : ℂ := MobiusSourceFilterQuotient.W ((t : ℂ)*Complex.I) / MobiusSourceFilterQuotient.W ((ε : ℂ)+(t : ℂ)*Complex.I) * (1+(h : ℂ)*((ε : ℂ)+(t : ℂ)*Complex.I))⁻¹ ^ 6 / (1+(ε : ℂ)+(t : ℂ)*Complex.I)
end FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDelta

/-! The exact actual-source boundary residual, with every signed numerator factor retained. -/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerBoundary
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusSourceFilterQuotient MobiusPoleNumerator CorrectedControllerAnalytic
open FixedLaplaceContinuation FixedLaplaceBoundary SourceFilterDelta
noncomputable section

/-- Positive shifts smaller than one half avoid the only right-half-plane source zero. -/
theorem shifted_W_ne_zero (ε t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    W ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := by
  intro h
  have hz : 0 < ((ε : ℂ) + (t : ℂ) * Complex.I).re := by simpa using hε
  have hh := (W_zero_iff _ hz).mp h
  have := congrArg Complex.re hh
  norm_num at this
  linarith

/-- The genuine kernel boundary value times the analytic candidate has the exact signed product. -/
theorem actual_boundary_product (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I) =
      boundaryFilter ε h t * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
        correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I) := by
  have hn : (t : ℂ) * Complex.I + (ε : ℂ) ≠ 1 / 2 := by
    intro hh
    apply shifted_W_ne_zero ε t hε he
    rw [add_comm (ε : ℂ) ((t : ℂ) * Complex.I), hh, W_half_zero]
  rw [actualLaplace_boundary, candidate, quotient_of_ne X _ hn]
  unfold boundaryFilter
  have hc : (t : ℂ) * Complex.I + (ε : ℂ) = (ε : ℂ) + (t : ℂ) * Complex.I := add_comm _ _
  rw [hc]
  ring

/-- The full boundary residual decomposes into source distortion and the complete arithmetic error. -/
theorem residual_decomposition (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I) =
    (1 / (1 + (t : ℂ) * Complex.I) - boundaryFilter ε h t) +
      boundaryFilter ε h t *
        (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)) := by
  rw [actual_boundary_product X ε h t hε he]
  ring

/-- The pointwise norm bound retains all arithmetic terms inside their original signed factor. -/
theorem residual_norm_le (X : ℕ) (ε h t : ℝ) (hε : 0 < ε) (he : ε < 1 / 2) :
    ‖1 / (1 + (t : ℂ) * Complex.I) -
      actualLaplace ((t : ℂ) * Complex.I) * candidate X ε h ((t : ℂ) * Complex.I)‖ ≤
    ‖1 / (1 + (t : ℂ) * Complex.I) - boundaryFilter ε h t‖ +
      ‖boundaryFilter ε h t‖ *
        ‖1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
          correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  rw [residual_decomposition X ε h t hε he]
  simpa only [norm_mul] using norm_add_le
    (1 / (1 + (t : ℂ) * Complex.I) - boundaryFilter ε h t)
    (boundaryFilter ε h t * (1 - riemannZeta (1 / 2 + (t : ℂ) * Complex.I) *
      correctedNumerator X ((ε : ℂ) + (t : ℂ) * Complex.I)))

end
end FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerBoundary
