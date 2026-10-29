-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.IntegratedResidual.Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.IntegratedResidual.Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d","mathematical_subject":"Analysis.Integration","original_sha256":"3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateScaleAverage
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePolynomialResidual

/-!
# Polynomial cost of the short factors after one signed scale integration

The original pointwise removal theorem is integrated with its actual positive
weight. The signed primitives themselves are not replaced by absolute values.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.IntegratedResidual.Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateScaleRemoval

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateScalePrimitive EstimateScaleAverage EstimateScaleVaughan
open EstimateVaughanSource EstimatePlainKernel EstimateSourceMobiusKernel
open EstimateMertensResidual ArithmeticFunction
open FormalResearch.RiemannHypothesis.Laplace.Algebra

noncomputable section

/-- The signed weighted residual primitive, with its original lower endpoint. -/
def integratedResidual (T : ℝ) : ℝ :=
  ∫ A in (1:ℝ)..T, scaleWeight A * mertensResidual A

/-- The signed primitive of the existing weighted source. -/
def sourcePrimitive (T : ℝ) : ℝ := ∫ A in (1:ℝ)..T, weightedSource A

/-- The actual weighted correlation is locally integrable in scale, including its support seam. -/
theorem weighted_correlation_intervalIntegrable (T t : ℝ) (hT : 1 ≤ T) (ht : 0 ≤ t) :
    IntervalIntegrable (fun A ↦ scaleWeight A * sourceCorrelation explicitSecondDerivative A t)
      volume 1 T := by
  let M : ℕ := ⌊T^2⌋₊+1
  have hM : T^2 < (M:ℝ) := by
    dsimp [M]
    push_cast
    exact Nat.lt_floor_add_one (T^2)
  apply (scaleWindow_intervalIntegrable T t M M hT ht).congr
  intro A hA
  rw [uIoc_of_le hT] at hA
  have hAT : A^2 ≤ T^2 := by nlinarith [hA.1,hA.2]
  unfold scaleWindow
  exact if_pos ⟨hAT.trans_lt hM,hAT.trans_lt hM⟩

private theorem weighted_residual_eq (A T : ℝ) (hA : 1 ≤ A) (hAT : A ≤ T) :
    scaleWeight A * mertensResidual A = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff T),
      (vonMangoldt n / Real.sqrt n) *
        (scaleWeight A * sourceCorrelation explicitSecondDerivative A (Real.log n)) := by
  rw [mertensResidual_eq_plainWeight_sum A hA, Finset.mul_sum]
  calc
    _ = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff T),
        scaleWeight A * (vonMangoldt n * sourcePlainWeight A n) := by
      apply Finset.sum_subset (Finset.Icc_subset_Icc_right (sourceKernelCutoff_mono hAT))
      intro n hn hnot
      have hcut : sourceKernelCutoff A < n := by
        have := Finset.mem_Icc.mp hn
        simp only [Finset.mem_Icc] at hnot
        omega
      rw [sourcePlainWeight_zero_of_cutoff_lt A hA n hcut, mul_zero, mul_zero]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n _
      dsimp [sourcePlainWeight]
      ring

/-- All residual terms are genuinely integrable on every bounded real scale interval. -/
theorem weighted_residual_intervalIntegrable (T : ℝ) (hT : 1 ≤ T) :
    IntervalIntegrable (fun A ↦ scaleWeight A * mertensResidual A) volume 1 T := by
  have hi (n : ℕ) (hn : n ∈ Finset.Icc 1 (sourceKernelCutoff T)) :
      IntervalIntegrable (fun A ↦ (vonMangoldt n / Real.sqrt n) *
        (scaleWeight A * sourceCorrelation explicitSecondDerivative A (Real.log n))) volume 1 T :=
    (weighted_correlation_intervalIntegrable T _ hT
      (Real.log_nonneg (by exact_mod_cast (Finset.mem_Icc.mp hn).1))).const_mul _
  have hs : IntervalIntegrable (fun A ↦ ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff T),
      (vonMangoldt n / Real.sqrt n) *
        (scaleWeight A * sourceCorrelation explicitSecondDerivative A (Real.log n))) volume 1 T :=
    ⟨integrable_finsetSum _ (fun n hn ↦ (hi n hn).1),
      integrable_finsetSum _ (fun n hn ↦ (hi n hn).2)⟩
  apply hs.congr
  intro A hA
  rw [uIoc_of_le hT] at hA
  exact (weighted_residual_eq A T hA.1.le hA.2).symm

/-- The actual signed primitive retains exactly the degree-twenty short-factor error. -/
theorem integratedResidual_sub_typeTwo_abs_le (T : ℝ) (hT : 1 ≤ T) :
    |integratedResidual T - integratedTypeTwo T| ≤
      (272+54*Real.log 4) * (45056/1105) * (T^20-1)/20 := by
  let c : ℝ := (272+54*Real.log 4) * (45056/1105)
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hpoint (A : ℝ) (hA : 1 ≤ A) :
      |scaleWeight A * mertensResidual A - scaleWeight A * typeTwoSource A| ≤ c*A^19 := by
    rw [← mul_sub, abs_mul, abs_of_pos (scaleWeight_pos A hA)]
    calc
      _ ≤ scaleWeight A * ((272+54*Real.log 4)*A^2) :=
        mul_le_mul_of_nonneg_left (mertensResidual_sub_typeTwo_abs_le_quadratic A hA)
          (scaleWeight_pos A hA).le
      _ ≤ ((45056/1105)*A^17) * ((272+54*Real.log 4)*A^2) :=
        mul_le_mul_of_nonneg_right (scaleWeight_le A hA) (by positivity)
      _ = _ := by dsimp [c]; ring
  unfold integratedResidual integratedTypeTwo
  rw [← intervalIntegral.integral_sub (weighted_residual_intervalIntegrable T hT)
    (weighted_typeTwo_intervalIntegrable T hT)]
  have h := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hT
    (f := fun A ↦ scaleWeight A * mertensResidual A - scaleWeight A * typeTwoSource A)
    (g := fun A ↦ c*A^19)
    (by filter_upwards with A hA; rw [Real.norm_eq_abs]; exact hpoint A hA.1.le)
    ((by fun_prop : Continuous (fun A : ℝ ↦ c*A^19)).intervalIntegrable 1 T)
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, integral_pow] at h
  norm_num only [Nat.reduceAdd, Nat.cast_ofNat, one_pow] at h
  dsimp [c] at h
  nlinarith

