# Directed Arc — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f0f1079f77bfc270aee4f6917e07de34a2e307b` · SHA-256 `f857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Circle
import Mathematics.Geometry.Orientation

/-!
# Directed circular arcs

An arc carries exact endpoint-membership witnesses and an intrinsic direction.
Display-axis configuration is deliberately absent.
-/

namespace Mathematics.Geometry

/-- A directed arc on a positive-radius Euclidean circle. -/
structure DirectedArc where
  circle : PlaneCircle
  startPoint : PlanePoint
  endPoint : PlanePoint
  startOnCircle : circle.Contains startPoint
  endOnCircle : circle.Contains endPoint
  orientation : ArcOrientation

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=395f71e999270a77d895de3544e46ce173f9e21c9b985801ddbe2b8492daf9b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirectedArc/Variantf857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
