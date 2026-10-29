# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeilCorrespondence.Variant4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3e7085c901730d164b0c3902876746ac82f1c09` · SHA-256 `4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure WeilCorrespondenceDescriptor where
  correspondenceRef : String
  operatorTraceRef : String
  arithmeticDistributionRef : String
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .arithmeticCorrespondence

end Mathematics.SemiLocalDefect.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce1567f78612454e2fc311ca8fced569606306e36a1c8bb101f360bcdd1628e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeilCorrespondence/Variant4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
