import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-!
# The normalized literal source bump and its classical pole operator

The zero extension is differentiated with the accepted endpoint traces. No weak
second derivative proposition is used to infer classical differentiability.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePoleReducedBump

open MeasureTheory Set
open scoped ContDiff
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity

noncomputable section

/-- The source bump with exactly the same fixed normalization as the source test. -/
def normalizedSourceBump (A x : ℝ) : ℝ :=
  scaledBump A x / Real.sqrt (sourceNormalization A)

private theorem bump_frontier (A : ℝ) (hA : 0 < A)
    (x : ℝ) (hx : x ∈ frontier (Icc (-A) A)) :
    bumpInterior A x = 0 ∧ firstInterior A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [(bumpInterior_endpoints A hA.ne').1, (bumpInterior_endpoints A hA.ne').2,
      (firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2]

private theorem first_frontier (A : ℝ) (hA : 0 < A)
    (x : ℝ) (hx : x ∈ frontier (Icc (-A) A)) :
    firstInterior A x = 0 ∧ secondInterior A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [(firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2,
      (secondInterior_endpoints A hA.ne').1, (secondInterior_endpoints A hA.ne').2]

/-- Classical first differentiation of the actual normalized zero extension. -/
theorem normalizedSourceBump_hasDerivAt (A x : ℝ) (hA : 0 < A) :
    HasDerivAt (normalizedSourceBump A)
      ((Icc (-A) A).indicator (firstInterior A) x / Real.sqrt (sourceNormalization A)) x := by
  unfold normalizedSourceBump
  rw [scaledBump_eq_indicator A hA]
  exact (indicator_hasDerivAt (bumpInterior_hasDerivAt A) (bump_frontier A hA) x).div_const _

/-- The first derivative retains its exact zero extension. -/
theorem normalizedSourceBump_deriv (A : ℝ) (hA : 0 < A) :
    deriv (normalizedSourceBump A) =
      fun x ↦ (Icc (-A) A).indicator (firstInterior A) x /
        Real.sqrt (sourceNormalization A) :=
  funext fun x ↦ (normalizedSourceBump_hasDerivAt A x hA).deriv

/-- Classical second differentiation, with no hidden endpoint atom. -/
theorem normalizedSourceBump_deriv_hasDerivAt (A x : ℝ) (hA : 0 < A) :
    HasDerivAt (deriv (normalizedSourceBump A))
      (explicitSecondDerivative A x / Real.sqrt (sourceNormalization A)) x := by
  rw [normalizedSourceBump_deriv A hA]
  exact (indicator_hasDerivAt (firstInterior_hasDerivAt A) (first_frontier A hA) x).div_const _

/-- The second derivative is the literal accepted derivative divided by the fixed norm. -/
theorem normalizedSourceBump_second_deriv (A x : ℝ) (hA : 0 < A) :
    deriv (deriv (normalizedSourceBump A)) x =
      explicitSecondDerivative A x / Real.sqrt (sourceNormalization A) :=
  (normalizedSourceBump_deriv_hasDerivAt A x hA).deriv

/-- Global C² regularity includes both source seams. -/
theorem normalizedSourceBump_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 2 (normalizedSourceBump A) := by
  rw [show (2 : ℕ∞ω) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
  refine ⟨fun x ↦ (normalizedSourceBump_hasDerivAt A x hA).differentiableAt,
    by simp, ?_⟩
  rw [contDiff_one_iff_deriv]
  refine ⟨fun x ↦ (normalizedSourceBump_deriv_hasDerivAt A x hA).differentiableAt, ?_⟩
  have heq : deriv (deriv (normalizedSourceBump A)) =
      fun x ↦ explicitSecondDerivative A x / Real.sqrt (sourceNormalization A) :=
    funext fun x ↦ normalizedSourceBump_second_deriv A x hA
  rw [heq]
  exact ((secondInterior_continuous A).indicator
    (fun x hx ↦ (first_frontier A hA x hx).2)).div_const _

/-- The exact classical operator giving the original source test. -/
theorem normalizedSourceBump_pole_operator (A x : ℝ) (hA : 0 < A) :
    deriv (deriv (normalizedSourceBump A)) x - normalizedSourceBump A x / 4 =
      normalizedTest explicitSecondDerivative A x := by
  rw [normalizedSourceBump_second_deriv A x hA]
  unfold normalizedSourceBump normalizedTest dilationTest
  ring

/-- Compact support is established from the actual indicator source. -/
theorem normalizedSourceBump_hasCompactSupport (A : ℝ) (hA : 0 < A) :
    HasCompactSupport (normalizedSourceBump A) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  unfold normalizedSourceBump
  rw [scaledBump_eq_indicator A hA, indicator_of_notMem hx, zero_div]

/-- Genuine integrability of the actual bump. -/
theorem normalizedSourceBump_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (normalizedSourceBump A) volume :=
  (normalizedSourceBump_contDiff A hA).continuous.integrable_of_hasCompactSupport
    (normalizedSourceBump_hasCompactSupport A hA)

/-- The bump and its first derivative vanish at or outside both endpoints. -/
theorem normalizedSourceBump_zero_of_le_abs (A x : ℝ) (hA : 0 < A) (hx : A ≤ |x|) :
    normalizedSourceBump A x = 0 ∧ deriv (normalizedSourceBump A) x = 0 := by
  rw [normalizedSourceBump_deriv A hA]
  unfold normalizedSourceBump
  rw [scaledBump_eq_indicator A hA]
  by_cases hm : x ∈ Icc (-A) A
  · have he : x = -A ∨ x = A := by
      rcases le_total x 0 with hn | hp
      · left
        rw [abs_of_nonpos hn] at hx
        exact le_antisymm (by linarith) hm.1
      · right
        rw [abs_of_nonneg hp] at hx
        exact le_antisymm hm.2 (by linarith)
    rcases he with he | he <;> rw [he] <;>
      simp [(bumpInterior_endpoints A hA.ne').1, (bumpInterior_endpoints A hA.ne').2,
        (firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2]
  · simp [indicator_of_notMem hm]

end
end EstimatePoleReducedBump
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
