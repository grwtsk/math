/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PoleContourPolygonIndex
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourWinding

set_option autoImplicit false

/-!
# Finite polygon-index controls and the actual small-square source

Synthetic polygons test signed turns, branch-ray vertices, tangencies, zeros,
closure and sufficient-chart rejection. The actual-source example is the old
SMALL pole square, not a computed large counting contour. Every finite decision
and analytic source composition remains NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.PolygonIndexControls

open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open RationalPolygonIndex ExponentialLoopIndex

def square : List Coordinates := [(-1, -1), (1, -1), (1, 1), (-1, 1), (-1, -1)]
def doubleSquare : List Coordinates := square.take 4 ++ square

theorem square_checked : check 4 square = true := by decide

theorem signed_finite_controls :
    evaluate 4 square = some 1 ∧ evaluate 4 square.reverse = some (-1) ∧
      evaluate 8 doubleSquare = some 2 := by decide

/-- Non-vacuous refinement: construct the entire punctured square loop. -/
theorem actual_square_winding : winding (checkedLoop square_checked)
    (checkedLoop_closed square_checked) = 1 := by
  rw [checkedLoop_winding]
  decide

/-- Splitting ON the negative ray does not double count its vertex. -/
theorem ray_vertex_control :
    evaluate 5 [(-1, -1), (1, -1), (1, 1), (-1, 1), (-1, 0), (-1, -1)] = some 1 ∧
    increment (-1, 1) (-1, 0) = 0 ∧ increment (-1, 0) (-1, -1) = 1 := by decide

/-- Arrival and departure at a ray tangent cancel; a ray edge is not a zero. -/
theorem tangency_and_ray_edge_controls :
    evaluate 2 [(-2, -1), (-1, 0), (-2, -1)] = some 0 ∧
    evaluate 2 [(-2, 0), (-1, 0), (-2, 0)] = some 0 := by decide

theorem accepted_zero_is_not_failure :
    evaluate 1 [one, one] = some 0 ∧ evaluate 1 [zero, zero] = none ∧
      evaluate 0 [one] = none := by decide

theorem all_edges_and_exact_lengths_required :
    evaluate 4 (square.take 4) = none ∧ evaluate 4 (square ++ [one]) = none ∧
    evaluate 4 [(-1, -1), (1, -1), (1, 1), (-1, 1), (1, 1)] = none := by decide

theorem zero_vertex_or_zero_crossing_rejected :
    evaluate 2 [one, zero, one] = none ∧
      evaluate 2 [(-1, -1), (1, 1), (-1, -1)] = none := by decide

/-- These nonzero diagonal edges do not meet a common STRICT coordinate
half-plane until split. Failure of this guard does not assert a curve zero. -/
def diamond : List Coordinates := [(1, 0), (0, 1), (-1, 0), (0, -1), (1, 0)]
def splitDiamond : List Coordinates :=
  [(1, 0), (1 / 2, 1 / 2), (0, 1), (-1 / 2, 1 / 2), (-1, 0),
    (-1 / 2, -1 / 2), (0, -1), (1 / 2, -1 / 2), (1, 0)]

theorem conservative_chart_control :
    evaluate 4 diamond = none ∧ evaluate 8 splitDiamond = some 1 := by decide

/-- Both diagonal endpoints are nonzero and so is their entire segment. -/
theorem rejected_diagonal_is_nonzero {t : ℝ} (ht : t ∈ Set.Icc 0 1) :
    PolygonTube.blend t (1 : ℂ) Complex.I ≠ 0 := by
  intro hz
  have hr := congrArg Complex.re hz
  have hi := congrArg Complex.im hz
  norm_num [PolygonTube.blend, Complex.real_smul] at hr hi
  linarith

/-- Same endpoints and same geometric carrier, but different traversal counts. -/
theorem multiple_traversal_is_retained :
    prefix square 4 = 1 ∧ prefix doubleSquare 8 = 2 := by decide

/-- Merely counting every sign change of Im counts the positive-ray crossing
as well. The left-chart condition is essential. -/
theorem opposite_ray_is_not_counted :
    increment (1, -1) (1, 1) = 0 ∧ increment (-1, 1) (-1, -1) = 1 := by decide

/-- An actual source application uses the old source enclosures without any
additional assumption about the computed polygon index. -/
theorem small_square_evaluates :
    PoleContourPolygonIndex.evaluate 4 PoleContourCoverage.square
      PoleContourCoverage.squareData PoleContourCoverage.constantImage = some 0 := by decide

theorem small_square_source_index_computed :
    GRWTSK.RiemannHypothesis.PoleContourWinding.sourceIndex
      PoleContourCoverage.image_checked PoleContourCoverage.square_enclosures = 0 :=
  PoleContourPolygonIndex.evaluate_sound PoleContourCoverage.image_checked
    PoleContourCoverage.square_enclosures small_square_evaluates

/-- The finite topological index cannot manufacture actual zeta value accuracy. -/
theorem fictitious_values_still_have_no_source :
    ¬ RationalPoleContour.Enclosures 4 PoleContourCoverage.fictitiousData :=
  PoleContourCoverage.fictitious_data_have_no_enclosures

end GRWTSK.RiemannHypothesis.Checks.PolygonIndexControls
