-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BelowOneBump.Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.BelowOneBump.Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/fractional-sampling/SourceQuadratureBelowOneFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceFractionalQuadrature
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm

/-!
# Hostile positive-axis fixture

An actual compact C¹ zero extension supported below one has a nonzero
continuous integral and no positive-integer samples. Dropping `(0,1)` removes
its entire signed quadrature contribution. This is an endpoint fixture, not
an RH covariance estimate.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BelowOneBump.Variant8836ee4c678dcda080b08c4e6c3444ef369c1d44ffec03f8c27a948d0a81a941

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceQuadratureBelowOneFixtures

open MeasureTheory Set Filter Function
open SourcePairing GevreyPolynomial SourceDiagonalMainTerm SourceFractionalQuadrature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open BridgeNormalization
noncomputable section

/-- A rescaled immutable polynomial bump lies entirely in the unit interval. -/
def belowOneBump (u : ℝ) : ℝ := sourceBump (2 * u - 1)

/-- The below-one fixture is C¹ at both zero-extension endpoints. -/
theorem belowOneBump_contDiff : ContDiff ℝ 1 belowOneBump := by
  exact (sourceBump_contDiff.of_le (by norm_num)).comp
    ((contDiff_const.mul contDiff_id).sub contDiff_const)

/-- The positive-axis zero extension is literal. -/
theorem belowOneBump_zero_below {u : ℝ} (hu : u ≤ 0) : belowOneBump u = 0 := by
  by_cases he : u = 0
  · subst u; norm_num [belowOneBump, sourceBump]
  · unfold belowOneBump sourceBump
    rw [if_neg]
    intro h
    have hlt : u < 0 := lt_of_le_of_ne hu he
    have hleft : -1 ≤ 2 * u - 1 := h.1
    linarith

/-- The final sample at one and the complete tail both vanish. -/
theorem belowOneBump_zero_above {u : ℝ} (hu : 1 ≤ u) : belowOneBump u = 0 := by
  by_cases he : u = 1
  · subst u; norm_num [belowOneBump, sourceBump]
  · unfold belowOneBump sourceBump
    rw [if_neg]
    intro h
    have hlt : 1 < u := lt_of_le_of_ne hu (Ne.symm he)
    have hright : 2 * u - 1 ≤ 1 := h.2
    linarith

/-- The fixture has compact support in the closed unit cell. -/
theorem belowOneBump_hasCompactSupport : HasCompactSupport belowOneBump := by
  apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := (0 : ℝ)) (b := 1))
  intro u hu
  constructor
  · by_contra hn
    exact hu (belowOneBump_zero_below (le_of_lt (lt_of_not_ge hn)))
  · by_contra hn
    exact hu (belowOneBump_zero_above (le_of_lt (lt_of_not_ge hn)))

/-- The discarded continuous unit cell has a strictly positive exact mass. -/
theorem belowOneBump_interval_integral : (∫ u in (0 : ℝ)..1, belowOneBump u) = 128 / 315 := by
  have h := intervalIntegral.integral_comp_mul_sub sourceBump
    (a := (0 : ℝ)) (b := 1) (c := 2) (by norm_num) 1
  norm_num only [mul_zero, mul_one, zero_sub, smul_eq_mul] at h
  have hb : (∫ x in (-1 : ℝ)..1, sourceBump x) = 256 / 315 := by
    calc
      _ = ∫ x in (-1 : ℝ)..1, unitBump x := by
        apply intervalIntegral.integral_congr
        intro x hx
        have hm : x ∈ Icc (-1 : ℝ) 1 := by simpa only [uIcc_of_le (by norm_num : (-1 : ℝ) ≤ 1)] using hx
        simp [sourceBump, hm, unitBump]
      _ = _ := unitBump_integral
  rw [hb] at h
  change (∫ u in (0 : ℝ)..1, sourceBump (2 * u - 1)) = _
  convert h using 1
  norm_num

/-- The whole positive-axis integral retains all of the below-one mass. -/
theorem belowOneBump_positive_integral :
    (∫ u : ℝ in Ioi 0, belowOneBump u) = 128 / 315 := by
  have hs : support belowOneBump ⊆ Ioc (0 : ℝ) 1 := by
    intro u hu
    constructor
    · by_contra hn
      exact hu (belowOneBump_zero_below (le_of_not_gt hn))
    · by_contra hn
      exact hu (belowOneBump_zero_above (le_of_lt (lt_of_not_ge hn)))
  have hi : (∫ u : ℝ in Ioi 0, belowOneBump u) = ∫ u : ℝ, belowOneBump u :=
    setIntegral_eq_integral_of_forall_compl_eq_zero
      (fun u hu => belowOneBump_zero_below (le_of_not_gt hu))
  rw [hi, ← intervalIntegral.integral_eq_integral_of_support_subset hs]
  exact belowOneBump_interval_integral

/-- Every positive-integer sample vanishes despite the nonzero continuous mass. -/
theorem belowOneBump_positive_samples_zero (n : ℕ) : belowOneBump (n + 1 : ℝ) = 0 := by
  apply belowOneBump_zero_above
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  linarith

/-- The discarded below-one contribution is an exact nonzero signed remainder. -/
theorem belowOneBump_signed_remainder :
    (∫ u : ℝ in Ioi 0, Int.fract u * deriv belowOneBump u) = -(128 / 315) := by
  have h := positive_axis_quadrature belowOneBump belowOneBump_contDiff
    belowOneBump_hasCompactSupport 0
    (fun u hu => belowOneBump_zero_below hu)
    (fun u hu => belowOneBump_zero_above (by simpa only [Nat.cast_zero, zero_add] using hu))
  simpa only [Finset.Icc_eq_empty_of_lt (by omega : 0 < 1), Finset.sum_empty,
    belowOneBump_positive_integral, zero_sub] using h.symm

/-- Hostile fixture: replacing `(0,∞)` by `(1,∞)` drops nonzero mass. -/
theorem belowOneBump_truncation_false :
    (∫ u : ℝ in Ioi 0, belowOneBump u) ≠ ∫ u : ℝ in Ioi 1, belowOneBump u := by
  have hz : (∫ u : ℝ in Ioi 1, belowOneBump u) = 0 := by
    apply integral_eq_zero_of_ae
    filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with u hu
    exact belowOneBump_zero_above hu.le
  rw [belowOneBump_positive_integral, hz]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceQuadratureBelowOneFixtures
