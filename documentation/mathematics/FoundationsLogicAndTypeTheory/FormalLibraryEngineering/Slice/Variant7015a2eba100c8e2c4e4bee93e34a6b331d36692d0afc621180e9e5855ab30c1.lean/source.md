# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variant7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b6c9d61fef62d1bc3e11821af34a299b3ad0d24` · SHA-256 `7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Slice.Operations

@[expose] public section

/-!
# Slice iterator

This module provides iterators over slices from `Std.Slice` via `Std.Slice.iter`.
-/

/--
Returns an iterator over the given slice. This iterator will emit the elements of the slice
in increasing order of the indices.
-/
@[always_inline, inline]
def Std.Slice.iter [ToIterator (Slice γ) Id α β] (s : Slice γ) :=
  (Internal.iter s : Iter β)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6579b2dbcb2e51fd7f482a1dfd80d5a4d80b9a005b9c75d4b3d762ef27fb3e88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant7015a2eba100c8e2c4e4bee93e34a6b331d36692d0afc621180e9e5855ab30c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
