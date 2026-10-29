# Passivity Obstruction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1261aeebae1865d1574b02f24088179e2e8c6c7a` · SHA-256 `bd1a309865ae58c16a5100f5c44ad9f38866ae875e7ba6f782b41261943290af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure PassivityObstructionDescriptor where
  obstructionRef : String
  witnessVectorRef : String
  strictNegativityCertificateRef : Option String
  minimalityCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .passivityObstruction

end Mathematics.SemiLocalDefect.Access
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7097b122508e2626061de42f3e6d0e60f3bdc52bb237b8a030d60646527ec637 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PassivityObstruction/Variantbd1a309865ae58c16a5100f5c44ad9f38866ae875e7ba6f782b41261943290af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
