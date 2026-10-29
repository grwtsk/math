# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variantf4ac9671586deec7d6b589e74fc2431c9943d5b5681e530f146ed34bdd91480b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44235fa21bb32da4c0d35a3f21f3a6e8e71efdfa` · SHA-256 `f4ac9671586deec7d6b589e74fc2431c9943d5b5681e530f146ed34bdd91480b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.Module.Torsion
import Mathlib.LinearAlgebra.Dimension.Constructions
import Mathlib.LinearAlgebra.Dimension.Subsingleton

/-!
# Rank and torsion

## Main statements

- `rank_quotient_eq_of_le_torsion` : `rank M/N = rank M` if `N ≤ torsion M`.
-/

open Submodule

theorem rank_quotient_eq_of_le_torsion {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    {M' : Submodule R M} (hN : M' ≤ torsion R M) : Module.rank R (M ⧸ M') = Module.rank R M :=
  (rank_quotient_le M').antisymm <| by
    nontriviality R
    rw [Module.rank]
    refine ciSup_le fun ⟨s, hs⟩ ↦ LinearIndependent.cardinal_le_rank (v := (M'.mkQ ·)) ?_
    rw [LinearIndepOn, linearIndependent_iff'] at hs
    simp_rw [linearIndependent_iff', ← map_smul, ← map_sum, mkQ_apply, Quotient.mk_eq_zero]
    intro t g hg i hi
    obtain ⟨r, hg⟩ := hN hg
    simp_rw [Finset.smul_sum, Submonoid.smul_def, smul_smul] at hg
    exact r.prop _ (mul_comm (g i) r ▸ hs t _ hg i hi)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc7c42c9ee424c76996b1420c741915a50d8f2af8600ff7581d8b9e4253ed137 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantf4ac9671586deec7d6b589e74fc2431c9943d5b5681e530f146ed34bdd91480b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
