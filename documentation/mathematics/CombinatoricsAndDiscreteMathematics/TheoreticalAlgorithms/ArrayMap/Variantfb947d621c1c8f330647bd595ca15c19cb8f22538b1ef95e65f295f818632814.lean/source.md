# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayMap.Variantfb947d621c1c8f330647bd595ca15c19cb8f22538b1ef95e65f295f818632814

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56ea45b80c84f1f2acfb57a912a9ac8a53606930` · SHA-256 `fb947d621c1c8f330647bd595ca15c19cb8f22538b1ef95e65f295f818632814`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Data.List.ArrayMap

open List

/-- info: #[3, 4, 5, 6] -/
#guard_msgs in
#eval List.toArrayMap [0, 1, 2, 3] (fun n => n + 3)

/-- info: #[7, 9, 15, 25] -/
#guard_msgs in
#eval toArrayMap [0, 1, 2, 3] (fun n => 2 * n ^ 2 + 7)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d7e075819f5f77b4b0a56d801de539838db3cea02be2778df684632923ee30e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArrayMap/Variantfb947d621c1c8f330647bd595ca15c19cb8f22538b1ef95e65f295f818632814.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
