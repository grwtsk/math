# Zorn Atoms — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99e546394afc77c03f523c75fd1ce9a9a9429caf` · SHA-256 `1dc811af9d7229457eff8e3f347020397fceff4043d203124822c3e793f8d64e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Order.Zorn
import Mathlib.Order.Atoms

/-!
# Zorn lemma for (co)atoms

In this file we use Zorn's lemma to prove that a partial order is atomic if every nonempty chain
`c`, `⊥ ∉ c`, has a lower bound not equal to `⊥`. We also prove the order dual version of this
statement.
-/


open Set

/-- **Zorn's lemma**: A partial order is coatomic if every nonempty chain `c`, `⊤ ∉ c`, has an upper
bound not equal to `⊤`. -/
theorem IsCoatomic.of_isChain_bounded {α : Type*} [PartialOrder α] [OrderTop α]
    (h : ∀ c : Set α, IsChain (· ≤ ·) c → c.Nonempty → ⊤ ∉ c → ∃ x ≠ ⊤, x ∈ upperBounds c) :
    IsCoatomic α := by
  refine ⟨fun x => le_top.eq_or_lt.imp_right fun hx => ?_⟩
  have := zorn_le_nonempty₀ (Ico x ⊤) (fun c hxc hc y hy => ?_) x (left_mem_Ico.2 hx)
  · obtain ⟨y, hxy, hmax⟩ := this
    refine ⟨y, ⟨hmax.prop.2.ne, fun z hyz ↦ le_top.eq_or_lt.resolve_right fun hz => ?_⟩, hxy⟩
    exact hyz.ne <| hmax.eq_of_le ⟨hxy.trans hyz.le, hz⟩ hyz.le
  rcases h c hc ⟨y, hy⟩ fun h => (hxc h).2.ne rfl with ⟨z, hz, hcz⟩
  exact ⟨z, ⟨le_trans (hxc hy).1 (hcz hy), hz.lt_top⟩, hcz⟩

/-- **Zorn's lemma**: A partial order is atomic if every nonempty chain `c`, `⊥ ∉ c`, has a lower
bound not equal to `⊥`. -/
theorem IsAtomic.of_isChain_bounded {α : Type*} [PartialOrder α] [OrderBot α]
    (h :
      ∀ c : Set α,
        IsChain (· ≤ ·) c → c.Nonempty → ⊥ ∉ c → ∃ x ≠ ⊥, x ∈ lowerBounds c) :
    IsAtomic α :=
  isCoatomic_dual_iff_isAtomic.mp <| IsCoatomic.of_isChain_bounded fun c hc => h c hc.symm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37c6d9f432e63b7175b26acb7c2919b47c41482c915fcb9dd138f6333947e375 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZornAtoms/Variant1dc811af9d7229457eff8e3f347020397fceff4043d203124822c3e793f8d64e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
