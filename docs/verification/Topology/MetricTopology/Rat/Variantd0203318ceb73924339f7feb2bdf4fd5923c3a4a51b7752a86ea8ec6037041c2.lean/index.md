# Verification target: GRWTSK.Topology.MetricTopology.Rat.Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86e8673608f02464a2406cdf8b26c74397d8acb2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86e8673608f02464a2406cdf8b26c74397d8acb2`.

Source path: `GRWTSK/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Archimedean` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Int` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Nat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/instance--a0313dcb15df2903209f7865.md) | 25 | `declaration-track:a0313dcb15df2903209f786592addf7e1c216a9df61364da502c7ad897547a71` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/dist-eq--171cba1fc0db66eeaa6fa06e.md) | 28 | `result-track:171cba1fc0db66eeaa6fa06e296a9809d754e008085001b65291aebb00952db2` |
| 3 | `theorem` | [dist_cast](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/dist-cast--a4db5b79faf6b5f37e76a2c0.md) | 32 | `result-track:a4db5b79faf6b5f37e76a2c0c45967e9812625263dde6fd6b29e1a3c680dbde8` |
| 4 | `theorem` | [uniformContinuous_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/uniformcontinuous-coe-real--8bf7dbe15885c2060e0d4620.md) | 36 | `result-track:8bf7dbe15885c2060e0d4620acdaea5eba7f75c337de9e1826e876368d25852e` |
| 5 | `theorem` | [uniformEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/uniformembedding-coe-real--54719b435bba9639e1e68412.md) | 40 | `result-track:54719b435bba9639e1e68412a55d1a5a64727c3c82bbe685c82de94c5ada9b76` |
| 6 | `theorem` | [denseEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/denseembedding-coe-real--b9e4dbddf77edab9277390ee.md) | 44 | `result-track:b9e4dbddf77edab9277390eed0bb65c0e6883419a4b3e184de7615b75c0b08e9` |
| 7 | `theorem` | [embedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/embedding-coe-real--0c7438e41f4cf3d51a90f9da.md) | 48 | `result-track:0c7438e41f4cf3d51a90f9da47142842e0585acba9197f073e65677841b10525` |
| 8 | `theorem` | [continuous_coe_real](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/continuous-coe-real--b86d9ddd9b05a4a511c9bc92.md) | 52 | `result-track:b86d9ddd9b05a4a511c9bc9299ee9bae81cf2ccb8ebbc74580cefa2b9934d216` |
| 9 | `theorem` | [Nat.dist_cast_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/nat-dist-cast-rat--49dba1d2437a43dbe0f6f88b.md) | 59 | `result-track:49dba1d2437a43dbe0f6f88b0a2893fb4b50da83e104a823710abdb708634e31` |
| 10 | `theorem` | [Nat.uniformEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/nat-uniformembedding-coe-rat--11f046123a929d5dbfaba333.md) | 63 | `result-track:11f046123a929d5dbfaba33319e7047ce212a344b94c22221ee7e85c5be23af3` |
| 11 | `theorem` | [Nat.closedEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/nat-closedembedding-coe-rat--438aa1f9b341acb1c968e9f6.md) | 67 | `result-track:438aa1f9b341acb1c968e9f6ad4c2c1476c3971e101a67d300d7cd77272a19b9` |
| 12 | `theorem` | [Int.dist_cast_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/int-dist-cast-rat--39b0e74e78aa261544db17b4.md) | 72 | `result-track:39b0e74e78aa261544db17b4886d81816a31f8150c774133f671b544ebd47d8b` |
| 13 | `theorem` | [Int.uniformEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/int-uniformembedding-coe-rat--c1b4ea97a826fb2f5d3078d9.md) | 76 | `result-track:c1b4ea97a826fb2f5d3078d9e6a273aaa6248bdfa2cc2e486b29ec48c2d4d59e` |
| 14 | `theorem` | [Int.closedEmbedding_coe_rat](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/int-closedembedding-coe-rat--158ab0ce9af2f6fce730d442.md) | 80 | `result-track:158ab0ce9af2f6fce730d442a683791cf135950cec193e5b3c3e9212a989350f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/instance--8f0f07a079d707d3fac782a9.md) | 86 | `declaration-track:8f0f07a079d707d3fac782a9816ec4b07e71fc71c8cb5c59b5a272d4bee89685` |
| 16 | `theorem` | [uniformContinuous_add](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/uniformcontinuous-add--f39405bf171dc57ae0446982.md) | 88 | `result-track:f39405bf171dc57ae04469822dc47f2e5011bea78dd6063718ad58cbcb820327` |
| 17 | `theorem` | [uniformContinuous_neg](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/uniformcontinuous-neg--9fc2f0334ad5956f8cc89d21.md) | 95 | `result-track:9fc2f0334ad5956f8cc89d2156f2ad47e02b8ce4558dc9d4ea3ff36e1423a0fa` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/instance--55bd722e1c9cff9a64dbbca5.md) | 100 | `declaration-track:55bd722e1c9cff9a64dbbca5c1070e869656820da9a5dcaacdcb44bba1e79449` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/instance--e3b834b34356a9040f4b3334.md) | 103 | `declaration-track:e3b834b34356a9040f4b3334401884bab6404dcc03cb95f014a515c5ec5477be` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/instance--ec65b6894144bdad5e2fbb48.md) | 105 | `declaration-track:ec65b6894144bdad5e2fbb4800961a0badf812e57f8f1b7d097d066c07eddca0` |
| 21 | `theorem` | [uniformContinuous_abs](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/uniformcontinuous-abs--51bd208b5a3fb628921aba37.md) | 107 | `result-track:51bd208b5a3fb628921aba37733276966a7afcebc3678d621c1f67ce6ae53dfb` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/instance--ed15b385625d01346a695de2.md) | 113 | `declaration-track:ed15b385625d01346a695de224e583ee453d01b746e92c3958b25aa225e346a7` |
| 23 | `theorem` | [continuous_mul](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/continuous-mul--6797738a0c49022f39f29798.md) | 116 | `result-track:6797738a0c49022f39f2979853caf55edd2aec7a857a04d33d6dac00adbb5232` |
| 24 | `theorem` | [totallyBounded_Icc](../../../../../mathematics/Topology/MetricTopology/Rat/Variantd0203318ceb73924339f7feb2bdf4fd5923c3a4a51b7752a86ea8ec6037041c2.lean/declarations/totallybounded-icc--31ee22ef463ac1ce669eecc9.md) | 119 | `result-track:31ee22ef463ac1ce669eecc977c48d0e3b2d43398bf1946b3269e6ade84b54c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
