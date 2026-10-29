# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CapacityEnvelope.Variant65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d986268ed26a8efd44ebbf33e74ff86303faa364` · SHA-256 `65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect

structure CapacityEnvelopeDescriptor where
  envelopeRef : String
  feasibleRegionRef : String
  containmentCertificateRef : Option String
  inconsistencyRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .certifiedCapacityEnvelope

end Mathematics.SemiLocalDefect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc225267fa4f64f628d4d9695312fbefb9ebc589994b5d61aedeb34f5c989015 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CapacityEnvelope/Variant65bba1b79fa1adb9967d26ba38a37732b6292f2ee45cbfe208e03a9f5d0e19a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
