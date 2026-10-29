# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToSlice.Variant8f8a3a7a815619ca472f81e31517b27e7ea8d0ddb66efaecbd82f3ac1657132e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb8e52db88cc6f4152e2db1e47347d94794b2abd` · SHA-256 `8f8a3a7a815619ca472f81e31517b27e7ea8d0ddb66efaecbd82f3ac1657132e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.String.Defs

/-!
# The `ToSlice` typeclass
-/

public section

namespace String

/--
Typeclass for types that have a conversion function to `String.Slice`. This typeclass is used to
make some `String`/`String.Slice` functions polymorphic. As such, for now it is not intended that
there instances of this beyond `ToSlice String` and `ToSlice String.Slice`.

To convert arbitrary data into a string representation, see `ToString` and `Repr`.
-/
class ToSlice (α : Type u) where
  toSlice : α → String.Slice

@[inline]
instance : ToSlice String.Slice where
  toSlice := id

@[inline]
instance : ToSlice String where
  toSlice := toSlice

end String
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0b584e363345768a342172c7b03a113ab1d9ea6257b96864c3c80ced041ae41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToSlice/Variant8f8a3a7a815619ca472f81e31517b27e7ea8d0ddb66efaecbd82f3ac1657132e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
