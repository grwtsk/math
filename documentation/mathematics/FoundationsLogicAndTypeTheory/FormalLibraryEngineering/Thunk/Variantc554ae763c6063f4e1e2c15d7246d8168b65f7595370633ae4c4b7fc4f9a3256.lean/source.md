# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Thunk.Variantc554ae763c6063f4e1e2c15d7246d8168b65f7595370633ae4c4b7fc4f9a3256

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ec29601a07ca343e5cf5d1e874733461d9228a4` · SHA-256 `c554ae763c6063f4e1e2c15d7246d8168b65f7595370633ae4c4b7fc4f9a3256`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Init

/-!
# Basic facts about `Thunk`.
-/

namespace Thunk

@[simp] theorem get_pure {α} (x : α) : (Thunk.pure x).get = x := rfl
@[simp] theorem get_mk {α} (f : Unit → α) : (Thunk.mk f).get = f () := rfl

universe u v
variable {α : Type u} {β : Type v}

instance [DecidableEq α] : DecidableEq (Thunk α) := by
  intro a b
  have : a = b ↔ a.get = b.get := ⟨by intro x; rw [x], by intro; ext; assumption⟩
  rw [this]
  infer_instance

/-- The cartesian product of two thunks. -/
def prod (a : Thunk α) (b : Thunk β) : Thunk (α × β) := Thunk.mk fun _ => (a.get, b.get)

@[simp] theorem prod_get_fst {a : Thunk α} {b : Thunk β} : (prod a b).get.1 = a.get := rfl
@[simp] theorem prod_get_snd {a : Thunk α} {b : Thunk β} : (prod a b).get.2 = b.get := rfl

/-- The sum of two thunks. -/
def add [Add α] (a b : Thunk α) : Thunk α := Thunk.mk fun _ => a.get + b.get

instance [Add α] : Add (Thunk α) := ⟨add⟩

@[simp] theorem add_get [Add α] {a b : Thunk α} : (a + b).get = a.get + b.get := rfl

end Thunk
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17075406d66aaa18946af0cc1dcdd374534b0e36f7d65c01d0c7225bc46aa410 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Thunk/Variantc554ae763c6063f4e1e2c15d7246d8168b65f7595370633ae4c4b7fc4f9a3256.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
