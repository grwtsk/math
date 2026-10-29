-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhaseRatioLeOne.Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PhaseRatioLeOne.Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1","mathematical_subject":"Analysis.Calculus","original_sha256":"bf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/decoder-audit/current-replay/ResolutionDraft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhaseRatioLeOne.Variantbf244d61055aa1d41803b605b8e3fec34618b41fc57b6cb6cdd999b8fc7e6ff1

set_option autoImplicit false
noncomputable section
namespace JointUniformResearch

open MeasureTheory Set
open scoped Interval
open FormalResearch.RiemannHypothesis
open SourcePairedTailTest SourcePairedPrimeWork SourcePairedPrimeAverages
open SourceFirstPrimeAbel SourceCorrelationEnergy SourcePairing
open SourcePrimeSquareTailWork SourcePairedSquareQuadrature WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

theorem phaseRatio_le_one {A : ℝ} (hA : 1 ≤ A) :
    positiveMass A / negativeMass A ≤ 1 := by
  apply (div_le_one (negativeMass_pos hA)).2
  linarith [negativeMass_eq_positive_add_one hA]

theorem pairedDeriv_abs_le_critical {A u : ℝ} (hA : 1 ≤ A) :
    |deriv (pairedTailTest A) u| ≤ |deriv (criticalPrimeTest A) u| := by
  rw [pairedTailTest_deriv_abs hA, ← slope_sum]
  have h := mul_le_mul_of_nonneg_right (phaseRatio_le_one hA) (negativeSlope_nonneg A u)
  simpa using add_le_add_left h (positiveSlope A u)

theorem pairedDeriv_abs_le {A u : ℝ} (hA : 1 ≤ A) (hu : u ∈ Icc 0 (2*A)) :
    |deriv (pairedTailTest A) u| ≤ Real.exp A * ((1/2 : ℝ)+5/A) := by
  have hA0 : 0 < A := by linarith
  apply (pairedDeriv_abs_le_critical hA).trans
  rw [criticalPrimeTest_deriv A u hA0, abs_mul, abs_of_pos (Real.exp_pos _)]
  have hc := actual_correlation_abs_le_one A u hA
  have hd := sourceCorrelation_deriv_abs_le_five_div hA u
  have hs : |sourceCorrelation explicitSecondDerivative A u / 2 +
      deriv (sourceCorrelation explicitSecondDerivative A) u| ≤ (1/2 : ℝ)+5/A := by
    calc
      _ ≤ |sourceCorrelation explicitSecondDerivative A u / 2| +
          |deriv (sourceCorrelation explicitSecondDerivative A) u| := abs_add_le _ _
      _ ≤ (1/2 : ℝ)+5/A := by rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ)<2)]; linarith
  have hexp := Real.exp_le_exp.mpr (show u/2 ≤ A by linarith [hu.2])
  exact (mul_le_mul_of_nonneg_left hs (Real.exp_pos _).le).trans
    (mul_le_mul_of_nonneg_right hexp (by positivity))

theorem paired_lipschitz {A s t : ℝ} (hA : 1 ≤ A)
    (hs : s ∈ Icc 0 (2*A)) (ht : t ∈ Icc 0 (2*A)) :
    |pairedTailTest A t-pairedTailTest A s| ≤
      (Real.exp A * ((1/2 : ℝ)+5/A)) * |t-s| := by
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (fun u (_ : u ∈ Icc 0 (2*A)) => (pairedTailTest_contDiff hA).differentiable
      (by norm_num) u)
    (fun u hu => by simpa only [Real.norm_eq_abs] using pairedDeriv_abs_le hA hu)
    (convex_Icc (0 : ℝ) (2*A)) hs ht
  simpa only [Real.norm_eq_abs] using h

def decodedReadout (A : ℝ) (F : ℝ → ℝ) : ℝ :=
  primeLogSum (2*A) F +
    (∑ p ∈ primeLogInventory A, squarePrefixCoefficient p * F (2*Real.log p)) -
    ∫ u in 0..2*A, F u

theorem actualReadout_eq {A : ℝ} (hA : 1 ≤ A) :
    decodedReadout A (pairedTailTest A) = squareRemovedPairedWork A := by
  rw [squareRemovedPairedWork_eq_first_square_quadrature hA]
  unfold decodedReadout pairedSquareReadout
  rw [pairedTailTest_integral_eq hA]

theorem primeReadout_error {A ε : ℝ} (_hA : 1 ≤ A) (_hε : 0 ≤ ε) (F : ℝ → ℝ)
    (herr : ∀ u ∈ Icc 0 (2*A), |F u-pairedTailTest A u| ≤ ε) :
    |primeLogSum (2*A) F - primeLogSum (2*A) (pairedTailTest A)| ≤
      ε*primeLogPrefix (2*A) := by
  unfold primeLogSum
  rw [← Finset.sum_sub_distrib, primeLogPrefix_eq_sum, Finset.mul_sum]
  calc
    _ ≤ ∑ p ∈ primeLogInventory (2*A),
      |Real.log (p : ℝ)/(p : ℝ)*F (Real.log p) -
        Real.log (p : ℝ)/(p : ℝ)*pairedTailTest A (Real.log p)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro p hp
      have hb := primeLogInventory_log_bounds (2*A) p hp
      have hn : 0 ≤ Real.log (p : ℝ)/(p : ℝ) := div_nonneg hb.1 (Nat.cast_nonneg p)
      rw [← mul_sub, abs_mul, abs_of_nonneg hn]
      simpa only [mul_comm] using mul_le_mul_of_nonneg_left (herr (Real.log p) hb) hn

theorem squareReadout_error {A ε : ℝ} (_hA : 1 ≤ A) (_hε : 0 ≤ ε) (F : ℝ → ℝ)
    (herr : ∀ u ∈ Icc 0 (2*A), |F u-pairedTailTest A u| ≤ ε) :
    |(∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p)) -
      pairedSquareReadout A| ≤ ε*squarePrefix (2*A) := by
  unfold pairedSquareReadout squarePrefix
  rw [show 2*A/2=A by ring, ← Finset.sum_sub_distrib, Finset.mul_sum]
  calc
    _ ≤ ∑ p ∈ primeLogInventory A,
      |squarePrefixCoefficient p*F (2*Real.log p)-
        squarePrefixCoefficient p*pairedTailTest A (2*Real.log p)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro p hp
      have hb := primeLogInventory_log_bounds A p hp
      have hn := (squarePrefixCoefficient_pos ⟨p, (Finset.mem_filter.mp hp).2⟩).le
      rw [← mul_sub, abs_mul, abs_of_nonneg hn]
      simpa only [mul_comm] using mul_le_mul_of_nonneg_left
        (herr (2*Real.log p) ⟨by linarith [hb.1], by linarith [hb.2]⟩) hn

