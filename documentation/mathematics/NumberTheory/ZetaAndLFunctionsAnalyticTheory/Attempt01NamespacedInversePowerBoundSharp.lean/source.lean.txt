-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InversePowerBoundSharp.Variantb48d10b15f24bbfb02c8c5b5d4bd0f1c218a455bc9ad9cd9ba82e60f0f34669b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b48d10b15f24bbfb02c8c5b5d4bd0f1c218a455bc9ad9cd9ba82e60f0f34669b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.InversePowerBoundSharp.Variantb48d10b15f24bbfb02c8c5b5d4bd0f1c218a455bc9ad9cd9ba82e60f0f34669b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b48d10b15f24bbfb02c8c5b5d4bd0f1c218a455bc9ad9cd9ba82e60f0f34669b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/complex_paths/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ComplexBoundaryRate

/-! Actual two-endpoint source bounds and admissible variable complex paths.
grwtsk contributors's originating direction; OpenAI Codex scratch construction.
No zero-set occurrence or signed arithmetic budget is inferred. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InversePowerBoundSharp.Variantb48d10b15f24bbfb02c8c5b5d4bd0f1c218a455bc9ad9cd9ba82e60f0f34669b

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ComplexBoundaryPaths
open Filter Complex
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open ContinuousResearch.ComplexBoundaryAsymptotic
open ContinuousResearch.ComplexBoundaryRate

/-- Inverse endpoint powers before any A^-n to A^-1 simplification. -/
theorem inverse_power_bound_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (n : ℕ) :
    ‖(1 : ℂ)/((A : ℂ)*z)^n‖ ≤ 1/(A*delta)^n := by
  have hp : 0 < A := by linarith
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  rw [norm_div,norm_one,norm_pow,norm_mul,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hp]
  gcongr

theorem positiveEndpoint_error_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖positiveEndpoint A z-1‖ ≤ errorPolynomial (A*delta) := by
  have h1 := inverse_power_bound_sharp hA hdelta hz 1
  have h2 := inverse_power_bound_sharp hA hdelta hz 2
  have h3 := inverse_power_bound_sharp hA hdelta hz 3
  have h4 := inverse_power_bound_sharp hA hdelta hz 4
  simp only [pow_one] at h1
  have he : positiveEndpoint A z-1 =
      -10*((1 : ℂ)/((A : ℂ)*z))+45*((1 : ℂ)/((A : ℂ)*z)^2)-
        105*((1 : ℂ)/((A : ℂ)*z)^3)+105*((1 : ℂ)/((A : ℂ)*z)^4) := by
    unfold positiveEndpoint
    ring
  rw [he]
  calc
    _ ≤ ‖-10*((1 : ℂ)/((A : ℂ)*z))‖+‖45*((1 : ℂ)/((A : ℂ)*z)^2)‖+
        ‖105*((1 : ℂ)/((A : ℂ)*z)^3)‖+‖105*((1 : ℂ)/((A : ℂ)*z)^4)‖ := by
      have ht1 := norm_add_le (-10*((1 : ℂ)/((A : ℂ)*z)))
        (45*((1 : ℂ)/((A : ℂ)*z)^2))
      have ht2 := norm_sub_le (-10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)) (105*((1 : ℂ)/((A : ℂ)*z)^3))
      have ht3 := norm_add_le (-10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)-105*((1 : ℂ)/((A : ℂ)*z)^3))
        (105*((1 : ℂ)/((A : ℂ)*z)^4))
      linarith
    _ = 10*‖(1 : ℂ)/((A : ℂ)*z)‖+45*‖(1 : ℂ)/((A : ℂ)*z)^2‖+
        105*‖(1 : ℂ)/((A : ℂ)*z)^3‖+105*‖(1 : ℂ)/((A : ℂ)*z)^4‖ := by
      norm_num [norm_mul]
    _ ≤ 10*(1/(A*delta))+45*(1/(A*delta)^2)+105*(1/(A*delta)^3)+
        105*(1/(A*delta)^4) := by gcongr
    _ = _ := by unfold errorPolynomial; ring

