-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalZeroHeightHead.Variant09f282ee400e4491c7425a20eebe8f4623efc94f442672465948d0257817da34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09f282ee400e4491c7425a20eebe8f4623efc94f442672465948d0257817da34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCriticalZeroHeightHead.Variant09f282ee400e4491c7425a20eebe8f4623efc94f442672465948d0257817da34","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"09f282ee400e4491c7425a20eebe8f4623efc94f442672465948d0257817da34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-bessel-contour-recovery/SourceActualCriticalZeroHead-native02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroTailBudget
import SourceActualZeroArithmeticDictionary

/-!
Exact finite partition of the original all-zero head at its critical axis. On that axis the
actual normalized autocorrelation has a nonnegative squared-modulus Fourier weight. The
remaining actual off-axis head keeps every ordinary complex weight, multiplicity and open
height guard. No assertion that all actual zeros are critical, or off-axis bound, is made.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalZeroHeightHead.Variant09f282ee400e4491c7425a20eebe8f4623efc94f442672465948d0257817da34

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualCriticalZeroHead
open Zeta23 Set Finset
open SourcePairing SourceActualInitialPrimeContour SourceActualZeroTailBudget
open SourceActualZeroArithmeticDictionary
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

/-- The exact critical-axis portion of the literal original open-height actual zero head. -/
def actualCriticalZeroHeightHead (A R : ℝ) : ℂ :=
  ∑ ρ ∈ ((actualZeroHeightHead_finite R).toFinset.filter
      (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).re = 1 / 2)),
    ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ

/-- Every remaining actual off-axis zero, with the same source multiplicity and height guard. -/
def actualOffAxisZeroHeightHead (A R : ℝ) : ℂ :=
  ∑ ρ ∈ ((actualZeroHeightHead_finite R).toFinset.filter
      (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).re ≠ 1 / 2)),
    ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ

/-- The actual source Mellin weight on the critical axis is its genuine Fourier norm square. -/
theorem actualInitialPrimeMellin_critical_eq_sourceSquare (A : ℝ) (s : ℂ)
    (hA : 1 ≤ A) (hs : s.re = 1 / 2) :
    actualInitialPrimeMellin A s =
      (Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) s.im) : ℂ) := by
  have he : s = (1 / 2 : ℂ) + (s.im : ℂ) * Complex.I := by
    apply Complex.ext <;> simp [hs]
  calc
    _ = actualInitialPrimeMellin A ((1 / 2 : ℂ) + (s.im : ℂ) * Complex.I) :=
      congrArg (actualInitialPrimeMellin A) he
    _ = _ := by
      rw [actualInitialPrimeMellin_on_half]
      exact actualCorrelation_paperFT_eq_sourceSquare A s.im hA

/-- Each literal actual critical zero weight is real and nonnegative, retaining zeroMult. -/
theorem actualCriticalZeroWeight_real_nonneg (A : ℝ)
    (ρ : (zetaZeros zetaSeam).carrier) (hA : 1 ≤ A) (hρ : (ρ : ℂ).re = 1 / 2) :
    (((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ).im = 0 ∧
    0 ≤ (((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ).re := by
  rw [actualInitialPrimeMellin_critical_eq_sourceSquare A ρ hA hρ]
  constructor
  · simp
  · simp only [Complex.mul_re, Complex.natCast_re, Complex.natCast_im,
      Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
    exact mul_nonneg (Nat.cast_nonneg _) (Complex.normSq_nonneg _)

/-- The exact finite critical piece is its nonnegative actual multiplicity/Fourier mass. -/
theorem actualCriticalZeroHeightHead_eq_sourceMass (A R : ℝ) (hA : 1 ≤ A) :
    actualCriticalZeroHeightHead A R =
      ((∑ ρ ∈ ((actualZeroHeightHead_finite R).toFinset.filter
      (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).re = 1 / 2)),
        ((zetaZeros zetaSeam).mult ρ : ℝ) *
          Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A)
            (ρ : ℂ).im) : ℝ) : ℂ) := by
  classical
  unfold actualCriticalZeroHeightHead
  push_cast
  apply sum_congr rfl
  intro ρ hρ
  rw [actualInitialPrimeMellin_critical_eq_sourceSquare A ρ hA (mem_filter.mp hρ).2]
  rfl

/-- The entire actual finite critical part has zero imaginary component. -/
theorem actualCriticalZeroHeightHead_im_zero (A R : ℝ) (hA : 1 ≤ A) :
    (actualCriticalZeroHeightHead A R).im = 0 := by
  rw [actualCriticalZeroHeightHead_eq_sourceMass A R hA]
  exact Complex.ofReal_im _

/-- Critical-axis positivity is only for this genuine actual finite piece. -/
theorem actualCriticalZeroHeightHead_re_nonneg (A R : ℝ) (hA : 1 ≤ A) :
    0 ≤ (actualCriticalZeroHeightHead A R).re := by
  rw [actualCriticalZeroHeightHead_eq_sourceMass A R hA, Complex.ofReal_re]
  exact sum_nonneg (fun ρ _ => mul_nonneg (Nat.cast_nonneg _) (Complex.normSq_nonneg _))

/-- The full original head partitions exactly at the critical axis for every real A and R. -/
theorem actualZeroHeightHead_eq_critical_add_offAxis (A R : ℝ) :
    actualZeroHeightHead A R = actualCriticalZeroHeightHead A R +
      actualOffAxisZeroHeightHead A R := by
  classical
  unfold actualZeroHeightHead actualCriticalZeroHeightHead actualOffAxisZeroHeightHead
  rw [sum_filter, sum_filter, ← sum_add_distrib]
  apply sum_congr rfl
  intro ρ _
  by_cases hρ : (ρ : ℂ).re = 1 / 2 <;> simp [hρ]

/-- The actual real head keeps the same signed off-axis remainder. -/
theorem actualZeroHeightHead_re_eq_critical_add_offAxis (A R : ℝ) :
    (actualZeroHeightHead A R).re = (actualCriticalZeroHeightHead A R).re +
      (actualOffAxisZeroHeightHead A R).re := by
  rw [actualZeroHeightHead_eq_critical_add_offAxis, Complex.add_re]

/-- Removing the proved positive critical part gives a valid one-sided head comparison. -/
theorem actualOffAxisZeroHeightHead_re_le_full (A R : ℝ) (hA : 1 ≤ A) :
    (actualOffAxisZeroHeightHead A R).re ≤ (actualZeroHeightHead A R).re := by
  rw [actualZeroHeightHead_re_eq_critical_add_offAxis]
  linarith [actualCriticalZeroHeightHead_re_nonneg A R hA]

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalZeroHead
