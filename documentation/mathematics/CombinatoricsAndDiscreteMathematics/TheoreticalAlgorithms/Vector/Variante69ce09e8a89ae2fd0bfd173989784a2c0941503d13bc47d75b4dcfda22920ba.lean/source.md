# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variante69ce09e8a89ae2fd0bfd173989784a2c0941503d13bc47d75b4dcfda22920ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6102283575212bf0b0e982099040362cd2713e1` · SHA-256 `e69ce09e8a89ae2fd0bfd173989784a2c0941503d13bc47d75b4dcfda22920ba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Vector.Basic
public import Std.Data.Iterators.Producers.Array

set_option doc.verso true

/-!
# Vector iterator

This module provides an iterator for vectors that is accessible via
{name (scope := "Std.Data.Iterators.Producers.Vector")}`Vector.iter`.
-/

@[expose] public section

open Std Std.Iterators

/--
Returns a finite iterator for the given vector starting at the given index.
The iterator yields the elements of the vector in order and then terminates.

The monadic version of this iterator is
{name (scope := "Std.Data.Iterators.Producers.Monadic.Vector")}`Vector.iterFromIdxM`.

**Termination properties:**

* {name}`Finite` instance: always
* {name}`Productive` instance: always
-/
@[always_inline, inline]
def Vector.iterFromIdx {α : Type w} (xs : Vector α n) (pos : Nat) :=
  (xs.toArray.iterFromIdx pos : Iter α)

/--
Returns a finite iterator for the given vector.
The iterator yields the elements of the vector in order and then terminates.

The monadic version of this iterator is
{name (scope := "Std.Data.Iterators.Producers.Monadic.Vector")}`Vector.iterM`.

**Termination properties:**

* {name}`Finite` instance: always
* {name}`Productive` instance: always
-/
@[always_inline, inline]
def Vector.iter {α : Type w} (xs : Vector α n) :=
  (xs.toArray.iter : Iter α)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31a4f71de037381aa243e242411561055bfe1bbdbaf001d2bbd60cb419156f66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variante69ce09e8a89ae2fd0bfd173989784a2c0941503d13bc47d75b4dcfda22920ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
