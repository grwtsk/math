# At Top Bot Map — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8438f579a3d09ed69598ed59d2e0df6199ed1239` · SHA-256 `e826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jeremy Avigad, Yury Kudryashov, Patrick Massot
-/
import Mathlib.Order.Filter.AtTopBot.Defs
import Mathlib.Order.Filter.Map
import Mathlib.Order.Filter.Tendsto
import Mathlib.Order.Interval.Set.OrderIso

/-!
# Map and comap of `Filter.atTop` and `Filter.atBot`
-/

assert_not_exists Finset

variable {ι ι' α β γ : Type*}

open Set

namespace OrderIso

open Filter

variable [Preorder α] [Preorder β]

@[simp]
theorem comap_atTop (e : α ≃o β) : comap e atTop = atTop := by
  simp [atTop, ← e.surjective.iInf_comp]

@[simp]
theorem comap_atBot (e : α ≃o β) : comap e atBot = atBot :=
  e.dual.comap_atTop

@[simp]
theorem map_atTop (e : α ≃o β) : map (e : α → β) atTop = atTop := by
  rw [← e.comap_atTop, map_comap_of_surjective e.surjective]

@[simp]
theorem map_atBot (e : α ≃o β) : map (e : α → β) atBot = atBot :=
  e.dual.map_atTop

theorem tendsto_atTop (e : α ≃o β) : Tendsto e atTop atTop :=
  e.map_atTop.le

theorem tendsto_atBot (e : α ≃o β) : Tendsto e atBot atBot :=
  e.map_atBot.le

@[simp]
theorem tendsto_atTop_iff {l : Filter γ} {f : γ → α} (e : α ≃o β) :
    Tendsto (fun x => e (f x)) l atTop ↔ Tendsto f l atTop := by
  rw [← e.comap_atTop, tendsto_comap_iff, Function.comp_def]

@[simp]
theorem tendsto_atBot_iff {l : Filter γ} {f : γ → α} (e : α ≃o β) :
    Tendsto (fun x => e (f x)) l atBot ↔ Tendsto f l atBot :=
  e.dual.tendsto_atTop_iff

end OrderIso
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fdb2cb5e7be3359373dfbc283d2bbc9523f1e15a199e6f00d4342763d07de3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Map/Variante826409e03f203a12665702ca1dd05b50f7bc1a865ee24ffd2dec6186ac4db37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
