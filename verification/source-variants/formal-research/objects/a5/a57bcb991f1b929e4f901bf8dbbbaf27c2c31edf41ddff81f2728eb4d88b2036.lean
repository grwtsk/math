import scratch.common_mean_20261004.FiveModeActualDictionary
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta

/-!
Actual multiplicity-indexed closed head and strict zero tail. The complete
verified-height premise is named and conditional; it is not a sampled zero table.
Ordinary complex squares remain the summands. No published verification is rerun.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean construction assistance: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Closed head: every multiplicity occurrence and both ordinate signs. -/
def zeroHeadSet (T : ℝ) : Set ZeroObject.ZeroOccurrence :=
  {o | |(ZeroObject.shiftedValue o).im| ≤ T}

/-- Strict omitted tail: a zero exactly at T belongs to the head. -/
def zeroStrictTailSet (T : ℝ) : Set ZeroObject.ZeroOccurrence :=
  {o | T < |(ZeroObject.shiftedValue o).im|}

def actualZeroHead (A T : ℝ) : ℂ :=
  ∑' o : zeroHeadSet T, normalizedBilateral A (ZeroObject.shiftedValue o.val) ^ 2

def actualZeroStrictTail (A T : ℝ) : ℂ :=
  ∑' o : ↑((zeroHeadSet T)ᶜ), normalizedBilateral A (ZeroObject.shiftedValue o.val) ^ 2

theorem zero_head_compl_eq_strict_tail (T : ℝ) :
    (zeroHeadSet T)ᶜ = zeroStrictTailSet T := by
  ext o
  simp only [zeroHeadSet, zeroStrictTailSet, Set.mem_compl_iff, Set.mem_ofPred_eq, not_le]

theorem actual_zero_head_tail_decomposition (A T : ℝ) (hA : 1 ≤ A) :
    spectralValue A = actualZeroHead A T + actualZeroStrictTail A T := by
  exact ((normalized_transform_squares_summable A hA).tsum_subtype_add_tsum_subtype_compl
    (zeroHeadSet T)).symm

theorem actual_matrix_head_tail_decomposition (A T : ℝ) (hA : 1 ≤ A) :
    dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) =
      (actualZeroHead A T).re + (actualZeroStrictTail A T).re := by
  have h := congrArg Complex.re (actual_zero_head_tail_decomposition A T hA)
  rw [actual_spectral_matrix_dictionary A hA] at h
  simpa only [Complex.ofReal_re, Complex.add_re] using h

/-- Complete positive-height verification, retaining every analytic occurrence.
A future Platt--Trudgian representation must supply this literal proposition. -/
def CompletePositiveVerifiedHeight (T : ℝ) : Prop :=
  ∀ o : ZeroObject.ZeroOccurrence, 0 < (ZeroObject.shiftedValue o).im →
    (ZeroObject.shiftedValue o).im ≤ T → (ZeroObject.shiftedValue o).re = 0

/-- Closed two-sided conclusion needed by the head theorem. -/
def CompleteVerifiedHeight (T : ℝ) : Prop :=
  ∀ o : ZeroObject.ZeroOccurrence, |(ZeroObject.shiftedValue o).im| ≤ T →
    (ZeroObject.shiftedValue o).re = 0

theorem complete_verified_height_of_positive (T : ℝ)
    (h : CompletePositiveVerifiedHeight T) : CompleteVerifiedHeight T := by
  intro o ho
  have hn := ZeroObject.shiftedValue_im_ne_zero_of_realZeroExclusion
    ZeroEta.real_zero_exclusion o
  rcases lt_or_gt_of_ne hn with hneg | hpos
  · have hc := h (ZeroObject.conjugateOccurrence o)
    simp only [ZeroObject.shiftedValue_conjugate, Complex.conj_im, Complex.conj_re] at hc
    exact hc (by linarith) (by simpa only [abs_of_neg hneg] using ho)
  · exact h o hpos (by simpa only [abs_of_pos hpos] using ho)

theorem complete_positive_verified_height_mono (T U : ℝ) (hTU : T ≤ U)
    (h : CompletePositiveVerifiedHeight U) : CompletePositiveVerifiedHeight T := by
  intro o hpos hT
  exact h o hpos (hT.trans hTU)

/-- The working cutoff is below the exact published complete verified height. -/
theorem published_height_covers_working_cutoff :
    (3000000000000 : ℝ) ≤ 3000175332800 := by norm_num

