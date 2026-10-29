# Finite Horizon Gram — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c11a64723f29c622aba724d00933ad9cb178ab2` · SHA-256 `334e0fb1eda7a4296fcaab8a2539c0f89463738741b5a1c2d3ba434d16f9fa7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure FiniteHorizonGramDescriptor where
  gramRef : String
  horizonRef : String
  compatibilityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninFiniteHorizonGram

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47d49c874824754d2ec06418cfd4a92abbb9a7e8d8be3fb35bfbd5204ccf0fe4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHorizonGram/Variant334e0fb1eda7a4296fcaab8a2539c0f89463738741b5a1c2d3ba434d16f9fa7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
