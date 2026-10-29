-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ErrorPolynomial.Variant5674edbfaee8038e291b46df42567c36ac0604b6d4ea1fb33115fccba786fa43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5674edbfaee8038e291b46df42567c36ac0604b6d4ea1fb33115fccba786fa43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ErrorPolynomial.Variant5674edbfaee8038e291b46df42567c36ac0604b6d4ea1fb33115fccba786fa43","mathematical_subject":"Topology.GeneralTopology","original_sha256":"5674edbfaee8038e291b46df42567c36ac0604b6d4ea1fb33115fccba786fa43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass14/complex_rate/attempt10.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ComplexBoundaryAsymptotic

/-! Quantitative complex amplitude control for the literal source.
grwtsk contributors's originating direction; OpenAI Codex scratch proof construction.
The actual normalization and both endpoints remain. No arithmetic witness. -/

namespace GRWTSK.Topology.GeneralTopology.ErrorPolynomial.Variant5674edbfaee8038e291b46df42567c36ac0604b6d4ea1fb33115fccba786fa43

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ComplexBoundaryRate
open Complex
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets
open ContinuousResearch.ComplexBoundaryAsymptotic

/-- Error polynomial for the relative endpoint expansion in a positive half-plane. -/
def errorPolynomial (delta : ℝ) : ℝ :=
  10/delta+45/delta^2+105/delta^3+105/delta^4

/-- The literal normalization ratio, separate from the transform ratio. -/
def normalizationRatio (A : ℝ) : ℝ :=
  Real.sqrt (4096/109395 : ℝ)/Real.sqrt (sourceNormalization A)

def positiveEndpoint (A : ℝ) (z : ℂ) : ℂ :=
  1-10/((A : ℂ)*z)+45/((A : ℂ)*z)^2-
    105/((A : ℂ)*z)^3+105/((A : ℂ)*z)^4

def reflectedEndpoint (A : ℝ) (z : ℂ) : ℂ :=
  1+10/((A : ℂ)*z)+45/((A : ℂ)*z)^2+
    105/((A : ℂ)*z)^3+105/((A : ℂ)*z)^4

theorem errorPolynomial_nonneg {delta : ℝ} (hdelta : 0 < delta) :
    0 ≤ errorPolynomial delta := by unfold errorPolynomial; positivity

theorem normalization_bounds {A : ℝ} (hA : 1 ≤ A) :
    (4096/109395 : ℝ) ≤ sourceNormalization A ∧
      sourceNormalization A-(4096/109395 : ℝ) ≤
        (65536/45045+196608/5005)/A^2 := by
  have hp : 0 < A := by linarith
  have h2 : 1 ≤ A^2 := one_le_pow₀ hA
  have h4 : A^2 ≤ A^4 := by nlinarith [sq_nonneg (A^2-1)]
  have ht : (196608/5005 : ℝ)/A^4 ≤ (196608/5005 : ℝ)/A^2 := by
    gcongr
  unfold sourceNormalization
  constructor
  · have hfirst : (0 : ℝ) ≤ (131072/45045)/(2*A^2) := by positivity
    have hlast : (0 : ℝ) ≤ (196608/5005)/A^4 := by positivity
    norm_num only [show (65536/109395 : ℝ)/16 = 4096/109395 by norm_num]
    linarith
  · have he : (65536/109395 : ℝ)/16=4096/109395 := by norm_num
    rw [he]
    have he2 : (131072/45045 : ℝ)/(2*A^2)=(65536/45045 : ℝ)/A^2 := by ring
    rw [he2]
    calc
      _ = (65536/45045 : ℝ)/A^2+(196608/5005 : ℝ)/A^4 := by ring
      _ ≤ (65536/45045 : ℝ)/A^2+(196608/5005 : ℝ)/A^2 := add_le_add_right ht _
      _ = _ := by ring

