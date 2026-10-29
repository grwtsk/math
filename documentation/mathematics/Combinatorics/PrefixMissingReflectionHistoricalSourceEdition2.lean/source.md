# Complete source: GRWTSK.Order.Embeddings.Checks.Negative.PrefixMissingReflection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `740e2d5ef21f53f6da340d25911df6d611b0c88c` · SHA-256 `c68af330ee9d86c1aa3fc9e162c44efadefb975beec8167c1a9ae1662d625e8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Order.Embeddings.PrefixObstruction

open GRWTSK.Order.Embeddings.PrefixObstruction

-- Expected type mismatch: preservation by this actual injective map cannot supply reflection.
example : ReflectsPrefix DiamondLe diamondAddress :=
  diamondAddress_preserves
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8c180b80e52bc0332d80ecc730b8acf61d528f508a1972912a3d4538e01a89e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/Checks/Negative/PrefixMissingReflection__SourceOccurrence4b6c7b1bc9522b4bfb9cfb17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
