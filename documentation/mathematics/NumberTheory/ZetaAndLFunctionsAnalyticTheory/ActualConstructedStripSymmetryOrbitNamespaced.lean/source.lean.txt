-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualBilateralReflectedEq.Variant9e007aa83689445e226b157fb8122f363ca88f71f779212962585dc14e6a5b78","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e007aa83689445e226b157fb8122f363ca88f71f779212962585dc14e6a5b78","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualBilateralReflectedEq.Variant9e007aa83689445e226b157fb8122f363ca88f71f779212962585dc14e6a5b78","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9e007aa83689445e226b157fb8122f363ca88f71f779212962585dc14e6a5b78","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/ActualConstructedStripSymmetryOrbit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualInsideStripKernelUnbounded

/-!
Reflection and conjugation of the actual source kernel preserve its ordinary
complex weights. The constructed four-member strip orbit below is an auxiliary
spectral configuration. It is never identified with actual zeta zeros or their
multiplicities; no actual full-zero lower bound or failure is asserted.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualBilateralReflectedEq.Variant9e007aa83689445e226b157fb8122f363ca88f71f779212962585dc14e6a5b78

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualConstructedStripSymmetryOrbit
open MeasureTheory Filter
open scoped Topology ComplexConjugate
open SourcePairing ActualCorrelationOppositeHalf
open ActualInsideStripKernelNegativeSequence ActualInsideStripKernelUnbounded
noncomputable section

/-- Source evenness preserves the exact ordinary transform under reflection. -/
theorem actualBilateral_reflected_eq {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualBilateralCorrelationTransform A (-z) = actualBilateralCorrelationTransform A z := by
  rw [actualBilateralCorrelationTransform_eq_halves (by linarith : 0 < A),
    actualBilateralCorrelationTransform_eq_halves (by linarith : 0 < A)]
  simp only [neg_neg, add_comm]

/-- Conjugation commutes with the genuine compact source integral. -/
theorem actualBilateral_conjugated_eq {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualBilateralCorrelationTransform A (conj z) =
      conj (actualBilateralCorrelationTransform A z) := by
  have hord : -(2 * A) ≤ 2 * A := by linarith
  unfold actualBilateralCorrelationTransform
  rw [intervalIntegral.integral_of_le hord, intervalIntegral.integral_of_le hord,
    ← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with t
  simp only [map_mul, ← Complex.exp_conj, Complex.conj_ofReal]

/-- An independently constructed symmetry orbit, with four literal ordinary weights. -/
def actualConstructedStripOrbitWeight (A : ℝ) : ℂ :=
  actualBilateralCorrelationTransform A actualInsideStripMode +
    actualBilateralCorrelationTransform A (-actualInsideStripMode) +
    actualBilateralCorrelationTransform A (conj actualInsideStripMode) +
    actualBilateralCorrelationTransform A (-conj actualInsideStripMode)

/-- Its exact real part is four times the original actual strip-kernel real part. -/
theorem actualConstructedStripOrbitWeight_real {A : ℝ} (hA : 1 ≤ A) :
    (actualConstructedStripOrbitWeight A).re =
      4 * (actualBilateralCorrelationTransform A actualInsideStripMode).re := by
  unfold actualConstructedStripOrbitWeight
  rw [actualBilateral_reflected_eq hA, actualBilateral_reflected_eq hA,
    actualBilateral_conjugated_eq hA]
  simp only [Complex.add_re, Complex.conj_re]
  ring

/-- Even a symmetry-complete auxiliary configuration has no uniform lower kernel bound. -/
theorem actualConstructedStripOrbitWeight_below_beyond (R L : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧ (actualConstructedStripOrbitWeight A).re < L := by
  obtain ⟨A, hR, hA, hneg⟩ := actualInsideStripKernel_below_beyond R (L / 4)
  refine ⟨A, hR, hA, ?_⟩
  rw [actualConstructedStripOrbitWeight_real hA]
  linarith

end
end FormalResearch.RiemannHypothesis.ActualConstructedStripSymmetryOrbit
