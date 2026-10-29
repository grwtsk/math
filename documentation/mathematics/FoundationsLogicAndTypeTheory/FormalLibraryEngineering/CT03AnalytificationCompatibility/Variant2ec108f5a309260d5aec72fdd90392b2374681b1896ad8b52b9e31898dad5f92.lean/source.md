# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT03AnalytificationCompatibility.Variant2ec108f5a309260d5aec72fdd90392b2374681b1896ad8b52b9e31898dad5f92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b1b71b3cfd25d4ff8d47160d96d05103983b052` · SHA-256 `2ec108f5a309260d5aec72fdd90392b2374681b1896ad8b52b9e31898dad5f92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-03: separation, fiber-product, and base-change compatibility.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct03_analytificationCompatibility
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT03Claim S :=
  registry.ct03

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcb96db44870dd0d87a098f5fe168c4ca45a9d4b794a3d54fef6c4c31ee9e359 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT03AnalytificationCompatibility/Variant2ec108f5a309260d5aec72fdd90392b2374681b1896ad8b52b9e31898dad5f92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
