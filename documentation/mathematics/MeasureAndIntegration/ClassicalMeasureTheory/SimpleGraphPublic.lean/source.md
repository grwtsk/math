# Simple Graph Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6683dbc92910a0a484582f7eafb498af3752be9` · SHA-256 `c229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Combinatorics.SimpleGraph.Basic
public import Mathlib.MeasureTheory.MeasurableSpace.Embedding

/-!
# Sigma-algebra on simple graphs

In this file, we pull back the sigma-algebra on `V → V → Prop` to a sigma-algebra on
`SimpleGraph V` and prove that common operations are measurable.
-/

public section

open scoped Finset

namespace SimpleGraph
variable {V : Type*}

instance : MeasurableSpace (SimpleGraph V) := .comap Adj inferInstance

/-- A simple graph-valued map is measurable iff all induced adjacency maps are measurable. -/
lemma measurable_iff_adj {Ω : Type*} {m : MeasurableSpace Ω} {G : Ω → SimpleGraph V} :
    Measurable G ↔ ∀ u v, Measurable fun ω ↦ (G ω).Adj u v := by
  simp [measurable_comap_iff, measurable_pi_iff]

@[fun_prop]
lemma measurable_adj : Measurable (Adj : SimpleGraph V → V → V → Prop) := comap_measurable _

@[fun_prop]
lemma measurable_edgeSet : Measurable (edgeSet : SimpleGraph V → Set (Sym2 V)) :=
  measurable_set_iff.2 <| by rintro ⟨u, v⟩; simp only [mem_edgeSet]; fun_prop

@[simp, fun_prop]
lemma measurable_fromEdgeSet : Measurable (fromEdgeSet : Set (Sym2 V) → SimpleGraph V) := by
  simp only [measurable_iff_adj, fromEdgeSet_adj, ne_eq]; fun_prop

lemma measurableEmbedding_edgeSet [Countable V] :
    MeasurableEmbedding (edgeSet : SimpleGraph V → Set (Sym2 V)) where
  injective := edgeSet_injective
  measurable := measurable_edgeSet
  measurableSet_image' s hs := by
    simp only [← measurable_mem, Set.mem_image, edgeSet_eq_iff, ↓existsAndEq, true_and,
      Set.disjoint_right]
    refine .and (hs.mem.comp measurable_fromEdgeSet) <| .forall fun e ↦ .imp ?_ ?_ <;> fun_prop

end SimpleGraph
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bc0c4e60eefe2a55f6b061a1be6ba1285de848fd17f374928f3860acf471c52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SimpleGraph/Variantc229f3e3ec5f26e19d4607fdaadff9c48c013fc09e67b62461342d0fd0390a17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
