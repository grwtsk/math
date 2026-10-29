/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.IntegerJetStateFold
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenFoldRefinement

set_option autoImplicit false

/-!
# Integer-square refinement of the SAME 38 target block obligations

No mesh, schedule, source formula, rounding order, radius or proposed count is
changed. Exact expression equalities connect this arithmetic to the old blocks.
No theorem asserts any large block's acceptance. No native truth is imported.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenIntegerRefinement

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open GRWTSK.Analysis.Complex GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalPoleContour
open HeightFifteenJetCandidate

def state (i : ℕ) : RationalJetStateFold.PatchState :=
  let p := plan i
  IntegerJetStateFold.patch p.center p.inner p.outer p.parameters

theorem state_eq (i : ℕ) : state i = HeightFifteenFoldRefinement.state i := by
  simp only [state, IntegerJetStateFold.patch_eq, HeightFifteenFoldRefinement.state]

def imageAt (i : ℕ) : Coordinates :=
  let j := prior i
  let li := lengthAt i
  let lj := lengthAt j
  mul (1/(li+lj),0)
    (add (mul (li,0) (state j).value.mid) (mul (lj,0) (state i).value.mid))

theorem imageAt_eq (i : ℕ) : imageAt i = HeightFifteenFoldRefinement.foldedImageAt i := by
  simp only [imageAt, state_eq, HeightFifteenFoldRefinement.foldedImageAt]

def image (i : ℕ) : Coordinates := if i < edges then imageAt i else imageAt 0

theorem image_eq (i : ℕ) : image i = HeightFifteenFoldRefinement.foldedImage i := by
  simp only [image, imageAt_eq, HeightFifteenFoldRefinement.foldedImage]

/-- All four global endpoints and the same strict radius are retained. -/
def test (i : ℕ) : Bool :=
  let p := plan i
  let q := state i
  let u := image i
  let v := image (i+1)
  decide ((q.accepted = true ∧
    inBall (sub (pointAt domain i) p.center) p.inner = true ∧
    inBall (sub (pointAt domain (i+1)) p.center) p.inner = true ∧
    inBall (sub u q.value.mid) q.radius = true ∧
    inBall (sub v q.value.mid) q.radius = true) ∧ RationalPolygonIndex.EdgeValid u v)

def term (i : ℕ) : ℤ := RationalPolygonIndex.increment (image i) (image (i+1))

theorem test_eq (i : ℕ) : test i = HeightFifteenFoldRefinement.test i := by
  simp only [test, state_eq, image_eq, HeightFifteenFoldRefinement.test]

theorem term_eq (i : ℕ) : term i = HeightFifteenFoldRefinement.term i := by
  simp only [term, image_eq, HeightFifteenFoldRefinement.term]

theorem chunk_eq (start count : ℕ) : chunk test term start count =
    chunk HeightFifteenFoldRefinement.test HeightFifteenFoldRefinement.term start count := by
  rw [show test = HeightFifteenFoldRefinement.test from funext test_eq,
    show term = HeightFifteenFoldRefinement.term from funext term_eq]

/-- Still unproved: these are the same literal 38 finite acceptance equations. -/
def IntegerBlockObligations : Prop := Pieces test term 0
  HeightFifteenBlockDecomposition.widths HeightFifteenBlockDecomposition.expected

def verifyExpected : Bool := verify test term 0
  HeightFifteenBlockDecomposition.widths HeightFifteenBlockDecomposition.expected

theorem obligations_iff : IntegerBlockObligations ↔
    HeightFifteenFoldRefinement.FoldBlockObligations := by
  unfold IntegerBlockObligations HeightFifteenFoldRefinement.FoldBlockObligations
  rw [show test = HeightFifteenFoldRefinement.test from funext test_eq,
    show term = HeightFifteenFoldRefinement.term from funext term_eq]

theorem verifyExpected_eq : verifyExpected = HeightFifteenFoldRefinement.verifyExpected := by
  unfold verifyExpected HeightFifteenFoldRefinement.verifyExpected
  rw [show test = HeightFifteenFoldRefinement.test from funext test_eq,
    show term = HeightFifteenFoldRefinement.term from funext term_eq]

theorem success_of_integer_blocks (h : IntegerBlockObligations) : Success :=
  HeightFifteenFoldRefinement.success_of_fold_blocks (obligations_iff.mp h)

theorem count_one_of_integer_blocks (h : IntegerBlockObligations) :
    MirrorCountingRectangle.count (15 : ℝ) = 1 :=
  count_one_of_success (success_of_integer_blocks h)

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenIntegerRefinement
