# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Field.Variantfe77853c774cc7c44a2006ff0281702979dc11a07f5985df13ab419910e6fa2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5043b77bcf2075a0be1112d632335b9348fd1e3f` · SHA-256 `fe77853c774cc7c44a2006ff0281702979dc11a07f5985df13ab419910e6fa2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.Analysis.Normed.Group.Continuity
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Topology.Algebra.InfiniteSum.Defs

/-!
# Infinite sums and products in topological fields

Lemmas on topological sums in fields (as opposed to groups).
-/


section NormedField

variable {α E : Type*} [NormedField E] {f : α → E} {x : E}

nonrec theorem HasProd.norm (hfx : HasProd f x) : HasProd (‖f ·‖) ‖x‖ := by
  simp only [HasProd, ← norm_prod]
  exact hfx.norm

theorem Multipliable.norm (hf : Multipliable f) : Multipliable (‖f ·‖) :=
  let ⟨x, hx⟩ := hf; ⟨‖x‖, hx.norm⟩

protected theorem Multipliable.norm_tprod (hf : Multipliable f) : ‖∏' i, f i‖ = ∏' i, ‖f i‖ :=
  hf.hasProd.norm.tprod_eq.symm

@[deprecated (since := "2025-04-12")] alias norm_tprod := Multipliable.norm_tprod

end NormedField
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74c82da55fee2860911b1099f41dd05472468d76cc8553a6775e199fdecc7c4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Field/Variantfe77853c774cc7c44a2006ff0281702979dc11a07f5985df13ab419910e6fa2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
