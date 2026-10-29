# Complete source: GRWTSK.Topology.Discrete.Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ffd0c404f1b353072a2899fb215df6f5fc9cdd4` · SHA-256 `6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne
-/
module

public import Mathlib.Topology.Order.Basic
public import Mathlib.Order.SuccPred.LinearLocallyFinite

/-!
# Instances related to the discrete topology

We prove that the discrete topology is
* first-countable,
* second-countable for an encodable type,
* equal to the order topology in linear orders which are also `PredOrder` and `SuccOrder`,
* metrizable.

When importing this file and `Data.Nat.SuccPred`, the instances `SecondCountableTopology ℕ`
and `OrderTopology ℕ` become available.

-/

public section


open Set TopologicalSpace Filter

variable {α : Type*} [TopologicalSpace α]

instance (priority := 100) DiscreteTopology.firstCountableTopology [DiscreteTopology α] :
    FirstCountableTopology α where
  nhds_generated_countable := by rw [nhds_discrete]; exact isCountablyGenerated_pure

instance (priority := 100) DiscreteTopology.secondCountableTopology_of_countable
    [hd : DiscreteTopology α] [Countable α] : SecondCountableTopology α :=
  haveI : ∀ i : α, SecondCountableTopology (↥({i} : Set α)) := fun i =>
    { is_open_generated_countable :=
        ⟨{univ}, countable_singleton _, by simp only [eq_iff_true_of_subsingleton]⟩ }
  secondCountableTopology_of_countable_cover (fun _ ↦ isOpen_discrete _)
    (iUnion_of_singleton α)

theorem LinearOrder.bot_topologicalSpace_eq_preorderTopology {α} [LinearOrder α] [PredOrder α]
    [SuccOrder α] : (⊥ : TopologicalSpace α) = Preorder.topology α := by
  let _ := Preorder.topology α
  have : OrderTopology α := ⟨rfl⟩
  exact DiscreteTopology.of_predOrder_succOrder.eq_bot.symm

@[deprecated (since := "2026-03-22")]
alias LinearOrder.bot_topologicalSpace_eq_generateFrom :=
  LinearOrder.bot_topologicalSpace_eq_preorderTopology

theorem discreteTopology_iff_orderTopology_of_pred_succ [LinearOrder α] [PredOrder α]
    [SuccOrder α] : DiscreteTopology α ↔ OrderTopology α := by
  refine ⟨fun h ↦ ⟨?_⟩, fun h ↦ .of_predOrder_succOrder⟩
  rw [h.eq_bot, LinearOrder.bot_topologicalSpace_eq_preorderTopology]

instance OrderTopology.of_discreteTopology [LinearOrder α] [PredOrder α] [SuccOrder α]
    [DiscreteTopology α] : OrderTopology α :=
  discreteTopology_iff_orderTopology_of_pred_succ.mp ‹_›

instance OrderTopology.of_linearLocallyFinite
    [LinearOrder α] [LocallyFiniteOrder α] [DiscreteTopology α] : OrderTopology α :=
  haveI := LinearLocallyFiniteOrder.succOrder α
  haveI := LinearLocallyFiniteOrder.predOrder α
  inferInstance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=215ae79d74fb36a69521ba0ac91539d165f385d9714e4a4d2bffa31f37622fb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Discrete/Variant6d1ae7dc0c00c999414bbcb8158ee07983f79289fe119e4d2d521d6b70c6f562.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
