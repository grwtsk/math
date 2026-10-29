# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Born.Variante0dadbc8e2812c11862fe36a040372411707f4a03df61f453cef211260feaaa2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfe20a64922af829f98afc01a1d858d1751d5b9f` · SHA-256 `e0dadbc8e2812c11862fe36a040372411707f4a03df61f453cef211260feaaa2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.CategoryTheory.ConcreteCategory.Basic
public import Mathlib.Topology.Bornology.Hom
public import Mathlib.CategoryTheory.ConcreteCategory.Notation

/-!
# The category of bornologies

This defines `Born`, the category of bornologies.
-/

public section


universe u

open CategoryTheory

/-- The category of bornologies. -/
structure Born where
  /-- Construct a bundled `Born` from a `Bornology`. -/
  of ::
  /-- The underlying bornology. -/
  carrier : Type*
  [str : Bornology carrier]

attribute [instance] Born.str

namespace Born

instance : CoeSort Born Type* :=
  ⟨carrier⟩

instance : Inhabited Born :=
  ⟨of PUnit⟩

instance : LargeCategory.{u} Born where
  Hom X Y := LocallyBoundedMap X Y
  id X := LocallyBoundedMap.id X
  comp f g := g.comp f

instance : ConcreteCategory Born (LocallyBoundedMap · ·) where
  hom f := f
  ofHom f := f

end Born

section Notation

open Lean.PrettyPrinter.Delaborator

/-- This prints `Born.of X` as `↧X`. -/
@[app_delab Born.of]
meta def Born.delabOf : Delab := CategoryTheory.delabOf

end Notation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ba8f478c9a166f3d055b68485be9294a9f8f725dde37a865017cd5aeb9cd877 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Born/Variante0dadbc8e2812c11862fe36a040372411707f4a03df61f453cef211260feaaa2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
