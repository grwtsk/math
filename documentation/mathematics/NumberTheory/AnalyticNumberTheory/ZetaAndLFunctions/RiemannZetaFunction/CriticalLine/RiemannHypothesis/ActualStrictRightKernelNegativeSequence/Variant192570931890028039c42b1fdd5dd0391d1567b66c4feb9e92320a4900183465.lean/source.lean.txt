-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualStrictRightMode.Variant3ccccaa2c0dad6131076ff1b6b03428c4614369d8ffd6d7859b4ab112d6dfbca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ccccaa2c0dad6131076ff1b6b03428c4614369d8ffd6d7859b4ab112d6dfbca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualStrictRightMode.Variant3ccccaa2c0dad6131076ff1b6b03428c4614369d8ffd6d7859b4ab112d6dfbca","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"3ccccaa2c0dad6131076ff1b6b03428c4614369d8ffd6d7859b4ab112d6dfbca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/ActualStrictRightKernelNegativeSequence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPrescribedCorrelationNegativeSequence

/-!
The actual bilateral kernel has negative real values on a prescribed STRICT
initial right line. The full zeta multiplier, prime inventory and moving head
remain unestimated; no actual zeta zero or arithmetic divergence is claimed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualStrictRightMode.Variant3ccccaa2c0dad6131076ff1b6b03428c4614369d8ffd6d7859b4ab112d6dfbca

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualStrictRightKernelNegativeSequence
open Filter
open scoped Topology
open SourcePairing ActualCorrelationOppositeHalf
open SourceActualComplexEndpointAsymptotic SourceActualComplexEndpointCoefficient
open ActualComplexCorrelationAsymptotic ActualPrescribedCorrelationNegativeSequence
noncomputable section

/-- A prescribed shifted argument for the genuine initial Mellin line. -/
def actualStrictRightMode : ℂ := 1 + Complex.I

private theorem actualStrictRightMode_re_pos : 0 < actualStrictRightMode.re := by
  norm_num [actualStrictRightMode]

/-- The genuine Mellin argument has real part three halves, strictly above one. -/
theorem actualStrictRightMellin_re : (actualStrictRightMode + 1/2).re = 3/2 := by
  norm_num [actualStrictRightMode]

/-- Explicit small Gaussian powers give the literal actual improper coefficient. -/
theorem actualStrictRightCoefficient_eq :
    actualLeadingComplexCoefficient actualStrictRightMode = -84 - 108 * Complex.I := by
  have h3 : actualStrictRightMode ^ 3 = -2 + 2 * Complex.I := by
    apply Complex.ext <;>
      norm_num [actualStrictRightMode, pow_succ, Complex.mul_re, Complex.mul_im]
  have h5 : actualStrictRightMode ^ 5 = -4 - 4 * Complex.I := by
    apply Complex.ext <;>
      norm_num [actualStrictRightMode, pow_succ, Complex.mul_re, Complex.mul_im]
  rw [actualLeadingComplexCoefficient_eq actualStrictRightMode_re_pos, h3, h5]
  apply Complex.ext <;> norm_num [Complex.div_re, Complex.div_im, Complex.normSq]

/-- The ordinary-square coefficient has a strictly negative real part. -/
theorem actualStrictRightCoefficient_square_re :
    (actualLeadingComplexCoefficient actualStrictRightMode ^ 2).re = -4608 := by
  rw [actualStrictRightCoefficient_eq]
  norm_num [pow_two]

/-- The actual contour kernel scale becomes positive real on the prescribed sequence. -/
theorem actualStrictRightSequence_phase (n : ℕ) :
    Complex.exp (-2 * actualStrictRightMode * (actualPrescribedScaleSequence n : ℂ)) =
      (Real.exp (-2 * actualPrescribedScaleSequence n) : ℂ) := by
  have he : -2 * actualStrictRightMode * (actualPrescribedScaleSequence n : ℂ) =
      (-2 * actualPrescribedScaleSequence n : ℝ) -
        ((2 * n : ℕ) : ℂ) * (2 * Real.pi * Complex.I) := by
    dsimp [actualStrictRightMode, actualPrescribedScaleSequence]
    push_cast
    ring
  rw [he, sub_eq_add_neg, Complex.exp_add,
    Complex.exp_neg (((2 * n : ℕ) : ℂ) * (2 * Real.pi * Complex.I)),
    Complex.exp_nat_mul_two_pi_mul_I, inv_one, mul_one]
  exact (Complex.ofReal_exp _).symm

/-- Exact actual bilateral source asymptotics survive the strict initial-line phase. -/
theorem actualStrictRightKernel_scaled_real_tendsto :
    Tendsto (fun n : ℕ =>
      actualPrescribedScaleSequence n ^ 9 * sourceNormalization (actualPrescribedScaleSequence n) *
        Real.exp (-2 * actualPrescribedScaleSequence n) *
        (actualBilateralCorrelationTransform (actualPrescribedScaleSequence n)
          actualStrictRightMode).re) atTop (𝓝 (-4608 : ℝ)) := by
  have hh := Complex.continuous_re.continuousAt.tendsto.comp
    ((actualBilateralCorrelationTransform_normalized_tendsto
      actualStrictRightMode_re_pos).comp actualPrescribedScaleSequence_tendsto)
  have hc : 384 / actualStrictRightMode ^ 3 - 96 / actualStrictRightMode ^ 5 =
      actualLeadingComplexCoefficient actualStrictRightMode :=
    (actualLeadingComplexCoefficient_eq actualStrictRightMode_re_pos).symm
  rw [hc, actualStrictRightCoefficient_square_re] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun n => by
    dsimp [actualCorrelationAsymptoticScale]
    rw [actualStrictRightSequence_phase]
    simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, zero_mul, zero_add, sub_zero]

/-- The literal bilateral kernel is eventually negative on this strict initial line. -/
theorem actualStrictRightKernel_eventually_negative :
    ∀ᶠ n in atTop,
      (actualBilateralCorrelationTransform (actualPrescribedScaleSequence n)
        actualStrictRightMode).re < 0 := by
  have hn := actualStrictRightKernel_scaled_real_tendsto.eventually_lt_const
    (by norm_num : (-4608 : ℝ) < 0)
  filter_upwards [hn, actualPrescribedScaleSequence_tendsto.eventually_ge_atTop 1] with n hn hA
  have hp : 0 < actualPrescribedScaleSequence n ^ 9 *
      sourceNormalization (actualPrescribedScaleSequence n) *
        Real.exp (-2 * actualPrescribedScaleSequence n) := by
    have hZ := source_normalization_pos (actualPrescribedScaleSequence n) hA
    have hAp : 0 < actualPrescribedScaleSequence n := by linarith
    positivity
  by_contra h
  have hv : 0 ≤ (actualBilateralCorrelationTransform (actualPrescribedScaleSequence n)
      actualStrictRightMode).re := le_of_not_gt h
  have hh := mul_nonneg hp.le hv
  linarith

/-- No eventual all-source-scale right-line nonnegative kernel rule can hold. -/
theorem actualStrictRightKernel_negative_beyond (R : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧
      (actualBilateralCorrelationTransform A actualStrictRightMode).re < 0 := by
  obtain ⟨n, hn, hR, hA⟩ :=
    (actualStrictRightKernel_eventually_negative.and
      ((actualPrescribedScaleSequence_tendsto.eventually_ge_atTop R).and
      (actualPrescribedScaleSequence_tendsto.eventually_ge_atTop 1))).exists
  exact ⟨actualPrescribedScaleSequence n, hR, hA, hn⟩

end
end FormalResearch.RiemannHypothesis.ActualStrictRightKernelNegativeSequence
