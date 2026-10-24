# Verification target: GRWTSK.Topology.MetricTopology.Kuratowski.Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77f8e84459267b2ca0c9c8653a5f49cf3993022f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77f8e84459267b2ca0c9c8653a5f49cf3993022f`.

Source path: `GRWTSK/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Lp.lpSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [embeddingOfSubset](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/declarations/embeddingofsubset--dc00f724fb4fa9c89c11659c.md) | 44 | `declaration-track:dc00f724fb4fa9c89c11659c72ac5806f79557a7f08bcb56d15de05f8506d8b8` |
| 2 | `theorem` | [embeddingOfSubset_coe](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/declarations/embeddingofsubset-coe--739032c30cea8adc45266325.md) | 51 | `result-track:739032c30cea8adc45266325314e0374576d26a89b7ceb3cafd9b81c24f832b0` |
| 3 | `theorem` | [embeddingOfSubset_dist_le](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/declarations/embeddingofsubset-dist-le--e0de6f2499cca661738082e5.md) | 55 | `result-track:e0de6f2499cca661738082e51736d261ee2cb4110c016abfc35f7fb0efd60656` |
| 4 | `theorem` | [embeddingOfSubset_isometry](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/declarations/embeddingofsubset-isometry--0985247810761d34fc5a1df3.md) | 63 | `result-track:0985247810761d34fc5a1df37b2ab35bbd6e266c4633989190a510d86c309d48` |
| 5 | `theorem` | [exists_isometric_embedding](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/declarations/exists-isometric-embedding--2dec69d5f627671d679d47df.md) | 89 | `result-track:2dec69d5f627671d679d47dfe2defde52a2eb76217d187440cc7c67048848b10` |
| 6 | `def` | [kuratowskiEmbedding](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/declarations/kuratowskiembedding--a72d3ad1f5c5d778f605142b.md) | 108 | `declaration-track:a72d3ad1f5c5d778f605142bd3023db34a3e5ec846968790b180c1af3a241b6c` |
| 7 | `theorem` | [kuratowskiEmbedding.isometry](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/declarations/kuratowskiembedding-isometry--e70ee1829af9930e5a09e178.md) | 114 | `result-track:e70ee1829af9930e5a09e1784de1538b1ae4edc93d295f711e26bb1bce12063e` |
| 8 | `def` | [NonemptyCompacts.kuratowskiEmbedding](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/declarations/nonemptycompacts-kuratowskiembedding--80abe308d50b41e23d4fad7c.md) | 119 | `declaration-track:80abe308d50b41e23d4fad7ca986a8288dfc93d903e597eb0e33a90b554c82ff` |
| 9 | `theorem` | [LipschitzOnWith.extend_lp_infty](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variantce95fa69c58d7e01be80ed0bfa6a495738c4be077d0cb466d6917a182eb74081.lean/declarations/lipschitzonwith-extend-lp-infty--a4d1f1f6bda8b8fefcc0bf24.md) | 134 | `result-track:a4d1f1f6bda8b8fefcc0bf246015b5b2f50afc3ead76675d1f2c2123b312490d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
