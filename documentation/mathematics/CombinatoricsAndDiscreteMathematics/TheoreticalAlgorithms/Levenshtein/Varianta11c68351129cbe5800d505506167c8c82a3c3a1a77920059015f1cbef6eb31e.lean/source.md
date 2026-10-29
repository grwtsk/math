# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Levenshtein.Varianta11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `783d415ca50ca4961c3d86b934af29ce5313d163` · SHA-256 `a11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.List.EditDistance.Defs
import Mathlib.Algebra.Group.Nat.Defs

#guard
  (suffixLevenshtein Levenshtein.defaultCost "kitten".toList "sitting".toList).1 =
    [3, 3, 4, 5, 6, 6, 7]

#guard levenshtein Levenshtein.defaultCost
  "but our fish said, 'no! no!'".toList
  "'put me down!' said the fish.".toList = 21
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50d84e46cd6914ee615942011a5e82a10ccb0a7b41e3142e966aa3eee7c60e84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Levenshtein/Varianta11c68351129cbe5800d505506167c8c82a3c3a1a77920059015f1cbef6eb31e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
