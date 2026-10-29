# Verification target: Ord Connected Component

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e57168ed22fa04bc00de9740cce68979dc0257ce",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant1c20001a76b00d21699b5515f78b7d124263d52097001e9515457f292d6c6c15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e57168ed22fa04bc00de9740cce68979dc0257ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant1c20001a76b00d21699b5515f78b7d124263d52097001e9515457f292d6c6c15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant1c20001a76b00d21699b5515f78b7d124263d52097001e9515457f292d6c6c15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.OrdConnected` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordConnectedComponent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedcomponent.md) | 27 | `declaration-track:aaa7763eb316a7ad808d0616603153ec7c4e2070e060936cd9bcf1155c399005` |
| 2 | `theorem` | [mem_ordConnectedComponent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/mem-ordconnectedcomponent.md) | 30 | `result-track:8d3f6acb8f5f2f736ea5a0e6a2339a55b2841d3244e6d7e46966b9267bf582dc` |
| 3 | `theorem` | [dual_ordConnectedComponent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/dual-ordconnectedcomponent.md) | 33 | `result-track:b48faf82be76b97ceb97935ff43d26a9291ed4c122e1ff2d4a2ed4df0a30e514` |
| 4 | `theorem` | [ordConnectedComponent_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedcomponent-subset.md) | 37 | `result-track:c79c466eda81b07e5a535faf17f7ea201b6ef77f797ceefc3b4a5d457f06cdb2` |
| 5 | `theorem` | [subset_ordConnectedComponent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/subset-ordconnectedcomponent.md) | 40 | `result-track:6c7eb753beba0a0168afd24e9521cce0276677cd0696a8a9ac407bbb708325cf` |
| 6 | `theorem` | [self_mem_ordConnectedComponent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/self-mem-ordconnectedcomponent.md) | 44 | `result-track:0029c357b0a00a0260d66ca02c5a90a94ac80bfa94f9eb11fb37c7d5683216ef` |
| 7 | `theorem` | [nonempty_ordConnectedComponent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/nonempty-ordconnectedcomponent.md) | 48 | `result-track:c78f762d45bcd1836b0b881cf0ca99c9df61f7931a8be66301c1d23d4a93d955` |
| 8 | `theorem` | [ordConnectedComponent_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedcomponent-eq-empty.md) | 52 | `result-track:f951a88f4f2eef695f7d34272b9e18b59ed770bab6bf8730c084ba9c135642ce` |
| 9 | `theorem` | [ordConnectedComponent_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedcomponent-empty.md) | 56 | `result-track:4659f267a9a31cdeffbd9050f914f1a5681f64cbcc36d0d020217648f0e655fc` |
| 10 | `theorem` | [ordConnectedComponent_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedcomponent-univ.md) | 60 | `result-track:00ac15871742ab54f4a0763fbfb36227894f58f41cd114f03342af8e30ab46f5` |
| 11 | `theorem` | [ordConnectedComponent_inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedcomponent-inter.md) | 63 | `result-track:bc613872668838288782c7408ecea67aeee1565bf224939ac4d701d09a6c2bd8` |
| 12 | `theorem` | [mem_ordConnectedComponent_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/mem-ordconnectedcomponent-comm.md) | 67 | `result-track:d10c75684ae741341017956b12af7d6a1685c6edc1d299d8e31a881bdfbe4ebe` |
| 13 | `theorem` | [mem_ordConnectedComponent_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/mem-ordconnectedcomponent-trans.md) | 71 | `result-track:78e0f86d46e57c139b20c7cd336c0e138ee919e1a55b4be4515facf7923d0b9f` |
| 14 | `theorem` | [ordConnectedComponent_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedcomponent-eq.md) | 77 | `result-track:4af55bd58a8f6c38aa282aa193a7fdb908363f99038f106d8b7a7e462304935f` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/instance.md) | 83 | `declaration-track:e21d1179fdc5f5ce4f195f18e6d6cd42da8929a79758a1151759c506f66edb7e` |
| 16 | `def` | [ordConnectedProj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedproj.md) | 88 | `declaration-track:5049dd99b9909bd46f4492c019df2484c0773cbe98c7d2e3bc4dfe9b4563efd9` |
| 17 | `theorem` | [ordConnectedProj_mem_ordConnectedComponent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedproj-mem-ordconnectedcomponent.md) | 91 | `result-track:b4b6747aa753a56a70a18c750fe80eb89b894ac37a7d9a59f0b3d7f3ace9bba6` |
| 18 | `theorem` | [mem_ordConnectedComponent_ordConnectedProj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/mem-ordconnectedcomponent-ordconnectedproj.md) | 95 | `result-track:1e31de547a64e498d92fcab2ffaf250d8ef4123c52307ef80dea5a81ef63b059` |
| 19 | `theorem` | [ordConnectedComponent_ordConnectedProj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedcomponent-ordconnectedproj.md) | 100 | `result-track:55eacca05e9184981694f351700ecd920928e0d0796b874658a342b93753f2b6` |
| 20 | `theorem` | [ordConnectedProj_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedproj-eq.md) | 105 | `result-track:0db5928bd57780525b6b14083c7beee58594ea0862fc7d2adcb2db9e42012203` |
| 21 | `def` | [ordConnectedSection](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedsection.md) | 115 | `declaration-track:cf7ddca144324feedd5e5c5fda74604b993812df268ac30343e956f1616aea1d` |
| 22 | `theorem` | [dual_ordConnectedSection](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/dual-ordconnectedsection.md) | 118 | `result-track:a485b765d7d6cdff41e347bff466cf0802997ed7896e3a637ca390adcdea7632` |
| 23 | `theorem` | [ordConnectedSection_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordconnectedsection-subset.md) | 127 | `result-track:fcf5dac44cdbbbb0fc577e4690f6a5a1597a7a882be6410a4ff8aa4a5c1eedc2` |
| 24 | `theorem` | [eq_of_mem_ordConnectedSection_of_uIcc_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/eq-of-mem-ordconnectedsection-of-uicc-subset.md) | 130 | `result-track:2a2d0667cfc011a5cfb69a9070af962d696cb0ab437e482d0888494426db5783` |
| 25 | `def` | [ordSeparatingSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordseparatingset.md) | 143 | `declaration-track:668c05562f8f9cb0cf15e863a8db10f2ef54e9fa26b68d76e6f897bd407792f8` |
| 26 | `theorem` | [ordSeparatingSet_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordseparatingset-comm.md) | 146 | `result-track:609cdb10f22d17f8ebc0032589d2a0dbd0b325292c594fb9a3de316618b989c5` |
| 27 | `theorem` | [disjoint_left_ordSeparatingSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/disjoint-left-ordseparatingset.md) | 149 | `result-track:2102df518316320a520aa50fd7574fa9dd87a0165b19ad3f277797667066b754` |
| 28 | `theorem` | [disjoint_right_ordSeparatingSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/disjoint-right-ordseparatingset.md) | 154 | `result-track:077a6a626adc84a8ad402f434559e041c2f6d45ba49ed476f30611c810833dff` |
| 29 | `theorem` | [dual_ordSeparatingSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/dual-ordseparatingset.md) | 157 | `result-track:a9704cdd60ff5a0c9c495b681618f1efeee15714b05d42233431800111829cc5` |
| 30 | `def` | [ordT5Nhd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/ordt5nhd.md) | 164 | `declaration-track:051a6eb1907471ae9d28b05c9c3c554ab7ebfab8a12d928059dc8f2d3ad27d1a` |
| 31 | `theorem` | [disjoint_ordT5Nhd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdConnectedComponent.lean/declarations/disjoint-ordt5nhd.md) | 167 | `result-track:d6c281bf185971e1390a7a76cefe3ad9845b8c243f19df6198bb6cf772123fd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=773eb5a48b6a59443c77f8bdbd6044513b29b44abcb1eee6392290598941e773 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant1c20001a76b00d21699b5515f78b7d124263d52097001e9515457f292d6c6c15.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdConnectedComponent/Variant1c20001a76b00d21699b5515f78b7d124263d52097001e9515457f292d6c6c15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
