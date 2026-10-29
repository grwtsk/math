-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.SourcePolynomialBracket.Variante353c4b7636ceff011b00daf99b599e03a15cbc3376552ffcc5bdeadf7757c98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e353c4b7636ceff011b00daf99b599e03a15cbc3376552ffcc5bdeadf7757c98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.SourcePolynomialBracket.Variante353c4b7636ceff011b00daf99b599e03a15cbc3376552ffcc5bdeadf7757c98","mathematical_subject":"Algebra.Polynomials","original_sha256":"e353c4b7636ceff011b00daf99b599e03a15cbc3376552ffcc5bdeadf7757c98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeSourceTailMajorant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeZeroTailInputs
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp

/-!
Exact source transform absolute estimate. This concerns the actual normalized
ordinary complex square only through its norm; its signed explicit-formula
summand is unchanged. No zero-count theorem or RH assumption is used.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.Algebra.CommutativeAlgebra.SourcePolynomialBracket.Variante353c4b7636ceff011b00daf99b599e03a15cbc3376552ffcc5bdeadf7757c98

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets

def sourcePolynomialBracket (x : ℝ) : ℝ :=
  1 + 10/x + 45/x^2 + 105/x^3 + 105/x^4

private theorem polynomial_triangle (t : ℂ) :
    ‖transformPolynomial t‖ ≤
      ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 + 105 * ‖t‖ + 105 := by
  unfold transformPolynomial
  calc
    _ ≤ ‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t‖ + ‖(105 : ℂ)‖ := norm_add_le _ _
    _ ≤ (‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2‖ + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
      gcongr
      exact norm_sub_le _ _
    _ ≤ ((‖t ^ 4 - 10 * t ^ 3‖ + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
      gcongr
      exact norm_add_le _ _
    _ ≤ (((‖t ^ 4‖ + ‖10 * t ^ 3‖) + ‖45 * t ^ 2‖) + ‖105 * t‖) + ‖(105 : ℂ)‖ := by
      gcongr
      exact norm_sub_le _ _
    _ = _ := by norm_num [norm_mul, norm_pow]

theorem transform_polynomial_sharp_budget (t : ℂ) (x : ℝ) (hx : 0 < x)
    (hxt : x ≤ ‖t‖) :
    ‖transformPolynomial t‖ ≤ ‖t‖ ^ 4 * sourcePolynomialBracket x := by
  have ht : 0 < ‖t‖ := hx.trans_le hxt
  have hbracket : sourcePolynomialBracket ‖t‖ ≤ sourcePolynomialBracket x := by
    unfold sourcePolynomialBracket
    gcongr
  calc
    _ ≤ ‖t‖^4 + 10*‖t‖^3 + 45*‖t‖^2 + 105*‖t‖ + 105 := polynomial_triangle t
    _ = ‖t‖^4 * sourcePolynomialBracket ‖t‖ := by
      unfold sourcePolynomialBracket
      field_simp
    _ ≤ _ := mul_le_mul_of_nonneg_left hbracket (pow_nonneg (norm_nonneg t) 4)

private theorem exponential_sum_strip (A : ℝ) (hA : 0 < A) (z : ℂ)
    (hz : -(1/2 : ℝ) ≤ z.re ∧ z.re ≤ 1/2) :
    ‖Complex.exp ((A : ℂ) * z)‖ + ‖Complex.exp (-(A : ℂ) * z)‖ ≤
      Real.exp (A/2) + Real.exp (-(A/2)) := by
  have habs : |A * z.re| ≤ |A/2| := by
    rw [abs_of_pos (by positivity : 0 < A/2), abs_le]
    constructor <;> nlinarith [hz.1, hz.2]
  have hc := Real.cosh_le_cosh.mpr habs
  rw [Real.cosh_eq, Real.cosh_eq] at hc
  simp only [Complex.norm_exp, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    Complex.neg_re, Complex.neg_im, neg_zero, zero_mul, sub_zero]
  have hn : (-A) * z.re = -(A * z.re) := by ring
  rw [hn]
  linarith

private theorem source_factor_sharp_budget (z : ℂ) (T : ℝ) (hT : 0 < T)
    (hz : T ≤ ‖z‖) :
    ‖z^2 - 1/4‖ ≤ ‖z‖^2 * (1 + 1/(4*T^2)) := by
  have hp : T^2 ≤ ‖z‖^2 := pow_le_pow_left₀ hT.le hz 2
  have hq : (1/4 : ℝ) ≤ ‖z‖^2 / (4*T^2) := by
    apply (le_div_iff₀ (by positivity : 0 < 4*T^2)).2
    nlinarith
  calc
    _ ≤ ‖z^2‖ + ‖(1/4 : ℂ)‖ := norm_sub_le _ _
    _ = ‖z‖^2 + (1/4 : ℝ) := by norm_num [norm_pow]
    _ ≤ ‖z‖^2 + ‖z‖^2 / (4*T^2) := add_le_add_right hq _
    _ = _ := by ring

/-- Sharp bilateral norm bound before normalization or replacement of |z| by |gamma|. -/
theorem actual_bilateral_sharp_tail_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 0 < T)
    (z : ℂ) (hz : -(1/2 : ℝ) ≤ z.re ∧ z.re ≤ 1/2) (hTz : T ≤ ‖z‖) :
    ‖bilateralTransform A z‖ ≤
      (Real.exp (A/2) + Real.exp (-(A/2))) * sourceTransformPolynomialBudget (A*T) *
        (1 + 1/(4*T^2)) / (A^4 * Real.sqrt A * ‖z‖^3) := by
  have hApos : 0 < A := by linarith
  have hrpos : 0 < ‖z‖ := hT.trans_le hTz
  have hz0 : z ≠ 0 := norm_pos_iff.mp hrpos
  have hnormA : ‖(A : ℂ)‖ = A := by simp [abs_of_pos hApos]
  have hAz : A*T ≤ ‖(A : ℂ)*z‖ := by
    rw [norm_mul, hnormA]
    exact mul_le_mul_of_nonneg_left hTz hApos.le
  have hp := transform_polynomial_sharp_budget ((A : ℂ)*z) (A*T) (by positivity) hAz
  have hn := transform_polynomial_sharp_budget (-((A : ℂ)*z)) (A*T)
    (by positivity) (by simpa only [norm_neg] using hAz)
  simp only [norm_neg, norm_mul, hnormA] at hp hn
  have hbr : 0 ≤ sourcePolynomialBracket (A*T) := by
    unfold sourcePolynomialBracket
    positivity
  have he := exponential_sum_strip A hApos z hz
  have hnum :
      ‖Complex.exp ((A : ℂ)*z) * transformPolynomial ((A : ℂ)*z) -
        Complex.exp (-(A : ℂ)*z) * transformPolynomial (-(A : ℂ)*z)‖ ≤
      (Real.exp (A/2) + Real.exp (-(A/2))) * ((A*‖z‖)^4 * sourcePolynomialBracket (A*T)) := by
    calc
      _ ≤ ‖Complex.exp ((A : ℂ)*z) * transformPolynomial ((A : ℂ)*z)‖ +
          ‖Complex.exp (-(A : ℂ)*z) * transformPolynomial (-(A : ℂ)*z)‖ := norm_sub_le _ _
      _ ≤ ‖Complex.exp ((A : ℂ)*z)‖ * ((A*‖z‖)^4 * sourcePolynomialBracket (A*T)) +
          ‖Complex.exp (-(A : ℂ)*z)‖ * ((A*‖z‖)^4 * sourcePolynomialBracket (A*T)) := by
        simp only [norm_mul]
        gcongr
        simpa only [neg_mul] using hn
      _ = (‖Complex.exp ((A : ℂ)*z)‖ + ‖Complex.exp (-(A : ℂ)*z)‖) *
          ((A*‖z‖)^4 * sourcePolynomialBracket (A*T)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_right he (mul_nonneg (by positivity) hbr)
  have hf := source_factor_sharp_budget z T hT hTz
  rw [ZeroTransform.actual_transform A hApos z hz0]
  unfold dividedTransform
  rw [ZeroTransform.source_scale A hApos, norm_mul, norm_div, norm_mul, norm_mul, norm_pow]
  norm_num only [Complex.norm_ofNat]
  have hs : ‖((A^8 * Real.sqrt A : ℝ) : ℂ)‖ = A^8 * Real.sqrt A := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
  rw [hs]
  calc
    _ ≤ 384 * (‖z‖^2 * (1 + 1/(4*T^2))) / ((A^8 * Real.sqrt A)*‖z‖^9) *
        ((Real.exp (A/2) + Real.exp (-(A/2))) * ((A*‖z‖)^4 * sourcePolynomialBracket (A*T))) := by
      gcongr
    _ = _ := by
      unfold sourceTransformPolynomialBudget sourcePolynomialBracket
      field_simp

private theorem exponential_sum_square (A : ℝ) :
    (Real.exp (A/2) + Real.exp (-(A/2)))^2 = Real.exp A + 2 + Real.exp (-A) := by
  have hp : Real.exp (A/2)^2 = Real.exp A := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hn : Real.exp (-(A/2))^2 = Real.exp (-A) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hm : Real.exp (A/2) * Real.exp (-(A/2)) = 1 := by
    rw [← Real.exp_add]
    simp
  nlinarith

/-- The actual normalized ordinary-square source satisfies the exact archived
pointwise estimate. The norm is an error budget, not a change of spectral identity. -/
theorem actual_source_absolute_tail_majorant (A T : ℝ) (hA : 1 ≤ A) (hT : 0 < T) :
    SourceAbsoluteTailMajorant A T := by
  intro o ho
  have hApos : 0 < A := by linarith
  have hzpos := source_normalization_pos A hA
  have hTz : T ≤ ‖ZeroObject.shiftedValue o‖ :=
    ho.le.trans (Complex.abs_im_le_norm _)
  have hrpos : 0 < ‖ZeroObject.shiftedValue o‖ := hT.trans_le hTz
  have hb := actual_bilateral_sharp_tail_bound A T hA hT (ZeroObject.shiftedValue o)
    ⟨(ZeroObject.shiftedValue_strip o).1.le, (ZeroObject.shiftedValue_strip o).2.le⟩ hTz
  have hs := pow_le_pow_left₀ (norm_nonneg (bilateralTransform A (ZeroObject.shiftedValue o))) hb 2
  have hnormZ : ‖(sourceNormalization A : ℂ)‖ = sourceNormalization A := by
    rw [Complex.norm_real, Real.norm_eq_abs, abs_of_pos hzpos]
  unfold actualZeroSquareNorm
  rw [normalized_bilateral_square A hA, norm_div, norm_pow, hnormZ]
  calc
    _ ≤ (((Real.exp (A/2) + Real.exp (-(A/2))) * sourceTransformPolynomialBudget (A*T) *
        (1 + 1/(4*T^2)) / (A^4 * Real.sqrt A * ‖ZeroObject.shiftedValue o‖^3))^2 /
          sourceNormalization A) := div_le_div_of_nonneg_right hs hzpos.le
    _ = sourceAbsoluteTailConstant A T / ‖ZeroObject.shiftedValue o‖^6 := by
      unfold sourceAbsoluteTailConstant
      simp only [div_pow, mul_pow, ← pow_mul, Real.sq_sqrt hApos.le, exponential_sum_square]
      field_simp
      ring
    _ ≤ _ := by
      have hk := source_absolute_tail_constant_nonnegative A T hA
      have hg : 0 < |(ZeroObject.shiftedValue o).im| := hT.trans ho
      gcongr
      exact Complex.abs_im_le_norm _

end CommonMeanScratch
