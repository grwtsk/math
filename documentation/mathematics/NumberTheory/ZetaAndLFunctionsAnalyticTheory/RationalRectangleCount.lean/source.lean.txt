/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalRectangleMesh
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleIndex

set_option autoImplicit false

/-!
# A constructed refined rectangle supplies boundary coverage and orientation

The external corner geometry and rational perimeter marks generate every vertex.
Finite mesh success plus the OLD source tube and actual Enclosures derive full
boundary nonvanishing and an oriented source-image homotopy. No boundary oracle,
reparameterization map, or free alignment equation is supplied by the caller.
There is still no successful target-contour trace or numerical zero count here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.RationalRectangleCount

open Set ContinuousMap
open scoped unitInterval
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open RationalPoleContour CriticalStripHeightDescent
open RectangleFactorIndex PolygonFreeHomotopy ClosedCurveFactorIndex

/-- An invalid box or mesh is none, not an accepted count of zero. -/
def evaluateBox (l u : Coordinates) (n : ℕ) (marks : List ℚ)
    (data : List EdgeData) (image : List Coordinates) : Option ℤ :=
  if decide (l.1 < u.1 ∧ l.2 < u.2) && RationalRectangleMesh.check n marks then
    PoleContourPolygonIndex.evaluate n (RationalRectangleMesh.vertices l u marks) data image
  else none

theorem evaluateBox_eq_some_iff (l u : Coordinates) (n : ℕ) (a : List ℚ)
    (d : List EdgeData) (y : List Coordinates) (k : ℤ) :
    evaluateBox l u n a d y = some k ↔
      (l.1 < u.1 ∧ l.2 < u.2) ∧ RationalRectangleMesh.check n a = true ∧
        PoleContourPolygonIndex.evaluate n (RationalRectangleMesh.vertices l u a) d y = some k := by
  by_cases hg : l.1 < u.1 ∧ l.2 < u.2 <;>
    by_cases hm : RationalRectangleMesh.check n a = true <;> simp [evaluateBox, hg, hm]

def lower : Coordinates := (1/4, 0)
def upper (T : ℚ) : Coordinates := (5/4, T+1/4)

def evaluate (T : ℚ) (n : ℕ) (a : List ℚ) (d : List EdgeData) (y : List Coordinates) : Option ℤ :=
  evaluateBox lower (upper T) n a d y

noncomputable section

/-- The inherited full-tube proof and the DERIVED mesh range cover the actual
geometric boundary. This replaces the previous separately supplied premise. -/
theorem boundary_of_tube (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} {d : List EdgeData} {y : List Coordinates}
    (hm : RationalRectangleMesh.check n a = true)
    (ht : RationalPoleContourTube.check n (RationalRectangleMesh.vertices l u a) d y = true)
    (he : Enclosures n d) :
    ∀ z ∈ (RationalRectangleMesh.rectangle l u hx hy).boundary, poleNormalizedZeta z ≠ 0 := by
  intro z hz
  rw [← RationalRectangleMesh.range_eq_boundary l u hx hy hm] at hz
  obtain ⟨t, htz⟩ := hz
  have hn := (PoleContourWinding.sourceLift ht he t).2
  change poleNormalizedZeta (polygonMap n (RationalRectangleMesh.points l u a) t) ≠ 0 at hn
  rwa [htz] at hn

/-- Explicit boundary-valued domain homotopy, then the SAME actual source.
Straight interpolation of complex boundary points could cross an interior zero;
only the unwrapped real perimeter clocks are interpolated. -/
def sourceHomotopy (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} {d : List EdgeData} {y : List Coordinates}
    (hm : RationalRectangleMesh.check n a = true)
    (ht : RationalPoleContourTube.check n (RationalRectangleMesh.vertices l u a) d y = true)
    (he : Enclosures n d) :
    HomotopyWith (PoleContourHomotopy.sourceLoop n (RationalRectangleMesh.vertices l u a))
      ((RationalRectangleMesh.rectangle l u hx hy).image poleNormalizedZeta
        differentiable_poleNormalizedZeta.continuous.continuousOn)
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0) := by
  let D := RationalRectangleMesh.rectangle l u hx hy
  let H := RectanglePerimeterMesh.boundaryHomotopy D (RationalRectangleMesh.admissible hm)
  have hc := RationalRectangleMesh.curve_eq l u hx hy hm
  have hb := boundary_of_tube l u hx hy hm ht he
  refine
    { toFun := fun p => poleNormalizedZeta (H p)
      continuous_toFun := differentiable_poleNormalizedZeta.continuous.comp (map_continuous H)
      map_zero_left := ?_
      map_one_left := ?_
      prop' := fun lam => ⟨congrArg poleNormalizedZeta (H.prop lam).1,
        fun t => hb _ ((H.prop lam).2 t)⟩ }
  · intro t
    rw [H.map_zero_left]
    change poleNormalizedZeta (RectanglePerimeterMesh.curve D n (RationalRectangleMesh.marks a) t) =
      poleNormalizedZeta (polygonMap n (RationalRectangleMesh.points l u a) t)
    exact congrArg poleNormalizedZeta (congrArg (fun g : C(I, ℂ) => g t) hc).symm
  · intro t
    rw [H.map_one_left]
    rfl