theorem normalizationRatio_bounds {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ normalizationRatio A ∧ normalizationRatio A ≤ 1 := by
  have hz : 0 < (4096/109395 : ℝ) := by norm_num
  have hp := source_normalization_pos A hA
  have hs := Real.sqrt_le_sqrt (normalization_bounds hA).1
  unfold normalizationRatio
  constructor
  · positivity
  · exact (div_le_one (Real.sqrt_pos.mpr hp)).mpr hs

theorem normalizationRatio_deficit {A : ℝ} (hA : 1 ≤ A) :
    1-normalizationRatio A ≤
      (65536/45045+196608/5005)/(2*(4096/109395)*A^2) := by
  let s := Real.sqrt (sourceNormalization A)
  let s0 := Real.sqrt (4096/109395 : ℝ)
  have hs : 0 < s := Real.sqrt_pos.mpr (source_normalization_pos A hA)
  have hs0 : 0 < s0 := Real.sqrt_pos.mpr (by norm_num)
  have hss : s0 ≤ s := Real.sqrt_le_sqrt (normalization_bounds hA).1
  have hsq : s^2 = sourceNormalization A := Real.sq_sqrt (source_normalization_pos A hA).le
  have hsq0 : s0^2 = (4096/109395 : ℝ) := Real.sq_sqrt (by norm_num)
  have hden : 2*(4096/109395 : ℝ) ≤ s*(s+s0) := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hss) hs0.le]
  have he : 1-normalizationRatio A =
      (sourceNormalization A-(4096/109395 : ℝ))/(s*(s+s0)) := by
    unfold normalizationRatio
    change 1-s0/s = _
    rw [← hsq,← hsq0]
    field_simp
    ring
  rw [he]
  calc
    _ ≤ (sourceNormalization A-(4096/109395 : ℝ))/(2*(4096/109395)) := by
      apply div_le_div_of_nonneg_left
      · exact sub_nonneg.mpr (normalization_bounds hA).1
      · norm_num
      · exact hden
    _ ≤ ((65536/45045+196608/5005)/A^2)/(2*(4096/109395)) := by
      gcongr
      exact (normalization_bounds hA).2
    _ = _ := by ring

