# Complete source: GRWTSK.Topology.GeneralTopology.FinTopCat.Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d6e3154cf1d78c305f9c9eb8335453e86962e0a` · SHA-256 `db563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.CategoryTheory.FintypeCat
import Mathlib.Topology.Category.TopCat.Basic

/-!
# Category of finite topological spaces

Definition of the category of finite topological spaces with the canonical
forgetful functors.

-/


universe u

open CategoryTheory

/-- A bundled finite topological space. -/
structure FinTopCat where
  /-- carrier of a finite topological space. -/
  toTop : TopCat.{u} -- TODO: turn this into an `extends`?
  [fintype : Fintype toTop]

namespace FinTopCat

instance : Inhabited FinTopCat :=
  ⟨{ toTop := TopCat.of PEmpty }⟩

instance : CoeSort FinTopCat (Type u) :=
  ⟨fun X => X.toTop⟩

attribute [instance] fintype

instance : Category FinTopCat :=
  InducedCategory.category toTop

instance : ConcreteCategory FinTopCat (C(·, ·)) :=
  InducedCategory.concreteCategory toTop

/-- Construct a bundled `FinTopCat` from the underlying type and the appropriate typeclasses. -/
def of (X : Type u) [Fintype X] [TopologicalSpace X] : FinTopCat where
  toTop := TopCat.of X
  fintype := ‹_›

@[simp]
theorem coe_of (X : Type u) [Fintype X] [TopologicalSpace X] :
    (of X : Type u) = X :=
  rfl

/-- The forgetful functor to `FintypeCat`. -/
instance : HasForget₂ FinTopCat FintypeCat :=
  HasForget₂.mk' (fun X ↦ FintypeCat.of X) (fun _ ↦ rfl) (fun f ↦ f.hom.toFun) HEq.rfl

instance (X : FinTopCat) : TopologicalSpace ((forget₂ FinTopCat FintypeCat).obj X) :=
  inferInstanceAs <| TopologicalSpace X

/-- The forgetful functor to `TopCat`. -/
instance : HasForget₂ FinTopCat TopCat :=
  InducedCategory.hasForget₂ _

instance (X : FinTopCat) : Fintype ((forget₂ FinTopCat TopCat).obj X) :=
  X.fintype

end FinTopCat

namespace FintypeCatDiscrete

/-- Scoped topological space instance on objects of the category of finite types, assigning
the discrete topology. -/
scoped instance (X : FintypeCat) : TopologicalSpace X := ⊥
scoped instance (X : FintypeCat) : DiscreteTopology X := ⟨rfl⟩

/-- The forgetful functor from finite types to topological spaces, forgetting discreteness.
This is a scoped instance. -/
scoped instance : HasForget₂ FintypeCat TopCat where
  forget₂.obj X := TopCat.of X
  forget₂.map f := TopCat.ofHom ⟨f, continuous_of_discreteTopology⟩

end FintypeCatDiscrete
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=529ed32790bfa90a0e74c6b92661e49c0878524f03dedaa58ae02f3e28ac23b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FinTopCat/Variantdb563cd8f02ae6254f090f8df5e8984da46673f5b1427ef272b820a0550a69ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
