# Pretty Printing — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e119cf579f7c69029e91c8e7735ee8d7936c006e` · SHA-256 `8566224d3026567432b0654361281ad980f85d188c1470e5400c4ff5a37a9c56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Functor.Basic

/-!
# Tests that terms used in category theory pretty-print as expected
-/

section

open Opposite

/-- info: Opposite.op_unop.{u} {α : Sort u} (x : αᵒᵖ) : op (unop x) = x -/
#guard_msgs in
#check Opposite.op_unop

end

section

open CategoryTheory

/--
info: CategoryTheory.Functor.map_id.{v₁, v₂, u₁, u₂} {C : Type u₁} [Category.{v₁, u₁} C] {D : Type u₂} [Category.{v₂, u₂} D]
  (self : C ⥤ D) (X : C) : self.map (𝟙 X) = 𝟙 (self.obj X)
-/
#guard_msgs in
#check CategoryTheory.Functor.map_id

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=958dbdd07a83460a9e5fa88ae97396aaafa4a7c8f05174026a2f59601ea8b416 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrettyPrinting/Variant8566224d3026567432b0654361281ad980f85d188c1470e5400c4ff5a37a9c56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
