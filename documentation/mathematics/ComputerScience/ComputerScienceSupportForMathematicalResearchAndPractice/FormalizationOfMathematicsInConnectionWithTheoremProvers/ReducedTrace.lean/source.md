# Reduced Trace — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b7e4888703070128ff4bd316bb1e9b5696fa60c` · SHA-256 `98cda18c82c02ca2a642fe5a8383acf31df2c00c5e0200d73324e54734fe7cbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Trace.StableInvariantTrace

/-!
# Reduced finite trace certificate

The certificate records each step from the action to the stable trace.
-/

namespace Mathematics.StratifiedBoundary

structure ReducedTraceCertificate where
  automorphismActionRef : String
  equivariantKernelRef : String
  invariantLawRef : String
  unitaryCrossedProductActionRef : String
  invariantTraceRef : String
  identityCoefficientCompatibilityRef : String

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89bc7b274c1ef21b1efd7201419f0b330e142298d89533d5f922714739d1bcb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducedTrace/Variant98cda18c82c02ca2a642fe5a8383acf31df2c00c5e0200d73324e54734fe7cbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
