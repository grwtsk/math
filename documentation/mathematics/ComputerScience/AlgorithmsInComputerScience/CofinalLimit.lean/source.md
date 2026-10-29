# Cofinal Limit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57a8f891631a3ac97b797e770e346fe0dbba0f8f` · SHA-256 `5660c616c4b93b20d9a19cc2c9c69cb6c53e14f4eebe970b535552c496d3387a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure CofinalLimitDescriptor where
  systemRef : String
  finiteStageRefs : List String
  compatibilityCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .traceCofinalLimit

end Mathematics.SemiLocalDefect.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d52e0a2322fdf8fea72bc6d4ea3810b539e5b7697f4264c48774d03bfedc077a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CofinalLimit/Variant5660c616c4b93b20d9a19cc2c9c69cb6c53e14f4eebe970b535552c496d3387a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
