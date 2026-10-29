# Cofinal Gram — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b6ff6281a7e3658424025211a26419dee610ba4` · SHA-256 `7bcb52000d4e15492dc77cd2d24cd85a988d46f00cc4b49e50d9ef9ee963be6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure CofinalGramDescriptor where
  systemRef : String
  finiteStageRefs : List String
  stabilityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninGramCofinalStability

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c45a3f6ed040ab58f96a19c623f75f741629aca50ff62d06afef2fe08bbd854a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CofinalGram/Variant7bcb52000d4e15492dc77cd2d24cd85a988d46f00cc4b49e50d9ef9ee963be6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