/-- This does not prove the external premise at the published height. -/
theorem working_complete_verified_height
    (h : CompletePositiveVerifiedHeight 3000175332800) :
    CompleteVerifiedHeight 3000000000000 :=
  complete_verified_height_of_positive _
    (complete_positive_verified_height_mono _ _ published_height_covers_working_cutoff h)

theorem normalized_bilateral_im_zero_on_imaginary_axis (A ω : ℝ) (hA : 1 ≤ A) :
    (normalizedBilateral A (Complex.I * (ω : ℂ))).im = 0 := by
  rw [normalizedBilateral_eq_actual_integral]
  change (sourceFourier (normalizedTest explicitSecondDerivative A) ω).im = 0
  rw [actual_fourier_reconstruction A hA]
  simp only [Complex.im_sum, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
    mode_fourier_im_zero, mul_zero, zero_mul, add_zero, Finset.sum_const_zero]

theorem normalized_bilateral_im_zero_of_critical (A : ℝ) (hA : 1 ≤ A)
    (z : ℂ) (hz : z.re = 0) : (normalizedBilateral A z).im = 0 := by
  have heq : z = Complex.I * (z.im : ℂ) := by
    apply Complex.ext <;> simp [hz]
  rw [heq]
  exact normalized_bilateral_im_zero_on_imaginary_axis A z.im hA

/-- On the verified head ordinary complex squares are real and nonnegative. -/
theorem actual_zero_head_nonnegative (A T : ℝ) (hA : 1 ≤ A)
    (hT : CompleteVerifiedHeight T) : 0 ≤ (actualZeroHead A T).re := by
  unfold actualZeroHead
  have hs : Summable (fun o : zeroHeadSet T =>
      normalizedBilateral A (ZeroObject.shiftedValue o.val) ^ 2) := by
    simpa only [Function.comp_def] using
      (normalized_transform_squares_summable A hA).subtype (· ∈ zeroHeadSet T)
  rw [Complex.re_tsum hs]
  apply tsum_nonneg
  intro o
  have hz := normalized_bilateral_im_zero_of_critical A hA
    (ZeroObject.shiftedValue o.val) (hT o.val o.property)
  simp only [pow_two, Complex.mul_re, hz, mul_zero, sub_zero]
  exact mul_self_nonneg _

