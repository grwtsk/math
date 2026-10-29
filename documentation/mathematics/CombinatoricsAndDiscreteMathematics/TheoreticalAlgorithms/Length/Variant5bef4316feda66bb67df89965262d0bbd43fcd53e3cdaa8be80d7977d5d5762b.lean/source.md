# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant5bef4316feda66bb67df89965262d0bbd43fcd53e3cdaa8be80d7977d5d5762b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81649fbb6c4bde1bcdcf6d74f1af01b3c28d9bff` · SHA-256 `5bef4316feda66bb67df89965262d0bbd43fcd53e3cdaa8be80d7977d5d5762b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.String.Length
public import Init.Data.String.Modify
import Init.Data.String.Lemmas.Modify
import Init.Data.String.Lemmas.Intercalate

public section

namespace String

@[simp]
theorem length_eq_zero_iff {s : String} : s.length = 0 ↔ s = "" := by
  simp [← length_toList]

@[simp]
theorem length_map {f : Char → Char} {s : String} : (s.map f).length = s.length := by
  simp [← length_toList]

@[simp]
theorem length_join {l : List String} : (String.join l).length = (l.map String.length).sum := by
  simp only [← length_toList, toList_join, List.length_flatMap]
  simp [length_toList]

end String
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=942e874deffa0317298c68e15839518c9a4ea3de470319692bb4998b7f6f5e8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant5bef4316feda66bb67df89965262d0bbd43fcd53e3cdaa8be80d7977d5d5762b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
