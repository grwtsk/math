/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.TentContourMajorants
import GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues

set_option autoImplicit false

/-!
# Kernel-derived bounds for the actual oriented tent edge remainder

The multiplier is the actual negative zeta logarithmic derivative. Boundary
integrability is derived from actual source nonvanishing. Only its quantitative
norm bounds are hypotheses; a finite local principal sum is not substituted
for the full logarithmic derivative. The resulting remainder estimate has no
contour-width or contour-height loss. The final limit theorem is conditional
on the two displayed supplier rates, NOT an unconditional boundary-decay theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds

open MeasureTheory Set Filter
open scoped Topology Interval BigOperators
open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentContourMajorants
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.RiemannHypothesis.SeparatedContourHeights
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours
open GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours
open GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues
open GRWTSK.Analysis.Real.TentRationalCorrection

noncomputable section

/-- The first contour l=-1 remains valid, but is outside the stronger left-majorant domain. -/
theorem leftEdge_le_neg_two (N : ℕ) (hN : 1 ≤ N) : leftEdge N ≤ -2 := by
  have hn : (1 : ℝ) ≤ N := by exact_mod_cast hN
  unfold leftEdge
  linarith

/-- Exact negative-odd exponent; no nonnegative-beta bound is reused. -/
theorem powerProfile_leftEdge (a : ℝ) (N : ℕ) :
    powerProfile a (leftEdge N) = Real.exp (-2 * (N : ℝ) * Real.log a) := by
  unfold powerProfile leftEdge
  congr 1
  ring

/-- The actual left integrand is continuous on its whole parameter line. -/
theorem continuous_zeta_tent_left (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (N : ℕ) :
    Continuous (fun t : ℝ => integrand x h ((leftEdge N : ℂ) + (t : ℂ) * Complex.I)) := by
  apply continuous_iff_continuousAt.mpr
  intro t
  let s : ℂ := (leftEdge N : ℂ) + (t : ℂ) * Complex.I
  have hs : s.re = leftEdge N := by simp [s]
  have hp : s ≠ 1 := by
    intro he
    have hr := congrArg Complex.re he
    rw [hs, Complex.one_re] at hr
    linarith [leftEdge_neg N]
  have hpath : ContinuousAt (fun u : ℝ =>
      (leftEdge N : ℂ) + (u : ℂ) * Complex.I) t := by fun_prop
  exact (analyticAt_integrand x h hh ha s hp (zeta_ne_zero_on_left N s hs)).continuousAt.comp
    (f := fun u : ℝ => (leftEdge N : ℂ) + (u : ℂ) * Complex.I) (x := t) hpath

/-- Actual source regularity supplies the finite vertical integrability premise. -/
theorem zeta_tent_left_intervalIntegrable (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) (T : ℝ) :
    IntervalIntegrable (fun t : ℝ => integrand x h
      ((leftEdge N : ℂ) + (t : ℂ) * Complex.I)) volume (-T) T :=
  (continuous_zeta_tent_left x h hh ha N).intervalIntegrable _ _

/-- Width-independent horizontal bound for the full actual zeta integrand.
The complete logarithmic-derivative bound is deliberately a separate input. -/
theorem norm_selected_horizontal_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) (y Q : ℝ) (hy : |y| = separatedHeight J) (hQ : 0 ≤ Q)
    (hg : ∀ σ ∈ Icc (leftEdge N) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ Q) :
    ‖horizontal (integrand x h) (leftEdge N) 2 y‖ ≤
      Q * horizontalBudget x h / (separatedHeight J) ^ 2 := by
  have hy0 : y ≠ 0 := by
    intro he
    rw [he, abs_zero] at hy
    linarith [separatedHeight_pos J]
  have hysq : y ^ 2 = (separatedHeight J) ^ 2 := by rw [← sq_abs y, hy]
  have hi := separated_horizontal_integrable x h hh ha J (leftEdge N) 2 y
    ((leftEdge_neg N).le.trans (by norm_num)) hy
  change ‖horizontal (fun z => -logDeriv riemannZeta z * tentKernel x h z) (leftEdge N) 2 y‖ ≤ _
  simpa only [hysq] using norm_horizontal_product_le
    (fun s => -logDeriv riemannZeta s) x h (leftEdge N) y Q hh ha
    ((leftEdge_neg N).le.trans (by norm_num)) hy0 hQ hi hg

