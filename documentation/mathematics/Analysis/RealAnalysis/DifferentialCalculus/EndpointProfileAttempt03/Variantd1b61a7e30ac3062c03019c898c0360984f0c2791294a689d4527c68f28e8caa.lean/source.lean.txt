-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointInteriorPolynomial.Variant043d79e7786c98ce3a05eefe843238ccca9ffa9e73d4dc7d4965c18918fc6442","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"043d79e7786c98ce3a05eefe843238ccca9ffa9e73d4dc7d4965c18918fc6442","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.EndpointInteriorPolynomial.Variant043d79e7786c98ce3a05eefe843238ccca9ffa9e73d4dc7d4965c18918fc6442","mathematical_subject":"Analysis.Calculus","original_sha256":"043d79e7786c98ce3a05eefe843238ccca9ffa9e73d4dc7d4965c18918fc6442","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass16/curvature_endpoint/EndpointProfile-attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPhaseCurvature
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-! Leading endpoint profile derived from the literal source polynomial.
The complete correlation endpoint identity and derivative remainders are separate.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointInteriorPolynomial.Variant043d79e7786c98ce3a05eefe843238ccca9ffa9e73d4dc7d4965c18918fc6442

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.EndpointProfile
open MeasureTheory Set
open scoped Interval
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- Exact unnormalized interior at a fixed distance s from the upper source endpoint. -/
def endpointInteriorPolynomial (a s : ℝ) : ℝ :=
  192*s^2-4*s^4+a*(8*s^5-640*s^3)+a^2*(720*s^4-6*s^6)+
    a^3*(2*s^7-336*s^5)+a^4*(56*s^6-s^8/4)

def endpointLeadingSource (s : ℝ) : ℝ := 192*s^2-4*s^4

def endpointLeadingCorrelation (y : ℝ) : ℝ :=
  (8/315:ℝ)*y^5*(y^4-576*y^2+48384)

def endpointLeadingSlope (y : ℝ) : ℝ :=
  (4/315:ℝ)*y^4*(y^5-18*y^4-576*y^3+8064*y^2+48384*y-483840)

def endpointLeadingCurvature (y : ℝ) : ℝ :=
  (2/315:ℝ)*y^3*(y^6-36*y^5-288*y^4+16128*y^3-48384*y^2-967680*y+3870720)

/-- Kernel-checked source identity with the original sqrt normalization retained. -/
theorem actual_interior_endpoint_polynomial {A s : ℝ} (hA : 0<A) :
    (secondInterior A (A-s)-bumpInterior A (A-s)/4)*(A^4*Real.sqrt A)=
      endpointInteriorPolynomial A⁻¹ s := by
  have hne : A≠0 := ne_of_gt hA
  have hsqrt : Real.sqrt A≠0 := ne_of_gt (Real.sqrt_pos.mpr hA)
  dsimp [secondInterior,bumpInterior,endpointInteriorPolynomial]
  field_simp [hne,hsqrt]
  ring

/-- The closed actual source support is checked, rather than an assumed interior adapter. -/
theorem actual_dilation_endpoint_polynomial {A s : ℝ} (hA : 0<A)
    (hs : s∈Icc (0:ℝ) (2*A)) :
    dilationTest explicitSecondDerivative A (A-s)*(A^4*Real.sqrt A)=
      endpointInteriorPolynomial A⁻¹ s := by
  rw [explicit_dilationTest_eq_indicator A hA]
  rw [indicator_of_mem (show A-s∈Icc (-A) A by constructor <;> linarith [hs.1,hs.2])]
  exact actual_interior_endpoint_polynomial hA

theorem endpointInteriorPolynomial_at_zero (s : ℝ) :
    endpointInteriorPolynomial 0 s=endpointLeadingSource s := by
  simp [endpointInteriorPolynomial,endpointLeadingSource]

