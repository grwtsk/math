# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ULift.Variantb785d6708032f86c2fa555d9be0c1b4db1f259dffe6dd296deb88f9ff488688f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18a9348c25cb73cd8807e14d5f95be3cb99ec0fe` · SHA-256 `b785d6708032f86c2fa555d9be0c1b4db1f259dffe6dd296deb88f9ff488688f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Logic.Function.Defs

/-!
# `ULift` and `PLift`
-/

theorem ULift.down_injective {α : Sort _} : Function.Injective (@ULift.down α)
  | ⟨a⟩, ⟨b⟩, _ => by congr

@[simp] theorem ULift.down_inj {α : Sort _} {a b : ULift α} : a.down = b.down ↔ a = b :=
  ⟨fun h ↦ ULift.down_injective h, fun h ↦ by rw [h]⟩

variable {α : Sort*}

theorem PLift.down_injective : Function.Injective (@PLift.down α)
  | ⟨a⟩, ⟨b⟩, _ => by congr

@[simp] theorem PLift.down_inj {a b : PLift α} : a.down = b.down ↔ a = b :=
  ⟨fun h ↦ PLift.down_injective h, fun h ↦ by rw [h]⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=421ce06f0d7e71c2a41c718d29b59b3a221a4b01f587578cdfc54a665e2ccdf7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ULift/Variantb785d6708032f86c2fa555d9be0c1b4db1f259dffe6dd296deb88f9ff488688f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