/-- Exponentially damped left estimate. There is no factor proportional to T. -/
theorem norm_left_vertical_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 1 ≤ N) (T Q : ℝ) (hT : 0 ≤ T) (hQ : 0 ≤ Q)
    (hg : ∀ t ∈ Icc (-T) T,
      ‖-logDeriv riemannZeta ((leftEdge N : ℂ) + (t : ℂ) * Complex.I)‖ ≤ Q) :
    ‖vertical (integrand x h) (leftEdge N) T‖ ≤
      Q * (4 * Real.exp (-2 * (N : ℝ) * Real.log (x - h)) / h) * Real.pi := by
  change ‖vertical (fun z => -logDeriv riemannZeta z * tentKernel x h z) (leftEdge N) T‖ ≤ _
  simpa only [powerProfile_leftEdge] using norm_vertical_product_le
    (fun s => -logDeriv riemannZeta s) x h (leftEdge N) T Q hh ha
    (leftEdge_le_neg_two N hN) hT hQ (zeta_tent_left_intervalIntegrable x h hh ha N T) hg

/-- Both actual oriented corrections are bounded, with 2*pi and 2*pi*I normalized exactly. -/
theorem norm_edgeRemainder_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) (hN : 1 ≤ N) (QL QH : ℝ) (hQL : 0 ≤ QL) (hQH : 0 ≤ QH)
    (hleft : ∀ t ∈ Icc (-separatedHeight J) (separatedHeight J),
      ‖-logDeriv riemannZeta ((leftEdge N : ℂ) + (t : ℂ) * Complex.I)‖ ≤ QL)
    (hhorizontal : ∀ y : ℝ, |y| = separatedHeight J → ∀ σ ∈ Icc (leftEdge N) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ QH) :
    ‖edgeRemainder x h N (separatedHeight J)‖ ≤
      (2 / h) * (QL * Real.exp (-2 * (N : ℝ) * Real.log (x - h))) +
      (horizontalBudget x h / Real.pi) * (QH / (separatedHeight J) ^ 2) := by
  have hp : 0 < 2 * Real.pi := by positivity
  have hpn : 2 * Real.pi ≠ 0 := ne_of_gt hp
  have hq : ‖((2 * Real.pi : ℝ) : ℂ)‖ = 2 * Real.pi := Complex.norm_of_nonneg hp.le
  have hqi : ‖(((2 * Real.pi : ℝ) : ℂ) * Complex.I)‖ = 2 * Real.pi := by
    rw [norm_mul, hq, Complex.norm_I, mul_one]
  have hL := norm_left_vertical_le x h hh ha N hN (separatedHeight J) QL
    (separatedHeight_pos J).le hQL hleft
  have hU := norm_selected_horizontal_le x h hh ha N J (separatedHeight J) QH
    (abs_of_pos (separatedHeight_pos J)) hQH
    (hhorizontal _ (abs_of_pos (separatedHeight_pos J)))
  have hB := norm_selected_horizontal_le x h hh ha N J (-separatedHeight J) QH
    (by rw [abs_neg, abs_of_pos (separatedHeight_pos J)]) hQH
    (hhorizontal _ (by rw [abs_neg, abs_of_pos (separatedHeight_pos J)]))
  have hUD := (norm_sub_le
    (horizontal (integrand x h) (leftEdge N) 2 (separatedHeight J))
    (horizontal (integrand x h) (leftEdge N) 2 (-separatedHeight J))).trans
      (add_le_add hU hB)
  unfold edgeRemainder
  calc
    _ ≤ ‖vertical (integrand x h) (leftEdge N) (separatedHeight J) /
          ((2 * Real.pi : ℝ) : ℂ)‖ +
        ‖(horizontal (integrand x h) (leftEdge N) 2 (separatedHeight J) -
          horizontal (integrand x h) (leftEdge N) 2 (-separatedHeight J)) /
          (((2 * Real.pi : ℝ) : ℂ) * Complex.I)‖ := norm_add_le _ _
    _ = ‖vertical (integrand x h) (leftEdge N) (separatedHeight J)‖ / (2 * Real.pi) +
        ‖horizontal (integrand x h) (leftEdge N) 2 (separatedHeight J) -
          horizontal (integrand x h) (leftEdge N) 2 (-separatedHeight J)‖ / (2 * Real.pi) := by
      rw [norm_div, norm_div, hq, hqi]
    _ ≤ (QL * (4 * Real.exp (-2 * (N : ℝ) * Real.log (x - h)) / h) * Real.pi) /
          (2 * Real.pi) +
        (QH * horizontalBudget x h / (separatedHeight J) ^ 2 +
          QH * horizontalBudget x h / (separatedHeight J) ^ 2) / (2 * Real.pi) :=
      add_le_add (div_le_div_of_nonneg_right hL hp.le) (div_le_div_of_nonneg_right hUD hp.le)
    _ = _ := by
      field_simp [Real.pi_ne_zero, ne_of_gt hh, ne_of_gt (separatedHeight_pos J)]
      ; ring

