-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PlainModelDerivative.Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PlainModelDerivative.Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/descendant-incremental-20261006T223836Z/source-references/d2dc59e7dba22660252f/SourceSamplingRemainder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePositiveSampling

/-!
# Pointwise derivative remainders for actual positive-axis source sampling

The retained sampling model uses the constant and linear source correlation
coefficients. The actual curvature bound controls the derivative error before
fractional-part integration. Negative logarithms below one are retained.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PlainModelDerivative.Variant4e9cd48d590c0c87cf26b2a1c78a870137cb0dcc1399e7f1362229f13849bce4

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSamplingRemainder

open MeasureTheory Set
open SourcePairing SourceSamplingTaylor SourcePositiveSampling SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- The retained plain model's derivative in positive multiplicative coordinates. -/
noncomputable def plainModelDerivative (A k u : ℝ) : ℝ :=
  1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
    (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k) -
      (sourceCorrelation explicitSecondDerivative A (Real.log k) +
        Real.log u * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) / 2)

/-- The retained logarithmic model's derivative keeps the sampled logarithm. -/
noncomputable def logModelDerivative (A k u : ℝ) : ℝ :=
  1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
    ((1 - Real.log u / 2) *
      (sourceCorrelation explicitSecondDerivative A (Real.log k) +
        Real.log u * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) +
      Real.log u * deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k))

/-- The actual exponential derivative density is the exact `k⁻¹ᐟ² u⁻³ᐟ²` density. -/
theorem samplingDerivative_prefactor {k u : ℝ} (hk : 0 < k) (hu : 0 < u) :
    Real.exp (-(Real.log k + Real.log u) / 2) / u =
      1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by
  have hi : u⁻¹ = Real.exp (-Real.log u) := by rw [Real.exp_neg, Real.exp_log hu]
  have hh : 1 / Real.sqrt k = Real.exp (-Real.log k / 2) := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hk]
    simp only [one_div]
  rw [div_eq_mul_inv, hi, hh, Real.rpow_def_of_pos hu, ← Real.exp_add, ← Real.exp_add]
  congr 1
  ring

/-- The plain derivative error is the exact scaled Taylor remainder derivative. -/
theorem plain_derivative_difference {A k u : ℝ} (hA : 1 ≤ A) (hk : 0 < k)
    (hu : 0 < u) :
    deriv (plainProfile A k) u - plainModelDerivative A k u =
      1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
        ((deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)) -
          correlationTaylorRemainder A (Real.log k) (Real.log u) / 2) := by
  rw [(plainProfile_hasDerivAt (by linarith) k hu).deriv, samplingDerivative_prefactor hk hu]
  unfold plainModelDerivative correlationTaylorRemainder
  ring

/-- The logarithmic derivative error has the exact signed Taylor remainder formula. -/
theorem log_derivative_difference {A k u : ℝ} (hA : 1 ≤ A) (hk : 0 < k)
    (hu : 0 < u) :
    deriv (logProfile A k) u - logModelDerivative A k u =
      1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) *
        ((1 - Real.log u / 2) * correlationTaylorRemainder A (Real.log k) (Real.log u) +
          Real.log u *
            (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
              deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k))) := by
  rw [(logProfile_hasDerivAt (by linarith) k hu).deriv, samplingDerivative_prefactor hk hu]
  unfold logModelDerivative correlationTaylorRemainder
  ring

/-- Curvature bounds the actual plain derivative error at every positive sampled variable. -/
theorem plain_derivative_difference_abs_le {A k u : ℝ} (hA : 1 ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |deriv (plainProfile A k) u - plainModelDerivative A k u| ≤
      (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        (|Real.log u| + (Real.log u) ^ 2 / 4) := by
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  rw [plain_derivative_difference hA hk hu, abs_mul, abs_of_nonneg hweight]
  have hR := correlationTaylorRemainder_abs_le hA (Real.log k) (Real.log u)
  have hd := sourceCorrelation_deriv_increment_bound hA (Real.log k) (Real.log u)
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)| +
          |correlationTaylorRemainder A (Real.log k) (Real.log u)| / 2) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
        abs_sub
          (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k))
          (correlationTaylorRemainder A (Real.log k) (Real.log u) / 2)
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (162826 / (7623 * A ^ 2) * |Real.log u| +
          (162826 / (7623 * A ^ 2) * (Real.log u) ^ 2 / 2) / 2) := by
      gcongr
    _ = _ := by ring

/-- Curvature bounds the logarithmic derivative error without discarding negative logarithms. -/
theorem log_derivative_difference_abs_le {A k u : ℝ} (hA : 1 ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |deriv (logProfile A k) u - logModelDerivative A k u| ≤
      (162826 / 7623 : ℝ) / (A ^ 2 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        (3 / 2 * (Real.log u) ^ 2 + |Real.log u| ^ 3 / 4) := by
  have hweight : 0 ≤ 1 / Real.sqrt k * u ^ (-3 / 2 : ℝ) := by positivity
  have hR := correlationTaylorRemainder_abs_le hA (Real.log k) (Real.log u)
  have hd := sourceCorrelation_deriv_increment_bound hA (Real.log k) (Real.log u)
  have hy : |1 - Real.log u / 2| ≤ 1 + |Real.log u| / 2 := by
    simpa only [abs_one, abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
      abs_sub (1 : ℝ) (Real.log u / 2)
  rw [log_derivative_difference hA hk hu, abs_mul, abs_of_nonneg hweight]
  calc
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        (|1 - Real.log u / 2| * |correlationTaylorRemainder A (Real.log k) (Real.log u)| +
          |Real.log u| *
            |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
              deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)|) := by
      apply mul_le_mul_of_nonneg_left _ hweight
      simpa only [abs_mul] using abs_add_le
        ((1 - Real.log u / 2) * correlationTaylorRemainder A (Real.log k) (Real.log u))
        (Real.log u *
          (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k + Real.log u) -
            deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)))
    _ ≤ (1 / Real.sqrt k * u ^ (-3 / 2 : ℝ)) *
        ((1 + |Real.log u| / 2) *
          (162826 / (7623 * A ^ 2) * (Real.log u) ^ 2 / 2) +
          |Real.log u| * (162826 / (7623 * A ^ 2) * |Real.log u|)) := by
      gcongr
    _ = _ := by rw [← sq_abs (Real.log u)]; ring

end FormalResearch.RiemannHypothesis.SourceSamplingRemainder
