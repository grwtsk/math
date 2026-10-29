# Orientation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b77a4aeaffcef1b23dcf01ae63dd732602ed759b` · SHA-256 `6e628ab96b4e5d5f455ce2de3d5456d63d151ee27c51d5c72b821f63bcdf707b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Euclidean presentation and arc orientation

Display-axis direction is explicitly distinct from intrinsic circular
orientation.  Winding remains integral.
-/

namespace Mathematics.Geometry

/-- Vertical display orientation; this does not alter plane geometry. -/
inductive YAxisDirection
  | up
  | down
  deriving DecidableEq, Repr

/-- Orientation of a directed circular arc. -/
inductive ArcOrientation
  | clockwise
  | counterclockwise
  deriving DecidableEq, Repr

/-- Exact integral winding, independent of floating-point angle accumulation. -/
abbrev WindingNumber := Int

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d71123a5579573e141c9c3a673cfef31856a4e67341ce4999e12cec30e01897 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Orientation/Variant6e628ab96b4e5d5f455ce2de3d5456d63d151ee27c51d5c72b821f63bcdf707b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