/-- Conjugation of the actual real source transform, at any complex argument. -/
theorem normalized_bilateral_conjugate (A : ℝ) (z : ℂ) :
    normalizedBilateral A (star z) = star (normalizedBilateral A z) := by
  simp only [normalizedBilateral_eq_actual_integral]
  change (∫ x : ℝ, (normalizedTest explicitSecondDerivative A x : ℂ) *
    Complex.exp ((starRingEnd ℂ) z * (x : ℂ))) = (starRingEnd ℂ)
      (∫ x : ℝ, (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp (z * (x : ℂ)))
  rw [← integral_conj]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x => by
    simp only [map_mul, Complex.conj_ofReal, ← Complex.exp_conj]

def actualZeroSquareNorm (A : ℝ) (o : ZeroObject.ZeroOccurrence) : ℝ :=
  ‖normalizedBilateral A (ZeroObject.shiftedValue o) ^ 2‖

theorem actual_zero_square_norm_conjugate (A : ℝ) (o : ZeroObject.ZeroOccurrence) :
    actualZeroSquareNorm A (ZeroObject.conjugateOccurrence o) = actualZeroSquareNorm A o := by
  simp only [actualZeroSquareNorm, ZeroObject.shiftedValue_conjugate]
  change ‖normalizedBilateral A (star (ZeroObject.shiftedValue o)) ^ 2‖ = _
  rw [normalized_bilateral_conjugate, norm_pow, norm_star, norm_pow]

theorem actual_zero_square_norms_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (actualZeroSquareNorm A) :=
  (normalized_transform_squares_summable A hA).norm

def zeroPositiveStrictTailSet (T : ℝ) : Set ZeroObject.ZeroOccurrence :=
  {o | T < (ZeroObject.shiftedValue o).im}

def zeroNegativeStrictTailSet (T : ℝ) : Set ZeroObject.ZeroOccurrence :=
  {o | (ZeroObject.shiftedValue o).im < -T}

def actualAbsoluteZeroTail (A T : ℝ) : ℝ :=
  ∑' o : zeroStrictTailSet T, actualZeroSquareNorm A o.val

def actualPositiveAbsoluteZeroTail (A T : ℝ) : ℝ :=
  ∑' o : zeroPositiveStrictTailSet T, actualZeroSquareNorm A o.val

def actualNegativeAbsoluteZeroTail (A T : ℝ) : ℝ :=
  ∑' o : zeroNegativeStrictTailSet T, actualZeroSquareNorm A o.val

/-- Actual occurrence conjugation preserves multiplicity and exchanges signs. -/
theorem actual_negative_absolute_tail_eq_positive (A T : ℝ) :
    actualNegativeAbsoluteZeroTail A T = actualPositiveAbsoluteZeroTail A T := by
  classical
  unfold actualNegativeAbsoluteZeroTail actualPositiveAbsoluteZeroTail
  rw [tsum_subtype, tsum_subtype]
  rw [← ZeroObject.conjugateEquiv.tsum_eq
    ((zeroNegativeStrictTailSet T).indicator (actualZeroSquareNorm A))]
  apply tsum_congr
  intro o
  change (zeroNegativeStrictTailSet T).indicator (actualZeroSquareNorm A)
    (ZeroObject.conjugateOccurrence o) = _
  simp only [zeroNegativeStrictTailSet, zeroPositiveStrictTailSet, Set.indicator,
    Set.mem_ofPred_eq, ZeroObject.shiftedValue_conjugate, Complex.conj_im,
    neg_lt_neg_iff, actual_zero_square_norm_conjugate]
  rfl

/-- The full strict absolute tail has the essential factor two. -/
theorem actual_absolute_tail_eq_two_positive (A T : ℝ) (hA : 1 ≤ A) (hT : 0 ≤ T) :
    actualAbsoluteZeroTail A T = 2 * actualPositiveAbsoluteZeroTail A T := by
  classical
  unfold actualAbsoluteZeroTail
  rw [tsum_subtype]
  have heq : (zeroStrictTailSet T).indicator (actualZeroSquareNorm A) =
      fun o => (zeroPositiveStrictTailSet T).indicator (actualZeroSquareNorm A) o +
        (zeroNegativeStrictTailSet T).indicator (actualZeroSquareNorm A) o := by
    funext o
    change (if T < |(ZeroObject.shiftedValue o).im| then actualZeroSquareNorm A o else 0) =
      (if T < (ZeroObject.shiftedValue o).im then actualZeroSquareNorm A o else 0) +
      (if (ZeroObject.shiftedValue o).im < -T then actualZeroSquareNorm A o else 0)
    by_cases hp : T < (ZeroObject.shiftedValue o).im
    · have hn : ¬ (ZeroObject.shiftedValue o).im < -T := by linarith
      have ht : T < |(ZeroObject.shiftedValue o).im| :=
        hp.trans_le (le_abs_self _)
      simp only [if_pos hp, if_neg hn, if_pos ht, add_zero]
    · by_cases hn : (ZeroObject.shiftedValue o).im < -T
      · have ht : T < |(ZeroObject.shiftedValue o).im| := by
          rw [abs_of_neg (by linarith : (ZeroObject.shiftedValue o).im < 0)]
          linarith
        simp only [if_neg hp, if_pos hn, if_pos ht, zero_add]
      · have ht : ¬ T < |(ZeroObject.shiftedValue o).im| := by
          rw [not_lt, abs_le]
          constructor <;> linarith
        simp only [if_neg hp, if_neg hn, if_neg ht, zero_add]
  rw [heq, ((actual_zero_square_norms_summable A hA).indicator _).tsum_add
    ((actual_zero_square_norms_summable A hA).indicator _)]
  rw [← tsum_subtype, ← tsum_subtype]
  change actualPositiveAbsoluteZeroTail A T + actualNegativeAbsoluteZeroTail A T = _
  rw [actual_negative_absolute_tail_eq_positive]
  ring

/-- Absolute values control only the omitted tail, never replace its signed summands. -/
theorem actual_strict_tail_norm_le_absolute (A T : ℝ) (hA : 1 ≤ A) :
    ‖actualZeroStrictTail A T‖ ≤ actualAbsoluteZeroTail A T := by
  unfold actualZeroStrictTail actualAbsoluteZeroTail
  rw [← zero_head_compl_eq_strict_tail]
  apply norm_tsum_le_tsum_norm
  simpa only [Function.comp_def, actualZeroSquareNorm] using
    (actual_zero_square_norms_summable A hA).subtype (· ∈ (zeroHeadSet T)ᶜ)

end CommonMeanScratch
