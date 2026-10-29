import SourceActualXiSqrtPrimitiveReadout
import Mathlib.Tactic

/-!
Complete closed finite prime-power readout of the actual anchored Xi primitive.
The independent gamma companion, smooth square-root term and psi endpoint
remain together. No uniform arithmetic H or J is asserted.
Direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualXiSqrtClosedReadout
open MeasureTheory Set ArithmeticFunction
open scoped Interval BigOperators
open SourceActualXiSqrtPrimitiveReadout SourceActualXiPrimitiveTransport
open RH16ActualPsiNegativeBlock

def sqrtBaselinePrimitive (c x : ℝ) : ℝ :=
  c * halfAtomPrimitive x - 2 * x ^ (1 / 2 : ℝ)

theorem sqrtBaselinePrimitive_hasDerivAt (c x : ℝ) (hx : 0 < x) :
    HasDerivAt (sqrtBaselinePrimitive c) ((c - x) / x ^ (3 / 2 : ℝ)) x := by
  have hs := (Real.hasDerivAt_rpow_const (x := x) (p := (1 / 2 : ℝ))
    (Or.inl hx.ne')).const_mul 2
  have he : x ^ (-1 / 2 : ℝ) = x / x ^ (3 / 2 : ℝ) := by
    rw [show (-1 / 2 : ℝ) = 1 - 3 / 2 by ring, Real.rpow_sub hx, Real.rpow_one]
  exact (((halfAtomPrimitive_hasDerivAt x hx).const_mul c).sub hs).congr_deriv (by
    rw [show (1 / 2 - 1 : ℝ) = -1 / 2 by ring, he]
    ring)

theorem actualXiLogPrimitive_log_eq_closed_atoms (Y : ℝ) (hY : 2 ≤ Y) :
    actualXiLogPrimitive (Real.log Y) =
      2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊,
        vonMangoldt n * ((n : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) +
      2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
        ((2 : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) -
      2 * (Y ^ (1 / 2 : ℝ) - (2 : ℝ) ^ (1 / 2 : ℝ)) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hw := inverseThreeHalf_continuousOn Y
  have hb : IntervalIntegrable (fun x => (c - x) / x ^ (3 / 2 : ℝ)) volume 2 Y := by
    simpa only [div_eq_mul_inv, one_div] using
      ((continuousOn_const.sub continuousOn_id).mul hw).intervalIntegrable_of_Icc hY
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x (hx : x ∈ uIcc (2 : ℝ) Y) =>
      sqrtBaselinePrimitive_hasDerivAt c x (by
        rw [uIcc_of_le hY] at hx
        linarith [hx.1])) hb
  have he : (∫ x in 2..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ)) =
      (∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ)) +
        ∫ x in 2..Y, (c - x) / x ^ (3 / 2 : ℝ) := by
    calc
      _ = ∫ x in 2..Y, Chebyshev.psi x / x ^ (3 / 2 : ℝ) +
          (c - x) / x ^ (3 / 2 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro x _
        unfold shiftedActualChebyshev
        dsimp only [c]
        ring
      _ = _ := intervalIntegral.integral_add
        (psi_inverseThreeHalf_intervalIntegrable Y hY) hb
  have hsum : 2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊,
      vonMangoldt n * ((n : ℝ) ^ (-1 / 2 : ℝ) - Y ^ (-1 / 2 : ℝ)) =
      2 * ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, vonMangoldt n * (n : ℝ) ^ (-1 / 2 : ℝ) -
        2 * Y ^ (-1 / 2 : ℝ) * Chebyshev.psi Y := by
    rw [Chebyshev.psi_eq_sum_Icc]
    simp_rw [mul_sub]
    rw [Finset.sum_sub_distrib, Finset.sum_mul]
    ring
  rw [actualXiLogPrimitive_log_eq_physical Y hY, he,
    actual_psi_inverseThreeHalf Y hY, hi, ← hsum]
  unfold sqrtBaselinePrimitive halfAtomPrimitive
  dsimp only [c]
  ring

end FormalResearch.RiemannHypothesis.SourceActualXiSqrtClosedReadout
