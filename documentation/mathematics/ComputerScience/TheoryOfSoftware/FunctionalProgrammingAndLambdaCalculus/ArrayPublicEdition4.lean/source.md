# Array Public Edition4 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c3c29236693e6bfb3be15640e061d543b57bdd9` · SHA-256 `c861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Monadic.Array

@[expose] public section

/-!
# Array iterator

This module provides an iterator for arrays that is accessible via `Array.iter`.
-/

open Std Std.Iterators Std.Iterators.Types

/--
Returns a finite iterator for the given array starting at the given index.
The iterator yields the elements of the array in order and then terminates.

The monadic version of this iterator is `Array.iterFromIdxM`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[cbv_opaque, always_inline, inline]
def Array.iterFromIdx {α : Type w} (l : Array α) (pos : Nat) :
    Iter (α := ArrayIterator α) α :=
  ((l.iterFromIdxM Id pos).toIter : Iter α)

/--
Returns a finite iterator for the given array.
The iterator yields the elements of the array in order and then terminates.

The monadic version of this iterator is `Array.iterM`.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[cbv_opaque, always_inline, inline]
def Array.iter {α : Type w} (l : Array α) :
    Iter (α := ArrayIterator α) α :=
  ((l.iterM Id).toIter : Iter α)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1783af1041c681ffbfa403da17731e1c8a5856cb1e7ecc0367478006a768fe7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantc861bf038c6ca4ca7a56730644e09df17e245da3d5c303440733c48c1ac35ef9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
