-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourcePrefixPairing.Variant27f2201f47f53dfcc184eecb08de8ad6af5c4674e8053484250f3cded7896fb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27f2201f47f53dfcc184eecb08de8ad6af5c4674e8053484250f3cded7896fb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourcePrefixPairing.Variant27f2201f47f53dfcc184eecb08de8ad6af5c4674e8053484250f3cded7896fb7","mathematical_subject":"Analysis.Integration","original_sha256":"27f2201f47f53dfcc184eecb08de8ad6af5c4674e8053484250f3cded7896fb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/27f2201f47f53dfcc184eecb08de8ad6af5c4674e8053484250f3cded7896fb7.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing

/-!
# Exact moving-front transport for the unchanged signed residual

The prefix is an integral of the actual weighted Möbius primitive and actual
logarithmic source profile. Finite Abel summation retains the closed-right
endpoint. At the moving square-divisor cutoff it is the small sector minus
its weighted endpoint, rather than the raw small sector itself.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourcePrefixPairing.Variant27f2201f47f53dfcc184eecb08de8ad6af5c4674e8053484250f3cded7896fb7

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateMovingFrontTransport

open MeasureTheory Set
open EstimateMertensAbel EstimateMobiusSplit EstimateMertensResidual
open EstimateSourceMobiusKernel EstimateSourceKernelLogProfile EstimateWeightedMobiusPairing

noncomputable section

/-- Actual signed prefix, with no new arithmetic source or residual. -/
def sourcePrefixPairing (A S : ℝ) : ℝ :=
  -(∫ s in (0 : ℝ)..S, weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)

/-- The unchanged signed pairing after the real square-divisor front. -/
def sourceMovingTail (A : ℝ) : ℝ :=
  -(∫ s in (2 * Real.log A)..(2 * A),
    weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)

/-- The empty prefix at zero is zero for every source parameter. -/
@[simp] theorem sourcePrefixPairing_zero (A : ℝ) : sourcePrefixPairing A 0 = 0 := by
  simp [sourcePrefixPairing]

/-- Finite weighted Abel coefficients cancel their square roots at every positive atom.
The coefficient at zero vanishes; the atom at one remains. -/
theorem weightedSourceKernel_sum_mul_eq (A : ℝ) (N : ℕ) :
    (∑ d ∈ Finset.Icc 0 N, weightedSourceKernel A d * weightedMoebius d) =
      ∑ d ∈ Finset.Icc 1 N, realMoebius d * sourceMobiusKernel A d := by
  have heq : (∑ d ∈ Finset.Icc 0 N, weightedSourceKernel A d * weightedMoebius d) =
      ∑ d ∈ Finset.Icc 1 N, weightedSourceKernel A d * weightedMoebius d := by
    symm
    apply Finset.sum_subset
    · intro d hd
      exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hd).2⟩
    · intro d hd hdnot
      have hd0 : d = 0 := by
        simp only [Finset.mem_Icc] at hd hdnot
        omega
      subst d
      simp only [weightedMoebius_zero, mul_zero]
  rw [heq]
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : (0 : ℝ) < d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
  have hs : Real.sqrt (d : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hd0).ne'
  unfold weightedSourceKernel weightedMoebius
  field_simp

/-- Exponential change of variables for the actual prefix preserves the Jacobian
and includes every source atom through its closed-right endpoint. -/
theorem sourcePrefixPairing_eq_real_integral (A S : ℝ) (hA : 1 ≤ A) (hS : 0 ≤ S) :
    sourcePrefixPairing A S =
      -(∫ x in Ioc 1 (Real.exp S),
        weightedMertens x * deriv (weightedSourceKernel A) x) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (measurableSet_Ioc (a := (0 : ℝ)) (b := S))
    (fun s _ ↦ (Real.hasDerivAt_exp s).hasDerivWithinAt)
    (fun x _ y _ hxy ↦ Real.exp_injective hxy)
    (fun x ↦ weightedMertens x * deriv (weightedSourceKernel A) x)
  rw [Real.image_exp_Ioc, Real.exp_zero] at h
  rw [sourcePrefixPairing, h, intervalIntegral.integral_of_le hS]
  congr 1
  apply setIntegral_congr_fun measurableSet_Ioc
  intro s hs
  dsimp only
  rw [abs_of_pos (Real.exp_pos s), smul_eq_mul, weightedMobiusPrimitive_eq,
    ← weightedSourceKernel_deriv_exp A s hA]
  ring

/-- Exact prefix Abel identity for all real source scales and all admitted prefix endpoints.
The closed-right weighted endpoint is subtracted, not discarded. -/
theorem sourcePrefixPairing_eq_sum_sub_endpoint (A S : ℝ) (hA : 1 ≤ A)
    (hS : 0 ≤ S) (hSA : S ≤ 2 * A) :
    sourcePrefixPairing A S =
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp S⌋₊, realMoebius d * sourceMobiusKernel A d) -
        weightedMobiusPrimitive S * sourceLogKernel A S := by
  have hderiv : IntegrableOn (deriv (weightedSourceKernel A)) (Icc 1 (Real.exp S)) :=
    (weightedSourceKernel_deriv_integrable A hA).mono_set
      (Icc_subset_Icc le_rfl (Real.exp_le_exp.mpr hSA))
  have habel := sum_mul_eq_sub_integral_mul₀ weightedMoebius weightedMoebius_zero
    (Real.exp S)
    (fun x hx ↦ weightedSourceKernel_differentiableAt A x hA (zero_lt_one.trans_le hx.1))
    hderiv
  rw [weightedSourceKernel_sum_mul_eq A, weightedSourceKernel_exp A S] at habel
  have hInt : (∫ x in Ioc 1 (Real.exp S),
      deriv (weightedSourceKernel A) x * ∑ d ∈ Finset.Icc 0 ⌊x⌋₊, weightedMoebius d) =
      ∫ x in Ioc 1 (Real.exp S),
        weightedMertens x * deriv (weightedSourceKernel A) x := by
    apply integral_congr_ae
    filter_upwards with x
    simp only [weightedMertens, mul_comm]
  rw [hInt] at habel
  rw [sourcePrefixPairing_eq_real_integral A S hA hS, weightedMobiusPrimitive_eq]
  change _ = _ - weightedMertens (Real.exp S) * sourceLogKernel A S
  change _ = sourceLogKernel A S * weightedMertens (Real.exp S) - _ at habel
  linarith

/-- At the initial atom the endpoint cancels the unit term exactly.
This regression protects the endpoint from being silently omitted. -/
theorem prefix_unit_atom_cancellation (A : ℝ) :
    sourceMobiusKernel A 1 - weightedMobiusPrimitive 0 * sourceLogKernel A 0 = 0 := by
  simp [weightedMobiusPrimitive, weightedMoebius, realMoebius, sourceLogKernel]

/-- The moving square-divisor front lies in the source interval at every real scale. -/
theorem square_front_mem (A : ℝ) (hA : 1 ≤ A) :
    2 * Real.log A ∈ Icc 0 (2 * A) := by
  have hA0 : 0 < A := by linarith
  constructor
  · exact mul_nonneg (by norm_num) (Real.log_nonneg hA)
  · linarith [Real.log_le_sub_one_of_pos hA0]

/-- The exponential of the moving front is the exact real square cutoff. -/
theorem exp_square_front (A : ℝ) (hA : 1 ≤ A) : Real.exp (2 * Real.log A) = A ^ 2 := by
  rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
    Real.exp_add, Real.exp_log (by linarith : 0 < A), pow_two]

/-- The compensated moving prefix equals the complete small-divisor sector
minus its weighted endpoint; equality at `d=A²` remains in the closed sum. -/
theorem sourcePrefixPairing_square_front_eq (A : ℝ) (hA : 1 ≤ A) :
    sourcePrefixPairing A (2 * Real.log A) =
      smallDivisorMobiusMoment A -
        weightedMobiusPrimitive (2 * Real.log A) * sourceLogKernel A (2 * Real.log A) := by
  rw [sourcePrefixPairing_eq_sum_sub_endpoint A _ hA
    (square_front_mem A hA).1 (square_front_mem A hA).2,
    exp_square_front A hA, smallDivisorMobiusMoment_eq_mobius_sum A hA]
  rfl

/-- The original residual splits exactly at the real moving front. -/
theorem mertensResidual_eq_prefix_add_movingTail (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = sourcePrefixPairing A (2 * Real.log A) + sourceMovingTail A := by
  have hfront := square_front_mem A hA
  have hi := weightedMobiusPrimitive_mul_deriv_integrable A hA
  have hi1 : IntervalIntegrable
      (fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      volume 0 (2 * Real.log A) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hfront.1).mpr
      (hi.mono_set (Icc_subset_Icc le_rfl hfront.2))
  have hi2 : IntervalIntegrable
      (fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s)
      volume (2 * Real.log A) (2 * A) :=
    (intervalIntegrable_iff_integrableOn_Icc_of_le hfront.2).mpr
      (hi.mono_set (Icc_subset_Icc hfront.1 le_rfl))
  rw [mertensResidual_eq_weighted_log_pairing A hA, sourcePrefixPairing, sourceMovingTail,
    ← intervalIntegral.integral_add_adjacent_intervals hi1 hi2]
  ring


/-- The moving tail includes the weighted lower endpoint in addition to the
strict large-divisor sector. The endpoint is not absorbed by deleting it. -/
theorem sourceMovingTail_eq_large_add_endpoint (A : ℝ) (hA : 1 ≤ A) :
    sourceMovingTail A = largeDivisorMobiusMoment A +
      weightedMobiusPrimitive (2 * Real.log A) * sourceLogKernel A (2 * Real.log A) := by
  have hres := mertensResidual_eq_closedPrimeMoment A hA
  rw [closedPrimeMoment_eq_small_add_large] at hres
  have hsplit := mertensResidual_eq_prefix_add_movingTail A hA
  rw [sourcePrefixPairing_square_front_eq A hA] at hsplit
  linarith

end
end EstimateMovingFrontTransport
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
