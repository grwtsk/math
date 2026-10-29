# Cartesian Comm Grp — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a0884553f834e0567ff9cf4744a179f0beb2be8` · SHA-256 `1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.CommMon_
import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp_

/-!
# Yoneda embedding of `CommGrp_ C`
-/

open CategoryTheory MonoidalCategory Limits Opposite CartesianMonoidalCategory Mon_Class

universe w v u
variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory C] [BraidedCategory C] {X : C}

variable (X) in
/-- Abbreviation for an unbundled commutative group object. It is a group object that is a
commutative monoid object. -/
class abbrev CommGrp_Class := Grp_Class X, IsCommMon X

section CommGrp_

variable (X) in
/-- If `X` represents a presheaf of commutative groups, then `X` is a commutative group object. -/
def CommGrp_Class.ofRepresentableBy (F : Cᵒᵖ ⥤ CommGrp.{w})
    (α : (F ⋙ forget _).RepresentableBy X) : CommGrp_Class X where
  __ := Grp_Class.ofRepresentableBy X (F ⋙ forget₂ CommGrp Grp) α
  __ := IsCommMon.ofRepresentableBy X (F ⋙ forget₂ CommGrp CommMonCat) α

end CommGrp_
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1059477113ee3cc7dcbdca1924ed74db7cbd9611cb6468bd44389725a601f78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
