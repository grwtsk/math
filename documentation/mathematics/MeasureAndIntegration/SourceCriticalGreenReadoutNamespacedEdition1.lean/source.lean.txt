-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DirichletTentIntegralSecondDerivEqEndpointInterpolation.Variant9f6a9b248b75c3f3d2a7626d503e1fcba8987b14c77a46d1e30e20bbe47f7793","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f6a9b248b75c3f3d2a7626d503e1fcba8987b14c77a46d1e30e20bbe47f7793","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DirichletTentIntegralSecondDerivEqEndpointInterpolation.Variant9f6a9b248b75c3f3d2a7626d503e1fcba8987b14c77a46d1e30e20bbe47f7793","mathematical_subject":"Analysis.Calculus","original_sha256":"9f6a9b248b75c3f3d2a7626d503e1fcba8987b14c77a46d1e30e20bbe47f7793","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle22/principal-green-readout/prepared-source-v2/SourceCriticalGreenReadout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalGreenTent
import FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative

/-!
# Integrated Dirichlet readout for the actual paired source

Research candidate; local/kernel/main acceptance are separate receipt gates.
The generic endpoint interpolation retains both traces. The actual paired derivative is absolutely continuous across its max
seams; its second derivative is used with that almost-everywhere meaning.
The source endpoint derivative traces give two exact curvature moments and
exclude almost-everywhere nonnegative curvature. These identities supply no
uniform signed arithmetic witness, accepted-main status or RH proof.

Research direction, selection and evaluation: grwtsk contributors.
Construction: OpenAI Codex; independent AI review is a separate gate.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DirichletTentIntegralSecondDerivEqEndpointInterpolation.Variant9f6a9b248b75c3f3d2a7626d503e1fcba8987b14c77a46d1e30e20bbe47f7793

set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalGreenReadout

open MeasureTheory Set Function
open scoped Interval
open SourceCriticalGreenTent SourceCriticalSecondAbel SourcePairedTailTest
open SourcePairedPrimeWork SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateSourceMobiusDerivative

