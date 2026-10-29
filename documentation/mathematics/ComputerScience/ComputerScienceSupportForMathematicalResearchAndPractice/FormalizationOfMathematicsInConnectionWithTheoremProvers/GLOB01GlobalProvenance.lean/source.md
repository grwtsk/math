# GLOB01 Global Provenance — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df30fd2716a334e04932fdab4fc2d6e3ac73cd03` · SHA-256 `a665118f489fd641e14a4ddfee7d920e22e74eb89816e53c7090d81eeee6c8ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- Place-wise Archimedean and non-Archimedean realizations share a global source. -/
theorem glob01_globalProvenance
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    GLOB01Claim S :=
  registry.glob01

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04cc354443b91befbe520c41850068c83d9eef407e35de500bfd41ec2b2bd699 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GLOB01GlobalProvenance/Varianta665118f489fd641e14a4ddfee7d920e22e74eb89816e53c7090d81eeee6c8ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
