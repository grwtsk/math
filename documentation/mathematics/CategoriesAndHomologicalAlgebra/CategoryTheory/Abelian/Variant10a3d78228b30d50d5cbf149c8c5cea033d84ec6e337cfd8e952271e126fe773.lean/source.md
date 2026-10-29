# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abelian.Variant10a3d78228b30d50d5cbf149c8c5cea033d84ec6e337cfd8e952271e126fe773

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09646031a2c61ce54e5c3ad301e16ffdbc2d613d` · SHA-256 `10a3d78228b30d50d5cbf149c8c5cea033d84ec6e337cfd8e952271e126fe773`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Presheaf.Sheafification
public import Mathlib.CategoryTheory.Abelian.Transfer

/-!
# The category of sheaves of modules is abelian

In this file, it is shown that the category of sheaves of modules over
a sheaf of rings `R` is an abelian category. More precisely,
if `J` is a Grothendieck topology on a category `C` and `R : Sheaf J RingCat.{u}`,
then `SheafOfModules.{v} R` is abelian if the conditions `HasSheafify J AddCommGrpCat.{v}`
and `J.WEqualsLocallyBijective AddCommGrpCat.{v}` are satisfied.

In particular, if `u = v` and `C : Type u` is a small category,
then `SheafOfModules.{u} R` is abelian: this instance shall be
found automatically if this file and `Algebra.Category.Grp.FilteredColimits`
are imported.

-/

public section

universe v v' u u'

open CategoryTheory

variable {C : Type u'} [Category.{v'} C] {J : GrothendieckTopology C}

namespace SheafOfModules

variable (R : Sheaf J RingCat.{u}) [HasSheafify J AddCommGrpCat.{v}]
  [J.WEqualsLocallyBijective AddCommGrpCat.{v}]

noncomputable instance : Abelian (SheafOfModules.{v} R) := by
  let adj := PresheafOfModules.sheafificationAdjunction (𝟙 R.obj)
  exact abelianOfAdjunction _ _ (asIso (adj.counit)) adj

end SheafOfModules
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aac2322d1125d13b24990b69f46c7c1d44b72871988d92516080d44396f7bc39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Abelian/Variant10a3d78228b30d50d5cbf149c8c5cea033d84ec6e337cfd8e952271e126fe773.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
