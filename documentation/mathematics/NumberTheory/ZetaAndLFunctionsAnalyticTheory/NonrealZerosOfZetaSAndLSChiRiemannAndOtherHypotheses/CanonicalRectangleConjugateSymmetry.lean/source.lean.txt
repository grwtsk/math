/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleEdgeEnclosure
import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Conjugation symmetry of the canonical rectangle edges

The maintained rectangle is symmetric about the real axis and the actual
Riemann zeta function satisfies

  zeta(conj s) = conj (zeta s).

This file transports that identity through the complex derivative and the
logarithmic derivative, then through the four oriented interval integrals.
The orientation signs are retained exactly:

* the normalized top contribution is the conjugate of the normalized bottom
  contribution;
* the normalized right contribution is real;
* the normalized left contribution is real.

Consequently the complete normalized rectangle index is the real number

  2 * Re(bottom) + Re(right) + Re(left).

This removes the need for an independently certified top-edge enclosure and
prevents an avoidable imaginary error budget on the vertical edges. It does not
evaluate any edge integral or construct a rational enclosure.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleConjugateSymmetry

open MeasureTheory
open scoped Interval ComplexConjugate
open AdmissibleRectangles
open CanonicalRectangleCountIsolation
open RationalRectangleEdgeEnclosure

noncomputable section

/-- Differentiating the exact conjugation-equivariance identity transports the
actual zeta derivative. -/
theorem deriv_riemannZeta_conj (z : ℂ) :
    deriv riemannZeta (conj z) = conj (deriv riemannZeta z) := by
  have hsource : (conj ∘ riemannZeta ∘ conj) = riemannZeta := by
    funext w
    simp [Function.comp_def, riemannZeta_conj]
  have hderiv : deriv (conj ∘ riemannZeta ∘ conj) = deriv riemannZeta :=
    congrArg deriv hsource
  rw [deriv_conj_conj] at hderiv
  have hpoint := congrFun hderiv (conj z)
  simpa [Function.comp_def] using hpoint.symm

/-- The totalized logarithmic derivative inherits exact conjugation symmetry.
No nonvanishing premise is required for this algebraic identity. -/
theorem logDeriv_riemannZeta_conj (z : ℂ) :
    logDeriv riemannZeta (conj z) =
      conj (logDeriv riemannZeta z) := by
  simp [logDeriv_apply, deriv_riemannZeta_conj, riemannZeta_conj,
    map_div]

@[simp] theorem topPoint_eq_conj_bottomPoint (N : ℕ) (u : ℝ) :
    topPoint N u = conj (bottomPoint N u) := by
  ext <;> simp [topPoint, bottomPoint]

@[simp] theorem rightPoint_neg_eq_conj_rightPoint (N : ℕ) (t : ℝ) :
    rightPoint N (-t) = conj (rightPoint N t) := by
  ext <;> simp [rightPoint]

@[simp] theorem leftPoint_neg_eq_conj_leftPoint (N : ℕ) (t : ℝ) :
    rectangleLeftPoint N (-t) = conj (rectangleLeftPoint N t) := by
  ext <;> simp [rectangleLeftPoint]

/-- The exact unnormalized bottom edge integral. -/
def bottomRawIntegral (N : ℕ) : ℂ :=
  ∫ u in leftEdge N..2,
    logDeriv riemannZeta (bottomPoint N u)

/-- The exact unnormalized, right-to-left top edge integral. -/
def topRawIntegral (N : ℕ) : ℂ :=
  ∫ u in 2..leftEdge N,
    logDeriv riemannZeta (topPoint N u)

/-- The upward right-edge integrand, including `ds = I dt`. -/
def rightEdgeIntegrand (N : ℕ) (t : ℝ) : ℂ :=
  logDeriv riemannZeta (rightPoint N t) * Complex.I

/-- The downward-oriented left edge is represented by reversed endpoints; this
integrand retains `ds = I dt`. -/
def leftEdgeIntegrand (N : ℕ) (t : ℝ) : ℂ :=
  logDeriv riemannZeta (rectangleLeftPoint N t) * Complex.I

/-- The exact unnormalized right edge integral. -/
def rightRawIntegral (N : ℕ) : ℂ :=
  ∫ t in (-contourHeight N)..contourHeight N,
    rightEdgeIntegrand N t

/-- The exact unnormalized left edge integral, with downward endpoints. -/
def leftRawIntegral (N : ℕ) : ℂ :=
  ∫ t in contourHeight N..(-contourHeight N),
    leftEdgeIntegrand N t

