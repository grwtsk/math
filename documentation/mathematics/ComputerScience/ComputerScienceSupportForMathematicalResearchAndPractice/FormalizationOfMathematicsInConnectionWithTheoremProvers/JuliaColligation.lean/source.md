# Julia Colligation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c339f41cea45015e6ef05bb9c9ced25aa6d44b86` · SHA-256 `fce40c1404570569b5fcb33e45e68e97bccc44a68f3f52a707247db9bf06a69d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure JuliaColligationDescriptor where
  colligationRef : String
  transmissionRef : String
  certificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .juliaColligation

end Mathematics.SemiLocalDefect.Hardy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f34c114b32197369bed8eaefdea740b13902246aad2259468d6c7d95090a3bb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JuliaColligation/Variantfce40c1404570569b5fcb33e45e68e97bccc44a68f3f52a707247db9bf06a69d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
