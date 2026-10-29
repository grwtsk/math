# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Order.Embeddings.Checks.Negative.PrefixMissingReflection

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `865fe3c9ce98c40f13d24d97019b79a24feb30d5` · SHA-256 `3d90dcc955661be3fc59bdc6edb00c335047861e0fbc27aba7b24506421aa3e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.Order.Embeddings.PrefixObstruction

open GRWTSK.Order.Embeddings.PrefixObstruction

-- Expected type mismatch: preservation by this actual injective map cannot supply reflection.
example : ReflectsPrefix DiamondLe diamondAddress :=
  diamondAddress_preserves
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c8282b7b546c4c695f435d6811b04416e585dfa6056571bea5ad4ea50986030 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/Checks/Negative/PrefixMissingReflection__SourceOccurrence1fe866b583f4e5f9a18a4e59.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
