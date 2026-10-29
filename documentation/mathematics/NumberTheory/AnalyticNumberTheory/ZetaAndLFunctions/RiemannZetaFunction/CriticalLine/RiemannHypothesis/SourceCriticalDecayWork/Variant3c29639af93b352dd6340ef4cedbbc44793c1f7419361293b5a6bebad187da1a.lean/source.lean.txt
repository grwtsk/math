-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalDecay.Variant960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CriticalDecay.Variant960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle16/regent-next-critical-decay/native-replay-v1/overlay/SourceCriticalDecayWork.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork

/-!
# Private actual critical-decay work

The independently specified mode exp(-u/2) is tested against the literal critical
source derivative. The full square baseline and both actual derivative phases
are retained before bounding only their signed difference. This private candidate
is outside the canonical cycle-16 nine declarations and complete verification.
No pointwise square-tail approximation, complete Vaughan main-term identification,
discrete arithmetic witness or RH conclusion is asserted.

AI attribution: developed with OpenAI Codex; focused and independent status is external.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalDecay.Variant960bf6dbb7465efb4d3feaa62410b13cb6dc0c0836ca4744ab02380c9f60b030

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalDecayWork

open MeasureTheory
open scoped Interval
open SourceFirstPrimeAbel SourcePairedPrimeWork SourcePairedPrimeAverages
open SourcePrimeSquareTailWork SourcePrimeSquareMainTerm SourceDiagonalMainTerm
open SourceDiagonalPrimeAbel SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

/-- Independent scalar decay; no source radius, arithmetic error or residual defines it. -/
def criticalDecay (u : ℝ) : ℝ := Real.exp (-u / 2)

/-- The literal signed work on the full positive interval. -/
def criticalDecayWork (A : ℝ) : ℝ :=
  ∫ u in 0..2*A, criticalDecay u * deriv (criticalPrimeTest A) u

/-- The negative-phase derivative mass is the original denominator. -/
def criticalDecayNegativeMean (A : ℝ) : ℝ :=
  (∫ u in 0..2*A, criticalDecay u * negativeSlope A u) / negativeMass A

/-- Both signed phases of the actual square-tail difference are defined independently. -/
def squareMinusDecayPairedWork (A : ℝ) : ℝ :=
  (∫ u in 0..2*A, (squareTail u-criticalDecay u)*positiveSlope A u) -
    positiveMass A * ((∫ u in 0..2*A,
      (squareTail u-criticalDecay u)*negativeSlope A u) / negativeMass A)

private theorem criticalDecay_continuous : Continuous criticalDecay := by
  unfold criticalDecay
  fun_prop

private theorem criticalDecay_times_deriv {A : ℝ} (hA : 0 < A) (u : ℝ) :
    criticalDecay u * deriv (criticalPrimeTest A) u =
      sourceCorrelation explicitSecondDerivative A u / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) u := by
  rw [criticalDecay, criticalPrimeTest_deriv A u hA, ← mul_assoc, ← Real.exp_add,
    show -u/2+u/2=0 by ring, Real.exp_zero, one_mul]

/-- The exact endpoint -1 and scale multiplier remain in the independently specified work. -/
theorem criticalDecayWork_eq_main {A : ℝ} (hA : 1 ≤ A) :
    criticalDecayWork A = diagonalMainCoefficient A*A-1 := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hp
  have hi := hc.continuous.intervalIntegrable (μ := volume) 0 (2*A)
  have hd := hc.continuous_deriv_one.intervalIntegrable (μ := volume) 0 (2*A)
  have ht := diagonalCorrelation_integral A hA
  change (∫ t in 0..A, C (2*t)) = diagonalMainCoefficient A*A at ht
  rw [intervalIntegral.integral_comp_mul_left C (by norm_num : (2 : ℝ) ≠ 0)] at ht
  simp only [mul_zero, smul_eq_mul] at ht
  have hm : (∫ u in 0..2*A, C u) = 2*(diagonalMainCoefficient A*A) := by
    norm_num at ht
    linarith
  have he := intervalIntegral.integral_deriv_eq_sub
    (fun u _ => hc.differentiable (by norm_num) u) hd
  have hu : C (2*A) = 0 := sourceCorrelation_upper_endpoint A hp
  have hz : C 0 = 1 := actual_correlation_at_zero A hA
  rw [hu, hz] at he
  have hf : (fun u : ℝ => criticalDecay u * deriv (criticalPrimeTest A) u) =
      fun u => C u / 2 + deriv C u := funext (criticalDecay_times_deriv hp)
  rw [criticalDecayWork, hf, intervalIntegral.integral_add (hi.div_const 2) hd,
    intervalIntegral.integral_div, hm, he]
  ring

