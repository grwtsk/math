import FormalResearch.RiemannHypothesis.Conversation.BranchDyadicGap
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Group.Measure
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Analysis.Normed.Operator.Completeness

/-!
# The gap on the genuine real L² translation carrier

Batch 36, native prime-two coercivity. Translation is the actual Haar-measure
preserving map x ↦ x - log 2 on the real line. Its norm preservation is proved
by Mathlib, rather than supplied as an arithmetic or source-metric hypothesis.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchNativeTranslationGap
open MeasureTheory
open BranchDyadicGap

/-- The source space in this module, with the following exact parameterization.

abbrev SourceSpace : Type := Lp ℝ 2 (volume : Measure ℝ)
-/
abbrev SourceSpace : Type := Lp ℝ 2 (volume : Measure ℝ)

/-- The translation in this module, with the following exact parameterization.

def translation (h : ℝ) : SourceSpace →ₗ[ℝ] SourceSpace := Lp.compMeasurePreservingₗ ℝ (fun x
: ℝ ↦ x - h) (measurePreserving_sub_right volume h)
-/
def translation (h : ℝ) : SourceSpace →ₗ[ℝ] SourceSpace :=
  Lp.compMeasurePreservingₗ ℝ (fun x : ℝ ↦ x - h)
    (measurePreserving_sub_right volume h)

theorem translation_norm (h : ℝ) (f : SourceSpace) : ‖translation h f‖ = ‖f‖ :=
  Lp.norm_compMeasurePreserving f (measurePreserving_sub_right volume h)

theorem translation_realization (h : ℝ) (f : SourceSpace) :
    (translation h f : ℝ → ℝ) =ᵐ[volume] fun x ↦ f (x - h) :=
  Lp.coeFn_compMeasurePreserving f (measurePreserving_sub_right volume h)

/-- The prime two difference in this module, with the following exact parameterization.

def primeTwoDifference (f : SourceSpace) : SourceSpace := difference theta (translation
(Real.log 2)) f
-/
def primeTwoDifference (f : SourceSpace) : SourceSpace :=
  difference theta (translation (Real.log 2)) f

theorem native_exact_energy (f : SourceSpace) :
    ‖primeTwoDifference f‖ ^ 2 = gap * ‖f‖ ^ 2 +
      theta * ‖f - translation (Real.log 2) f‖ ^ 2 := by
  rw [primeTwoDifference, exact_energy _ _ _ (translation_norm _ _), gap_identity]

theorem native_lower_norm (f : SourceSpace) :
    (1 - theta) * ‖f‖ ≤ ‖primeTwoDifference f‖ :=
  lower_norm theta theta_positive.le _ f (translation_norm _ _)

theorem native_upper_norm (f : SourceSpace) :
    ‖primeTwoDifference f‖ ≤ (1 + theta) * ‖f‖ :=
  upper_norm theta theta_positive.le _ f (translation_norm _ _)

theorem native_gap (f : SourceSpace) : gap * ‖f‖ ^ 2 ≤ ‖primeTwoDifference f‖ ^ 2 :=
  prime_two_energy _ f (translation_norm _ _)

theorem native_kernel_zero (f : SourceSpace) (hf : primeTwoDifference f = 0) : f = 0 :=
  kernel_zero theta theta_positive.le theta_lt_one _ (translation_norm _) f hf

/-- The continuous translation in this module, with the following exact parameterization.

def continuousTranslation (h : ℝ) : SourceSpace →L[ℝ] SourceSpace := (translation
h).mkContinuous 1 (by intro f; simp [translation_norm])
-/
def continuousTranslation (h : ℝ) : SourceSpace →L[ℝ] SourceSpace :=
  (translation h).mkContinuous 1 (by intro f; simp [translation_norm])

theorem continuous_translation_apply (h : ℝ) (f : SourceSpace) :
    continuousTranslation h f = translation h f := rfl

theorem continuous_translation_norm_le (h : ℝ) : ‖continuousTranslation h‖ ≤ 1 := by
  exact LinearMap.mkContinuous_norm_le _ zero_le_one _

