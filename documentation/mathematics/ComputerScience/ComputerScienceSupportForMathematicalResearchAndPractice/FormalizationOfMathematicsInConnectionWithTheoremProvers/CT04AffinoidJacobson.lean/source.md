# CT04 Affinoid Jacobson — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e8407a1afdc4153ffd8f7c257e0eb88b13582e2` · SHA-256 `beeceb960aaf8b171257fc25225b88ce50656e8ca71fa7c26dfba7a58ff6d89d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-04: affinoid Jacobson and finite residue fields.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct04_affinoidJacobson
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT04Claim S :=
  registry.ct04

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8464dd3d435ca9690655bde575293f061d54066bb3d951d82042170b479ae17d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT04AffinoidJacobson/Variantbeeceb960aaf8b171257fc25225b88ce50656e8ca71fa7c26dfba7a58ff6d89d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
