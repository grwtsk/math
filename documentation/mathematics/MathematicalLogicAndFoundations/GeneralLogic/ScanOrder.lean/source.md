# Scan Order — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fef1ab7cc878a44bce294db9e2f1b247a0310ad` · SHA-256 `af4cbfe8a8246c65c7458d7510d0d58a828a0adca18c0d942dc974508741b7fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Cellular.Adjacency

/-!
# Folder.Cellular.ScanOrder

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.scan_order
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: phase
-/


namespace Folder
namespace Cellular

structure ScanOrder (d k : Nat) where
  rank : CubeAddress d k → Nat
  injective : Function.Injective rank

structure OrientedEdge (d k : Nat) where
  source : CubeAddress d k
  target : CubeAddress d k
  adjacent : CubeAdjacent source target

def scanForward
    (S : ScanOrder d k)
    (e : OrientedEdge d k) : Prop :=
  S.rank e.source < S.rank e.target

structure ScanTwist (d k m : Nat) where
  value : OrientedEdge d k → ZMod m

end Cellular
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e0e89275c44e8de16633ec6601d164eeb866b261d2696e5ebf7e5fe2817cfaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ScanOrder/Variantaf4cbfe8a8246c65c7458d7510d0d58a828a0adca18c0d942dc974508741b7fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
