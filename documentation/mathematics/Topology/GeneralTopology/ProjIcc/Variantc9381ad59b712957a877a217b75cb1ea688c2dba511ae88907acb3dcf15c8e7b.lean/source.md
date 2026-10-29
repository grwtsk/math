# Complete source: GRWTSK.Topology.GeneralTopology.ProjIcc.Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74b1d38fe5205b49e194ba439154d239bf943088` · SHA-256 `c9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Patrick Massot
-/
module

public import Mathlib.Order.Interval.Set.ProjIcc
public import Mathlib.Topology.Order.Basic

/-!
# Projection onto a closed interval

In this file we prove that the projection `Set.projIcc f a b h` is a quotient map, and use it
to show that `Set.IccExtend h f` is continuous if and only if `f` is continuous.
-/

public section


open Set Filter Topology

variable {α β γ : Type*} [LinearOrder α] {a b : α} {h : a ≤ b}

protected theorem Filter.Tendsto.IccExtend (f : γ → Icc a b → β) {la : Filter α} {lb : Filter β}
    {lc : Filter γ} (hf : Tendsto ↿f (lc ×ˢ la.map (projIcc a b h)) lb) :
    Tendsto (↿(IccExtend h ∘ f)) (lc ×ˢ la) lb :=
  hf.comp <| tendsto_id.prodMap tendsto_map

variable [TopologicalSpace α] [OrderTopology α] [TopologicalSpace β] [TopologicalSpace γ]

@[continuity, fun_prop]
theorem continuous_projIcc : Continuous (projIcc a b h) := Continuous.subtype_mk (by fun_prop) _

theorem isQuotientMap_projIcc : IsQuotientMap (projIcc a b h) where
  surjective := projIcc_surjective h
  isCoinducing := .of_isOpen_preimage_iff_isOpen fun s ↦
    ⟨fun hs => ⟨_, hs, by ext; simp⟩, fun hs => hs.preimage continuous_projIcc⟩

@[simp]
theorem continuous_IccExtend_iff {f : Icc a b → β} : Continuous (IccExtend h f) ↔ Continuous f :=
  isQuotientMap_projIcc.continuous_iff.symm

/-- See Note [continuity lemma statement]. -/
@[fun_prop]
protected theorem Continuous.IccExtend {f : γ → Icc a b → β} {g : γ → α} (hf : Continuous ↿f)
    (hg : Continuous g) : Continuous fun a => IccExtend h (f a) (g a) :=
  show Continuous (↿f ∘ fun x => (x, projIcc a b h (g x)))
  from hf.comp <| continuous_id.prodMk <| continuous_projIcc.comp hg

/-- A useful special case of `Continuous.IccExtend`. -/
@[continuity, fun_prop]
protected theorem Continuous.Icc_extend' {f : Icc a b → β} (hf : Continuous f) :
    Continuous (IccExtend h f) :=
  hf.comp continuous_projIcc

@[fun_prop]
theorem ContinuousAt.IccExtend {x : γ} (f : γ → Icc a b → β) {g : γ → α}
    (hf : ContinuousAt ↿f (x, projIcc a b h (g x))) (hg : ContinuousAt g x) :
    ContinuousAt (fun a => IccExtend h (f a) (g a)) x :=
  show ContinuousAt (↿f ∘ fun x => (x, projIcc a b h (g x))) x from
    ContinuousAt.comp hf <| continuousAt_id.prodMk <| continuous_projIcc.continuousAt.comp hg
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e91b8fe8a1c1e0fbfcf6f2db751cbd0b6195f7698cce4a587883ae75fd78d66c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ProjIcc/Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
