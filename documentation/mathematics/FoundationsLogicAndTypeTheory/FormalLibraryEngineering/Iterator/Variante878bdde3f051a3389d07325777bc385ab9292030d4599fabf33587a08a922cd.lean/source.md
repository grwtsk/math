# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variante878bdde3f051a3389d07325777bc385ab9292030d4599fabf33587a08a922cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6feaef9a5cb251efe439cbc8d27cc8fd61fdc82e` · SHA-256 `e878bdde3f051a3389d07325777bc385ab9292030d4599fabf33587a08a922cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.TreeSet.Basic
public import Std.Data.TreeMap.Iterator
public import Std.Data.DTreeMap.Lemmas
import Init.Data.Iterators.Lemmas.Combinators.FilterMap

/-!
# Iterators on `DTreeMap`
-/

namespace Std.TreeSet
open Std.Iterators

/--
Returns a finite iterator over the entries of a tree set.
The iterator yields the elements of the set in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u}
    {cmp : α → α → Ordering} (m : TreeSet α cmp) :=
  (m.inner.iter.map fun e => e.1 : Iter α)

@[simp]
public theorem toList_iter {cmp : α → α → Ordering} (m : TreeSet α cmp) :
    m.iter.toList = m.toList := by
  rw [iter, Iter.toList_map, TreeMap.toList_iter, toList, TreeMap.toList, TreeMap.keys, Std.DTreeMap.Const.map_fst_toList_eq_keys]

end Std.TreeSet
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d2bbb7545dabcb8c096d82e0002a4869f6d1e8f4cf79ba45342abd41a037926 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variante878bdde3f051a3389d07325777bc385ab9292030d4599fabf33587a08a922cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
