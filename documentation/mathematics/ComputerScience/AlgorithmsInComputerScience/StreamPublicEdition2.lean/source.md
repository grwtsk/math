# Stream Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ad9b1dd556c6a20637a729fb307c9496681b501` · SHA-256 `ca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Shreyas Srinivas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shreyas Srinivas, François G. Dorais, Kim Morrison
-/
module

prelude
public import Init.Data.Stream
public import Init.Data.Vector.Basic
import Init.Data.Slice.Array.Basic

namespace Vector

/-! ### ToStream instance -/

@[no_expose]
public instance : Std.ToStream (Vector α n) (Subarray α) where
  toStream xs := xs.toArray[*...*]

end Vector
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98754fbde0efbfe2e2264e71dc026e90ca79af8aa8c1212f0fe195bc315d715c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stream/Variantca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
