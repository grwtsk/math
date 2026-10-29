/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Exact subdivision and Hermite contact for quadratic Bezier patches

A point is represented by a real coordinate family. This covers planar glyph points while
keeping every identity dimension-independent. De Casteljau subdivision replaces one
quadratic segment by two segments with the same represented curve. At the shared endpoint,
the two parameterized tangents are positive rescalings of one common first jet whenever the
split parameter lies strictly between zero and one.

The symmetric two-sample difference is exactly the derivative of a quadratic, up to its
known scalar factor. Thus two ordinary samples that coalesce carry a value-plus-derivative
Hermite interface rather than a repeated ordinary evaluation node.

The curvature-defect identities record the exact quadratic scaling used by adaptive glyph
flattening. They assert no winding theorem, rasterizer correctness, or relation to a zeta
zero set.
-/

namespace GRWTSK.Analysis.Geometry.QuadraticBezierContact

/-- Coordinate representation of a point in an arbitrary real affine chart. -/
abbrev Point (ι : Type*) := ι → ℝ

/-- Affine interpolation between two points. -/
def lerp {ι : Type*} (left right : Point ι) (t : ℝ) : Point ι :=
  fun coordinate => (1 - t) * left coordinate + t * right coordinate

/-- A quadratic Bezier segment, specified by two endpoints and one control point. -/
structure Segment (ι : Type*) where
  start : Point ι
  control : Point ι
  finish : Point ι

namespace Segment

variable {ι : Type*}

/-- Evaluation of a quadratic Bezier segment. -/
def eval (curve : Segment ι) (t : ℝ) : Point ι :=
  fun coordinate =>
    (1 - t) ^ 2 * curve.start coordinate +
      2 * (1 - t) * t * curve.control coordinate +
        t ^ 2 * curve.finish coordinate

/-- The algebraic velocity of a quadratic Bezier segment. -/
def velocity (curve : Segment ι) (t : ℝ) : Point ι :=
  fun coordinate =>
    2 * (1 - t) * (curve.control coordinate - curve.start coordinate) +
      2 * t * (curve.finish coordinate - curve.control coordinate)

/-- The constant second-difference controlling quadratic flatness. -/
def curvatureDefect (curve : Segment ι) : Point ι :=
  fun coordinate =>
    curve.start coordinate - 2 * curve.control coordinate + curve.finish coordinate

/-- The de Casteljau point at which the segment is split. -/
def splitPoint (curve : Segment ι) (s : ℝ) : Point ι :=
  lerp (lerp curve.start curve.control s) (lerp curve.control curve.finish s) s

/-- The left de Casteljau subsegment. -/
def left (curve : Segment ι) (s : ℝ) : Segment ι where
  start := curve.start
  control := lerp curve.start curve.control s
  finish := splitPoint curve s

/-- The right de Casteljau subsegment. -/
def right (curve : Segment ι) (s : ℝ) : Segment ι where
  start := splitPoint curve s
  control := lerp curve.control curve.finish s
  finish := curve.finish

@[simp]
theorem eval_zero (curve : Segment ι) : curve.eval 0 = curve.start := by
  funext coordinate
  simp [eval]

@[simp]
theorem eval_one (curve : Segment ι) : curve.eval 1 = curve.finish := by
  funext coordinate
  simp [eval]

@[simp]
theorem splitPoint_eq_eval (curve : Segment ι) (s : ℝ) :
    curve.splitPoint s = curve.eval s := by
  funext coordinate
  simp [splitPoint, lerp, eval]
  ring

/-- Exact source preservation on the left subsegment. -/
theorem left_eval (curve : Segment ι) (s t : ℝ) :
    (curve.left s).eval t = curve.eval (s * t) := by
  funext coordinate
  simp [left, splitPoint, lerp, eval]
  ring

/-- Exact source preservation on the right subsegment. -/
theorem right_eval (curve : Segment ι) (s t : ℝ) :
    (curve.right s).eval t = curve.eval (s + (1 - s) * t) := by
  funext coordinate
  simp [right, splitPoint, lerp, eval]
  ring

/-- Both subsegments meet at the original curve point. -/
theorem left_join_point (curve : Segment ι) (s : ℝ) :
    (curve.left s).eval 1 = curve.eval s := by
  rw [eval_one]
  exact curve.splitPoint_eq_eval s

/-- Both subsegments meet at the original curve point. -/
theorem right_join_point (curve : Segment ι) (s : ℝ) :
    (curve.right s).eval 0 = curve.eval s := by
  rw [eval_zero]
  exact curve.splitPoint_eq_eval s