/-- A positive interval and the proved nonzero derivative mass give an actual normalized mean. -/
theorem criticalDecayNegativeMean_mem_Icc {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ criticalDecayNegativeMean A ∧ criticalDecayNegativeMean A ≤ 1 := by
  have hp : 0 < A := by linarith
  have hi : IntervalIntegrable (fun u => criticalDecay u * negativeSlope A u)
      volume 0 (2*A) := by
    convert (criticalDecay_continuous.mul (negativeSlope_continuous hp)).intervalIntegrable
      (μ := volume) 0 (2*A) using 1
    funext u
    rfl
  constructor
  · apply div_nonneg
    · exact intervalIntegral.integral_nonneg (by linarith)
        (fun u _ => mul_nonneg (Real.exp_pos _).le (negativeSlope_nonneg A u))
    · exact (negativeMass_pos hA).le
  · unfold criticalDecayNegativeMean
    apply (div_le_iff₀ (negativeMass_pos hA)).mpr
    have hb : (∫ u in 0..2*A, criticalDecay u * negativeSlope A u) ≤
        ∫ u in 0..2*A, negativeSlope A u := by
      apply intervalIntegral.integral_mono_on (by linarith) hi (negativeSlope_intervalIntegrable hp)
      intro u hu
      have hh : criticalDecay u ≤ 1 := by
        unfold criticalDecay
        rw [Real.exp_le_one_iff]
        linarith [hu.1]
      simpa only [one_mul] using
        mul_le_mul_of_nonneg_right hh (negativeSlope_nonneg A u)
    simpa only [one_mul, negativeMass] using hb

private theorem squareMinusDecay_eq_paired_difference {A : ℝ} (hA : 1 ≤ A) :
    squareMinusDecayPairedWork A =
      squareTailPairedWork A - (criticalDecayWork A + criticalDecayNegativeMean A) := by
  have hp : 0 < A := by linarith
  have hip : IntervalIntegrable (fun u => criticalDecay u * positiveSlope A u)
      volume 0 (2*A) := by
    convert (criticalDecay_continuous.mul (positiveSlope_continuous hp)).intervalIntegrable
      (μ := volume) 0 (2*A) using 1
    funext u
    rfl
  have hin : IntervalIntegrable (fun u => criticalDecay u * negativeSlope A u)
      volume 0 (2*A) := by
    convert (criticalDecay_continuous.mul (negativeSlope_continuous hp)).intervalIntegrable
      (μ := volume) 0 (2*A) using 1
    funext u
    rfl
  have hq := squareTail_intervalIntegrable hp
  have hqp := hq.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hqn := hq.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  have hw : criticalDecayWork A = (∫ u in 0..2*A, criticalDecay u * positiveSlope A u) -
      (∫ u in 0..2*A, criticalDecay u * negativeSlope A u) := by
    rw [← intervalIntegral.integral_sub hip hin]
    simp_rw [← mul_sub, slope_difference]
    rfl
  rw [squareMinusDecayPairedWork]
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub hqp hip, intervalIntegral.integral_sub hqn hin]
  unfold squareTailPairedWork squareTailNegativeMean criticalDecayNegativeMean
  rw [hw, negativeMass_eq_positive_add_one hA]
  have hn : positiveMass A+1 ≠ 0 := by
    rw [← negativeMass_eq_positive_add_one hA]
    exact (negativeMass_pos hA).ne'
  field_simp [hn]
  ring

/-- Complete B2 and both means remain alongside the signed square main-term error. -/
theorem squareMinusDecayPairedWork_eq {A : ℝ} (hA : 1 ≤ A) :
    squareMinusDecayPairedWork A =
      (primeSquareMoment A-diagonalMainCoefficient A*A)+(1-squarePrefixBaseline)+
        (squareTailNegativeMean A-criticalDecayNegativeMean A) := by
  rw [squareMinusDecay_eq_paired_difference hA, squareTailPairedWork_eq_work_add_mean hA,
    squareTailWork_eq hA, criticalDecayWork_eq_main hA]
  ring

/-- Only this independently specified signed difference has a uniform budget. -/
theorem squareMinusDecayPairedWork_uniformly_bounded :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ A : ℝ, 1 ≤ A → |squareMinusDecayPairedWork A| ≤ K := by
  obtain ⟨C, hC0, _, hC⟩ := primeSquareMoment_uniform_main_term_error
  have hB := squarePrefixBaseline_nonneg
  refine ⟨11*C+squarePrefixBaseline+1, by positivity, ?_⟩
  intro A hA
  have hh := criticalDecayNegativeMean_mem_Icc hA
  have hq0 := squareTailNegativeMean_nonneg hA
  have hqB := squareTailNegativeMean_le_baseline hA
  have he : |(1-squarePrefixBaseline)+
      (squareTailNegativeMean A-criticalDecayNegativeMean A)| ≤ squarePrefixBaseline+1 :=
    abs_le.mpr ⟨by linarith, by linarith⟩
  rw [squareMinusDecayPairedWork_eq hA]
  calc
    _ = |(primeSquareMoment A-diagonalMainCoefficient A*A)+
        ((1-squarePrefixBaseline)+
          (squareTailNegativeMean A-criticalDecayNegativeMean A))| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ 11*C+(squarePrefixBaseline+1) := add_le_add (hC A hA) he
    _ = _ := by ring

end FormalResearch.RiemannHypothesis.SourceCriticalDecayWork