theorem reflectedEndpoint_bound_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖reflectedEndpoint A z‖ ≤ 1+errorPolynomial (A*delta) := by
  have h1 := inverse_power_bound_sharp hA hdelta hz 1
  have h2 := inverse_power_bound_sharp hA hdelta hz 2
  have h3 := inverse_power_bound_sharp hA hdelta hz 3
  have h4 := inverse_power_bound_sharp hA hdelta hz 4
  simp only [pow_one] at h1
  have he : reflectedEndpoint A z =
      1+10*((1 : ℂ)/((A : ℂ)*z))+45*((1 : ℂ)/((A : ℂ)*z)^2)+
        105*((1 : ℂ)/((A : ℂ)*z)^3)+105*((1 : ℂ)/((A : ℂ)*z)^4) := by
    unfold reflectedEndpoint
    ring
  rw [he]
  calc
    _ ≤ ‖(1 : ℂ)‖+‖10*((1 : ℂ)/((A : ℂ)*z))‖+‖45*((1 : ℂ)/((A : ℂ)*z)^2)‖+
        ‖105*((1 : ℂ)/((A : ℂ)*z)^3)‖+‖105*((1 : ℂ)/((A : ℂ)*z)^4)‖ := by
      have ht1 := norm_add_le (1 : ℂ) (10*((1 : ℂ)/((A : ℂ)*z)))
      have ht2 := norm_add_le (1+10*((1 : ℂ)/((A : ℂ)*z)))
        (45*((1 : ℂ)/((A : ℂ)*z)^2))
      have ht3 := norm_add_le (1+10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)) (105*((1 : ℂ)/((A : ℂ)*z)^3))
      have ht4 := norm_add_le (1+10*((1 : ℂ)/((A : ℂ)*z))+
        45*((1 : ℂ)/((A : ℂ)*z)^2)+105*((1 : ℂ)/((A : ℂ)*z)^3))
        (105*((1 : ℂ)/((A : ℂ)*z)^4))
      linarith
    _ = 1+10*‖(1 : ℂ)/((A : ℂ)*z)‖+45*‖(1 : ℂ)/((A : ℂ)*z)^2‖+
        105*‖(1 : ℂ)/((A : ℂ)*z)^3‖+105*‖(1 : ℂ)/((A : ℂ)*z)^4‖ := by
      norm_num [norm_mul]
    _ ≤ 1+10*(1/(A*delta))+45*(1/(A*delta)^2)+105*(1/(A*delta)^3)+
        105*(1/(A*delta)^4) := by gcongr
    _ = _ := by unfold errorPolynomial; ring

theorem negative_endpoint_envelope {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖Complex.exp (-2*(A : ℂ)*z)‖ ≤ Real.exp (-2*A*delta) := by
  have hp : 0 < A := by linarith
  rw [Complex.norm_exp]
  have hre : (-2*(A : ℂ)*z).re = -2*A*z.re := by
    norm_num [Complex.mul_re,Complex.mul_im]
  rw [hre]
  apply Real.exp_le_exp.mpr
  nlinarith

theorem actual_normalization_deficit_544 {A : ℝ} (hA : 1 ≤ A) :
    1-normalizationRatio A ≤ 544/A^2 := by
  convert normalizationRatio_deficit hA using 1
  ring

/-- The actual unreduced error bound; delta may vary with A in later consumers. -/
def sharpError (A delta : ℝ) : ℝ :=
  errorPolynomial (A*delta)+Real.exp (-2*A*delta)*(1+errorPolynomial (A*delta))+544/A^2

theorem actual_source_ratio_sharp {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z/leadingCoefficient z-1‖ ≤ sharpError A delta := by
  have hp : 0 < A := by linarith
  have hnz := half_plane_ne_zero (lt_of_lt_of_le hdelta hz)
  have hr := normalizationRatio_bounds hA
  have he : (normalizationRatio A : ℂ)*(positiveEndpoint A z-
      Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)-1 =
      (normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)+
        ((normalizationRatio A : ℂ)-1) := by ring
  have hrnorm : ‖(normalizationRatio A : ℂ)‖ ≤ 1 := by
    rw [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg hr.1]
    exact hr.2
  rw [source_ratio_exact hA hnz hf,he]
  unfold sharpError
  calc
    _ ≤ ‖(normalizationRatio A : ℂ)‖*
        ‖(positiveEndpoint A z-1)-Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z‖+
        ‖(normalizationRatio A : ℂ)-1‖ := by
      simpa only [norm_mul] using norm_add_le
        ((normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
          Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z))
        ((normalizationRatio A : ℂ)-1)
    _ ≤ ‖(positiveEndpoint A z-1)-Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z‖+
        (1-normalizationRatio A) := by
      rw [normalizationRatio_norm_deficit hA]
      nlinarith [norm_nonneg ((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)]
    _ ≤ ‖positiveEndpoint A z-1‖+
        ‖Complex.exp (-2*(A : ℂ)*z)‖*‖reflectedEndpoint A z‖+
        (1-normalizationRatio A) := by
      have ht := norm_sub_le (positiveEndpoint A z-1)
        (Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)
      rw [norm_mul] at ht
      linarith
    _ ≤ _ := by
      gcongr
      · exact positiveEndpoint_error_sharp hA hdelta hz
      · exact negative_endpoint_envelope hA hdelta hz
      · exact reflectedEndpoint_bound_sharp hA hdelta hz
      · exact actual_normalization_deficit_544 hA

end ContinuousResearch.ComplexBoundaryPaths
