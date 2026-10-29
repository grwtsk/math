# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PProd.Variantaf29d2f36e3285c5e4a35ef9895854719372b81a9e96e2b0111219f57c7f6e2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d71c293bd0eac473c8e225de6f8085282e7889f8` · SHA-256 `af29d2f36e3285c5e4a35ef9895854719372b81a9e96e2b0111219f57c7f6e2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Logic.Basic

#align_import data.prod.pprod from "leanprover-community/mathlib"@"c4658a649d216f57e99621708b09dcb3dcccbd23"

/-!
# Extra facts about `PProd`
-/


open Function

variable {α β γ δ : Sort*}

namespace PProd

@[simp]
theorem mk.eta {p : PProd α β} : PProd.mk p.1 p.2 = p :=
  PProd.casesOn p fun _ _ ↦ rfl
#align pprod.mk.eta PProd.mk.eta

@[simp]
theorem «forall» {p : PProd α β → Prop} : (∀ x, p x) ↔ ∀ a b, p ⟨a, b⟩ :=
  ⟨fun h a b ↦ h ⟨a, b⟩, fun h ⟨a, b⟩ ↦ h a b⟩
#align pprod.forall PProd.forall

@[simp]
theorem «exists» {p : PProd α β → Prop} : (∃ x, p x) ↔ ∃ a b, p ⟨a, b⟩ :=
  ⟨fun ⟨⟨a, b⟩, h⟩ ↦ ⟨a, b, h⟩, fun ⟨a, b, h⟩ ↦ ⟨⟨a, b⟩, h⟩⟩
#align pprod.exists PProd.exists

theorem forall' {p : α → β → Prop} : (∀ x : PProd α β, p x.1 x.2) ↔ ∀ a b, p a b :=
  PProd.forall
#align pprod.forall' PProd.forall'

theorem exists' {p : α → β → Prop} : (∃ x : PProd α β, p x.1 x.2) ↔ ∃ a b, p a b :=
  PProd.exists
#align pprod.exists' PProd.exists'

end PProd

theorem Function.Injective.pprod_map {f : α → β} {g : γ → δ} (hf : Injective f) (hg : Injective g) :
    Injective (fun x ↦ ⟨f x.1, g x.2⟩ : PProd α γ → PProd β δ) := fun _ _ h ↦
  have A := congr_arg PProd.fst h
  have B := congr_arg PProd.snd h
  congr_arg₂ PProd.mk (hf A) (hg B)
#align function.injective.pprod_map Function.Injective.pprod_map
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c759945cbded9c2b2091d22f2db7e3b02a262aa9cfff038c18d481026125ac19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PProd/Variantaf29d2f36e3285c5e4a35ef9895854719372b81a9e96e2b0111219f57c7f6e2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
