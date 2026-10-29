# Reject Rational Real Drift Negative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe04b6c63fc23cc36c86ff579cb1e8f553452f26` · SHA-256 `2a286230906db60772653f7341b04d49de550ae814f3b974b7b6755da46e307f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
open GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension
-- A rational proposition proof cannot be re-used directly for the real Hodge datum.
example (x : ℚ × ℚ) (hx : edgeHodge.IsHarmonic0 x) :
    realEdgeHodge.IsHarmonic0 (castVertex x) := hx
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60555413471ef43d2ffdd1a71eb143805f6d677a040b574fe2ca57e522455d28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectRationalRealDriftNegative/Variant2a286230906db60772653f7341b04d49de550ae814f3b974b7b6755da46e307f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
