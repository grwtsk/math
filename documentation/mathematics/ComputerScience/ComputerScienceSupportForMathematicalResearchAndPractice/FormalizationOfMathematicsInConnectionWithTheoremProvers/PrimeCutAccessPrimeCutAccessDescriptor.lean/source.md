# Prime Cut Access Prime Cut Access Descriptor — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56e6e8be0eee376bf4e6dfc2c400191130dfc824` · SHA-256 `4381dd33697c1163b2635635ae8d5ff9531ac52f0790aaf74828b8a18f3176d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure PrimeCutAccessDescriptor where
  requestRef : String
  finitePrimeUniverseRef : String
  residualFrontierRef : Option String
  authoritativeEffect : Bool := false
  status : OpenBridgeStatus :=
    openBridgeStatus .primeCutAccess

end Mathematics.SemiLocalDefect.Access
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f094e6d731abc4f7138514fa552f1de3691b80c6a410d38de0f862deef142162 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeCutAccess/Variant4381dd33697c1163b2635635ae8d5ff9531ac52f0790aaf74828b8a18f3176d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