theorem source_ratio_exact {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0)
    (hf : z^2-1/4 ≠ 0) :
    scaledAmplitude A z/leadingCoefficient z =
      (normalizationRatio A : ℂ)*(positiveEndpoint A z-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z) := by
  have hp : 0 < A := by linarith
  have ha : (A : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hp.ne'
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  have hs0 : (Real.sqrt (4096/109395 : ℝ) : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (by norm_num)).ne'
  apply (div_eq_iff (leadingCoefficient_ne_zero hz hf)).mpr
  rw [scaledAmplitude_exact hA z hz]
  unfold leadingCoefficient normalizationRatio positiveEndpoint reflectedEndpoint transformPolynomial
  push_cast
  field_simp
  ring

theorem inverse_power_bound {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (n : ℕ) (hn : n ≠ 0) :
    ‖(1 : ℂ)/((A : ℂ)*z)^n‖ ≤ (1/delta^n)/A := by
  have hp : 0 < A := by linarith
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  rw [norm_div,norm_one,norm_pow,norm_mul,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hp]
  calc
    _ ≤ 1/(A*delta)^n := by gcongr
    _ = (1/delta^n)/A^n := by ring
    _ ≤ (1/delta^n)/A := by
      apply div_le_div_of_nonneg_left
      · positivity
      · exact hp
      · exact le_self_pow₀ hA hn

theorem positiveEndpoint_error {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖positiveEndpoint A z-1‖ ≤ errorPolynomial delta/A := by
  have h1 := inverse_power_bound hA hdelta hz 1 (by decide)
  have h2 := inverse_power_bound hA hdelta hz 2 (by decide)
  have h3 := inverse_power_bound hA hdelta hz 3 (by decide)
  have h4 := inverse_power_bound hA hdelta hz 4 (by decide)
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
    _ ≤ 10*((1/delta)/A)+45*((1/delta^2)/A)+105*((1/delta^3)/A)+
        105*((1/delta^4)/A) := by gcongr
    _ = _ := by unfold errorPolynomial; ring

theorem reflectedEndpoint_bound {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖reflectedEndpoint A z‖ ≤ 1+errorPolynomial delta := by
  have h1 := inverse_power_bound hA hdelta hz 1 (by decide)
  have h2 := inverse_power_bound hA hdelta hz 2 (by decide)
  have h3 := inverse_power_bound hA hdelta hz 3 (by decide)
  have h4 := inverse_power_bound hA hdelta hz 4 (by decide)
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
    _ ≤ 1+10*((1/delta)/A)+45*((1/delta^2)/A)+105*((1/delta^3)/A)+
        105*((1/delta^4)/A) := by gcongr
    _ = 1+errorPolynomial delta/A := by unfold errorPolynomial; ring
    _ ≤ _ := by
      apply add_le_add_right
      calc
        _ ≤ errorPolynomial delta/1 := by
          apply div_le_div_of_nonneg_left (errorPolynomial_nonneg hdelta) (by norm_num) hA
        _ = _ := by rw [div_one]

theorem negative_endpoint_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) :
    ‖Complex.exp (-2*(A : ℂ)*z)‖ ≤ 1/(2*delta*A) := by
  have hp : 0 < A := by linarith
  rw [Complex.norm_exp]
  have hre : (-2*(A : ℂ)*z).re = -2*A*z.re := by
    norm_num [Complex.mul_re,Complex.mul_im]
  rw [hre]
  calc
    _ ≤ Real.exp (-2*A*delta) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    _ ≤ 1/(2*delta*A) := by
      apply (le_div_iff₀ (by positivity : 0 < 2*delta*A)).mpr
      have h := Real.mul_exp_neg_le_exp_neg_one (2*delta*A)
      have h1 : Real.exp (-1) ≤ 1 := by
        exact (Real.exp_le_one_iff).mpr (by norm_num)
      rw [show -(2*delta*A) = -2*A*delta by ring] at h
      nlinarith

/-- Explicit uniform relative rate; there is no bound on the imaginary ordinate. -/
def rateConstant (delta : ℝ) : ℝ :=
  errorPolynomial delta+(1+errorPolynomial delta)/(2*delta)+
    (65536/45045+196608/5005)/(2*(4096/109395))

theorem rateConstant_nonneg {delta : ℝ} (hdelta : 0 < delta) :
    0 ≤ rateConstant delta := by
  unfold rateConstant
  have hE := errorPolynomial_nonneg hdelta
  positivity

theorem normalizationRatio_norm_deficit {A : ℝ} (hA : 1 ≤ A) :
    ‖(normalizationRatio A : ℂ)-1‖ = 1-normalizationRatio A := by
  have hr := normalizationRatio_bounds hA
  rw [← Complex.ofReal_one,← Complex.ofReal_sub,Complex.norm_real,
    Real.norm_eq_abs,abs_of_nonpos (sub_nonpos.mpr hr.2)]
  ring

theorem uniform_source_ratio_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z/leadingCoefficient z-1‖ ≤ rateConstant delta/A := by
  have hp : 0 < A := by linarith
  have hnz := half_plane_ne_zero (lt_of_lt_of_le hdelta hz)
  have hr := normalizationRatio_bounds hA
  have hE := errorPolynomial_nonneg hdelta
  have he : (normalizationRatio A : ℂ)*(positiveEndpoint A z-
      Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)-1 =
      (normalizationRatio A : ℂ)*((positiveEndpoint A z-1)-
        Complex.exp (-2*(A : ℂ)*z)*reflectedEndpoint A z)+
        ((normalizationRatio A : ℂ)-1) := by ring
  have hrnorm : ‖(normalizationRatio A : ℂ)‖ ≤ 1 := by
    rw [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg hr.1]
    exact hr.2
  rw [source_ratio_exact hA hnz hf,he]
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
    _ ≤ errorPolynomial delta/A+(1/(2*delta*A))*(1+errorPolynomial delta)+
        (65536/45045+196608/5005)/(2*(4096/109395)*A^2) := by
      gcongr
      · exact positiveEndpoint_error hA hdelta hz
      · exact negative_endpoint_rate hA hdelta hz
      · exact reflectedEndpoint_bound hA hdelta hz
      · exact normalizationRatio_deficit hA
    _ ≤ errorPolynomial delta/A+(1/(2*delta*A))*(1+errorPolynomial delta)+
        (65536/45045+196608/5005)/(2*(4096/109395)*A) := by
      gcongr
      nlinarith [sq_nonneg (A-1)]
    _ = _ := by unfold rateConstant; ring

theorem uniform_source_amplitude_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z-leadingCoefficient z‖ ≤
      ‖leadingCoefficient z‖*rateConstant delta/A := by
  have hc := leadingCoefficient_ne_zero (half_plane_ne_zero (lt_of_lt_of_le hdelta hz)) hf
  have he : scaledAmplitude A z-leadingCoefficient z =
      leadingCoefficient z*(scaledAmplitude A z/leadingCoefficient z-1) := by
    field_simp
  rw [he,norm_mul]
  calc
    _ ≤ ‖leadingCoefficient z‖*(rateConstant delta/A) := by
      gcongr
      exact uniform_source_ratio_rate hA hdelta hz hf
    _ = _ := by ring

theorem filter_zero_amplitude {A : ℝ} (hA : 1 ≤ A) {z : ℂ} (hz : z ≠ 0)
    (hf : z^2-1/4 = 0) :
    scaledAmplitude A z = 0 ∧ leadingCoefficient z = 0 := by
  constructor
  · rw [scaledAmplitude_exact hA z hz,hf]
    simp
  · unfold leadingCoefficient
    rw [hf]
    simp

/-- Absolute amplitude error also includes the exact pole-filter zero. -/
theorem uniform_source_amplitude_rate_all {A delta : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {z : ℂ} (hz : delta ≤ z.re) :
    ‖scaledAmplitude A z-leadingCoefficient z‖ ≤
      ‖leadingCoefficient z‖*rateConstant delta/A := by
  by_cases hf : z^2-1/4 ≠ 0
  · exact uniform_source_amplitude_rate hA hdelta hz hf
  · obtain ⟨ht,hc⟩ := filter_zero_amplitude hA
      (half_plane_ne_zero (lt_of_lt_of_le hdelta hz)) (not_ne_iff.mp hf)
    simp [ht,hc]

/-- Absolute coefficient control on a bounded portion of the positive half-plane. -/
def coefficientBound (delta M : ℝ) : ℝ :=
  384*(M^2+1/4)/(Real.sqrt (4096/109395 : ℝ)*delta^5)

theorem leadingCoefficient_bound {delta M : ℝ} (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hM : ‖z‖ ≤ M) :
    ‖leadingCoefficient z‖ ≤ coefficientBound delta M := by
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  have hs : 0 < Real.sqrt (4096/109395 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hnum : ‖z^2-(1/4 : ℂ)‖ ≤ M^2+1/4 := by
    calc
      _ ≤ ‖z^2‖+‖(1/4 : ℂ)‖ := norm_sub_le _ _
      _ = ‖z‖^2+1/4 := by norm_num [norm_pow]
      _ ≤ _ := by gcongr
  unfold leadingCoefficient coefficientBound
  rw [norm_div,norm_mul,norm_mul,norm_pow,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hs]
  norm_num
  gcongr

theorem compact_source_amplitude_rate {A delta M : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {z : ℂ} (hz : delta ≤ z.re) (hM : ‖z‖ ≤ M) :
    ‖scaledAmplitude A z-leadingCoefficient z‖ ≤
      coefficientBound delta M*rateConstant delta/A := by
  have hK := rateConstant_nonneg hdelta
  calc
    _ ≤ ‖leadingCoefficient z‖*rateConstant delta/A :=
      uniform_source_amplitude_rate_all hA hdelta hz
    _ ≤ _ := by
      gcongr
      exact leadingCoefficient_bound hdelta hz hM

/-- Ordinary-square error, before its literal full boundary transform consumer. -/
theorem uniform_source_square_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hf : z^2-1/4 ≠ 0) :
    ‖scaledAmplitude A z^2-leadingCoefficient z^2‖ ≤
      ‖leadingCoefficient z‖^2*(rateConstant delta^2+2*rateConstant delta)/A := by
  let r := scaledAmplitude A z/leadingCoefficient z
  have hc := leadingCoefficient_ne_zero (half_plane_ne_zero (lt_of_lt_of_le hdelta hz)) hf
  have hK := rateConstant_nonneg hdelta
  have hp : 0 < A := by linarith
  have hr : ‖r-1‖ ≤ rateConstant delta/A := uniform_source_ratio_rate hA hdelta hz hf
  have hrp : ‖r+1‖ ≤ rateConstant delta/A+2 := by
    have he : r+1=(r-1)+(2 : ℂ) := by ring
    rw [he]
    have ht := norm_add_le (r-1) (2 : ℂ)
    norm_num only [Complex.norm_ofNat] at ht
    linarith
  have he : scaledAmplitude A z^2-leadingCoefficient z^2 =
      leadingCoefficient z^2*((r-1)*(r+1)) := by
    dsimp [r]
    field_simp
    ring
  rw [he,norm_mul,norm_mul,norm_pow]
  calc
    _ ≤ ‖leadingCoefficient z‖^2*((rateConstant delta/A)*(rateConstant delta/A+2)) := by
      gcongr
    _ = ‖leadingCoefficient z‖^2*(rateConstant delta^2/A^2+2*rateConstant delta/A) := by ring
    _ ≤ ‖leadingCoefficient z‖^2*(rateConstant delta^2/A+2*rateConstant delta/A) := by
      gcongr
      nlinarith [sq_nonneg (A-1)]
    _ = _ := by ring

theorem uniform_source_square_rate_all {A delta : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {z : ℂ} (hz : delta ≤ z.re) :
    ‖scaledAmplitude A z^2-leadingCoefficient z^2‖ ≤
      ‖leadingCoefficient z‖^2*(rateConstant delta^2+2*rateConstant delta)/A := by
  by_cases hf : z^2-1/4 ≠ 0
  · exact uniform_source_square_rate hA hdelta hz hf
  · obtain ⟨ht,hc⟩ := filter_zero_amplitude hA
      (half_plane_ne_zero (lt_of_lt_of_le hdelta hz)) (not_ne_iff.mp hf)
    simp [ht,hc]

theorem boundary_transform_rate {A delta : ℝ} (hA : 1 ≤ A) (hdelta : 0 < delta)
    {lambda : ℂ} (hz : delta ≤ (lambda+1/2).re) :
    ‖ContinuousResearch.SourceBoundaryTransform.boundaryTransform A lambda-
        (-lambda*leadingCoefficient (lambda+1/2)^2)‖ ≤
      ‖lambda‖*‖leadingCoefficient (lambda+1/2)‖^2*
        (rateConstant delta^2+2*rateConstant delta)/A := by
  rw [boundary_eq_scaledAmplitude hA]
  have he : -lambda*scaledAmplitude A (lambda+1/2)^2-
      (-lambda*leadingCoefficient (lambda+1/2)^2) =
      -lambda*(scaledAmplitude A (lambda+1/2)^2-leadingCoefficient (lambda+1/2)^2) := by ring
  rw [he,norm_mul,norm_neg]
  calc
    _ ≤ ‖lambda‖*(‖leadingCoefficient (lambda+1/2)‖^2*
        (rateConstant delta^2+2*rateConstant delta)/A) := by
      gcongr
      exact uniform_source_square_rate_all hA hdelta hz
    _ = _ := by ring

theorem actual_complex_amplitude_rate {A delta : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {z : ℂ} (hz : delta ≤ z.re) :
    ‖((A^(9/2 : ℝ) : ℝ) : ℂ)*Complex.exp (-(A : ℂ)*z)*
        ContinuousResearch.SourceBoundaryTransform.normalizedTransform A z-leadingCoefficient z‖ ≤
      ‖leadingCoefficient z‖*rateConstant delta/A := by
  rw [amplitude_scale_rpow (show 0 < A by linarith)]
  exact uniform_source_amplitude_rate_all hA hdelta hz

theorem compact_boundary_transform_rate {A delta M : ℝ} (hA : 1 ≤ A)
    (hdelta : 0 < delta) {lambda : ℂ} (hz : delta ≤ (lambda+1/2).re)
    (hM : ‖lambda‖ ≤ M) :
    ‖ContinuousResearch.SourceBoundaryTransform.boundaryTransform A lambda-
        (-lambda*leadingCoefficient (lambda+1/2)^2)‖ ≤
      M*(coefficientBound delta (M+1/2))^2*
        (rateConstant delta^2+2*rateConstant delta)/A := by
  have hK := rateConstant_nonneg hdelta
  have hm : ‖lambda+(1/2 : ℂ)‖ ≤ M+1/2 := by
    have ht := norm_add_le lambda (1/2 : ℂ)
    norm_num only [norm_div,norm_one,Complex.norm_ofNat] at ht
    linarith
  have hcoef := leadingCoefficient_bound hdelta hz hm
  have hnonneg : 0 ≤ coefficientBound delta (M+1/2) := by
    unfold coefficientBound
    positivity
  calc
    _ ≤ ‖lambda‖*‖leadingCoefficient (lambda+1/2)‖^2*
        (rateConstant delta^2+2*rateConstant delta)/A :=
      boundary_transform_rate hA hdelta hz
    _ ≤ _ := by gcongr

end ContinuousResearch.ComplexBoundaryRate

-- Exact declaration, proof-term and transitive-axiom audit of every public root.
#check ContinuousResearch.ComplexBoundaryRate.errorPolynomial
#print axioms ContinuousResearch.ComplexBoundaryRate.errorPolynomial
#print ContinuousResearch.ComplexBoundaryRate.errorPolynomial
#check ContinuousResearch.ComplexBoundaryRate.normalizationRatio
#print axioms ContinuousResearch.ComplexBoundaryRate.normalizationRatio
#print ContinuousResearch.ComplexBoundaryRate.normalizationRatio
#check ContinuousResearch.ComplexBoundaryRate.positiveEndpoint
#print axioms ContinuousResearch.ComplexBoundaryRate.positiveEndpoint
#print ContinuousResearch.ComplexBoundaryRate.positiveEndpoint
#check ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint
#print axioms ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint
#print ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint
#check ContinuousResearch.ComplexBoundaryRate.errorPolynomial_nonneg
#print axioms ContinuousResearch.ComplexBoundaryRate.errorPolynomial_nonneg
#print ContinuousResearch.ComplexBoundaryRate.errorPolynomial_nonneg
#check ContinuousResearch.ComplexBoundaryRate.normalization_bounds
#print axioms ContinuousResearch.ComplexBoundaryRate.normalization_bounds
#print ContinuousResearch.ComplexBoundaryRate.normalization_bounds
#check ContinuousResearch.ComplexBoundaryRate.normalizationRatio_bounds
#print axioms ContinuousResearch.ComplexBoundaryRate.normalizationRatio_bounds
#print ContinuousResearch.ComplexBoundaryRate.normalizationRatio_bounds
#check ContinuousResearch.ComplexBoundaryRate.normalizationRatio_deficit
#print axioms ContinuousResearch.ComplexBoundaryRate.normalizationRatio_deficit
#print ContinuousResearch.ComplexBoundaryRate.normalizationRatio_deficit
#check ContinuousResearch.ComplexBoundaryRate.source_ratio_exact
#print axioms ContinuousResearch.ComplexBoundaryRate.source_ratio_exact
#print ContinuousResearch.ComplexBoundaryRate.source_ratio_exact
#check ContinuousResearch.ComplexBoundaryRate.inverse_power_bound
#print axioms ContinuousResearch.ComplexBoundaryRate.inverse_power_bound
#print ContinuousResearch.ComplexBoundaryRate.inverse_power_bound
#check ContinuousResearch.ComplexBoundaryRate.positiveEndpoint_error
#print axioms ContinuousResearch.ComplexBoundaryRate.positiveEndpoint_error
#print ContinuousResearch.ComplexBoundaryRate.positiveEndpoint_error
#check ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint_bound
#print axioms ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint_bound
#print ContinuousResearch.ComplexBoundaryRate.reflectedEndpoint_bound
#check ContinuousResearch.ComplexBoundaryRate.negative_endpoint_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.negative_endpoint_rate
#print ContinuousResearch.ComplexBoundaryRate.negative_endpoint_rate
#check ContinuousResearch.ComplexBoundaryRate.rateConstant
#print axioms ContinuousResearch.ComplexBoundaryRate.rateConstant
#print ContinuousResearch.ComplexBoundaryRate.rateConstant
#check ContinuousResearch.ComplexBoundaryRate.rateConstant_nonneg
#print axioms ContinuousResearch.ComplexBoundaryRate.rateConstant_nonneg
#print ContinuousResearch.ComplexBoundaryRate.rateConstant_nonneg
#check ContinuousResearch.ComplexBoundaryRate.normalizationRatio_norm_deficit
#print axioms ContinuousResearch.ComplexBoundaryRate.normalizationRatio_norm_deficit
#print ContinuousResearch.ComplexBoundaryRate.normalizationRatio_norm_deficit
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_ratio_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_ratio_rate
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_ratio_rate
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate
#check ContinuousResearch.ComplexBoundaryRate.filter_zero_amplitude
#print axioms ContinuousResearch.ComplexBoundaryRate.filter_zero_amplitude
#print ContinuousResearch.ComplexBoundaryRate.filter_zero_amplitude
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate_all
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate_all
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_amplitude_rate_all
#check ContinuousResearch.ComplexBoundaryRate.coefficientBound
#print axioms ContinuousResearch.ComplexBoundaryRate.coefficientBound
#print ContinuousResearch.ComplexBoundaryRate.coefficientBound
#check ContinuousResearch.ComplexBoundaryRate.leadingCoefficient_bound
#print axioms ContinuousResearch.ComplexBoundaryRate.leadingCoefficient_bound
#print ContinuousResearch.ComplexBoundaryRate.leadingCoefficient_bound
#check ContinuousResearch.ComplexBoundaryRate.compact_source_amplitude_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.compact_source_amplitude_rate
#print ContinuousResearch.ComplexBoundaryRate.compact_source_amplitude_rate
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate
#check ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate_all
#print axioms ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate_all
#print ContinuousResearch.ComplexBoundaryRate.uniform_source_square_rate_all
#check ContinuousResearch.ComplexBoundaryRate.boundary_transform_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.boundary_transform_rate
#print ContinuousResearch.ComplexBoundaryRate.boundary_transform_rate
#check ContinuousResearch.ComplexBoundaryRate.actual_complex_amplitude_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.actual_complex_amplitude_rate
#print ContinuousResearch.ComplexBoundaryRate.actual_complex_amplitude_rate
#check ContinuousResearch.ComplexBoundaryRate.compact_boundary_transform_rate
#print axioms ContinuousResearch.ComplexBoundaryRate.compact_boundary_transform_rate
#print ContinuousResearch.ComplexBoundaryRate.compact_boundary_transform_rate
