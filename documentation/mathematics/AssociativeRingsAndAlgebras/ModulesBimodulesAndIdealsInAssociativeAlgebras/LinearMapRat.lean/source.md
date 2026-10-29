# Linear Map Rat — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68dc81821f5cf2cc164aa39420c516bf0faa11db` · SHA-256 `5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nathaniel Thomas, Jeremy Avigad, Johannes Hölzl, Mario Carneiro, Anne Baanen,
  Frédéric Dupuis, Heather Macbeth
-/
import Mathlib.Algebra.Module.Rat
import Mathlib.Algebra.Module.LinearMap.Defs

/-!
# Reinterpret an additive homomorphism as a `ℚ`-linear map.
-/

open Function

variable {M M₂ : Type*}

/-- Reinterpret an additive homomorphism as a `ℚ`-linear map. -/
def AddMonoidHom.toRatLinearMap [AddCommGroup M] [Module ℚ M] [AddCommGroup M₂] [Module ℚ M₂]
    (f : M →+ M₂) : M →ₗ[ℚ] M₂ :=
  { f with map_smul' := map_rat_smul f }

theorem AddMonoidHom.toRatLinearMap_injective [AddCommGroup M] [Module ℚ M] [AddCommGroup M₂]
    [Module ℚ M₂] : Function.Injective (@AddMonoidHom.toRatLinearMap M M₂ _ _ _ _) := by
  intro f g h
  ext x
  exact LinearMap.congr_fun h x

@[simp]
theorem AddMonoidHom.coe_toRatLinearMap [AddCommGroup M] [Module ℚ M] [AddCommGroup M₂]
    [Module ℚ M₂] (f : M →+ M₂) : ⇑f.toRatLinearMap = f :=
  rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=205d5d69764996d66d99e65ecdcbd0a138942829e3c49c7f40ec41aee213162c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rat/Variant5bf7311e7dc5be1c2d8558c207b8b779694152295402001d8eee12576ab1ed57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
