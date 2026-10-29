# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToString.Varianta58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d144456885d5571f07f84b2be84b94f2f4e5a16d` · SHA-256 `a58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia Markus Himmel
-/
module

prelude
public import Init.Data.ToString.Extra
import all Init.Data.Int.Repr
import Init.Data.Int.Order
import Init.Data.Int.LemmasAux

namespace Int

public theorem repr_eq_if {a : Int} :
    a.repr = if 0 ≤ a then a.toNat.repr else "-" ++ (-a).toNat.repr := by
  cases a <;> simp [Int.repr]

@[simp]
public theorem toString_eq_repr {a : Int} : toString a = a.repr := (rfl)

end Int
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c0b742ac0c4ecf007d556a982891e5519b2e7fdb4b0fefa6c475e5fc82518fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToString/Varianta58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
