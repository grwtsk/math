import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.Tactic

/-!
Joint finite Abel cancellation for the actual closed Mangoldt inventory.
Both exponentially large prefix endpoints cancel before any estimate.
No eventual uniform arithmetic witness is asserted.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualJointMangoldtCancellation
open MeasureTheory SourceMangoldtAbel
open scoped Interval

def jointLogKernel (b t : ℝ) : ℝ :=
  Real.exp (-b / 2) * Real.exp t - Real.exp (t / 2) / 2

def actualJointMangoldtReadout (b : ℝ) : ℝ :=
  mangoldtLogSum b (fun t => Real.exp (t / 2)) -
    Real.exp (-b / 2) * mangoldtLogSum b Real.exp

theorem expHalf_contDiff : ContDiff ℝ 1 (fun t : ℝ => Real.exp (t / 2)) := by
  exact Real.contDiff_exp.comp (contDiff_id.div_const 2)

theorem expHalf_deriv (t : ℝ) :
    deriv (fun u : ℝ => Real.exp (u / 2)) t = Real.exp (t / 2) / 2 := by
  simpa only [Function.comp_def, id_eq, div_eq_mul_inv] using
    ((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)).deriv

theorem actual_joint_endpoint_cancellation (b : ℝ) (hb : 0 ≤ b) :
    actualJointMangoldtReadout b =
      ∫ t in 0..b, mangoldtLogPrefix t * jointLogKernel b t := by
  have hhalf := mangoldtLogSum_abel b hb (fun t => Real.exp (t / 2)) expHalf_contDiff
  have hfull := mangoldtLogSum_abel b hb Real.exp Real.contDiff_exp
  simp_rw [expHalf_deriv] at hhalf
  simp_rw [Real.deriv_exp] at hfull
  have hiHalf := mangoldtLogPrefix_mul_deriv_intervalIntegrable 0 b hb
    (fun t => Real.exp (t / 2)) expHalf_contDiff
  simp_rw [expHalf_deriv] at hiHalf
  have hiFull := mangoldtLogPrefix_mul_deriv_intervalIntegrable 0 b hb
    Real.exp Real.contDiff_exp
  simp_rw [Real.deriv_exp] at hiFull
  have hsame : Real.exp (-b / 2) * Real.exp b = Real.exp (b / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold actualJointMangoldtReadout
  rw [hhalf, hfull]
  have hsplit : (∫ t in 0..b, mangoldtLogPrefix t * jointLogKernel b t) =
      Real.exp (-b / 2) * (∫ t in 0..b, mangoldtLogPrefix t * Real.exp t) -
        ∫ t in 0..b, mangoldtLogPrefix t * (Real.exp (t / 2) / 2) := by
    calc
      _ = ∫ t in 0..b,
          Real.exp (-b / 2) * (mangoldtLogPrefix t * Real.exp t) -
            mangoldtLogPrefix t * (Real.exp (t / 2) / 2) := by
        apply intervalIntegral.integral_congr
        intro t _
        unfold jointLogKernel
        ring
      _ = _ := by
        rw [intervalIntegral.integral_sub (hiFull.const_mul _) hiHalf,
          intervalIntegral.integral_const_mul]
  rw [hsplit]
  rw [mul_sub, ← mul_assoc, hsame]
  ring

theorem actual_joint_discrepancy_split (b : ℝ) (hb : 0 ≤ b) :
    actualJointMangoldtReadout b =
      (∫ t in 0..b, mangoldtLogError t * jointLogKernel b t) +
        ∫ t in 0..b, t * jointLogKernel b t := by
  have hc : ContDiff ℝ 1 (fun t : ℝ =>
      Real.exp (-b / 2) * Real.exp t - Real.exp (t / 2)) :=
    (contDiff_const.mul (Real.contDiff_exp : ContDiff ℝ 1 Real.exp)).sub expHalf_contDiff
  have hd : ∀ t : ℝ, deriv (fun u : ℝ =>
      Real.exp (-b / 2) * Real.exp u - Real.exp (u / 2)) t = jointLogKernel b t := by
    intro t
    have he := (Real.hasDerivAt_exp t).const_mul (Real.exp (-b / 2))
    have hh := (Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)
    simpa only [jointLogKernel, Pi.sub_apply, Function.comp_def, id_eq, div_eq_mul_inv]
      using (he.sub hh).deriv
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb _ hc
  simp_rw [hd] at hi
  have hk : Continuous (jointLogKernel b) :=
    (continuous_const.mul Real.continuous_exp).sub
      ((Real.continuous_exp.comp (continuous_id.div_const 2)).div_const 2)
  rw [actual_joint_endpoint_cancellation b hb]
  calc
    _ = ∫ t in 0..b,
        mangoldtLogError t * jointLogKernel b t + t * jointLogKernel b t := by
      apply intervalIntegral.integral_congr
      intro t _
      unfold mangoldtLogError
      ring
    _ = _ := intervalIntegral.integral_add hi ((continuous_id.mul hk).intervalIntegrable _ _)

end FormalResearch.RiemannHypothesis.SourceActualJointMangoldtCancellation
