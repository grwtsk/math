# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConstructorEquations.Variantec26315b42e7d7f60890f8cf7c042aa0cafb638f2cc8874b14aed80def25d501

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `031fc1ff3a48384dd5236d0e65bee36b3eeb059e` · SHA-256 `ec26315b42e7d7f60890f8cf7c042aa0cafb638f2cc8874b14aed80def25d501`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

-- From an equation where both sides contain only constructor applications
-- and variables, Aesop should derive equations about the variables.

example (h : Nat.zero = Nat.succ n) : False := by
  aesop

example (h : Nat.succ (Nat.succ n) = Nat.succ Nat.zero) : False := by
  aesop

example (h : (Nat.succ m, Nat.succ n) = (Nat.succ a, Nat.succ b)) :
    m = a ∧ n = b := by
  aesop

structure MyProd (A B : Type _) where
  toProd : A × B

example (h : MyProd.mk (x, y) = .mk (a, b)) : x = a ∧ y = b := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f5a28a8a47928565c9cfa0da12bdae3dbeec75cd3e696ad74f4cab6d2f6549a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConstructorEquations/Variantec26315b42e7d7f60890f8cf7c042aa0cafb638f2cc8874b14aed80def25d501.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
