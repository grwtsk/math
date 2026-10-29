# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListEnumeration.Varianteed60d581edfe034efd650a7ba766e125393696316970b4b7506da9b98aeae32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc7c6a5cf8de6bb7927584f333972c623a620244` · SHA-256 `eed60d581edfe034efd650a7ba766e125393696316970b4b7506da9b98aeae32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Data.List.Perm

open List

#guard findIdxNth (· < 3) [5, 1, 3, 2, 4, 0, 1, 4] 2 == 5
#guard idxOfNth 1 [5, 1, 3, 2, 4, 0, 1, 4] 1 == 6
#guard countPBefore (· < 3) [5, 1, 3, 2, 4, 0, 1, 4] 5 == 2
#guard countBefore 1 [5, 1, 3, 2, 4, 0, 1, 4] 6 == 1
#guard (by decide : [1, 0, 1] <+~ [5, 0, 1, 3, 1]).idxInj 1 = 1
#guard (by decide : [0, 1, 1, 3, 5] ~ [5, 0, 1, 3, 1]).idxBij 2 == 4
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65411dfe4bc08bad1af076dfdb7f6cf2eedef1b28a2ac35f79f4e854624821b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ListEnumeration/Varianteed60d581edfe034efd650a7ba766e125393696316970b4b7506da9b98aeae32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
