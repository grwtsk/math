# List Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9802918cd2cce40434a501f8cf5485ca1b5bd096` · SHA-256 `76ebfb8227c7f7bff0c6cb4ca900890fc7fcf7a4f3eb62d08723b18b565d0dda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Producers.Monadic.List

@[expose] public section

open Std Std.Iterators Std.Iterators.Types

/-!
# List iterator

This module provides an iterator for lists that is accessible via `List.iter`.
-/

/--
Returns a finite iterator for the given list.
The iterator yields the elements of the list in order and then terminates.

The monadic version of this iterator is `List.iterM`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[cbv_opaque, always_inline, inline]
def List.iter {α : Type w} (l : List α) :
    Iter (α := ListIterator α) α :=
  ((l.iterM Id).toIter : Iter α)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12d0c8523ac366632436f963ee2003a34764f8c3622d96f13c85513b64f7690f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant76ebfb8227c7f7bff0c6cb4ca900890fc7fcf7a4f3eb62d08723b18b565d0dda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
