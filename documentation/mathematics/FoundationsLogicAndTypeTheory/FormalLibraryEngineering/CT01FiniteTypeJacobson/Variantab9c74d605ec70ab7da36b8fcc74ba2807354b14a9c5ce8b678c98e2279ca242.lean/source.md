# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT01FiniteTypeJacobson.Variantab9c74d605ec70ab7da36b8fcc74ba2807354b14a9c5ce8b678c98e2279ca242

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8da2d68469c6eb3b8ad4102e1774276d44467de9` · SHA-256 `ab9c74d605ec70ab7da36b8fcc74ba2807354b14a9c5ce8b678c98e2279ca242`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-01: finite-type Jacobson and finite residue fields.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct01_finiteTypeJacobson
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT01Claim S :=
  registry.ct01

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a9be6701b6b6b107eca1819bfcd09e9c8d3f6f66304aaf93511fc31fd625ab5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT01FiniteTypeJacobson/Variantab9c74d605ec70ab7da36b8fcc74ba2807354b14a9c5ce8b678c98e2279ca242.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
