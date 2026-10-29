# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant12fccaf9e2db9037fe7c01c7afd418302b8c3f249c89aade11bcd9278d6abfbd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79d4215ef85d0ffc954e9e898b63f8665396419d` · SHA-256 `12fccaf9e2db9037fe7c01c7afd418302b8c3f249c89aade11bcd9278d6abfbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.Iterators.Combinators.FilterMap
public import Init.Data.Iterators.Consumers.Collect

set_option doc.verso true

namespace Std

/--
Convenience function for turning an iterator into a list of strings, provided the output of the
iterator implements {name}`ToString`.
-/
@[inline]
public abbrev Iter.toStringList {α β : Type} [Iterator α Id β] [ToString β]
    (it : Iter (α := α) β) : List String :=
  it.map toString |>.toList

/--
Convenience function for turning an iterator into an array of strings, provided the output of the
iterator implements {name}`ToString`.
-/
@[inline]
public abbrev Iter.toStringArray {α β : Type} [Iterator α Id β] [ToString β]
    (it : Iter (α := α) β) : Array String :=
  it.map toString |>.toArray

end Std
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4114aeca67ad4827acaac05c4ee2e705ed2c6f92f9fac201bc1ac855c0ddc515 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant12fccaf9e2db9037fe7c01c7afd418302b8c3f249c89aade11bcd9278d6abfbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