/-- The de Casteljau join is an exact shared endpoint. -/
theorem join_point (curve : Segment ι) (s : ℝ) :
    (curve.left s).eval 1 = (curve.right s).eval 0 :=
  (curve.left_join_point s).trans (curve.right_join_point s).symm

/-- The left endpoint tangent is the common tangent scaled by the left parameter length. -/
theorem left_velocity_one_scaled (curve : Segment ι) (s : ℝ) :
    (curve.left s).velocity 1 = s • curve.velocity s := by
  funext coordinate
  simp [left, splitPoint, lerp, velocity]
  ring

/-- The right endpoint tangent is the common tangent scaled by the right parameter length. -/
theorem right_velocity_zero_scaled (curve : Segment ι) (s : ℝ) :
    (curve.right s).velocity 0 = (1 - s) • curve.velocity s := by
  funext coordinate
  simp [right, splitPoint, lerp, velocity]
  ring

/-- For a quadratic curve, the symmetric two-sample difference is exactly its velocity
multiplied by the known sample separation. This is the algebraic Hermite limit. -/
theorem symmetric_difference_eq_velocity (curve : Segment ι) (s h : ℝ) :
    curve.eval (s + h) - curve.eval (s - h) = (2 * h) • curve.velocity s := by
  funext coordinate
  simp [eval, velocity]
  ring

/-- Subdivision contracts the left flatness defect quadratically. -/
theorem left_curvatureDefect (curve : Segment ι) (s : ℝ) :
    (curve.left s).curvatureDefect = s ^ 2 • curve.curvatureDefect := by
  funext coordinate
  simp [left, splitPoint, lerp, curvatureDefect]
  ring

/-- Subdivision contracts the right flatness defect quadratically. -/
theorem right_curvatureDefect (curve : Segment ι) (s : ℝ) :
    (curve.right s).curvatureDefect = (1 - s) ^ 2 • curve.curvatureDefect := by
  funext coordinate
  simp [right, splitPoint, lerp, curvatureDefect]
  ring

/-- The midpoint deviation from the endpoint chord is one quarter of the signed
second-difference. -/
theorem midpoint_deviation (curve : Segment ι) :
    curve.eval (1 / 2 : ℝ) - lerp curve.start curve.finish (1 / 2 : ℝ) =
      (-1 / 4 : ℝ) • curve.curvatureDefect := by
  funext coordinate
  simp [eval, lerp, curvatureDefect]
  ring

/-- A value-plus-tangent interface at one parameter value. -/
structure HermiteJet (ι : Type*) where
  point : Point ι
  tangent : Point ι

/-- The first jet carried by a quadratic segment. -/
def jet (curve : Segment ι) (t : ℝ) : HermiteJet ι where
  point := curve.eval t
  tangent := curve.velocity t

/-- Two segments share a first jet up to explicit tangent rescaling. -/
structure ScaledHermiteContact (leftCurve rightCurve : Segment ι) where
  common : HermiteJet ι
  leftScale : ℝ
  rightScale : ℝ
  left_point : leftCurve.eval 1 = common.point
  right_point : rightCurve.eval 0 = common.point
  left_tangent : leftCurve.velocity 1 = leftScale • common.tangent
  right_tangent : rightCurve.velocity 0 = rightScale • common.tangent

/-- Geometric first-order contact requires both tangent scales to preserve orientation. -/
def ScaledHermiteContact.Positive {leftCurve rightCurve : Segment ι}
    (contact : ScaledHermiteContact leftCurve rightCurve) : Prop :=
  0 < contact.leftScale ∧ 0 < contact.rightScale

/-- De Casteljau subdivision supplies an exact value-plus-tangent contact record. -/
def splitContact (curve : Segment ι) (s : ℝ) :
    ScaledHermiteContact (curve.left s) (curve.right s) where
  common := curve.jet s
  leftScale := s
  rightScale := 1 - s
  left_point := by simpa [jet] using curve.left_join_point s
  right_point := by simpa [jet] using curve.right_join_point s
  left_tangent := by simpa [jet] using curve.left_velocity_one_scaled s
  right_tangent := by simpa [jet] using curve.right_velocity_zero_scaled s

/-- An interior split is a positive geometric first-order contact. -/
theorem splitContact_positive (curve : Segment ι) {s : ℝ}
    (s_pos : 0 < s) (s_lt_one : s < 1) :
    (curve.splitContact s).Positive := by
  change 0 < s ∧ 0 < 1 - s
  exact ⟨s_pos, sub_pos.mpr s_lt_one⟩

end Segment

end GRWTSK.Analysis.Geometry.QuadraticBezierContact
