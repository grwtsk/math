-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IndicatorHasDerivAt.Variantda9067b84034144bfa3adbb7deb45f6714e03db4537148ec999c08972a692fd5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da9067b84034144bfa3adbb7deb45f6714e03db4537148ec999c08972a692fd5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.IndicatorHasDerivAt.Variantda9067b84034144bfa3adbb7deb45f6714e03db4537148ec999c08972a692fd5","mathematical_subject":"Analysis.Calculus","original_sha256":"da9067b84034144bfa3adbb7deb45f6714e03db4537148ec999c08972a692fd5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/CorrelationRegularity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
import Mathlib.Analysis.Calculus.ContDiff.Convolution
import Mathlib.Topology.Algebra.Indicator

/-!
# Regularity of the actual source correlation

The concrete normalized test is a compactly supported, endpoint-matched C¹
polynomial. Its correlation is therefore C¹ by the compact convolution theorem.
No assumed realization or manuscript correlation-polynomial identity is used.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.IndicatorHasDerivAt.Variantda9067b84034144bfa3adbb7deb45f6714e03db4537148ec999c08972a692fd5

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace CorrelationRegularity

open MeasureTheory Set
open scoped ContDiff Convolution Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

/-- Zero extension preserves a first derivative when both traces vanish on the frontier. -/
theorem indicator_hasDerivAt {s : Set ℝ} {f f' : ℝ → ℝ}
    (hf : ∀ x, HasDerivAt f (f' x) x)
    (hzero : ∀ x ∈ frontier s, f x = 0 ∧ f' x = 0) (x : ℝ) :
    HasDerivAt (s.indicator f) (s.indicator f' x) x := by
  classical
  by_cases hx : x ∈ frontier s
  · obtain ⟨hfx, hdx⟩ := hzero x hx
    have hv : s.indicator f x = 0 := by simp [indicator_apply, hfx]
    have hd : s.indicator f' x = 0 := by simp [indicator_apply, hdx]
    rw [hd]
    have hs : HasDerivWithinAt (s.indicator f) 0 s x := by
      have h := (hf x).hasDerivWithinAt (s := s)
      rw [hdx] at h
      exact h.congr (fun y hy ↦ indicator_of_mem hy f) (by rw [hv, hfx])
    have hc : HasDerivWithinAt (s.indicator f) 0 sᶜ x := by
      exact (hasDerivWithinAt_const x sᶜ (0 : ℝ)).congr
        (fun y hy ↦ indicator_of_notMem hy f) hv
    have hu := hs.union hc
    simpa only [union_compl_self, hasDerivWithinAt_univ] using hu
  · have hdich : x ∈ interior s ∨ x ∈ interior sᶜ := by
      simpa only [← mem_compl_iff, compl_frontier_eq_union_interior, mem_union] using hx
    rcases hdich with hi | hi
    · have heq : s.indicator f =ᶠ[𝓝 x] f := by
        filter_upwards [isOpen_interior.mem_nhds hi] with y hy
        exact indicator_of_mem (interior_subset hy) f
      rw [indicator_of_mem (interior_subset hi) f']
      exact (hf x).congr_of_eventuallyEq heq
    · have heq : s.indicator f =ᶠ[𝓝 x] fun _ ↦ 0 := by
        filter_upwards [isOpen_interior.mem_nhds hi] with y hy
        exact indicator_of_notMem (interior_subset hy) f
      rw [indicator_of_notMem (interior_subset hi) f']
      exact (hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq heq

/-- The exact polynomial derivative of the concrete second interior derivative. -/
def thirdInterior (A x : ℝ) : ℝ :=
  (144 * (x / A) - 480 * (x / A) ^ 3 + 336 * (x / A) ^ 5) /
    (A ^ 3 * Real.sqrt A)

/-- Ordinary differentiation of the immutable source polynomial. -/
theorem secondInterior_hasDerivAt (A x : ℝ) :
    HasDerivAt (secondInterior A) (thirdInterior A x) x := by
  have hy := (hasDerivAt_id x).div_const A
  have h := ((((hasDerivAt_const x (-8 : ℝ)).add ((hy.pow 2).const_mul 72)).sub
    ((hy.pow 4).const_mul 120)).add ((hy.pow 6).const_mul 56)).div_const
      (A ^ 2 * Real.sqrt A)
  convert h using 1 <;> try rfl
  dsimp [thirdInterior]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- Both endpoint traces of the third derivative are exactly zero. -/
theorem thirdInterior_endpoints (A : ℝ) (hA : A ≠ 0) :
    thirdInterior A (-A) = 0 ∧ thirdInterior A A = 0 := by
  norm_num [thirdInterior, hA]

/-- Interior of the source's normalized, pole-annihilated test. -/
def normalizedInterior (A x : ℝ) : ℝ :=
  (secondInterior A x - bumpInterior A x / 4) / Real.sqrt (sourceNormalization A)

/-- The derivative of the normalized interior; normalization remains the source's constant. -/
def normalizedInteriorDerivative (A x : ℝ) : ℝ :=
  (thirdInterior A x - firstInterior A x / 4) / Real.sqrt (sourceNormalization A)

/-- The actual normalized test equals this polynomial's closed-interval zero extension. -/
theorem normalizedTest_eq_indicator (A : ℝ) (hA : 0 < A) :
    normalizedTest explicitSecondDerivative A =
      (Icc (-A) A).indicator (normalizedInterior A) := by
  funext x
  rw [normalizedTest, explicit_dilationTest_eq_indicator A hA]
  simp only [normalizedInterior, indicator_apply]
  split_ifs <;> simp

/-- Ordinary derivative of the normalized interior, without a norm-identity premise. -/
theorem normalizedInterior_hasDerivAt (A x : ℝ) :
    HasDerivAt (normalizedInterior A) (normalizedInteriorDerivative A x) x :=
  ((secondInterior_hasDerivAt A x).sub ((bumpInterior_hasDerivAt A x).div_const 4)).div_const _

/-- The interior derivative is continuous since it is a fixed polynomial. -/
theorem normalizedInteriorDerivative_continuous (A : ℝ) :
    Continuous (normalizedInteriorDerivative A) := by
  unfold normalizedInteriorDerivative thirdInterior firstInterior
  fun_prop

/-- Both the test and its first derivative match zero at both support endpoints. -/
theorem normalizedInterior_frontier (A : ℝ) (hA : 0 < A)
    (x : ℝ) (hx : x ∈ frontier (Icc (-A) A)) :
    normalizedInterior A x = 0 ∧ normalizedInteriorDerivative A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [normalizedInterior, normalizedInteriorDerivative,
      (bumpInterior_endpoints A (ne_of_gt hA)).1,
      (bumpInterior_endpoints A (ne_of_gt hA)).2,
      (firstInterior_endpoints A (ne_of_gt hA)).1,
      (firstInterior_endpoints A (ne_of_gt hA)).2,
      (secondInterior_endpoints A (ne_of_gt hA)).1,
      (secondInterior_endpoints A (ne_of_gt hA)).2,
      (thirdInterior_endpoints A (ne_of_gt hA)).1,
      (thirdInterior_endpoints A (ne_of_gt hA)).2]

/-- Global C¹ regularity includes both zero-extension seams of the actual test. -/
theorem normalizedTest_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (normalizedTest explicitSecondDerivative A) := by
  rw [normalizedTest_eq_indicator A hA, contDiff_one_iff_deriv]
  have hd := indicator_hasDerivAt (s := Icc (-A) A)
    (normalizedInterior_hasDerivAt A) (normalizedInterior_frontier A hA)
  refine ⟨fun x ↦ (hd x).differentiableAt, ?_⟩
  have heq : deriv ((Icc (-A) A).indicator (normalizedInterior A)) =
      (Icc (-A) A).indicator (normalizedInteriorDerivative A) := funext fun x ↦ (hd x).deriv
  rw [heq]
  exact (normalizedInteriorDerivative_continuous A).indicator
    (fun x hx ↦ (normalizedInterior_frontier A hA x hx).2)

/-- The actual normalized test is zero at and outside either support endpoint. -/
theorem normalizedTest_zero_of_le_abs (A x : ℝ) (hA : 0 < A) (hx : A ≤ |x|) :
    normalizedTest explicitSecondDerivative A x = 0 := by
  rw [normalizedTest_eq_indicator A hA]
  by_cases hm : x ∈ Icc (-A) A
  · rw [indicator_of_mem hm]
    have he : x = -A ∨ x = A := by
      rcases le_total x 0 with hn | hp
      · left
        rw [abs_of_nonpos hn] at hx
        exact le_antisymm (by linarith) hm.1
      · right
        rw [abs_of_nonneg hp] at hx
        exact le_antisymm hm.2 hx
    rcases he with he | he <;> rw [he] <;>
      norm_num [normalizedInterior, secondInterior, bumpInterior, ne_of_gt hA]
  · exact indicator_of_notMem hm _

/-- Compact support of the exact normalized test is a proved analytic fact. -/
theorem normalizedTest_hasCompactSupport (A : ℝ) (hA : 0 < A) :
    HasCompactSupport (normalizedTest explicitSecondDerivative A) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  rw [normalizedTest_eq_indicator A hA]
  exact indicator_of_notMem hx _

/-- Global integrability follows from the concrete continuous compact test. -/
theorem normalizedTest_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (normalizedTest explicitSecondDerivative A) volume :=
  (normalizedTest_contDiff A hA).continuous.integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A hA)

/-- Every actual correlation integrand is integrable, so total-integral default
values do not supply any part of the regularity or endpoint argument. -/
theorem correlation_product_integrable (A t : ℝ) (hA : 0 < A) :
    Integrable (fun x ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t)) volume := by
  have hc := (normalizedTest_contDiff A hA).continuous
  exact (hc.mul (hc.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A hA).mul_right

/-- Reflection of the exact test retains compact support. -/
theorem reflectedTest_hasCompactSupport (A : ℝ) (hA : 0 < A) :
    HasCompactSupport (fun x ↦ normalizedTest explicitSecondDerivative A (-x)) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  apply normalizedTest_zero_of_le_abs A (-x) hA
  rw [abs_neg]
  by_contra h
  exact hx (abs_le.mp (le_of_lt (lt_of_not_ge h)))

/-- Reflection is integrable without assuming any realization fields. -/
theorem reflectedTest_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun x ↦ normalizedTest explicitSecondDerivative A (-x)) volume :=
  ((normalizedTest_contDiff A hA).continuous.comp continuous_neg).integrable_of_hasCompactSupport
    (reflectedTest_hasCompactSupport A hA)

/-- The defining correlation is exactly a convolution with the reflected test. -/
theorem sourceCorrelation_eq_convolution (A : ℝ) :
    sourceCorrelation explicitSecondDerivative A =
      (normalizedTest explicitSecondDerivative A ⋆
        (fun x ↦ normalizedTest explicitSecondDerivative A (-x))) := by
  funext t
  unfold sourceCorrelation convolution
  apply integral_congr_ae
  filter_upwards [] with x
  simp [sub_eq_add_neg]

/-- C¹ convolution regularity proves every correlation seam simultaneously. -/
theorem sourceCorrelation_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (sourceCorrelation explicitSecondDerivative A) := by
  rw [sourceCorrelation_eq_convolution]
  exact (normalizedTest_hasCompactSupport A hA).contDiff_convolution_left
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalizedTest_contDiff A hA)
    (reflectedTest_integrable A hA).locallyIntegrable

/-- At separation at least twice the radius, each integrand has a zero factor,
including the single possible touching point at either boundary. -/
theorem sourceCorrelation_eq_zero_of_two_mul_le_abs (A t : ℝ)
    (hA : 0 < A) (ht : 2 * A ≤ |t|) :
    sourceCorrelation explicitSecondDerivative A t = 0 := by
  unfold sourceCorrelation
  apply integral_eq_zero_of_ae
  filter_upwards [] with x
  change normalizedTest explicitSecondDerivative A x *
    normalizedTest explicitSecondDerivative A (x - t) = 0
  by_cases hx : A ≤ |x|
  · rw [normalizedTest_zero_of_le_abs A x hA hx, zero_mul]
  · have hxt : A ≤ |x - t| := by
      have htbound : |t| ≤ |x| + |x - t| := by
        calc
          |t| = |x - (x - t)| := by congr 1; ring
          _ ≤ |x| + |x - t| := abs_sub _ _
      linarith [lt_of_not_ge hx]
    rw [normalizedTest_zero_of_le_abs A (x - t) hA hxt, mul_zero]

/-- The exact upper support endpoint vanishes for every positive radius. -/
theorem sourceCorrelation_upper_endpoint (A : ℝ) (hA : 0 < A) :
    sourceCorrelation explicitSecondDerivative A (2 * A) = 0 :=
  sourceCorrelation_eq_zero_of_two_mul_le_abs A (2 * A) hA (le_abs_self _)

/-- The lower support endpoint vanishes as well, including its touching point. -/
theorem sourceCorrelation_lower_endpoint (A : ℝ) (hA : 0 < A) :
    sourceCorrelation explicitSecondDerivative A (-(2 * A)) = 0 := by
  apply sourceCorrelation_eq_zero_of_two_mul_le_abs A (-(2 * A)) hA
  simpa only [abs_neg] using le_abs_self (2 * A)

/-- Compact support of the actual correlation follows from the explicit overlap bound. -/
theorem sourceCorrelation_hasCompactSupport (A : ℝ) (hA : 0 < A) :
    HasCompactSupport (sourceCorrelation explicitSecondDerivative A) := by
  refine exists_compact_iff_hasCompactSupport.mp
    ⟨Icc (-(2 * A)) (2 * A), isCompact_Icc, ?_⟩
  intro t ht
  apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA
  by_contra h
  exact ht (abs_le.mp (le_of_lt (lt_of_not_ge h)))

/-- Global integrability of the actual correlation, with no conditional analytic structure. -/
theorem sourceCorrelation_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (sourceCorrelation explicitSecondDerivative A) volume :=
  (sourceCorrelation_contDiff A hA).continuous.integrable_of_hasCompactSupport
    (sourceCorrelation_hasCompactSupport A hA)

/-- A real autocorrelation is exactly even by translation of its defining integral. -/
theorem sourceCorrelation_even (A : ℝ) :
    Function.Even (sourceCorrelation explicitSecondDerivative A) := by
  intro t
  unfold sourceCorrelation
  have h := integral_sub_right_eq_self (μ := volume)
    (fun x ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - -t)) t
  simpa only [sub_neg_eq_add, sub_add_cancel, mul_comm] using h.symm

/-- The global theorem explicitly covers the center and both moving support seams. -/
theorem sourceCorrelation_seams_contDiffAt (A : ℝ) (hA : 0 < A) :
    ContDiffAt ℝ 1 (sourceCorrelation explicitSecondDerivative A) 0 ∧
    ContDiffAt ℝ 1 (sourceCorrelation explicitSecondDerivative A) (-(2 * A)) ∧
    ContDiffAt ℝ 1 (sourceCorrelation explicitSecondDerivative A) (2 * A) :=
  ⟨(sourceCorrelation_contDiff A hA).contDiffAt,
    (sourceCorrelation_contDiff A hA).contDiffAt,
    (sourceCorrelation_contDiff A hA).contDiffAt⟩

/-- The finite C2.1 certificate exposes only the admitted radius-domain hypothesis. -/
theorem correlation_certificate (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (sourceCorrelation explicitSecondDerivative A) ∧
      sourceCorrelation explicitSecondDerivative A (2 * A) = 0 := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  exact ⟨sourceCorrelation_contDiff A hp, sourceCorrelation_upper_endpoint A hp⟩

end

end CorrelationRegularity
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