/-- Integrating the tent against the second derivative retains the affine endpoint trace. -/
theorem dirichletTent_integral_second_deriv_eq_endpoint_interpolation
    {L s : ℝ} {D : ℝ → ℝ} (hL : 0 < L) (hs : s ∈ Icc 0 L)
    (hD : ContDiff ℝ 1 D)
    (hD' : AbsolutelyContinuousOnInterval (deriv D) 0 L) :
    (∫ u in 0..L, criticalDirichletTent L u s * deriv (deriv D) u) =
      (1 - s / L) * D 0 + (s / L) * D L - D s := by
  have hleft : uIcc (0 : ℝ) s ⊆ uIcc 0 L := by
    rw [uIcc_of_le hs.1, uIcc_of_le hL.le]
    exact Icc_subset_Icc le_rfl hs.2
  have hright : uIcc s L ⊆ uIcc 0 L := by
    rw [uIcc_of_le hs.2, uIcc_of_le hL.le]
    exact Icc_subset_Icc hs.1 le_rfl
  have hDL : AbsolutelyContinuousOnInterval D 0 s :=
    hD.contDiffOn.absolutelyContinuousOnInterval.mono hleft
  have hDR : AbsolutelyContinuousOnInterval D s L :=
    hD.contDiffOn.absolutelyContinuousOnInterval.mono hright
  have hD'L := hD'.mono hleft
  have hD'R := hD'.mono hright
  have hid : AbsolutelyContinuousOnInterval (fun u : ℝ => u) 0 s :=
    (contDiff_id : ContDiff ℝ 1 (fun u : ℝ => u)).contDiffOn.absolutelyContinuousOnInterval
  have haf : AbsolutelyContinuousOnInterval (fun u : ℝ => L - u) s L :=
    (contDiff_const.sub contDiff_id : ContDiff ℝ 1 (fun u : ℝ => L - u)).contDiffOn
      .absolutelyContinuousOnInterval
  have hpartsL : (∫ u in 0..s, u * deriv (deriv D) u) =
      s * deriv D s - D s + D 0 := by
    have hi := hid.integral_mul_deriv_eq_deriv_mul hD'L
    simp only [deriv_id'', one_mul, zero_mul, sub_zero] at hi
    rw [hDL.integral_deriv_eq_sub] at hi
    linarith
  have hpartsR : (∫ u in s..L, (L - u) * deriv (deriv D) u) =
      -(L - s) * deriv D s + D L - D s := by
    have hi := haf.integral_mul_deriv_eq_deriv_mul hD'R
    simp only [deriv_const_sub_id, sub_self, zero_mul, neg_one_mul] at hi
    rw [intervalIntegral.integral_neg, hDR.integral_deriv_eq_sub] at hi
    linarith
  have hkernel : Continuous (fun u : ℝ => criticalDirichletTent L u s) := by
    unfold criticalDirichletTent
    fun_prop
  have hiL : IntervalIntegrable
      (fun u => criticalDirichletTent L u s * deriv (deriv D) u) volume 0 s :=
    hD'L.intervalIntegrable_deriv.continuousOn_mul hkernel.continuousOn
  have hiR : IntervalIntegrable
      (fun u => criticalDirichletTent L u s * deriv (deriv D) u) volume s L :=
    hD'R.intervalIntegrable_deriv.continuousOn_mul hkernel.continuousOn
  have hkernelL :
      (∫ u in 0..s, criticalDirichletTent L u s * deriv (deriv D) u) =
        ((L - s) / L) * (∫ u in 0..s, u * deriv (deriv D) u) := by
    calc
      _ = ∫ u in 0..s, ((L - s) / L) * (u * deriv (deriv D) u) := by
        apply intervalIntegral.integral_congr
        intro u hu
        have hus : u ≤ s := (uIcc_of_le hs.1 ▸ hu).2
        unfold criticalDirichletTent
        rw [min_eq_left hus, max_eq_right hus]
        ring
      _ = _ := intervalIntegral.integral_const_mul _ _
  have hkernelR :
      (∫ u in s..L, criticalDirichletTent L u s * deriv (deriv D) u) =
        (s / L) * (∫ u in s..L, (L - u) * deriv (deriv D) u) := by
    calc
      _ = ∫ u in s..L, (s / L) * ((L - u) * deriv (deriv D) u) := by
        apply intervalIntegral.integral_congr
        intro u hu
        have hsu : s ≤ u := (uIcc_of_le hs.2 ▸ hu).1
        unfold criticalDirichletTent
        rw [min_eq_right hsu, max_eq_left hsu]
        ring
      _ = _ := intervalIntegral.integral_const_mul _ _
  rw [← intervalIntegral.integral_add_adjacent_intervals hiL hiR,
    hkernelL, hkernelR, hpartsL, hpartsR]
  field_simp [ne_of_gt hL]
  ring

/-- The actual paired test has zero endpoints, so its integrated coefficient is signed `-D`. -/
theorem pairedTailTest_integrated_green_readout {A s : ℝ} (hA : 1 ≤ A)
    (hs : s ∈ Icc 0 (2 * A)) :
    (∫ u in 0..2 * A,
      criticalDirichletTent (2 * A) u s * deriv (deriv (pairedTailTest A)) u) =
        -pairedTailTest A s := by
  have hi := dirichletTent_integral_second_deriv_eq_endpoint_interpolation
    (show 0 < 2 * A by linarith) hs (pairedTailTest_contDiff hA)
    (pairedTailTest_deriv_absolutelyContinuous hA)
  simpa only [pairedTailTest_at_zero hA, pairedTailTest_at_upper hA,
    mul_zero, zero_add, zero_sub] using hi

/-- The actual paired derivative at zero is `-1/2`, not the normalized source bump. -/
theorem pairedTailTest_deriv_at_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (pairedTailTest A) 0 = -1 / 2 := by
  have hp : 0 < A := by linarith
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hp)).1 0).hasDerivAt
  have hn : HasDerivAt
      (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hc.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun u : ℝ => sourceCorrelation explicitSecondDerivative A (-u)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hc0 : deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
    have hd := hc.unique hn
    linarith
  have hg : deriv (criticalPrimeTest A) 0 = 1 / 2 := by
    rw [criticalPrimeTest_deriv A 0 hp, hc0, actual_correlation_at_zero A hA]
    norm_num
  rw [pairedTailTest_deriv hA]
  simp [positiveSlope, negativeSlope, hg]

/-- The differentiable closed upper support trace makes the actual paired derivative zero. -/
theorem pairedTailTest_deriv_at_upper {A : ℝ} (hA : 1 ≤ A) :
    deriv (pairedTailTest A) (2 * A) = 0 := by
  have hp : 0 < A := by linarith
  have hg : deriv (criticalPrimeTest A) (2 * A) = 0 := by
    rw [criticalPrimeTest_deriv A (2 * A) hp, sourceCorrelation_upper_endpoint A hp,
      sourceCorrelation_deriv_zero_of_two_mul_le A (2 * A) hp le_rfl]
    simp
  rw [pairedTailTest_deriv hA]
  simp [positiveSlope, negativeSlope, hg]

/-- AC supplies genuine integrability and the exact zeroth and first curvature moments. -/
theorem pairedTailTest_second_deriv_moments {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, deriv (deriv (pairedTailTest A)) u) = 1 / 2 ∧
      (∫ u in 0..2 * A, u * deriv (deriv (pairedTailTest A)) u) = 0 := by
  have hD' := pairedTailTest_deriv_absolutelyContinuous hA
  have hmass := hD'.integral_deriv_eq_sub
  rw [pairedTailTest_deriv_at_upper hA, pairedTailTest_deriv_at_zero hA] at hmass
  have hid : AbsolutelyContinuousOnInterval (fun u : ℝ => u) 0 (2 * A) :=
    (contDiff_id : ContDiff ℝ 1 (fun u : ℝ => u)).contDiffOn.absolutelyContinuousOnInterval
  have hparts := hid.integral_mul_deriv_eq_deriv_mul hD'
  simp only [deriv_id'', one_mul, zero_mul, sub_zero] at hparts
  have hD : AbsolutelyContinuousOnInterval (pairedTailTest A) 0 (2 * A) :=
    (pairedTailTest_contDiff hA).contDiffOn.absolutelyContinuousOnInterval
  rw [pairedTailTest_deriv_at_upper hA, hD.integral_deriv_eq_sub,
    pairedTailTest_at_upper hA, pairedTailTest_at_zero hA] at hparts
  constructor <;> linarith

/-- The actual curvature cannot be nonnegative almost everywhere on the positive interval. -/
theorem pairedTailTest_second_deriv_not_ae_nonneg {A : ℝ} (hA : 1 ≤ A) :
    ¬ (∀ᵐ u ∂volume.restrict (Ioc 0 (2 * A)),
      0 ≤ deriv (deriv (pairedTailTest A)) u) := by
  intro hnonneg
  have hL : 0 < 2 * A := by linarith
  have hi := (pairedTailTest_deriv_absolutelyContinuous hA).intervalIntegrable_deriv
  have hweighted : IntervalIntegrable
      (fun u => u * deriv (deriv (pairedTailTest A)) u) volume 0 (2 * A) :=
    hi.continuousOn_mul continuous_id.continuousOn
  have hweighted_nonneg :
      0 ≤ᵐ[volume.restrict (Ioc 0 (2 * A))]
        (fun u => u * deriv (deriv (pairedTailTest A)) u) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc, hnonneg] with u hu hH
    exact mul_nonneg hu.1.le hH
  have hm := pairedTailTest_second_deriv_moments hA
  have hweighted_zero :=
    (intervalIntegral.integral_eq_zero_iff_of_le_of_nonneg_ae hL.le
      hweighted_nonneg hweighted).mp hm.2
  have hzero : (fun u => deriv (deriv (pairedTailTest A)) u) =ᵐ[
      volume.restrict (Ioc 0 (2 * A))] 0 := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc, hweighted_zero] with u hu hH
    change u * deriv (deriv (pairedTailTest A)) u = 0 at hH
    rcases mul_eq_zero.mp hH with hu0 | hH0
    · exact (ne_of_gt hu.1 hu0).elim
    · exact hH0
  have hmass_zero :=
    (intervalIntegral.integral_eq_zero_iff_of_le_of_nonneg_ae hL.le hnonneg hi).mpr hzero
  linarith [hm.1]

end FormalResearch.RiemannHypothesis.SourceCriticalGreenReadout
