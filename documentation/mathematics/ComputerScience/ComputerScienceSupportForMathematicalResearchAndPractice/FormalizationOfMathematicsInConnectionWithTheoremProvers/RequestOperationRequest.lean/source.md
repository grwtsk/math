# Request Operation Request — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73044077c99d66b30e68d2a051ea0a8e1a827d37` · SHA-256 `723927f3bf82cff78e7f74ac6f49606b4fc365219bf45270ef4965576a5984a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Capability.Lease

/-! # Fully bound operation requests -/

namespace Mathematics.Capability

structure OperationRequest where
  requestId : RequestId
  principal : Principal
  device : DeviceId
  element : ElementId
  purpose : PurposeId
  snapshot : ObjectAddress
  effect : Effect

end Mathematics.Capability
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f3b28f11b631b7288dc5b269ee734f084d98674b3dae994fd909f6f3abc76e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant723927f3bf82cff78e7f74ac6f49606b4fc365219bf45270ef4965576a5984a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
