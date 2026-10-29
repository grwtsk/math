# Principal Seg — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc73cdfb62e8d47ced9db6ead739db79985cfb8b` · SHA-256 `11382824efe6ca5e796612c156d795bfdf16132ccc02ea3e5e826e6653e7a3f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Order.InitialSeg
import Mathlib.CategoryTheory.Category.Preorder
import Mathlib.CategoryTheory.Limits.Cones

/-!
# Cocones associated to principal segments

If `f : α <i β` is a principal segment and `F : β ⥤ C`,
there is a cocone for `f.monotone.functor ⋙ F : α ⥤ C`
the point of which is `F.obj f.top`.

-/

open CategoryTheory Category Limits

/-- When `f : α <i β` and a functor `F : β ⥤ C`, this is the cocone
for `f.monotone.functor ⋙ F : α ⥤ C` whose point if `F.obj f.top`. -/
@[simps]
def PrincipalSeg.cocone {α β : Type*} [PartialOrder α] [PartialOrder β]
  (f : α <i β) {C : Type*} [Category C] (F : β ⥤ C) :
    Cocone (f.monotone.functor ⋙ F) where
  pt := F.obj f.top
  ι :=
    { app i := F.map (homOfLE (f.lt_top i).le)
      naturality i j f := by
        dsimp
        rw [← F.map_comp, comp_id]
        rfl }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c5887ed652e15de1eb419bd80858bc695cc2c3fe9ebcf2e00c89841179ec03f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PrincipalSeg/Variant11382824efe6ca5e796612c156d795bfdf16132ccc02ea3e5e826e6653e7a3f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
