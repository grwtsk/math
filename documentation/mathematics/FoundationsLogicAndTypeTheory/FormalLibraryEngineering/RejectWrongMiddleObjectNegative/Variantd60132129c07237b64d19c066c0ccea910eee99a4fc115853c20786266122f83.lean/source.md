# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectWrongMiddleObjectNegative.Variantd60132129c07237b64d19c066c0ccea910eee99a4fc115853c20786266122f83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `388fd9f8ee4afdb3d832206566c9a7fa4f084987` · SHA-256 `d60132129c07237b64d19c066c0ccea910eee99a4fc115853c20786266122f83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Algebra.KTheory.FormalKK
universe v
variable (T : BivariantTheory.{0,v} Nat)
-- Hostile mutation: the second correspondence starts at 2 rather than 1.
example (α : T.Corr 0 1) (β : T.Corr 2 3) : T.Corr 0 3 :=
  T.product α β
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=789d3df8fbcf4ebe433d1c0312b0952ae6cceba65df9c9a29c44545c540e321e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectWrongMiddleObjectNegative/Variantd60132129c07237b64d19c066c0ccea910eee99a4fc115853c20786266122f83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
