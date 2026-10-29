# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variantce5132ce85fdb42b2dfabe0d84278a6ed35233d7ebad58730704412d2124c323

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a04e479900397ba005f1a77de74472092fd182ef` · SHA-256 `ce5132ce85fdb42b2dfabe0d84278a6ed35233d7ebad58730704412d2124c323`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Vector.Basic
public import Std.Data.Iterators.Producers.Monadic.Array

set_option doc.verso true

/-!
# Vector iterator

This module provides an iterator for vectors that is accessible via
{name (scope := "Std.Data.Iterators.Producers.Monadic.Vector")}`Vector.iterM`.
-/

@[expose] public section

open Std Std.Iterators

/--
Returns a finite monadic iterator for the given vector starting at the given index.
The iterator yields the elements of the vector in order and then terminates.

The pure version of this iterator is
{name (scope := "Std.Data.Iterators.Producers.Vector")}`Vector.iterFromIdx`.

**Termination properties:**

* {name}`Finite` instance: always
* {name}`Productive` instance: always
-/
@[always_inline, inline, match_pattern]
def _root_.Vector.iterFromIdxM (xs : Vector α n) (m : Type w → Type w')
    (pos : Nat) [Pure m] :=
  (xs.toArray.iterFromIdxM m pos : IterM m α)

/--
Returns a finite monadic iterator for the given vector.
The iterator yields the elements of the vector in order and then terminates. There are no side
effects.

The pure version of this iterator is
{name (scope := "Std.Data.Iterators.Producers.Vector")}`Vector.iter`.

**Termination properties:**

* {name}`Finite` instance: always
* {name}`Productive` instance: always
-/
@[inline]
def Vector.iterM (xs : Vector α n) (m : _) [Pure m] :=
  (xs.toArray.iterM m : IterM m α)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa8a7c47e66ae2c8997b5d0218685ea3f915273c256676bc98d6f131af651d00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variantce5132ce85fdb42b2dfabe0d84278a6ed35233d7ebad58730704412d2124c323.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
