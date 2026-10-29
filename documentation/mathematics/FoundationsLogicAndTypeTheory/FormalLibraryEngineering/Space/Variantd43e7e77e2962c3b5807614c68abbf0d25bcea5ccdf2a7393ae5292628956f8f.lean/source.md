# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Space.Variantd43e7e77e2962c3b5807614c68abbf0d25bcea5ccdf2a7393ae5292628956f8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cac9cdca9d594e803324bbd4c34db375474bf5e4` · SHA-256 `d43e7e77e2962c3b5807614c68abbf0d25bcea5ccdf2a7393ae5292628956f8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure SpaceDescriptor where
  spaceRef : String
  finiteHorizonRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninSpace

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4eda3460e0882c1f666ec7450ab99f5216091f36c4d94a1ee9364a0e04986bcc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Space/Variantd43e7e77e2962c3b5807614c68abbf0d25bcea5ccdf2a7393ae5292628956f8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