/-- The finite source comparison inherits the same explicit edge budget, not an unassigned residual. -/
theorem norm_right_residue_defect_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N J : ℕ) (hN : 1 ≤ N) (QL QH : ℝ) (hQL : 0 ≤ QL) (hQH : 0 ≤ QH)
    (hleft : ∀ t ∈ Icc (-separatedHeight J) (separatedHeight J),
      ‖-logDeriv riemannZeta ((leftEdge N : ℂ) + (t : ℂ) * Complex.I)‖ ≤ QL)
    (hhorizontal : ∀ y : ℝ, |y| = separatedHeight J → ∀ σ ∈ Icc (leftEdge N) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ QH) :
    ‖vertical (integrand x h) 2 (separatedHeight J) / ((2 * Real.pi : ℝ) : ℂ) -
      ((h : ℂ) - (∑ z ∈ heightHead (separatedHeight J),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ))‖ ≤
      (2 / h) * (QL * Real.exp (-2 * (N : ℝ) * Real.log (x - h))) +
      (horizontalBudget x h / Real.pi) * (QH / (separatedHeight J) ^ 2) := by
  rw [right_residue_at_height x h hh ha N (separatedHeight J)
    (separatedHeight_pos J) (separatedHeight_avoids J), add_sub_cancel_left]
  exact norm_edgeRemainder_le x h hh ha N J hN QL QH hQL hQH hleft hhorizontal

/-- Conditional decay criterion with the actual log-derivative suppliers visible.
No theorem in this module supplies either growth-rate hypothesis. -/
theorem edgeRemainder_tendsto_of_rates (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (L : ℕ → ℕ) (QL QH : ℕ → ℝ) (hL : ∀ J, 1 ≤ L J)
    (hQL : ∀ J, 0 ≤ QL J) (hQH : ∀ J, 0 ≤ QH J)
    (hleft : ∀ J, ∀ t ∈ Icc (-separatedHeight J) (separatedHeight J),
      ‖-logDeriv riemannZeta ((leftEdge (L J) : ℂ) + (t : ℂ) * Complex.I)‖ ≤ QL J)
    (hhorizontal : ∀ J, ∀ y : ℝ, |y| = separatedHeight J → ∀ σ ∈ Icc (leftEdge (L J)) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ QH J)
    (hleftRate : Tendsto (fun J => QL J * Real.exp (-2 * (L J : ℝ) * Real.log (x - h)))
      atTop (𝓝 0))
    (hhorizontalRate : Tendsto (fun J => QH J / (separatedHeight J) ^ 2) atTop (𝓝 0)) :
    Tendsto (fun J => edgeRemainder x h (L J) (separatedHeight J)) atTop (𝓝 0) := by
  have hb : Tendsto (fun J =>
      (2 / h) * (QL J * Real.exp (-2 * (L J : ℝ) * Real.log (x - h))) +
      (horizontalBudget x h / Real.pi) * (QH J / (separatedHeight J) ^ 2)) atTop (𝓝 0) := by
    simpa only [mul_zero, add_zero] using
      (hleftRate.const_mul (2 / h)).add (hhorizontalRate.const_mul (horizontalBudget x h / Real.pi))
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  exact squeeze_zero (fun J => norm_nonneg _)
    (fun J => norm_edgeRemainder_le x h hh ha (L J) J (hL J) (QL J) (QH J)
      (hQL J) (hQH J) (hleft J) (hhorizontal J)) hb

end
end GRWTSK.NumberTheory.Chebyshev.TentEdgeBounds
