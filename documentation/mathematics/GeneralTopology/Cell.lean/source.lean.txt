import Mathematics.RHIsolation.Cut

/-!
# Analytic cells and oriented contours

The interior is the zero-counting domain.  The closed carrier is used for
compact numerical enclosures and geometric envelopes.
-/

namespace Mathematics.RHIsolation

structure OrientedContour where
  range : Set ℂ
  piecewiseSmooth : Prop
  piecewiseSmoothProof : piecewiseSmooth
  positivelyOriented : Prop
  positivelyOrientedProof : positivelyOriented

structure AnalyticCell where
  id : AnalyticCellId
  carrier : Set ℂ
  interior : Set ℂ
  compact_carrier : IsCompact carrier
  interior_open : IsOpen interior
  interior_subset : interior ⊆ carrier
  contour : OrientedContour
  contour_bounds_interior : Prop
  contour_bounds_interiorProof :
    contour_bounds_interior
  digest : CellDigest

def PairwiseDisjointInteriors
    {ι : Type*}
    (cell : ι → AnalyticCell) : Prop :=
  ∀ ⦃left right : ι⦄,
    left ≠ right →
    Disjoint (cell left).interior
      (cell right).interior

end Mathematics.RHIsolation
