# Verification target: GRWTSK.Topology.MetricTopology.Pi.Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9310b235fd5fe9592b1ac105d030574652642fc4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9310b235fd5fe9592b1ac105d030574652642fc4`.

Source path: `GRWTSK/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [pseudoMetricSpacePi](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/pseudometricspacepi--ba2793953c59a9941ee70560.md) | 39 | `declaration-track:ba2793953c59a9941ee70560b553fdb1a8560f2a7d0046dc8a227b54621919cf` |
| 2 | `lemma` | [nndist_pi_def](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/nndist-pi-def--75ef1e85a6b8fbead6bc65e4.md) | 56 | `result-track:75ef1e85a6b8fbead6bc65e4c0d97085424099f01b6b0c15425d24ac5ed65fad` |
| 3 | `lemma` | [dist_pi_def](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/dist-pi-def--6f437fc0c4a21558ecee30db.md) | 58 | `result-track:6f437fc0c4a21558ecee30dbf35ce7afd6496e5030f957b5ccd1e6d5a4de446d` |
| 4 | `lemma` | [nndist_pi_le_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/nndist-pi-le-iff--303e4ea68c36c31c29625acb.md) | 60 | `result-track:303e4ea68c36c31c29625acbf2b4eb442f8cb50f74cb5d81d4af3e6e8d8de3b3` |
| 5 | `lemma` | [nndist_pi_lt_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/nndist-pi-lt-iff--f4a0290293cf3918a8cb5239.md) | 63 | `result-track:f4a0290293cf3918a8cb52390d4fe7b909458b44e4b46bb7ad0e9ad6ff868f0d` |
| 6 | `lemma` | [nndist_pi_eq_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/nndist-pi-eq-iff--d3165b46e8e1e8795ff91b98.md) | 67 | `result-track:d3165b46e8e1e8795ff91b98c9461f8ce54ed3a1baabdf209769d2793bd8f2db` |
| 7 | `lemma` | [dist_pi_lt_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/dist-pi-lt-iff--27dfd0a5444ed45486488345.md) | 75 | `result-track:27dfd0a5444ed45486488345bfa97dc9ca7bf8aa272bb1361d20598bdcc914a1` |
| 8 | `lemma` | [dist_pi_le_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/dist-pi-le-iff--45a1e0d472b341208067b6b0.md) | 80 | `result-track:45a1e0d472b341208067b6b08208ccdb933d6ad7961461791024373b736a1bff` |
| 9 | `lemma` | [dist_pi_eq_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/dist-pi-eq-iff--f22bac8b68454ba30fc447a2.md) | 85 | `result-track:f22bac8b68454ba30fc447a29465f3e675f7f928816fa882775b07a4d56842de` |
| 10 | `lemma` | [dist_pi_le_iff'](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/dist-pi-le-iff--fae62eeacd45aa085f1cf18a.md) | 90 | `result-track:fae62eeacd45aa085f1cf18a4c1b065747c4694325b4fc234afb7d2a95d0d3a8` |
| 11 | `lemma` | [dist_pi_const_le](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/dist-pi-const-le--6634e9b60c061533b955251a.md) | 97 | `result-track:6634e9b60c061533b955251a9996c3f1001daa08879396f142696653dfa043af` |
| 12 | `lemma` | [nndist_pi_const_le](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/nndist-pi-const-le--9b062afbff940b2516f16a05.md) | 100 | `result-track:9b062afbff940b2516f16a05c65b7401213520304fbda4e997c3e12f5a300c49` |
| 13 | `lemma` | [dist_pi_const](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/dist-pi-const--7c6f365d7d2f3a3ca529eec5.md) | 104 | `result-track:7c6f365d7d2f3a3ca529eec5a921d722e453d579aa053b913d8e80ed2ab78cf4` |
| 14 | `lemma` | [nndist_pi_const](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/nndist-pi-const--8c25e0ed7434457a21b6ea90.md) | 108 | `result-track:8c25e0ed7434457a21b6ea904e2914785768037b5dc8d5330a601b459b770d91` |
| 15 | `lemma` | [nndist_le_pi_nndist](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/nndist-le-pi-nndist--33263e753dc943f012c7a06c.md) | 111 | `result-track:33263e753dc943f012c7a06c5d43fff6064da55c413c85c2d0c1ca692a575712` |
| 16 | `lemma` | [dist_le_pi_dist](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/dist-le-pi-dist--a0106d36b4a000773057dee7.md) | 115 | `result-track:a0106d36b4a000773057dee78549bc242447156a83b9cc14bec313c20afc36cf` |
| 17 | `lemma` | [ball_pi](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/ball-pi--28b3631a0864b0a7a3fe4597.md) | 120 | `result-track:28b3631a0864b0a7a3fe4597065ed108051984eded6999440a82a6a9c2ef5e49` |
| 18 | `lemma` | [ball_pi'](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/ball-pi--9b6b7c3cd94255b744e853e8.md) | 127 | `result-track:9b6b7c3cd94255b744e853e85f8743bf3f1a907d410669f77a428ba3d402f06b` |
| 19 | `lemma` | [closedBall_pi](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/closedball-pi--b5fbd9b2c0a00bdffee1351e.md) | 133 | `result-track:b5fbd9b2c0a00bdffee1351e4778831f5ab82b4e0862cae7689af0b9fb0c829b` |
| 20 | `lemma` | [closedBall_pi'](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/closedball-pi--095ed0d0d77c7e84ce1a8522.md) | 140 | `result-track:095ed0d0d77c7e84ce1a8522fc7ada41324cb0e4d4cb6222a61eb3ce83555b49` |
| 21 | `lemma` | [sphere_pi](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/sphere-pi--e7b6eb81f9c3bf55e2483bc8.md) | 146 | `result-track:e7b6eb81f9c3bf55e2483bc85caef54a409ac3ab0a6f2ce07f74edc43276b68e` |
| 22 | `lemma` | [Fin.nndist_insertNth_insertNth](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/fin-nndist-insertnth-insertnth--07e1c322123f1f6bfd6fc178.md) | 162 | `result-track:07e1c322123f1f6bfd6fc178ea5740c139046ea2201b51107cdd6f35e3130cf5` |
| 23 | `lemma` | [Fin.dist_insertNth_insertNth](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/fin-dist-insertnth-insertnth--de8f22f8207048d3c40ca1f4.md) | 168 | `result-track:de8f22f8207048d3c40ca1f4f696b08e01f78dea4397aaf24e518defd328d267` |
| 24 | `lemma` | [nndist_single_single](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/nndist-single-single--86976d295f119b423165624f.md) | 175 | `result-track:86976d295f119b423165624f93e3d57c17d246625b5e52215a2995fab0a705eb` |
| 25 | `lemma` | [dist_single_single](../../../../../mathematics/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/declarations/dist-single-single--6e6246e7154be24c813878f1.md) | 186 | `result-track:6e6246e7154be24c813878f105056076c3a2ecde43b9ee0700c9fa1bea55ae8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
