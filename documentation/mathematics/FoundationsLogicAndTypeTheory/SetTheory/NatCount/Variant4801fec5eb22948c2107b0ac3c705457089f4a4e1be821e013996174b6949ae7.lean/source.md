# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.NatCount.Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6291e34f8d22c612ac59b305f057520c991107b` · SHA-256 `4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Vladimir Goryachev. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vladimir Goryachev
-/

import Mathlib.Data.Nat.Count
import Mathlib.Data.Set.Card

/-!
# Counting on ℕ

This file provides lemmas about the relation of `Nat.count` with cardinality functions.
-/


namespace Nat
open Nat Count

variable {p : ℕ → Prop} [DecidablePred p] (n : ℕ)

theorem count_le_cardinal : (count p n : Cardinal) ≤ Cardinal.mk { k | p k } := by
  rw [count_eq_card_fintype, ← Cardinal.mk_fintype]
  exact Cardinal.mk_subtype_mono fun x hx ↦ hx.2

theorem count_le_setENCard : count p n ≤ Set.encard { k | p k } := by
  simp only [Set.encard, ENat.card, Set.coe_setOf, Cardinal.natCast_le_toENat_iff]
  exact Nat.count_le_cardinal n

theorem count_le_setNCard (h : { k | p k }.Finite) : count p n ≤ Set.ncard { k | p k } := by
  rw [Set.ncard_def, ← ENat.coe_le_coe, ENat.coe_toNat (by simpa)]
  exact count_le_setENCard n

end Nat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b2687bec58367b9007f91d544b86c36554193932af64ceb44f0cd0cb83ca73d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NatCount/Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
