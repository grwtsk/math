# Half Turn — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30088e30ae96987f3648b821427ded8397ec0888` · SHA-256 `38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.SquaredDistance

/-!
# Affine half-turn

The half-turn is expressed by canonical vector operations on the Euclidean
plane.  Involution and metric preservation are proved, not runtime assumptions.
-/

namespace Mathematics.Geometry

/-- The affine half-turn about a designated center. -/
def halfTurn (center point : PlanePoint) : PlanePoint :=
  (2 : ℝ) • center - point

@[simp] theorem halfTurn_involutive (center point : PlanePoint) :
    halfTurn center (halfTurn center point) = point := by
  ext coordinate
  simp [halfTurn]

theorem halfTurn_difference (center point : PlanePoint) :
    center - halfTurn center point = -(center - point) := by
  ext coordinate
  simp [halfTurn]
  ring

theorem halfTurn_preserves_centered_squaredDistance
    (center point : PlanePoint) :
    planeSquaredDistance center (halfTurn center point) =
      planeSquaredDistance center point := by
  simp only [planeSquaredDistance, halfTurn_difference]
  simp [norm_sub_rev]

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbbc39e9fe20083c346d0cf3455b554afcd76d2a313b3e4d5ddd44271d581b3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