/-- The leading correlation coefficient is an actual finite polynomial convolution. -/
theorem endpoint_leading_convolution (y : ℝ) :
    (∫ s in 0..y,endpointLeadingSource s*endpointLeadingSource (y-s))=
      endpointLeadingCorrelation y := by
  have he : (fun s : ℝ => endpointLeadingSource s*endpointLeadingSource (y-s))=
    fun s => (36864*y^2-768*y^4)*s^2+(-73728*y+3072*y^3)*s^3+
      (36864-5376*y^2+16*y^4)*s^4+(4608*y-64*y^3)*s^5+
      (-1536+96*y^2)*s^6-64*y*s^7+16*s^8 := by
    funext s
    dsimp [endpointLeadingSource]
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add,intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul,integral_pow]
  dsimp [endpointLeadingCorrelation]
  ring

theorem endpoint_leading_correlation_hasDerivAt (y : ℝ) :
    HasDerivAt endpointLeadingCorrelation
      ((8/35:ℝ)*y^4*(y^4-448*y^2+26880)) y := by
  have hd := (((hasDerivAt_id y).pow 5).mul
    (((((hasDerivAt_id y).pow 4).sub (((hasDerivAt_id y).pow 2).const_mul 576))).add_const 48384)).const_mul (8/315:ℝ)
  convert hd using 1 <;> (try rfl) <;> (try dsimp [endpointLeadingCorrelation]) <;> ring

theorem endpoint_leading_slope_eq (y : ℝ) :
    endpointLeadingSlope y=endpointLeadingCorrelation y/2-deriv endpointLeadingCorrelation y := by
  rw [(endpoint_leading_correlation_hasDerivAt y).deriv]
  dsimp [endpointLeadingSlope,endpointLeadingCorrelation]
  ring

theorem endpoint_leading_slope_hasDerivAt (y : ℝ) :
    HasDerivAt endpointLeadingSlope
      (endpointLeadingSlope y/2-endpointLeadingCurvature y) y := by
  have hi := ((((((hasDerivAt_id y).pow 5).sub
    (((hasDerivAt_id y).pow 4).const_mul 18)).sub
    (((hasDerivAt_id y).pow 3).const_mul 576)).add
    (((hasDerivAt_id y).pow 2).const_mul 8064)).add
    ((hasDerivAt_id y).const_mul 48384)).sub_const 483840
  have hd := (((hasDerivAt_id y).pow 4).mul hi).const_mul (4/315:ℝ)
  convert hd using 1 <;> (try rfl) <;> (try dsimp [endpointLeadingSlope,endpointLeadingCurvature]) <;> ring

theorem endpoint_leading_slope_upper {y : ℝ} (hy : y∈Icc (0:ℝ) 1) :
    endpointLeadingSlope y≤-5000*y^4 := by
  have hpow (k : ℕ) : 0≤y^k ∧ y^k≤1 := ⟨pow_nonneg hy.1 k,pow_le_one₀ hy.1 hy.2⟩
  have hb : y^5-18*y^4-576*y^3+8064*y^2+48384*y-483840≤-393750 := by
    nlinarith [(hpow 5).2,(hpow 4).1,(hpow 3).1,(hpow 2).2]
  have hh := mul_le_mul_of_nonneg_left hb (show 0≤(4/315:ℝ)*y^4 by positivity)
  dsimp [endpointLeadingSlope]
  nlinarith

theorem endpoint_leading_curvature_lower {y : ℝ} (hy : y∈Icc (0:ℝ) 1) :
    16000*y^3≤endpointLeadingCurvature y := by
  have hy0 : 0≤y := hy.1
  have hpow (k : ℕ) : 0≤y^k ∧ y^k≤1 := ⟨pow_nonneg hy.1 k,pow_le_one₀ hy.1 hy.2⟩
  have hb : 2520000≤y^6-36*y^5-288*y^4+16128*y^3-48384*y^2-967680*y+3870720 := by
    nlinarith [(hpow 6).1,(hpow 5).2,(hpow 4).2,(hpow 3).1,(hpow 2).2]
  have hh := mul_le_mul_of_nonneg_left hb (show 0≤(2/315:ℝ)*y^3 by positivity)
  dsimp [endpointLeadingCurvature]
  nlinarith

end ContinuousResearch.EndpointProfile
