# Locale Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `775cb4528b47154a1d5a9d7b26045af88003f4a2` · SHA-256 `779758e65a38668877f158165ae2a881868aaf599b2ec15f55168df25d4dcd79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Order.Category.Frm
public import Mathlib.Topology.Category.CompHaus.Frm

/-!
# The category of locales

This file defines `Locale`, the category of locales. This is the opposite of the category of frames.
-/

@[expose] public section


universe u

open CategoryTheory Opposite Order TopologicalSpace


/-- The category of locales. -/
def Locale :=
  Frmᵒᵖ deriving LargeCategory

namespace Locale

instance : CoeSort Locale Type* :=
  ⟨fun X => X.unop⟩

instance (X : Locale) : Frame X :=
  X.unop.str

/-- Construct a bundled `Locale` from a `Frame`. -/
def of (α : Type*) [Frame α] : Locale :=
  op ↧α

open Lean.PrettyPrinter.Delaborator in
/-- This prints `Locale.of X` as `↧X`. -/
@[app_delab Locale.of]
meta def delabOf : Delab := CategoryTheory.delabOf

@[simp]
theorem coe_of (α : Type*) [Frame α] : ↥(of α) = α :=
  rfl

instance : Inhabited Locale :=
  ⟨of PUnit⟩

end Locale

/-- The forgetful functor from `Top` to `Locale` which forgets that the space has "enough points".
-/
@[simps!]
def topToLocale : TopCat ⥤ Locale :=
  topCatOpToFrm.rightOp

-- Note, `CompHaus` is too strong. We only need `T0Space`.
instance CompHausToLocale.faithful : (compHausToTop ⋙ topToLocale.{u}).Faithful :=
  ⟨fun h => by
    dsimp at h
    exact ConcreteCategory.ext (Opens.comap_injective (congr_arg Frm.Hom.hom
      (Quiver.Hom.op_inj h)))⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=302b2df833ff932443f17c112010162fd889bcdd71cf2ee36e9641ce305bd348 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Locale/Variant779758e65a38668877f158165ae2a881868aaf599b2ec15f55168df25d4dcd79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
