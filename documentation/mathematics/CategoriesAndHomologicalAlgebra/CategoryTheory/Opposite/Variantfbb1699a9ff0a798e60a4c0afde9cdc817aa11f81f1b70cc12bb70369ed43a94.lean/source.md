# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `579780b21f6ec78decb1680e9fc180e8a42e6013` · SHA-256 `fbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Localization.Predicate

/-!

# Localization of the opposite category

If a functor `L : C ⥤ D` is a localization functor for `W : MorphismProperty C`, it
is shown in this file that `L.op : Cᵒᵖ ⥤ Dᵒᵖ` is also a localization functor.

-/


noncomputable section

open CategoryTheory CategoryTheory.Category

namespace CategoryTheory

variable {C D : Type*} [Category C] [Category D] {L : C ⥤ D} {W : MorphismProperty C}

namespace Localization

/-- If `L : C ⥤ D` satisfies the universal property of the localisation
for `W : MorphismProperty C`, then `L.op` also does. -/
def StrictUniversalPropertyFixedTarget.op {E : Type*} [Category E]
    (h : StrictUniversalPropertyFixedTarget L W Eᵒᵖ) :
    StrictUniversalPropertyFixedTarget L.op W.op E where
  inverts := h.inverts.op
  lift F hF := (h.lift F.rightOp hF.rightOp).leftOp
  fac F hF := by
    convert congr_arg Functor.leftOp (h.fac F.rightOp hF.rightOp)
  uniq F₁ F₂ eq := by
    suffices F₁.rightOp = F₂.rightOp by
      rw [← F₁.rightOp_leftOp_eq, ← F₂.rightOp_leftOp_eq, this]
    have eq' := congr_arg Functor.rightOp eq
    exact h.uniq _ _ eq'

instance isLocalization_op : W.Q.op.IsLocalization W.op :=
  Functor.IsLocalization.mk' W.Q.op W.op (strictUniversalPropertyFixedTargetQ W _).op
    (strictUniversalPropertyFixedTargetQ W _).op

end Localization

variable (L W)
variable [L.IsLocalization W]

namespace Functor

instance IsLocalization.op : L.op.IsLocalization W.op :=
  IsLocalization.of_equivalence_target W.Q.op W.op L.op (Localization.equivalenceFromModel L W).op
    (NatIso.op (Localization.qCompEquivalenceFromModelFunctorIso L W).symm)

end Functor

namespace Localization

lemma isoOfHom_unop  {X Y : Cᵒᵖ} (w : X ⟶ Y) (hw : W.op w) :
    (isoOfHom L.op W.op w hw).unop = (isoOfHom L W w.unop hw) := by ext; rfl

lemma isoOfHom_op_inv {X Y : Cᵒᵖ} (w : X ⟶ Y) (hw : W.op w) :
    (isoOfHom L.op W.op w hw).inv = (isoOfHom L W w.unop hw).inv.op :=
  congr_arg Quiver.Hom.op (congr_arg Iso.inv (isoOfHom_unop L W w hw))

end Localization

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae806c9e102890f7d15670f374d6b60c9e9ef41a4b14b41f3355234a04489c0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantfbb1699a9ff0a798e60a4c0afde9cdc817aa11f81f1b70cc12bb70369ed43a94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
