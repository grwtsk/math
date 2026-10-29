/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCountIsolation
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Cauchy-Goursat for the maintained admissible zeta rectangle

`CanonicalRectangleCountIsolation` fixes an explicit counterclockwise rectangle
integral for the actual zeta logarithmic derivative. This file extracts the same
four-edge functional for an arbitrary complex-valued function and connects it to
Mathlib's rectangle Cauchy-Goursat theorem.

The result is intentionally regular-function only. It does not apply Cauchy-Goursat
directly to `zeta'/zeta`, which has interior singularities. A later argument must
subtract the complete local principal parts, extend the regular remainder through
every singular point, and prove the corresponding boundary decomposition.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleCauchyGoursat

open Set
open scoped Interval
open AdmissibleRectangles
open CanonicalRectangleCountIsolation

noncomputable section

/-- The same counterclockwise four-edge integral used by the committed zeta rectangle,
now parameterized by an arbitrary complex-valued function. -/
def rectangleBoundaryIntegral (N : ℕ) (f : ℂ → ℂ) : ℂ :=
  (∫ u in leftEdge N..2, f (bottomPoint N u)) -
  (∫ u in leftEdge N..2, f (topPoint N u)) +
  Complex.I * (∫ t in (-contourHeight N)..contourHeight N, f (rightPoint N t)) -
  Complex.I * (∫ t in (-contourHeight N)..contourHeight N,
    f (rectangleLeftPoint N t))

/-- Closed rectangle in the exact unordered-interval convention consumed by Mathlib. -/
def closedRectangle (N : ℕ) : Set ℂ :=
  [[leftEdge N, 2]] ×ℂ [[-contourHeight N, contourHeight N]]

/-- Open rectangle in the exact min/max convention consumed by Mathlib. -/
def openRectangle (N : ℕ) : Set ℂ :=
  Ioo (min (leftEdge N) 2) (max (leftEdge N) 2) ×ℂ
    Ioo (min (-contourHeight N) (contourHeight N))
      (max (-contourHeight N) (contourHeight N))

/-- The generic functional is exactly the committed logarithmic-derivative
integral after reversing the top and left parameter intervals and pulling the
constant vertical tangent `I` outside the interval integrals. -/
theorem rectangleLogDerivativeIntegral_eq_boundaryIntegral (N : ℕ) :
    rectangleLogDerivativeIntegral N =
      rectangleBoundaryIntegral N (logDeriv riemannZeta) := by
  unfold rectangleLogDerivativeIntegral rectangleBoundaryIntegral
  rw [intervalIntegral.integral_symm (leftEdge N) 2,
    intervalIntegral.integral_symm (-contourHeight N) (contourHeight N)]
  simp_rw [intervalIntegral.integral_mul_const]
  ring

/-- Cauchy-Goursat on the maintained rectangle. The hypotheses concern the
complete closed and open rectangles, not finitely sampled edge points. -/
theorem rectangleBoundaryIntegral_eq_zero
    (N : ℕ) (f : ℂ → ℂ)
    (continuous : ContinuousOn f (closedRectangle N))
    (differentiable : DifferentiableOn ℂ f (openRectangle N)) :
    rectangleBoundaryIntegral N f = 0 := by
  have h := Complex.integral_boundary_rect_eq_zero_of_differentiableOn
    f (bottomPoint N (leftEdge N)) (topPoint N 2)
    (by
      simpa [closedRectangle] using continuous)
    (by
      simpa [openRectangle] using differentiable)
  simpa [rectangleBoundaryIntegral, bottomPoint, topPoint, rightPoint,
    rectangleLeftPoint, sub_eq_add_neg, smul_eq_mul] using h

/-- Analyticity on a neighborhood of the closed rectangle supplies both
hypotheses of the regular Cauchy-Goursat consumer. -/
theorem rectangleBoundaryIntegral_eq_zero_of_analyticOnNhd
    (N : ℕ) (f : ℂ → ℂ)
    (analytic : AnalyticOnNhd ℂ f (closedRectangle N))
    (openSubset : openRectangle N ⊆ closedRectangle N) :
    rectangleBoundaryIntegral N f = 0 := by
  apply rectangleBoundaryIntegral_eq_zero N f analytic.continuousOn
  exact analytic.differentiableOn.mono openSubset

/-- The zero function is a normalization control for the four-edge orientation. -/
@[simp] theorem rectangleBoundaryIntegral_zero (N : ℕ) :
    rectangleBoundaryIntegral N (fun _ => 0) = 0 := by
  simp [rectangleBoundaryIntegral]

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleCauchyGoursat
