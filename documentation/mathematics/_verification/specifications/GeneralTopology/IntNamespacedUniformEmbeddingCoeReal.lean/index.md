# Verification target: Int Namespaced Uniform Embedding Coe Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbcd6d442c6ef963257ac0fe84e4f7b389e52053",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Int/Variantca939413741a7168fb6d6aba90e69a427cf366bd444e8705e15712c3de1fc97b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/index.md) · [Full source](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbcd6d442c6ef963257ac0fe84e4f7b389e52053`.

Source path: `GRWTSK/Topology/MetricTopology/Int/Variantca939413741a7168fb6d6aba90e69a427cf366bd444e8705e15712c3de1fc97b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Int/Variantca939413741a7168fb6d6aba90e69a427cf366bd444e8705e15712c3de1fc97b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Archimedean` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-2.md) | 33 | `declaration-track:af862ae8d6818d71ac35e7ad7149a3d618ef586ac495da7750b9e2d40c4d4cb8` |
| 2 | `theorem` | [dist_eq](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/dist-eq-source-edition-2.md) | 36 | `result-track:ed767a39ba7849706fd9fde0e212ae30e0f232ac4fe9a60cff6bba1d16e51847` |
| 3 | `theorem` | [dist_eq'](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/dist-eq.md) | 39 | `result-track:e4fe8d9ad4a2229a3a34b0c0250a0bb2597399ba99f41fe09974af8a45a3698c` |
| 4 | `theorem` | [dist_cast_real](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/dist-cast-real.md) | 42 | `result-track:41d44bfaa0c3c800ee980a5bdd2a80c288c56744d2db9c83957a466c8727c05a` |
| 5 | `theorem` | [pairwise_one_le_dist](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/pairwise-one-le-dist.md) | 46 | `result-track:fe4ff5871cf2d233b8733776ac43853fa5cb19e312e67d6610921ebf011a4e6b` |
| 6 | `theorem` | [uniformEmbedding_coe_real](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/uniformembedding-coe-real.md) | 51 | `result-track:06a3982afc70bb2c4069bb5d2acfb8cc1041ac27e639f987c5cdf093233e0ab9` |
| 7 | `theorem` | [closedEmbedding_coe_real](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/closedembedding-coe-real.md) | 55 | `result-track:a33f8b5941dc4b516b3c9725e591ca810a48340ffd11ace5338ee7ac64a61d54` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/instance-source-edition-3.md) | 59 | `declaration-track:bcef21eea1a76a7feab32b8ac58ecb1e5ac76ef003d6ed4c7c1755e4e91da5e0` |
| 9 | `theorem` | [preimage_ball](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/preimage-ball.md) | 61 | `result-track:82bd0d14937657e0628e0eef423cfed67d00d97eb557a0790b5079bb7a487e5a` |
| 10 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/preimage-closedball.md) | 64 | `result-track:09f48d6665ec4c846fea380e6860345cacf38645291cec3c6bed5966d06c6ce4` |
| 11 | `theorem` | [ball_eq_Ioo](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/ball-eq-ioo.md) | 67 | `result-track:bf7923ad10fcb0a1c4dc96385ac060867d73669856d3f8474ad4a6f730634f0f` |
| 12 | `theorem` | [closedBall_eq_Icc](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/closedball-eq-icc.md) | 71 | `result-track:2bb23cdba132949820aeef76eeca4c095c4e246d8293fb854637e14116e67b4a` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/instance.md) | 75 | `declaration-track:6bc6c03eac3ba5d2fc63f7d8101c52cf9c0118260d9c3a315800a850dc9d7d09` |
| 14 | `theorem` | [cocompact_eq](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/cocompact-eq.md) | 81 | `result-track:2b4d5260a9df76d1c971d9273a26e865891bca57a34d90c6e53d07b5568428f0` |
| 15 | `theorem` | [cofinite_eq](../../../../GeneralTopology/IntNamespacedUniformEmbeddingCoeReal.lean/declarations/cofinite-eq.md) | 87 | `result-track:67dfd441f5121aff361e8933843357e42e21441e037f3d8c95837d358f9ddbf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1485afe598f3ef8f6c7d096871d2e2009f1fa716cdf58775068ab2d983641109 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Int/Variantca939413741a7168fb6d6aba90e69a427cf366bd444e8705e15712c3de1fc97b.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Int/Variantca939413741a7168fb6d6aba90e69a427cf366bd444e8705e15712c3de1fc97b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
