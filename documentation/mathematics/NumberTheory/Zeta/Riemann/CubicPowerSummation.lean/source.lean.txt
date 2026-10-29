/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.CubicEulerMaclaurin
import GRWTSK.Analysis.Complex.IntervalMellinKernel
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false

/-!
# Exact finite power sums with a cubic integral remainder

The maintained positive-axis logPower is reused. No new zeta function is
introduced. The finite formula is valid for every complex power except the
logarithmic primitive parameter -1. It does NOT identify an infinite
continuation with riemannZeta: that remains a separate formalization task.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CubicPowerSummation

open MeasureTheory Set
open scoped Interval BigOperators
open GRWTSK.Analysis.Real.CubicEulerMaclaurin
open GRWTSK.Analysis.Complex.IntervalMellinKernel

noncomputable section

/-- Actual normalized cubic integral on one positive unit cell. -/
def cellRemainder (q : ℝ) (z : ℂ) : ℂ :=
  ∫ u in (0 : ℝ)..1, (third u : ℂ) * logPower (q + u) (z - 3)

theorem shifted_power_deriv (q u : ℝ) (z : ℂ) (hqu : 0 < q + u) :
    HasDerivAt (fun t : ℝ => logPower (q + t) z)
      (z * logPower (q + u) (z - 1)) u := by
  have inner : HasDerivAt (fun t : ℝ => q + t) 1 u :=
    (hasDerivAt_id u).const_add q
  have hd := (hasDerivAt_logPower hqu z).scomp u inner
  simpa only [Function.comp_def, one_smul, density, logPower] using hd

/-- The complete cell is continuous, including both endpoints. -/
theorem continuousOn_shifted_power (q : ℝ) (hq : 0 < q) (z : ℂ) :
    ContinuousOn (fun u : ℝ => logPower (q + u) z) (Icc (0 : ℝ) 1) := by
  intro u hu
  exact (shifted_power_deriv q u z (by linarith [hu.1])).continuousAt.continuousWithinAt

/-- Exact integral before taking any infinite limit; q=1 is allowed. -/
theorem integral_shifted_power (q : ℝ) (hq : 0 < q) (z : ℂ) (hz : z + 1 ≠ 0) :
    (∫ u in (0 : ℝ)..1, logPower (q + u) z) =
      (logPower (q + 1) (z + 1) - logPower q (z + 1)) / (z + 1) := by
  have hd (u : ℝ) (hu : u ∈ uIcc (0 : ℝ) 1) :
      HasDerivAt (fun t : ℝ => logPower (q + t) (z + 1) / (z + 1))
        (logPower (q + u) z) u := by
    have hu' : u ∈ Icc (0 : ℝ) 1 := (uIcc_of_le (by norm_num : (0 : ℝ) ≤ 1)) ▸ hu
    simpa only [add_sub_cancel_right, mul_div_cancel_left₀ _ hz] using
      (shifted_power_deriv q u (z + 1) (by linarith [hu'.1])).div_const (z + 1)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt hd
    ((continuousOn_shifted_power q hq z).intervalIntegrable_of_Icc (by norm_num))
  simpa only [add_zero, sub_div] using hi

/-- Three differentiated powers supply the finite formula; no residual identity is assumed. -/
theorem one_cell_power (q : ℝ) (hq : 0 < q) (z : ℂ) (hz : z + 1 ≠ 0) :
    logPower q z =
      (logPower (q + 1) (z + 1) - logPower q (z + 1)) / (z + 1) +
      (logPower q z - logPower (q + 1) z) / 2 +
      z * (logPower (q + 1) (z - 1) - logPower q (z - 1)) / 12 +
      z * (z - 1) * (z - 2) * cellRemainder q z := by
  let f := fun u : ℝ => logPower (q + u) z
  let f₁ := fun u : ℝ => z * logPower (q + u) (z - 1)
  let f₂ := fun u : ℝ => z * (z - 1) * logPower (q + u) (z - 2)
  let f₃ := fun u : ℝ => z * (z - 1) * (z - 2) * logPower (q + u) (z - 3)
  have d₀ (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) : HasDerivAt f (f₁ u) u :=
    shifted_power_deriv q u z (by linarith [hu.1])
  have d₁ (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) : HasDerivAt f₁ (f₂ u) u := by
    have hd := (shifted_power_deriv q u (z - 1) (by linarith [hu.1])).const_mul z
    apply hd.congr_deriv
    dsimp [f₂]
    rw [show z - 1 - 1 = z - 2 by ring]
    ring
  have d₂ (u : ℝ) (hu : u ∈ Icc (0 : ℝ) 1) : HasDerivAt f₂ (f₃ u) u := by
    have hd := (shifted_power_deriv q u (z - 2) (by linarith [hu.1])).const_mul (z * (z - 1))
    apply hd.congr_deriv
    dsimp [f₃]
    rw [show z - 2 - 1 = z - 3 by ring]
    ring
  have c₃ : ContinuousOn f₃ (Icc (0 : ℝ) 1) :=
    continuousOn_const.mul (continuousOn_shifted_power q hq (z - 3))
  have hc := one_cell f f₁ f₂ f₃ d₀ d₁ d₂ c₃
  have hR : (∫ u in (0 : ℝ)..1, (third u : ℂ) * f₃ u) =
      z * (z - 1) * (z - 2) * cellRemainder q z := by
    unfold cellRemainder
    rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    intro u _
    dsimp [f₃]
    ring
  rw [hR] at hc
  dsimp only [f, f₁] at hc
  rw [integral_shifted_power q hq z hz] at hc
  simpa only [add_zero, mul_sub, mul_div_assoc] using hc

/-- Every terminal power and the complete finite cubic remainder is retained. -/
theorem finite_power_sum (q : ℝ) (hq : 0 < q) (z : ℂ) (hz : z + 1 ≠ 0) (N : ℕ) :
    (∑ k ∈ Finset.range N, logPower (q + k) z) =
      (logPower (q + N) (z + 1) - logPower q (z + 1)) / (z + 1) +
      (logPower q z - logPower (q + N) z) / 2 +
      z * (logPower (q + N) (z - 1) - logPower q (z - 1)) / 12 +
      z * (z - 1) * (z - 2) * ∑ k ∈ Finset.range N, cellRemainder (q + k) z := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [Finset.sum_range_succ, Nat.cast_add, Nat.cast_one]
      rw [ih]
      have hcell := one_cell_power (q + N) (by positivity) z hz
      simp only [add_assoc] at hcell
      linear_combination hcell

end
end GRWTSK.RiemannHypothesis.CubicPowerSummation
