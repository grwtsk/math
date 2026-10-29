# Complete source: GRWTSK.Analysis.MeasureTheory.Lattice.Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b39cae592902cb298e14c64f5ee8d2923a8b015` · SHA-256 `5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
import Mathlib.Algebra.Order.Group.PosPart
import Mathlib.MeasureTheory.Group.Arithmetic
import Mathlib.MeasureTheory.Order.Lattice

/-!
# Measurability results on groups with a lattice structure.

## Tags

measurable function, group, lattice operation
-/

variable {α β : Type*} [Lattice α] [Group α] [MeasurableSpace α]
  [MeasurableSpace β] {f : β → α}

@[to_additive (attr := measurability)]
theorem measurable_oneLePart [MeasurableSup α] : Measurable (oneLePart : α → α) :=
  measurable_sup_const _

@[to_additive (attr := measurability)]
protected theorem Measurable.oneLePart [MeasurableSup α] (hf : Measurable f) :
    Measurable fun x ↦ oneLePart (f x) :=
  measurable_oneLePart.comp hf

variable [MeasurableInv α]

@[to_additive (attr := measurability)]
theorem measurable_leOnePart [MeasurableSup α] : Measurable (leOnePart : α → α) :=
  (measurable_sup_const _).comp measurable_inv

@[to_additive (attr := measurability)]
protected theorem Measurable.leOnePart [MeasurableSup α] (hf : Measurable f) :
    Measurable fun x ↦ leOnePart (f x) :=
  measurable_leOnePart.comp hf

variable [MeasurableSup₂ α]

@[to_additive (attr := measurability)]
theorem measurable_mabs : Measurable (mabs : α → α) :=
  measurable_id'.sup measurable_inv

@[to_additive (attr := measurability, fun_prop)]
protected theorem Measurable.mabs (hf : Measurable f) : Measurable fun x ↦ mabs (f x) :=
  measurable_mabs.comp hf

@[to_additive (attr := measurability, fun_prop)]
protected theorem AEMeasurable.mabs {μ : MeasureTheory.Measure β} (hf : AEMeasurable f μ) :
    AEMeasurable (fun x ↦ mabs (f x)) μ :=
  measurable_mabs.comp_aemeasurable hf
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a0611ea3274fa39ae09d2421dabec44d89ff8a3b890f0528ab14cbb4714f77f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Lattice/Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
