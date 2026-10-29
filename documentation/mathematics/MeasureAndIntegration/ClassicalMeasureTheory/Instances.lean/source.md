# Instances — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a760b97654d0ded0742f2c9e7824483072d5cf03` · SHA-256 `5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.MeasureTheory.MeasurableSpace.Defs
import Mathlib.GroupTheory.GroupAction.IterateAct
import Mathlib.Data.Rat.Init
import Mathlib.Data.ZMod.Defs

/-!
# Measurable-space typeclass instances

This file provides measurable-space instances for a selection of standard countable types,
in each case defining the Σ-algebra to be `⊤` (the discrete measurable-space structure).
-/

instance Empty.instMeasurableSpace : MeasurableSpace Empty := ⊤

instance PUnit.instMeasurableSpace : MeasurableSpace PUnit := ⊤

instance Bool.instMeasurableSpace : MeasurableSpace Bool := ⊤

instance Prop.instMeasurableSpace : MeasurableSpace Prop := ⊤

instance Nat.instMeasurableSpace : MeasurableSpace ℕ := ⊤

instance ENat.instMeasurableSpace : MeasurableSpace ℕ∞ := ⊤

instance Fin.instMeasurableSpace (n : ℕ) : MeasurableSpace (Fin n) := ⊤

instance ZMod.instMeasurableSpace (n : ℕ) : MeasurableSpace (ZMod n) := ⊤

instance Int.instMeasurableSpace : MeasurableSpace ℤ := ⊤

instance Rat.instMeasurableSpace : MeasurableSpace ℚ := ⊤

@[to_additive]
instance IterateMulAct.instMeasurableSpace {α : Type*} {f : α → α} :
    MeasurableSpace (IterateMulAct f) := ⊤

@[to_additive]
instance IterateMulAct.instDiscreteMeasurableSpace {α : Type*} {f : α → α} :
    DiscreteMeasurableSpace (IterateMulAct f) := inferInstance

instance (priority := 100) Subsingleton.measurableSingletonClass
    {α} [MeasurableSpace α] [Subsingleton α] : MeasurableSingletonClass α := by
  refine ⟨fun i => ?_⟩
  convert MeasurableSet.univ
  simp [Set.eq_univ_iff_forall, eq_iff_true_of_subsingleton]

instance Bool.instMeasurableSingletonClass : MeasurableSingletonClass Bool := ⟨fun _ => trivial⟩

instance Prop.instMeasurableSingletonClass : MeasurableSingletonClass Prop := ⟨fun _ => trivial⟩

instance Nat.instMeasurableSingletonClass : MeasurableSingletonClass ℕ := ⟨fun _ => trivial⟩

instance ENat.instDiscreteMeasurableSpace : DiscreteMeasurableSpace ℕ∞ := ⟨fun _ ↦ trivial⟩

instance ENat.instMeasurableSingletonClass : MeasurableSingletonClass ℕ∞ := inferInstance

instance Fin.instMeasurableSingletonClass (n : ℕ) : MeasurableSingletonClass (Fin n) :=
  ⟨fun _ => trivial⟩

instance ZMod.instMeasurableSingletonClass (n : ℕ) : MeasurableSingletonClass (ZMod n) :=
  ⟨fun _ => trivial⟩

instance Int.instMeasurableSingletonClass : MeasurableSingletonClass ℤ := ⟨fun _ => trivial⟩

instance Rat.instMeasurableSingletonClass : MeasurableSingletonClass ℚ := ⟨fun _ => trivial⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c44fa7d22cfebdafed87cd3243b2951f8a6fdd35c09dd2bf4aa19a4e03ec877f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Instances/Variant5c62e379e945ad6ee9c4023cc7526e644ae2acb23d347188ae02035faaef52f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
