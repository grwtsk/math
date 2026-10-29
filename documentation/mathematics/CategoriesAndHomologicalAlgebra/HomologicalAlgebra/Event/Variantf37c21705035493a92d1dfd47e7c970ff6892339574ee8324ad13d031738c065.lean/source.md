# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Event.Variantf37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `697209e60e892eabcae49e5379b8541d067973a0` · SHA-256 `f37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Cubical.All

/-! # Homological event envelopes -/

namespace Mathematics.Homology

structure Event where
  id : StableId
  target : ElementRef
  revision : Nat
  payloadDigest : Digest
  deriving DecidableEq, Repr

structure TransportCertificate where
  event : Event
  sourceBoundaryDigest : Digest
  targetBoundaryDigest : Digest
  boundaryPreserved : sourceBoundaryDigest = targetBoundaryDigest

end Mathematics.Homology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eeec3e41e94cd201b9b29b9952f42276a316e31c3c64ed99500fe50a9ca8b94b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Event/Variantf37c21705035493a92d1dfd47e7c970ff6892339574ee8324ad13d031738c065.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
