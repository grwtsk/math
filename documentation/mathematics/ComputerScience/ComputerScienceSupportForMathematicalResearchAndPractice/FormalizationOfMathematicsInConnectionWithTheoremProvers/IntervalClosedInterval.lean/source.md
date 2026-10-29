# Interval Closed Interval — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `182bf320fbb4966bf4f26134805af04318ca0f39` · SHA-256 `71f834269589609a55d021187ae568c0946da86f7239398e8d3f34c8cf501a06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Topology.Foundations

universe u

namespace FCRS.Topology

/--
An abstract closed interval.  It is not identified with the real unit
interval; the endpoint and interior laws record only the semantics needed by
the core graph-realization layer.
-/
structure ClosedInterval where
  Point : Type u
  topology : TopologicalSpaceLike Point
  zero : Point
  one : Point
  zero_ne_one : zero ≠ one
  interior : Set Point
  zero_not_mem_interior : ¬ zero ∈ interior
  one_not_mem_interior : ¬ one ∈ interior

end FCRS.Topology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5ba635c1660f896f3acc5e2bb4f83ac9a12e1be8421135523c32a59426b1c12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interval/Variant71f834269589609a55d021187ae568c0946da86f7239398e8d3f34c8cf501a06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