/-- The weighted translation in this module, with the following exact parameterization.

def weightedTranslation : SourceSpace →L[ℝ] SourceSpace := theta • continuousTranslation
(Real.log 2)
-/
def weightedTranslation : SourceSpace →L[ℝ] SourceSpace :=
  theta • continuousTranslation (Real.log 2)

theorem weighted_translation_norm_le : ‖weightedTranslation‖ ≤ theta := by
  rw [weightedTranslation, norm_smul, Real.norm_eq_abs, abs_of_pos theta_positive]
  simpa using mul_le_mul_of_nonneg_left
    (continuous_translation_norm_le (Real.log 2)) theta_positive.le

theorem weighted_translation_norm_lt_one : ‖weightedTranslation‖ < 1 :=
  lt_of_le_of_lt weighted_translation_norm_le theta_lt_one

/-- The native inverse is the convergent Neumann series in the operator norm. -/
def inverse : SourceSpace →L[ℝ] SourceSpace := ∑' n : ℕ, weightedTranslation ^ n

theorem inverse_hasSum : HasSum (fun n : ℕ ↦ weightedTranslation ^ n) inverse :=
  (summable_geometric_of_norm_lt_one weighted_translation_norm_lt_one).hasSum

theorem inverse_left : inverse * (1 - weightedTranslation) = 1 :=
  geom_series_mul_neg _ weighted_translation_norm_lt_one

theorem inverse_right : (1 - weightedTranslation) * inverse = 1 :=
  mul_neg_geom_series _ weighted_translation_norm_lt_one

theorem inverse_of_difference (f : SourceSpace) : inverse (primeTwoDifference f) = f := by
  have h := congrArg (fun S : SourceSpace →L[ℝ] SourceSpace ↦ S f) inverse_left
  simpa [mul_apply_eq_comp, weightedTranslation, continuousTranslation,
    primeTwoDifference, difference] using h

theorem difference_of_inverse (f : SourceSpace) : primeTwoDifference (inverse f) = f := by
  have h := congrArg (fun S : SourceSpace →L[ℝ] SourceSpace ↦ S f) inverse_right
  simpa [mul_apply_eq_comp, weightedTranslation, continuousTranslation,
    primeTwoDifference, difference] using h

theorem inverse_norm_le : ‖inverse‖ ≤ (1 - theta)⁻¹ := by
  have h := tsum_geometric_le_of_norm_lt_one weightedTranslation
    weighted_translation_norm_lt_one
  have hi : ‖(1 : SourceSpace →L[ℝ] SourceSpace)‖ ≤ 1 := ContinuousLinearMap.norm_id_le
  have hinv : (1 - ‖weightedTranslation‖)⁻¹ ≤ (1 - theta)⁻¹ := by
    apply inv_anti₀ (sub_pos.mpr theta_lt_one)
    linarith [weighted_translation_norm_le]
  change ‖∑' n : ℕ, weightedTranslation ^ n‖ ≤ _
  linarith

theorem inverse_value_norm_le (f : SourceSpace) :
    ‖inverse f‖ ≤ (1 - theta)⁻¹ * ‖f‖ :=
  (inverse.le_opNorm f).trans (mul_le_mul_of_nonneg_right inverse_norm_le (norm_nonneg f))

theorem weighted_translation_power (n : ℕ) :
    weightedTranslation ^ n = theta ^ n • continuousTranslation (Real.log 2) ^ n := by
  simp [weightedTranslation, smul_pow]

theorem inverse_explicit_hasSum :
    HasSum (fun n : ℕ ↦ theta ^ n • continuousTranslation (Real.log 2) ^ n) inverse := by
  simpa only [weighted_translation_power] using inverse_hasSum

theorem native_difference_bijective : Function.Bijective primeTwoDifference := by
  constructor
  · exact (show Function.LeftInverse inverse primeTwoDifference from
      inverse_of_difference).injective
  · intro f
    exact ⟨inverse f, difference_of_inverse f⟩

end FormalResearch.RiemannHypothesis.Conversation.BranchNativeTranslationGap
