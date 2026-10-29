# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variant90a445003bf5be6760898864911f1715e09630868763ead8a539e1ad323ad093

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7d14797297597721f2774642ba51a34213b822f` · SHA-256 `90a445003bf5be6760898864911f1715e09630868763ead8a539e1ad323ad093`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Slice.Basic
public import Init.Data.Slice.Notation
public import Init.Data.Slice.Operations
public import Init.Data.Slice.Array
public import Init.Data.Slice.List
public import Init.Data.Slice.Lemmas

public section

/-!
# Polymorphic slices

This module provides slices -- views on a subset of all elements of an array or other collection,
demarcated by a range of indices.

* `Init.Data.Slice.Basic` defines the `Slice` structure. All slices are of this type.
* `Init.Data.Slice.Operations` provides functions on `Slice` via dot notation. Many of them are
  implemented using iterators under the hood.
* `Init.Data.Slice.Notation` provides slice notation based on ranges, relying on the `Sliceable`
  typeclass.
* `Init.Data.Slice.Array` provides the `Sliceable` instance for array slices.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c6900cd1096c9f3430583f977b8e6c0e32d6b08018a54c56f929c501237d7a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slice/Variant90a445003bf5be6760898864911f1715e09630868763ead8a539e1ad323ad093.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
