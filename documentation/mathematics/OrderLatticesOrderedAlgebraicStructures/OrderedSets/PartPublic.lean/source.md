# Part Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ada7e6c5733a0990bd984db83e698652a0e6e7a1` · SHA-256 `d38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Data.Part
public import Mathlib.Order.Hom.Basic
public import Mathlib.Tactic.Common
public import Mathlib.Tactic.Attr.Core

/-!
# Monotonicity of monadic operations on `Part`
-/

@[expose] public section

open Part

variable {α β γ : Type*} [Preorder α]

section bind
variable {f : α → Part β} {g : α → β → Part γ}

lemma Monotone.partBind (hf : Monotone f) (hg : Monotone g) :
    Monotone fun x ↦ (f x).bind (g x) := by
  rintro x y h a
  simp only [and_imp, Part.mem_bind_iff, exists_imp]
  exact fun b hb ha ↦ ⟨b, hf h _ hb, hg h _ _ ha⟩

lemma Antitone.partBind (hf : Antitone f) (hg : Antitone g) :
    Antitone fun x ↦ (f x).bind (g x) := by
  rintro x y h a
  simp only [and_imp, Part.mem_bind_iff, exists_imp]
  exact fun b hb ha ↦ ⟨b, hf h _ hb, hg h _ _ ha⟩

end bind

section map
variable {f : β → γ} {g : α → Part β}

lemma Monotone.partMap (hg : Monotone g) : Monotone fun x ↦ (g x).map f := by
  simpa only [← bind_some_eq_map] using hg.partBind monotone_const

lemma Antitone.partMap (hg : Antitone g) : Antitone fun x ↦ (g x).map f := by
  simpa only [← bind_some_eq_map] using hg.partBind antitone_const

end map

section seq
variable {β γ : Type _} {f : α → Part (β → γ)} {g : α → Part β}

lemma Monotone.partSeq (hf : Monotone f) (hg : Monotone g) : Monotone fun x ↦ f x <*> g x := by
  simpa only [seq_eq_bind_map] using! hf.partBind <| Monotone.of_apply₂ fun _ ↦ hg.partMap

lemma Antitone.partSeq (hf : Antitone f) (hg : Antitone g) : Antitone fun x ↦ f x <*> g x := by
  simpa only [seq_eq_bind_map] using! hf.partBind <| Antitone.of_apply₂ fun _ ↦ hg.partMap

end seq

namespace OrderHom

/-- `Part.bind` as a monotone function -/
@[simps]
def partBind (f : α →o Part β) (g : α →o β → Part γ) : α →o Part γ where
  toFun x := (f x).bind (g x)
  monotone' := f.2.partBind g.2

end OrderHom
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bf931838c88fb9eb3919a27aad3aced8a961eb52be8dd6af026a5cd07a2ffc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
