# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cases.Variant05b11b776ebb2900c1a1d19f8bac8720856d252a2e9c65dbeb575283327a6633

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cfb91ddc3096e766e470dfaa3ea0f971918e4e9` · SHA-256 `05b11b776ebb2900c1a1d19f8bac8720856d252a2e9c65dbeb575283327a6633`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
import Aesop

set_option aesop.check.all true

@[aesop 50% cases]
inductive FancyAnd (α β : Prop) : Prop
  | dummy (p : Empty)
  | and (a : α) (b : β)

attribute [aesop safe -51 cases] Empty

example {α β} (h : FancyAnd α β) : α ∧ β := by
  aesop

@[aesop safe cases (cases_patterns := [All _ [], All _ (_ :: _)])]
inductive All (P : α → Prop) : List α → Prop
  | nil : All P []
  | cons : P x → All P xs → All P (x :: xs)

@[aesop 99% constructors]
structure MyTrue : Prop

-- Without the patterns on the `cases` rule for `All`, this test would loop
-- since the `constructors` rule would never be applied.
example {P : α → Prop} (h : All P (x :: xs)) : MyTrue := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85707014753b051209d7d96a61a5fa2a46aa0fb98c0020f61a00ce8d22f9f43e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant05b11b776ebb2900c1a1d19f8bac8720856d252a2e9c65dbeb575283327a6633.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
