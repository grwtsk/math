# Complete source: GRWTSK.Topology.GeneralTopology.Cell.Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4acaf7483d663468d0eaca51fde2d87b8aa715ee` · SHA-256 `73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a58625217d034bcae33a649593cce8db3f547e76aa8e574cca580b53530f63bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Cell/Variant73ff1017b6efd03d256fde17536c4f719da0b3e4121d7dfb8a9e7aa331e55b74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
