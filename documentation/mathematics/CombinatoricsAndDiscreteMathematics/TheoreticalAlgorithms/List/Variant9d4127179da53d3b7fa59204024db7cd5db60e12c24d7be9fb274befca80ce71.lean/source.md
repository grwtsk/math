# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant9d4127179da53d3b7fa59204024db7cd5db60e12c24d7be9fb274befca80ce71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2d0f3f1b43a1259db7980e95229b9f61c924cbb` · SHA-256 `9d4127179da53d3b7fa59204024db7cd5db60e12c24d7be9fb274befca80ce71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.List.Attach
public import Init.Data.List.Basic
public import Init.Data.List.BasicAux
public import Init.Data.List.Control
public import Init.Data.List.Count
public import Init.Data.List.Erase
public import Init.Data.List.Find
public import Init.Data.List.Impl
public import Init.Data.List.Lemmas
public import Init.Data.List.MinMax
public import Init.Data.List.MinMaxIdx
public import Init.Data.List.MinMaxOn
public import Init.Data.List.Monadic
public import Init.Data.List.Nat
public import Init.Data.List.Int
public import Init.Data.List.Notation
public import Init.Data.List.Pairwise
public import Init.Data.List.Sublist
public import Init.Data.List.TakeDrop
public import Init.Data.List.Zip
public import Init.Data.List.Perm
public import Init.Data.List.Sort
public import Init.Data.List.ToArray
public import Init.Data.List.ToArrayImpl
public import Init.Data.List.MapIdx
public import Init.Data.List.OfFn
public import Init.Data.List.FinRange
public import Init.Data.List.Lex
public import Init.Data.List.Range
public import Init.Data.List.Scan
public import Init.Data.List.ControlImpl
public import Init.Data.List.SplitOn
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e81b5d65fbe03a00f902ab331239acc48190d1207a3f4a8a8f5409774c346f8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant9d4127179da53d3b7fa59204024db7cd5db60e12c24d7be9fb274befca80ce71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