/-- Finite geometry discharges orientation; the old signed invariant is retained. -/
theorem sourceIndex_aligned (l u : Coordinates) (hx : l.1 < u.1) (hy : l.2 < u.2)
    {n : ℕ} {a : List ℚ} {d : List EdgeData} {y : List Coordinates}
    (hm : RationalRectangleMesh.check n a = true)
    (ht : RationalPoleContourTube.check n (RationalRectangleMesh.vertices l u a) d y = true)
    (he : Enclosures n d) :
    PoleContourWinding.sourceIndex ht he =
      index ((RationalRectangleMesh.rectangle l u hx hy).image poleNormalizedZeta
          differentiable_poleNormalizedZeta.continuous.continuousOn)
        ((RationalRectangleMesh.rectangle l u hx hy).image_closed _ _)
        (fun t => boundary_of_tube l u hx hy hm ht he _
          ((RationalRectangleMesh.rectangle l u hx hy).curve_boundary t)) := by
  let H := sourceHomotopy l u hx hy hm ht he
  have hn : ∀ t, PoleContourHomotopy.sourceLoop n (RationalRectangleMesh.vertices l u a) t ≠ 0 :=
    fun t => (PoleContourWinding.sourceLift ht he t).2
  have hc : PoleContourHomotopy.sourceLoop n (RationalRectangleMesh.vertices l u a) 0 =
      PoleContourHomotopy.sourceLoop n (RationalRectangleMesh.vertices l u a) 1 :=
    congrArg Subtype.val (PoleContourWinding.source_closed ht he)
  have hs := index_eq_winding _ hc hn (PoleContourWinding.sourceLift ht he)
    (PoleContourWinding.source_closed ht he) (fun _ => rfl)
  exact hs.symm.trans (index_homotopy hc _ hn _ H)

theorem target_rectangle (T : ℚ) (hy : lower.2 < (upper T).2)
    (hT : (0 : ℝ) < (T : ℝ)+1/4) :
    RationalRectangleMesh.rectangle lower (upper T) (by norm_num [lower, upper]) hy =
      CanonicalRectangleIndex.region (T : ℝ) hT := by
  unfold RationalRectangleMesh.rectangle CanonicalRectangleIndex.region
  simp [lower, upper]

/-- No caller-supplied boundary proof, reparameterization, traversal identity,
image index, or divisor/count equality. ACTUAL source Enclosures still remain. -/
theorem count_eq_of_evaluate {T : ℚ} {n : ℕ} {a : List ℚ}
    {d : List EdgeData} {y : List Coordinates} {k : ℤ}
    (he : Enclosures n d) (hk : evaluate T n a d y = some k) :
    (MirrorCountingRectangle.count (T : ℝ) : ℤ) = k := by
  obtain ⟨hg, hm, hp⟩ := (evaluateBox_eq_some_iff _ _ _ _ _ _ _).mp hk
  have hT : (0 : ℝ) < (T : ℝ)+1/4 := by
    have hy := hg.2
    dsimp [lower, upper] at hy
    exact_mod_cast hy
  have ht := ((PoleContourPolygonIndex.evaluate_eq_some_iff _ _ _ _ _).mp hp).1
  have hb := boundary_of_tube lower (upper T) hg.1 hg.2 hm ht he
  have hD := target_rectangle T hg.2 hT
  have hboundary : CanonicalRectangleIndex.BoundaryNonzero (T : ℝ) hT := by
    simpa only [hD] using hb
  have hs := sourceIndex_aligned lower (upper T) hg.1 hg.2 hm ht he
  have hi : PoleContourWinding.sourceIndex ht he =
      (MirrorCountingRectangle.count (T : ℝ) : ℤ) := by
    calc
      _ = index (CanonicalRectangleIndex.sourceCurve (T : ℝ) hT)
          (CanonicalRectangleIndex.sourceCurve_closed (T : ℝ) hT)
          (CanonicalRectangleIndex.sourceCurve_nonzero (T : ℝ) hT hboundary) := by
        simpa only [hD, CanonicalRectangleIndex.sourceCurve] using hs
      _ = _ := CanonicalRectangleIndex.index_eq_count (T : ℝ) hT hboundary
  exact hi.symm.trans (PoleContourPolygonIndex.evaluate_sound ht he hp)

/-- A negative signed result is incompatible with genuine source Enclosures,
not silently converted to zero or absolute value. -/
theorem result_nonnegative {T : ℚ} {n : ℕ} {a : List ℚ}
    {d : List EdgeData} {y : List Coordinates} {k : ℤ}
    (he : Enclosures n d) (hk : evaluate T n a d y = some k) : 0 ≤ k := by
  rw [← count_eq_of_evaluate he hk]
  exact Int.natCast_nonneg _

/-- A successful complete target trace remains UNSUPPLIED in this increment. -/
theorem complete_pair_of_evaluate_one {n : ℕ} {a : List ℚ}
    {d : List EdgeData} {y : List Coordinates}
    (he : Enclosures n d) (hk : evaluate 15 n a d y = some 1) :
    ∃ z : CanonicalZeroDivisor.ZeroPoint, CanonicalZeroDivisor.multiplicity z = 1 ∧
      z.1.re = (1/2 : ℝ) ∧ CanonicalZeroDivisor.heightHead (15 : ℝ) =
        {z, LocalZeroSymmetry.conjugatePoint z} := by
  have hc := count_eq_of_evaluate he hk
  have hN : MirrorCountingRectangle.count (15 : ℝ) = 1 := by exact_mod_cast hc
  exact MirrorCountingRectangle.complete_pair_of_regional_upper hN.le

end
end GRWTSK.RiemannHypothesis.RationalRectangleCount
