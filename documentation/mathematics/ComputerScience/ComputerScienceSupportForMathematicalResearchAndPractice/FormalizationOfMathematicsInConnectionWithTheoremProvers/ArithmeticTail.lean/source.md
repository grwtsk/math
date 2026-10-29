# Arithmetic Tail — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cb3ec2f8b25d9db40d615c40313c267df686668` · SHA-256 `985b21a2b025a7b0622d96b4b2f78eef9f824d594242629dd1e2c5c43b216db6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure ArithmeticTailDescriptor where
  tailRef : String
  finiteCutRef : String
  uniformBoundCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .arithmeticTail

end Mathematics.SemiLocalDefect.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c7a129d1758f6c6383e081c5201ff57477bd45dafc5a01783a1b0e52fe03795 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArithmeticTail/Variant985b21a2b025a7b0622d96b4b2f78eef9f824d594242629dd1e2c5c43b216db6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
