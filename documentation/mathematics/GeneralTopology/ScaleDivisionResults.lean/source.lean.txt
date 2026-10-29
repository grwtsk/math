import FormalResearch.RiemannHypothesis.Laplace.Assembly

/-!
# Division by scale's Laplace parameter preserves the actual ninth-order poles

These are local statements about the proposed divided continuation `F(s)/s`.
This module does not assert that it is the Laplace transform of a scale primitive,
nor assume an averaged arithmetic estimate. The pole coefficient remains nonzero.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Laplace.ScaleDivision

open Filter Set
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
open Continuation Assembly PoleCertificate

noncomputable section

/-- Division by the nonzero half-plane parameter preserves meromorphy. -/
theorem divided_continuation_meromorphic :
    MeromorphicOn (fun s ↦ continuedTransform s / s) {s : ℂ | 0 < s.re} := by
  intro s hs
  exact (continuedTransform_meromorphic s hs).div analyticAt_id.meromorphicAt

/-- The proposed divided continuation remains analytic at every positive real point. -/
theorem divided_continuation_analytic_positive_real (σ : ℝ) (hσ : 0 < σ) :
    AnalyticAt ℂ (fun s ↦ continuedTransform s / s) (σ:ℂ) := by
  exact (continuedTransform_analytic_positive_real σ hσ).div analyticAt_id
    (by exact_mod_cast hσ.ne')

private theorem center_ne_zero (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    2*(p.val-1 / 2) ≠ (0:ℂ) := by
  intro h
  have hp' : 0 < (2*(p.val-1 / 2)).re := by simpa using mul_pos (by norm_num : (0:ℝ) < 2) hp
  rw [h] at hp'
  exact (lt_irrefl (0:ℝ)) hp'

/-- The genuine off-line poles retain order minus nine after division. -/
theorem divided_continuation_exact_order (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    meromorphicOrderAt (fun s ↦ continuedTransform s / s) (2*(p.val-1 / 2)) = (-9:ℤ) := by
  have hc := source_exact_ninth_order_pole p hp
  have hid : AnalyticAt ℂ (fun s : ℂ ↦ s) (2*(p.val-1 / 2)) := analyticAt_id
  have ho : meromorphicOrderAt (fun s : ℂ ↦ s) (2*(p.val-1 / 2)) = 0 := by
    rw [hid.meromorphicOrderAt_eq, hid.analyticOrderAt_eq_zero.mpr (center_ne_zero p hp)]
    rfl
  have he : meromorphicOrderAt (fun s ↦ continuedTransform s / s) (2*(p.val-1 / 2)) =
      meromorphicOrderAt continuedTransform (2*(p.val-1 / 2)) -
        meromorphicOrderAt (fun s : ℂ ↦ s) (2*(p.val-1 / 2)) :=
    fun_meromorphicOrderAt_div hc.1 hid.meromorphicAt
  exact he.trans (by rw [hc.2.1, ho, sub_zero])

/-- The complete cleared coefficient is divided by the nonzero center and remains nonzero. -/
theorem divided_continuation_principal_limit (p : ZeroPoint) (hp : 0 < (p.val - 1 / 2).re) :
    Tendsto (fun w : ℂ ↦ w^9 *
      (continuedTransform (2*(p.val-1 / 2)+w) / (2*(p.val-1 / 2)+w)))
      (𝓝[≠] 0) (𝓝 (pointPairPrincipalCoefficient p / (2*(p.val-1 / 2)))) ∧
      pointPairPrincipalCoefficient p / (2*(p.val-1 / 2)) ≠ 0 := by
  have hc := center_ne_zero p hp
  have hden : Tendsto (fun w : ℂ ↦ 2*(p.val-1 / 2)+w) (𝓝[≠] 0) (𝓝 (2*(p.val-1 / 2))) :=
    by
      have hd : ContinuousAt (fun w : ℂ ↦ 2*(p.val-1 / 2)+w) 0 := by fun_prop
      simpa using hd.tendsto.mono_left nhdsWithin_le_nhds
  constructor
  · have h := (continuedTransform_cleared_tendsto p hp).div hden hc
    apply h.congr'
    filter_upwards with w
    change (w^9 * continuedTransform (2*(p.val-1 / 2)+w)) / (2*(p.val-1 / 2)+w) =
      w^9 * (continuedTransform (2*(p.val-1 / 2)+w) / (2*(p.val-1 / 2)+w))
    ring
  · exact div_ne_zero (point_pair_principal_coefficient_ne_zero p) hc

end
end FormalResearch.RiemannHypothesis.Laplace.ScaleDivision