theorem decodedReadout_error {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε) (F : ℝ → ℝ)
    (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u ∈ Icc 0 (2*A), |F u-pairedTailTest A u| ≤ ε) :
    |decodedReadout A F-squareRemovedPairedWork A| ≤
      ε*(primeLogPrefix (2*A)+squarePrefix (2*A)+2*A) := by
  have hi := (pairedTailTest_continuous hA).intervalIntegrable (μ := volume) 0 (2*A)
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (f := fun u => F u-pairedTailTest A u) (a := 0) (b := 2*A) (C := ε)
    (fun u hu => by
      have hc : u ∈ Icc 0 (2*A) := by
        rw [uIoc_of_le (by linarith : (0 : ℝ)≤2*A)] at hu
        exact ⟨hu.1.le,hu.2⟩
      simpa only [Real.norm_eq_abs] using herr u hc)
  rw [intervalIntegral.integral_sub hF hi, Real.norm_eq_abs,
    sub_zero, abs_of_nonneg (by linarith : (0 : ℝ)≤2*A)] at hb
  have hp := primeReadout_error hA hε F herr
  have hs := squareReadout_error hA hε F herr
  rw [← actualReadout_eq hA]
  unfold decodedReadout
  have he :
      primeLogSum (2*A) F+(∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
        (∫ u in 0..2*A, F u) -
      (primeLogSum (2*A) (pairedTailTest A)+
        (∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*pairedTailTest A (2*Real.log p))-
        ∫ u in 0..2*A, pairedTailTest A u) =
      (primeLogSum (2*A) F-primeLogSum (2*A) (pairedTailTest A))+
      ((∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
        pairedSquareReadout A)-
      ((∫ u in 0..2*A, F u)-(∫ u in 0..2*A, pairedTailTest A u)) := by
    unfold pairedSquareReadout
    ring
  rw [he]
  calc
    _ ≤ |primeLogSum (2*A) F-primeLogSum (2*A) (pairedTailTest A)|+
      |(∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
        pairedSquareReadout A|+
      |(∫ u in 0..2*A,F u)-(∫ u in 0..2*A,pairedTailTest A u)| :=
      by
        have h1 := abs_sub (primeLogSum (2*A) F-primeLogSum (2*A) (pairedTailTest A)+
          ((∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
            pairedSquareReadout A))
          ((∫ u in 0..2*A,F u)-(∫ u in 0..2*A,pairedTailTest A u))
        have h2 := abs_add_le (primeLogSum (2*A) F-primeLogSum (2*A) (pairedTailTest A))
          ((∑ p ∈ primeLogInventory A, squarePrefixCoefficient p*F (2*Real.log p))-
            pairedSquareReadout A)
        linarith
    _ ≤ _ := by nlinarith

theorem decodedReadout_uniform_error (C : ℝ) (_hC : 0 ≤ C)
    (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C)
    {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε) (F : ℝ → ℝ)
    (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u ∈ Icc 0 (2*A), |F u-pairedTailTest A u| ≤ ε) :
    |decodedReadout A F-squareRemovedPairedWork A| ≤ ε*(4*A+C+squarePrefixBaseline) := by
  have hm := (abs_le.mp (hM (2*A) (by linarith))).2
  unfold primeLogError at hm
  exact (decodedReadout_error hA hε F hF herr).trans
    (mul_le_mul_of_nonneg_left (by linarith [squarePrefix_le_baseline (2*A)]) hε)

theorem mesh_decoder_error (C : ℝ) (hC : 0 ≤ C)
    (hM : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C)
    {A h η : ℝ} (hA : 1 ≤ A) (hh : 0 ≤ h) (T : ℝ → ℝ)
    (hTmem : ∀ u ∈ Icc 0 (2*A), T u ∈ Icc 0 (2*A))
    (hTdist : ∀ u ∈ Icc 0 (2*A), |T u-u| ≤ h)
    (hi : IntervalIntegrable (fun u => pairedTailTest A (T u)) volume 0 (2*A))
    (hpath : Real.exp A*((1/2 : ℝ)+5/A)*h*(4*A+C+squarePrefixBaseline) ≤ η) :
    |decodedReadout A (fun u => pairedTailTest A (T u))-squareRemovedPairedWork A| ≤ η := by
  have hA0 : 0 < A := by linarith
  have hL : 0 ≤ Real.exp A*((1/2 : ℝ)+5/A) := by positivity
  have he : 0 ≤ Real.exp A*((1/2 : ℝ)+5/A)*h := mul_nonneg hL hh
  have herr : ∀ u ∈ Icc 0 (2*A),
      |pairedTailTest A (T u)-pairedTailTest A u| ≤
        Real.exp A*((1/2 : ℝ)+5/A)*h := by
    intro u hu
    exact (paired_lipschitz hA hu (hTmem u hu)).trans
      (mul_le_mul_of_nonneg_left (hTdist u hu) hL)
  exact (decodedReadout_uniform_error C hC hM hA he
    (fun u => pairedTailTest A (T u)) hi herr).trans hpath

theorem lower_transfer {η C V R : ℝ} (_hη : 0 ≤ η) (_hC : 0 ≤ C)
    (herr : |R-V| ≤ η) (hR : -C ≤ R) : -(C+η) ≤ V := by
  have h := (abs_le.mp herr).2
  linarith

#print axioms phaseRatio_le_one
#print axioms pairedDeriv_abs_le_critical
#print axioms pairedDeriv_abs_le
#print axioms paired_lipschitz
#print axioms actualReadout_eq
#print axioms primeReadout_error
#print axioms squareReadout_error
#print axioms decodedReadout_error
#print axioms decodedReadout_uniform_error
#print axioms mesh_decoder_error
#print axioms lower_transfer

end JointUniformResearch