@[simp] theorem normalizedBottomContribution_eq (N : ℕ) :
    normalizedBottomContribution N =
      rectangleNormalizer * bottomRawIntegral N := rfl

@[simp] theorem normalizedTopContribution_eq (N : ℕ) :
    normalizedTopContribution N =
      rectangleNormalizer * topRawIntegral N := rfl

@[simp] theorem normalizedRightContribution_eq (N : ℕ) :
    normalizedRightContribution N =
      rectangleNormalizer * rightRawIntegral N := rfl

@[simp] theorem normalizedLeftContribution_eq (N : ℕ) :
    normalizedLeftContribution N =
      rectangleNormalizer * leftRawIntegral N := rfl

/-- Complex conjugation changes the argument-principle normalizer's sign. -/
theorem conj_rectangleNormalizer :
    conj rectangleNormalizer = -rectangleNormalizer := by
  unfold rectangleNormalizer
  rw [map_inv₀]
  have hdenominator :
      conj (2 * (Real.pi : ℂ) * Complex.I) =
        -(2 * (Real.pi : ℂ) * Complex.I) := by
    simp
    ring
  rw [hdenominator, inv_neg]

/-- Reversing the horizontal orientation is essential: the raw top edge is the
negative conjugate of the raw bottom edge. -/
theorem topRawIntegral_eq_neg_conj_bottomRawIntegral (N : ℕ) :
    topRawIntegral N = -conj (bottomRawIntegral N) := by
  unfold topRawIntegral bottomRawIntegral
  calc
    (∫ u in 2..leftEdge N,
        logDeriv riemannZeta (topPoint N u)) =
      ∫ u in 2..leftEdge N,
        conj (logDeriv riemannZeta (bottomPoint N u)) := by
          apply intervalIntegral.integral_congr
          intro u _
          rw [topPoint_eq_conj_bottomPoint,
            logDeriv_riemannZeta_conj]
    _ = conj (∫ u in 2..leftEdge N,
        logDeriv riemannZeta (bottomPoint N u)) := by
          rw [RCLike.intervalIntegral_conj]
    _ = -conj (∫ u in leftEdge N..2,
        logDeriv riemannZeta (bottomPoint N u)) := by
          rw [intervalIntegral.integral_symm]
          simp

/-- After the imaginary normalizer is included, the normalized top edge is the
conjugate of the normalized bottom edge. -/
theorem normalizedTopContribution_eq_conj_bottomContribution (N : ℕ) :
    normalizedTopContribution N =
      conj (normalizedBottomContribution N) := by
  change rectangleNormalizer * topRawIntegral N =
    conj (rectangleNormalizer * bottomRawIntegral N)
  rw [topRawIntegral_eq_neg_conj_bottomRawIntegral,
    map_mul, conj_rectangleNormalizer]
  ring

/-- Conjugating the right-edge integrand is the negative of reflecting its real
parameter. -/
theorem conj_rightEdgeIntegrand (N : ℕ) (t : ℝ) :
    conj (rightEdgeIntegrand N t) =
      -rightEdgeIntegrand N (-t) := by
  unfold rightEdgeIntegrand
  rw [map_mul, Complex.conj_I,
    ← logDeriv_riemannZeta_conj,
    ← rightPoint_neg_eq_conj_rightPoint]
  ring

/-- The unnormalized right-edge integral is purely imaginary. -/
theorem conj_rightRawIntegral (N : ℕ) :
    conj (rightRawIntegral N) = -rightRawIntegral N := by
  unfold rightRawIntegral
  rw [← RCLike.intervalIntegral_conj]
  calc
    (∫ t in (-contourHeight N)..contourHeight N,
        conj (rightEdgeIntegrand N t)) =
      ∫ t in (-contourHeight N)..contourHeight N,
        -rightEdgeIntegrand N (-t) := by
          apply intervalIntegral.integral_congr
          intro t _
          exact conj_rightEdgeIntegrand N t
    _ = -(∫ t in (-contourHeight N)..contourHeight N,
        rightEdgeIntegrand N (-t)) := by
          rw [intervalIntegral.integral_neg]
    _ = -(∫ t in (-contourHeight N)..contourHeight N,
        rightEdgeIntegrand N t) := by
          rw [intervalIntegral.integral_comp_neg]
          simp

