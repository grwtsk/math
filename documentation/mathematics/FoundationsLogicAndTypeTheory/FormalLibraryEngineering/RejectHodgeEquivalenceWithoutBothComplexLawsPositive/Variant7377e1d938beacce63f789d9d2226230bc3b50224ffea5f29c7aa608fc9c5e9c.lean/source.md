# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectHodgeEquivalenceWithoutBothComplexLawsPositive.Variant7377e1d938beacce63f789d9d2226230bc3b50224ffea5f29c7aa608fc9c5e9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `561cbb6fae9cb2c44954179e3c9409ba90431fbb` · SHA-256 `7377e1d938beacce63f789d9d2226230bc3b50224ffea5f29c7aa608fc9c5e9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : HodgeEquiv edgeHodge edgeHodge := HodgeEquiv.refl edgeHodge
example (x : ℚ × ℚ) : edgeHodge.IsHarmonic0 x ↔
    edgeHodge.IsHarmonic0 ((HodgeEquiv.refl edgeHodge).equiv0 x) :=
  (HodgeEquiv.refl edgeHodge).harmonic0_iff x
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9939ebbfc220f89f505523dcef542accf31584fa8fc0a4e96ac669ba66f9edd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectHodgeEquivalenceWithoutBothComplexLawsPositive/Variant7377e1d938beacce63f789d9d2226230bc3b50224ffea5f29c7aa608fc9c5e9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
