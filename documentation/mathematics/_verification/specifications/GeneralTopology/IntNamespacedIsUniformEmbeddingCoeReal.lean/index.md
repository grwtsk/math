# Verification target: Int Namespaced Is Uniform Embedding Coe Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c66cf6ea80ffbff6a51794300a35fb818d653fb",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Int/Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/index.md) · [Full source](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c66cf6ea80ffbff6a51794300a35fb818d653fb`.

Source path: `GRWTSK/Topology/MetricTopology/Int/Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Int/Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.ConditionallyCompleteOrder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Discrete` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Archimedean` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-3.md) | 34 | `declaration-track:a9abbdf067cd9e7460cb4934f2a392c64a918d3ae5eaaefa18741beee1bc1d5c` |
| 2 | `theorem` | [dist_eq](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/dist-eq.md) | 37 | `result-track:4dbee4c6b3c6d6c5807859e79517be069437bf9780b5e8523d7fb99e542f33d1` |
| 3 | `theorem` | [dist_eq'](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/dist-eq-source-edition-2.md) | 39 | `result-track:d9c5ab5a40da742e782b4f17a00319f7f677851d19ec491e9a84a423edacff60` |
| 4 | `theorem` | [dist_cast_real](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/dist-cast-real.md) | 42 | `result-track:b54a7d144f123128870b952841fe5aac091d00e5242261261fd97d20a117d1fe` |
| 5 | `theorem` | [pairwise_one_le_dist](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/pairwise-one-le-dist.md) | 45 | `result-track:a00ad098befe21aad01c5a4d9e239790c1b6150a5141dbe02e27d2bd5dd6f35a` |
| 6 | `theorem` | [isUniformEmbedding_coe_real](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/isuniformembedding-coe-real.md) | 49 | `result-track:16ac0932c6664dd0dce60356d22a1582f7eb636a8f37580aa87ae52f56237c3f` |
| 7 | `theorem` | [isClosedEmbedding_coe_real](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/isclosedembedding-coe-real.md) | 52 | `result-track:5f2d7220b639d259ddd843e1b5f92179926fbf0e5b508b1489a445135a4afcf5` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/instance.md) | 55 | `declaration-track:2c9221caeb53b3176b581eeebec37dbfbd2ffad9a7f4faba1454feeffbffc371` |
| 9 | `theorem` | [preimage_ball](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/preimage-ball.md) | 57 | `result-track:32cc94d089783e674d475a2413f68c2ecd8f71bf779f3e81a083b9aef5216c39` |
| 10 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/preimage-closedball.md) | 59 | `result-track:619efe36d734b38b9608815baecc139c40c619866e036cc2247deebfb901f6a0` |
| 11 | `theorem` | [ball_eq_Ioo](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/ball-eq-ioo.md) | 61 | `result-track:d7d74178cebe48ed0d3db6e35df783989d9dff269b78b0d9448717feb9103855` |
| 12 | `theorem` | [closedBall_eq_Icc](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/closedball-eq-icc.md) | 64 | `result-track:b338170180a01f0773424d52b6f0cc06b90f0b685c79d6fc60c93a8e59bd5eef` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:7dcc67f840b862c9fcf549a008b967e6e603c18528c05ececc175195b812f1ed` |
| 14 | `theorem` | [cobounded_eq](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/cobounded-eq.md) | 73 | `result-track:ee6cacdb990ebe9da71d76142fc5667bc8770336f034bec709c4421850c6f7ad` |
| 15 | `theorem` | [cofinite_eq](../../../../GeneralTopology/IntNamespacedIsUniformEmbeddingCoeReal.lean/declarations/cofinite-eq.md) | 79 | `result-track:cba5b1453d288143ad33f2bc5c55c71a8a842b5586b0c7059374fff93021f31f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9282a67f5e1f7263d0985927dac45da403b4a40788be478efff615d4609cdea3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Int/Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Int/Varianteeb9e887b660f8c7b44eb85ae8a2a7eee17608c63fc21f1cce5cc011939af315.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
