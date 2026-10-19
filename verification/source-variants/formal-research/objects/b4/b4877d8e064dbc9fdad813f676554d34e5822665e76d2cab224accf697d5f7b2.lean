import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceConvergence
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.Analysis.Meromorphic.Order

open Set Filter
open scoped Topology
noncomputable section
namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace SourceLaplacePole

def patchedNumerator (f : ℂ → ℂ) (a : ℂ) : ℂ → ℂ :=
  Function.update (fun w ↦ w ^ 9 * f w) 0 a

theorem patchedNumerator_zero (f : ℂ → ℂ) (a : ℂ) : patchedNumerator f a 0 = a := by
  simp [patchedNumerator]

theorem patchedNumerator_of_ne (f : ℂ → ℂ) (a w : ℂ) (hw : w ≠ 0) :
    patchedNumerator f a w = w ^ 9 * f w :=
  Function.update_of_ne hw _ _

theorem patchedNumerator_analytic {f : ℂ → ℂ} {a : ℂ}
    (hlim : Tendsto (fun w ↦ w ^ 9 * f w) (𝓝[≠] 0) (𝓝 a))
    (hd : ∀ᶠ w in 𝓝[≠] (0 : ℂ), DifferentiableAt ℂ f w) :
    AnalyticAt ℂ (patchedNumerator f a) 0 := by
  apply Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
  · filter_upwards [hd, self_mem_nhdsWithin] with w hdw hw
    have hne : w ≠ 0 := hw
    have heq : patchedNumerator f a =ᶠ[𝓝 w] fun v ↦ v ^ 9 * f v := by
      filter_upwards [eventually_ne_nhds hne] with v hv
      exact patchedNumerator_of_ne f a v hv
    exact (((differentiableAt_id.pow 9).mul hdw).congr_of_eventuallyEq heq)
  · exact continuousAt_update_same.mpr hlim

theorem meromorphicAt_of_patched_numerator {f H : ℂ → ℂ}
    (hH : AnalyticAt ℂ H 0)
    (heq : ∀ᶠ w in 𝓝[≠] (0 : ℂ), f w = H w / w ^ 9) : MeromorphicAt f 0 := by
  have hm : MeromorphicAt (fun w ↦ H w / w ^ 9) 0 :=
    hH.meromorphicAt.div ((analyticAt_id.pow 9).meromorphicAt)
  exact hm.congr (heq.mono (fun _ h ↦ h.symm))

theorem meromorphicOrderAt_of_patched_numerator {f H : ℂ → ℂ}
    (hH : AnalyticAt ℂ H 0) (hH0 : H 0 ≠ 0)
    (heq : ∀ᶠ w in 𝓝[≠] (0 : ℂ), f w = H w / w ^ 9) :
    meromorphicOrderAt f 0 = (-9 : ℤ) := by
  apply (meromorphicOrderAt_eq_int_iff (meromorphicAt_of_patched_numerator hH heq)).mpr
  refine ⟨H, hH, hH0, ?_⟩
  filter_upwards [heq] with w hw
  rw [hw]
  simp [smul_eq_mul, zpow_neg, div_eq_mul_inv, mul_comm]

/-- A nonzero cleared limit and punctured holomorphy give a patched analytic unit and exact order. -/
theorem exact_pole_certificate {f : ℂ → ℂ} {a : ℂ} (ha : a ≠ 0)
    (hlim : Tendsto (fun w ↦ w ^ 9 * f w) (𝓝[≠] 0) (𝓝 a))
    (hd : ∀ᶠ w in 𝓝[≠] (0 : ℂ), DifferentiableAt ℂ f w) :
    AnalyticAt ℂ (patchedNumerator f a) 0 ∧ patchedNumerator f a 0 = a ∧
      (∀ᶠ w in 𝓝 (0 : ℂ), patchedNumerator f a w ≠ 0) ∧
      (∀ᶠ w in 𝓝[≠] (0 : ℂ), f w = patchedNumerator f a w / w ^ 9) ∧
      meromorphicOrderAt f 0 = (-9 : ℤ) := by
  have hH := patchedNumerator_analytic hlim hd
  have hH0 : patchedNumerator f a 0 ≠ 0 := by simpa only [patchedNumerator_zero] using ha
  have hunit : ∀ᶠ w in 𝓝 (0 : ℂ), patchedNumerator f a w ≠ 0 :=
    (hH.continuousAt.ne_iff_eventually_ne continuousAt_const).mp hH0
  have heq : ∀ᶠ w in 𝓝[≠] (0 : ℂ), f w = patchedNumerator f a w / w ^ 9 := by
    filter_upwards [self_mem_nhdsWithin] with w hw
    have hne : w ≠ 0 := hw
    rw [patchedNumerator_of_ne f a w hne]
    field_simp
  exact ⟨hH, patchedNumerator_zero f a, hunit, heq,
    meromorphicOrderAt_of_patched_numerator hH hH0 heq⟩

end SourceLaplacePole
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
