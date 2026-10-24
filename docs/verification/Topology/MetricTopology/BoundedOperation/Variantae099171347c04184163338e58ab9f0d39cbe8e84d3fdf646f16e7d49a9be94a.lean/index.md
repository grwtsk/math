# Verification target: GRWTSK.Topology.MetricTopology.BoundedOperation.Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12a9f5bed44c1ef73672c570df47111091c6ba87",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12a9f5bed44c1ef73672c570df47111091c6ba87`.

Source path: `GRWTSK/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BoundedSub](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/boundedsub--dc4f70d8c08f1ccbb6246e41.md) | 46 | `declaration-track:dc4f70d8c08f1ccbb6246e416252b0d1d7ecc9b83029f5944c3d8467f7da6669` |
| 2 | `lemma` | [isBounded_sub](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/isbounded-sub--636ee24191572b652d9c1232.md) | 52 | `result-track:636ee24191572b652d9c1232633b870604ad0d5675872a801de352f384ed6782` |
| 3 | `lemma` | [sub_bounded_of_bounded_of_bounded](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/sub-bounded-of-bounded-of-bounded--4dbb769791cb4ab7acb89247.md) | 56 | `result-track:4dbb769791cb4ab7acb8924727fb1d494fd15c1c3db2817fe4d19664d485c3b8` |
| 4 | `lemma` | [boundedSub_of_lipschitzWith_sub](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/boundedsub-of-lipschitzwith-sub--effa4e319ee2699f0b50ae8a.md) | 67 | `result-track:effa4e319ee2699f0b50ae8a862e9d71464e5cb455da4ae4f68e021ec35ab513` |
| 5 | `class` | [BoundedAdd](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/boundedadd--d88bbffa21a63175ac855a82.md) | 94 | `declaration-track:d88bbffa21a63175ac855a824d0b7ea8979a65396950eea3b7ebc4290e3a2727` |
| 6 | `class` | [BoundedMul](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/boundedmul--b1a5e8924fcf009266ea7eba.md) | 102 | `declaration-track:b1a5e8924fcf009266ea7eba8b65e3e56689b81b93934a81e8900722dcbe323e` |
| 7 | `lemma` | [isBounded_mul](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/isbounded-mul--d658410692dcd348b90d3ebe.md) | 109 | `result-track:d658410692dcd348b90d3ebe870e712e0285ab142a4f50c071f3dd4aa4596e45` |
| 8 | `lemma` | [isBounded_pow](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/isbounded-pow--9cf35b63c583f5c7db80eedf.md) | 114 | `result-track:9cf35b63c583f5c7db80eedfb3800d3a3f135b51c26f96fb79576f4041ae6df5` |
| 9 | `lemma` | [mul_bounded_of_bounded_of_bounded](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/mul-bounded-of-bounded-of-bounded--a8bc01bf7a72e760be6a9ee2.md) | 134 | `result-track:a8bc01bf7a72e760be6a9ee2bfe0338ee6b55132b4fe6ae1daf6f04371792020` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/instance--da8e339fd2ff6d5d38b7b888.md) | 146 | `declaration-track:da8e339fd2ff6d5d38b7b8882a4e57e11b869f84334660adb989ebc65a0e5a09` |
| 11 | `lemma` | [SeminormedAddCommGroup.lipschitzWith_sub](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/seminormedaddcommgroup-lipschitzwith-sub--9a3eef98397a769145cf56ad.md) | 168 | `result-track:9a3eef98397a769145cf56ad3b59be541f75aa731fb594793528350167faf580` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/instance--b59f7b7a1f99ea16e994e956.md) | 173 | `declaration-track:b59f7b7a1f99ea16e994e956fc9118aaf663af5ea3da5d753650846b94c68340` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/instance--d082130807ebb2aededec0f6.md) | 184 | `declaration-track:d082130807ebb2aededec0f6e30486c70ebd04107af8ff3ab41ee647b6045538` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/instance--e979cfcfd1f40fea8453da34.md) | 212 | `declaration-track:e979cfcfd1f40fea8453da34adf9dcabc54fb10e50c45214bb6dd00afc0d3c0b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/BoundedOperation/Variantae099171347c04184163338e58ab9f0d39cbe8e84d3fdf646f16e7d49a9be94a.lean/declarations/instance--d6f31281fc908ccc911353e7.md) | 215 | `declaration-track:d6f31281fc908ccc911353e75982e29b70273ef86d6245de38663b1a5f0bce87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