/-- The normalized right-edge contribution is fixed by conjugation. -/
theorem conj_normalizedRightContribution (N : ℕ) :
    conj (normalizedRightContribution N) =
      normalizedRightContribution N := by
  change conj (rectangleNormalizer * rightRawIntegral N) =
    rectangleNormalizer * rightRawIntegral N
  rw [map_mul, conj_rectangleNormalizer, conj_rightRawIntegral]
  ring

@[simp] theorem normalizedRightContribution_im_eq_zero (N : ℕ) :
    (normalizedRightContribution N).im = 0 :=
  Complex.conj_eq_iff_im.mp (conj_normalizedRightContribution N)

/-- Conjugating the left-edge integrand is likewise the negative of reflecting
its real parameter. The reversed interval endpoints are retained separately. -/
theorem conj_leftEdgeIntegrand (N : ℕ) (t : ℝ) :
    conj (leftEdgeIntegrand N t) =
      -leftEdgeIntegrand N (-t) := by
  unfold leftEdgeIntegrand
  rw [map_mul, Complex.conj_I,
    ← logDeriv_riemannZeta_conj,
    ← leftPoint_neg_eq_conj_leftPoint]
  ring

/-- The unnormalized downward left-edge integral is purely imaginary. -/
theorem conj_leftRawIntegral (N : ℕ) :
    conj (leftRawIntegral N) = -leftRawIntegral N := by
  unfold leftRawIntegral
  rw [← RCLike.intervalIntegral_conj]
  calc
    (∫ t in contourHeight N..(-contourHeight N),
        conj (leftEdgeIntegrand N t)) =
      ∫ t in contourHeight N..(-contourHeight N),
        -leftEdgeIntegrand N (-t) := by
          apply intervalIntegral.integral_congr
          intro t _
          exact conj_leftEdgeIntegrand N t
    _ = -(∫ t in contourHeight N..(-contourHeight N),
        leftEdgeIntegrand N (-t)) := by
          rw [intervalIntegral.integral_neg]
    _ = -(∫ t in contourHeight N..(-contourHeight N),
        leftEdgeIntegrand N t) := by
          rw [intervalIntegral.integral_comp_neg]
          simp

/-- The normalized left-edge contribution is fixed by conjugation. -/
theorem conj_normalizedLeftContribution (N : ℕ) :
    conj (normalizedLeftContribution N) =
      normalizedLeftContribution N := by
  change conj (rectangleNormalizer * leftRawIntegral N) =
    rectangleNormalizer * leftRawIntegral N
  rw [map_mul, conj_rectangleNormalizer, conj_leftRawIntegral]
  ring

@[simp] theorem normalizedLeftContribution_im_eq_zero (N : ℕ) :
    (normalizedLeftContribution N).im = 0 :=
  Complex.conj_eq_iff_im.mp (conj_normalizedLeftContribution N)

/-- The real part of the complete index uses one horizontal edge and the two
real vertical contributions. -/
theorem normalizedRectangleIndex_re_eq_symmetric_sum (N : ℕ) :
    (normalizedRectangleIndex N).re =
      2 * (normalizedBottomContribution N).re +
        (normalizedRightContribution N).re +
        (normalizedLeftContribution N).re := by
  rw [normalizedRectangleIndex_eq_edge_sum,
    normalizedTopContribution_eq_conj_bottomContribution]
  simp only [Complex.add_re, map_add, Complex.conj_re]
  ring

/-- The symmetry calculation itself proves that the normalized rectangle index
is real, independently of the later qualitative residue identity. -/
theorem normalizedRectangleIndex_eq_ofReal_symmetric_sum (N : ℕ) :
    normalizedRectangleIndex N =
      ((2 * (normalizedBottomContribution N).re +
        (normalizedRightContribution N).re +
        (normalizedLeftContribution N).re : ℝ) : ℂ) := by
  apply Complex.ext
  · simpa using normalizedRectangleIndex_re_eq_symmetric_sum N
  · rw [normalizedRectangleIndex_eq_edge_sum,
      normalizedTopContribution_eq_conj_bottomContribution]
    simp [normalizedRightContribution_im_eq_zero,
      normalizedLeftContribution_im_eq_zero]

/-- Reversing the top orientation is not optional. This finite algebra control
records the sign that converts a raw negative conjugate into a normalized
positive conjugate. -/
theorem horizontal_orientation_control (a b : ℂ)
    (ha : conj a = -a) :
    a * (-conj b) = conj (a * b) := by
  rw [map_mul, ha]
  ring

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleConjugateSymmetry
