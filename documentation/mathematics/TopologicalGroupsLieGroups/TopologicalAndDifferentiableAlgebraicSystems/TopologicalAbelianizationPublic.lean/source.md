# Topological Abelianization Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17303ea7c19fa9048affa1f7fc6ac2127ac6240d` · SHA-256 `4340249a9208b7d1c75852932ee15afc2eec1e9fc179ba288dd84765fdc9a5b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández
-/
module

public import Mathlib.GroupTheory.Commutator.Basic
public import Mathlib.Tactic.Group
public import Mathlib.Topology.Algebra.Group.Subgroup

/-!
# The topological abelianization of a group.

This file defines the topological abelianization of a topological group.

## Main definitions

* `TopologicalAbelianization`: defines the topological abelianization of a group `G` as the quotient
  of `G` by the topological closure of its commutator subgroup..

## Main results
- `instNormalCommutatorClosure` : the topological closure of the commutator of a topological group
  `G` is a normal subgroup.

## Tags
group, topological abelianization

-/

public section

open scoped commutatorElement

variable (G : Type*) [Group G] [TopologicalSpace G] [IsTopologicalGroup G]

instance instNormalCommutatorClosure : (commutator G).topologicalClosure.Normal :=
  Subgroup.is_normal_topologicalClosure (commutator G)

/-- The topological abelianization of `absoluteGaloisGroup`, that is, the quotient of
  `absoluteGaloisGroup` by the topological closure of its commutator subgroup. -/
abbrev TopologicalAbelianization := G ⧸ Subgroup.topologicalClosure (commutator G)

local notation "G_ab" => TopologicalAbelianization

namespace TopologicalAbelianization

instance commGroup : CommGroup (G_ab G) where
  mul_comm := fun x y =>
    Quotient.inductionOn₂' x y fun a b =>
      Quotient.sound' <|
        QuotientGroup.leftRel_apply.mpr <| by
          have h : (a * b)⁻¹ * (b * a) = ⁅b⁻¹, a⁻¹⁆ := by group
          rw [h]
          exact Subgroup.le_topologicalClosure _ (Subgroup.commutator_mem_commutator
            (Subgroup.mem_top b⁻¹) (Subgroup.mem_top a⁻¹))
  __ : Group (G_ab G) := inferInstance

end TopologicalAbelianization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be64d50452086b36c075e9f12c5a9a1119c7c14f8ffef4b43f440eb1b6357f7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/TopologicalAbelianization/Variant4340249a9208b7d1c75852932ee15afc2eec1e9fc179ba288dd84765fdc9a5b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
