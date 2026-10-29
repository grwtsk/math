# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashable.Variant7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1925ae03e44609eee48a1ea77a6b47801e2afa51` · SHA-256 `7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Markus Himmel
-/
module

prelude
public import Init.Data.Hashable
public import Init.Data.String.Defs

public section

namespace String

deriving instance Hashable for String.Pos.Raw
deriving instance Hashable for String.Pos
deriving instance Hashable for String.Slice.Pos

end String
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35710455b6274625a51215a9cae016a1acd520536f254c4aad9a4395b45cbc3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hashable/Variant7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