/-- The actual weighted source is locally integrable, as proved by its existing continuation. -/
theorem weighted_source_intervalIntegrable (T : ℝ) (hT : 1 ≤ T) :
    IntervalIntegrable weightedSource volume 1 T := by
  have h := FormalResearch.RiemannHypothesis.Laplace.Expansion.weightedSource_continuousOn_Icc T hT
  have hr : ContinuousOn weightedSource (Icc (1:ℝ) T) := by
    simpa only [Function.comp_def, Complex.ofReal_re] using
      Complex.continuous_re.comp_continuousOn h
  exact hr.intervalIntegrable_of_Icc hT

/-- The original archimedean lower bound and short-factor estimate survive signed averaging. -/
theorem sourcePrimitive_lower (T : ℝ) (hT : 1 ≤ T) :
    -2 * integratedTypeTwo T -
      |archimedeanMultiplier 0| * (45056/1105) * (T^18-1)/18 -
      (272+54*Real.log 4) * (45056/1105) * (T^20-1)/10 ≤ sourcePrimitive T := by
  let a : ℝ := |archimedeanMultiplier 0| * (45056/1105)
  let c : ℝ := (272+54*Real.log 4) * (45056/1105)
  have hp (A : ℝ) (hA : 1 ≤ A) :
      -(a*A^17) - 2*c*A^19 ≤ weightedSource A + 2*(scaleWeight A*typeTwoSource A) := by
    have hp0 := (scaleWeight_pos A hA).le
    have hα := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hα' := neg_abs_le (archimedeanMultiplier 0)
    have harch : -|archimedeanMultiplier 0| * scaleWeight A ≤
        scaleWeight A * archimedeanValue explicitSecondDerivative A := by
      nlinarith [mul_le_mul_of_nonneg_left (hα'.trans hα) hp0]
    have hs := (abs_le.mp (mertensResidual_sub_typeTwo_abs_le_quadratic A hA)).2
    have hm := mul_le_mul_of_nonneg_left hs hp0
    have ha := mul_le_mul_of_nonneg_left (scaleWeight_le A hA)
      (abs_nonneg (archimedeanMultiplier 0))
    have hc := mul_le_mul_of_nonneg_right (scaleWeight_le A hA)
      (show 0 ≤ (272+54*Real.log 4)*A^2 by positivity)
    have he : ((45056/1105)*A^17)*((272+54*Real.log 4)*A^2) = c*A^19 := by
      dsimp [c]; ring
    rw [he] at hc
    dsimp [weightedSource, actualQ]
    rw [EstimatePolynomialResidual.sourceQuadraticValue_eq_archimedean_sub_residual A hA]
    change -(a*A^17) - 2*c*A^19 ≤
      scaleWeight A * (archimedeanValue explicitSecondDerivative A - 2*mertensResidual A) +
        2*(scaleWeight A*typeTwoSource A)
    dsimp [a] at *
    nlinarith
  have hli : IntervalIntegrable (fun A : ℝ ↦ -(a*A^17) - 2*c*A^19) volume 1 T :=
    (by fun_prop : Continuous (fun A : ℝ ↦ -(a*A^17) - 2*c*A^19)).intervalIntegrable _ _
  have hri := (weighted_source_intervalIntegrable T hT).add
    ((weighted_typeTwo_intervalIntegrable T hT).const_mul 2)
  have h := intervalIntegral.integral_mono_on hT hli hri (fun A hA ↦ hp A hA.1)
  rw [intervalIntegral.integral_add (weighted_source_intervalIntegrable T hT)
      ((weighted_typeTwo_intervalIntegrable T hT).const_mul 2),
    intervalIntegral.integral_const_mul] at h
  have he : (∫ A in (1:ℝ)..T, -(a*A^17) - 2*c*A^19) =
      -a*(T^18-1)/18 - 2*c*(T^20-1)/20 := by
    rw [intervalIntegral.integral_sub
      ((by fun_prop : Continuous (fun A : ℝ ↦ -(a*A^17))).intervalIntegrable 1 T)
      ((by fun_prop : Continuous (fun A : ℝ ↦ 2*c*A^19)).intervalIntegrable 1 T),
      intervalIntegral.integral_neg, intervalIntegral.integral_const_mul,
      intervalIntegral.integral_const_mul, integral_pow, integral_pow]
    norm_num
    ring
  rw [he] at h
  change -a*(T^18-1)/18 - 2*c*(T^20-1)/20 ≤
    sourcePrimitive T + 2*integratedTypeTwo T at h
  dsimp [a,c] at h
  linarith

/-- The primitive really vanishes at its initial scale. -/
theorem sourcePrimitive_one : sourcePrimitive 1 = 0 := by simp [sourcePrimitive]

end
end EstimateScaleRemoval
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
