# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListSublists.Variantf011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bae15b0b0b97e575dfc230f92631943ec1a4e61` · SHA-256 `f011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Data.List.Basic

-- this times out with `sublistsFast`
set_option maxRecDepth 562 in
example : [1, 2, 3].sublists.sublists.length = 256 := rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f68d253279f6522bd40795a8869f4c6d4a3ba56d89050a69d153401e034ecf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ListSublists/Variantf011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
