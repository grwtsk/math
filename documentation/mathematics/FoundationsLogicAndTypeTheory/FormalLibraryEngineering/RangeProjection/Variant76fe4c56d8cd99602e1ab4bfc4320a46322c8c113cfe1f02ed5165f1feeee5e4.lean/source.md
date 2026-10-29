# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RangeProjection.Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fdb9f74c0d7b55ad7d16f04a2352f8deba2c409` · SHA-256 `76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure RangeProjectionDescriptor where
  projectionRef : String
  horizonRef : String
  inclusionCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninRangeProjection

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d91585ba7e4a8c1d42224778d1524effa19ba65ad178fa79a075012884a31e02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RangeProjection/Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
