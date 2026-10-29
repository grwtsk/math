# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectRationalRealDriftPositive.Variantbd6ccc5dc239e6dc58c267d6b56e7c359f077e14fddc740377556cc6b8440895

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa2a47818299c609704122eb0f01799399354445` · SHA-256 `bd6ccc5dc239e6dc58c267d6b56e7c359f077e14fddc740377556cc6b8440895`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
open GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension
example (x : ℚ × ℚ) (hx : edgeHodge.IsHarmonic0 x) :
    realEdgeHodge.IsHarmonic0 (castVertex x) := cast_harmonic x hx
example (x : ℚ × ℚ) : castEdge (edgeDelta x) = realEdgeDelta (castVertex x) :=
  cast_edgeDelta x
example (q : ℚ) : castVertex (edgeDeltaStar q) = realEdgeDeltaStar (castEdge q) :=
  cast_edgeDeltaStar q
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85d64d317cc8c2782015983684f29b8cb69aa4fe3cf4c37b4322a00ea897384a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectRationalRealDriftPositive/Variantbd6ccc5dc239e6dc58c267d6b56e7c359f077e14fddc740377556cc6b8440895.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
