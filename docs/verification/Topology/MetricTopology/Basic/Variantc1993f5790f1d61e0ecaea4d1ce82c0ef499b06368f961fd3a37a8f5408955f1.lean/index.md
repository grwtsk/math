# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e5d5067fb70f95a7d75edc1a399ad1ab3f499e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e5d5067fb70f95a7d75edc1a399ad1ab3f499e`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean.json)

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
| 1 | `class` | [IsUltrametricDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/isultrametricdist--9d0215cd6f001749f78ef44c.md) | 46 | `declaration-track:9d0215cd6f001749f78ef44c3c0d9be39be5500809cadb7005d03060fbb16483` |
| 2 | `lemma` | [dist_triangle_max](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/dist-triangle-max--5d42ab5e3665713e671db8e2.md) | 53 | `result-track:5d42ab5e3665713e671db8e2a944bc2ad7b401717e7d28573123d1f6437d2fdd` |
| 3 | `lemma` | [dist_eq_max_of_dist_ne_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/dist-eq-max-of-dist-ne-dist--f31408cc9b0856c814fffa13.md) | 59 | `result-track:f31408cc9b0856c814fffa13117e6420ebbdf84208af42e0d795eeea0b4b60f2` |
| 4 | `instance` | [subtype](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/subtype--5853abd3cd2543372e3f3614.md) | 70 | `declaration-track:5853abd3cd2543372e3f3614ae3d08360613d720a3bb40fc69a4c370486e51f4` |
| 5 | `lemma` | [ball_eq_of_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/ball-eq-of-mem--dfc4319d1bcefd88b5ce3881.md) | 73 | `result-track:dfc4319d1bcefd88b5ce38819780a32f3899574ed10e4f4000c1359457c645cf` |
| 6 | `lemma` | [ball_subset_trichotomy](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/ball-subset-trichotomy--4e8ef1ef8a9c4fb3710ebc8a.md) | 79 | `result-track:4e8ef1ef8a9c4fb3710ebc8ae77f3c6cdc718fbd979a8e0032bb27f92ebec8a1` |
| 7 | `lemma` | [ball_eq_or_disjoint](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/ball-eq-or-disjoint--f8965622f37e7c2a1faa3457.md) | 89 | `result-track:f8965622f37e7c2a1faa34573756dfdb5fad8e8a4abfbfd75034d728703a993f` |
| 8 | `lemma` | [closedBall_eq_of_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/closedball-eq-of-mem--7c9fbeeb459f10fe496357b7.md) | 96 | `result-track:7c9fbeeb459f10fe496357b7d76083414b346007cbd1beefb5215de77b524954` |
| 9 | `lemma` | [closedBall_subset_trichotomy](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/closedball-subset-trichotomy--0a4c4fc41ea86f818e8bf4b3.md) | 103 | `result-track:0a4c4fc41ea86f818e8bf4b30d3b4104a0643b92615054d8c6ca37da0d260dc7` |
| 10 | `lemma` | [isClosed_ball](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/isclosed-ball--925b8ba120bdaab7d2befa1f.md) | 115 | `result-track:925b8ba120bdaab7d2befa1f52a5cac222e7145642c5ddb10df631d03aab0351` |
| 11 | `lemma` | [isClopen_ball](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/isclopen-ball--11219f3bfbe63dc46e71d2a3.md) | 131 | `result-track:11219f3bfbe63dc46e71d2a34d6082ccc55c74e1e6faef477f9796a127718c7e` |
| 12 | `lemma` | [frontier_ball_eq_empty](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/frontier-ball-eq-empty--43db2ecad654382d378c12ff.md) | 133 | `result-track:43db2ecad654382d378c12ff4f39dd6ee02f3f25e29f420205f609a6cc1dd61b` |
| 13 | `lemma` | [closedBall_eq_or_disjoint](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/closedball-eq-or-disjoint--674f993667d26b71a499f906.md) | 136 | `result-track:674f993667d26b71a499f906e295369498d1340754cad57720da067d1b4b7fe3` |
| 14 | `lemma` | [isOpen_closedBall](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/isopen-closedball--0b91de4ebcfdc88dc0e41946.md) | 144 | `result-track:0b91de4ebcfdc88dc0e419461237829291c8ba7d1e75a7ecb025f9084efdb862` |
| 15 | `lemma` | [isClopen_closedBall](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/isclopen-closedball--1021b43fc9e64a136c7c1215.md) | 159 | `result-track:1021b43fc9e64a136c7c12155221168d4b098cadd50c967bb8b622af899f6284` |
| 16 | `lemma` | [frontier_closedBall_eq_empty](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/frontier-closedball-eq-empty--64b39cd59d3eb90059c703f5.md) | 162 | `result-track:64b39cd59d3eb90059c703f58a63334ff266ddd64c4b6914a06565fb5c02f3b5` |
| 17 | `lemma` | [isOpen_sphere](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/isopen-sphere--9461140b75853dd72c31fa1f.md) | 165 | `result-track:9461140b75853dd72c31fa1f48befdef22411622abd0a0e3efaef695482f2c57` |
| 18 | `lemma` | [isClopen_sphere](../../../../../mathematics/Topology/MetricTopology/Basic/Variantc1993f5790f1d61e0ecaea4d1ce82c0ef499b06368f961fd3a37a8f5408955f1.lean/declarations/isclopen-sphere--5985607567760ba9dc2bc72e.md) | 169 | `result-track:5985607567760ba9dc2bc72e1f2b07d0edae5770af5be20e8477d1cc87e7005b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
