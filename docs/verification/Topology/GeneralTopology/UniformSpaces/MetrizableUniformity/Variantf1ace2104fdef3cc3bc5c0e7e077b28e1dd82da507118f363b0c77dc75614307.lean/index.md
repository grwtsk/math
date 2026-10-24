# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.MetrizableUniformity.Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4038154efd34bb3a3b623cb1e4ae7867efca27fe",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4038154efd34bb3a3b623cb1e4ae7867efca27fe`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Metrizable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/declarations/ofprenndist--efb6c7b2910202960524b68d.md) | 57 | `declaration-track:efb6c7b2910202960524b68d00906a745399048cfaabf0dfd43abc8c6c8e3ee7` |
| 2 | `theorem` | [dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/declarations/dist-ofprenndist--1a3388c09acb743d86914398.md) | 87 | `result-track:1a3388c09acb743d86914398da8df774b68761abee0daeb303c3b2bc0e4087f0` |
| 3 | `theorem` | [dist_ofPreNNDist_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/declarations/dist-ofprenndist-le--8496ec2d02c4d0705cba622d.md) | 95 | `result-track:8496ec2d02c4d0705cba622d0fbf9cd20e0fae8a6b44cdcc6c15c2f79d48749a` |
| 4 | `theorem` | [le_two_mul_dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/declarations/le-two-mul-dist-ofprenndist--02d55a690451c4f18ce004b7.md) | 108 | `result-track:02d55a690451c4f18ce004b7408e8c5c898563975174b162ecbe854dc22ecd2f` |
| 5 | `theorem` | [UniformSpace.metrizable_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/declarations/uniformspace-metrizable-uniformity--903774a28209d13b10d5cc19.md) | 186 | `result-track:903774a28209d13b10d5cc195bb413c805ae741df5e4d6252fd01fcf27067cef` |
| 6 | `def` | [UniformSpace.pseudoMetricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/declarations/uniformspace-pseudometricspace--6f8e2cc7b7ba0fe59c1f01f0.md) | 257 | `declaration-track:6f8e2cc7b7ba0fe59c1f01f0eba900c538e1e2867ef26b0d51776a7e0eb241fa` |
| 7 | `def` | [UniformSpace.metricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/declarations/uniformspace-metricspace--aa8153ab8a580265f515574e.md) | 264 | `declaration-track:aa8153ab8a580265f515574e30f8fdbf8b7142a216889d8c9e4729f5f6382617` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/declarations/instance--e186a05442861e54f5520792.md) | 270 | `declaration-track:e186a05442861e54f5520792ad02d5b9af76b9a8a9384759707fb675dbbb38a9` |
| 9 | `theorem` | [UniformSpace.metrizableSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantf1ace2104fdef3cc3bc5c0e7e077b28e1dd82da507118f363b0c77dc75614307.lean/declarations/uniformspace-metrizablespace--7437f6ff7fd85637a4f37cf1.md) | 278 | `result-track:7437f6ff7fd85637a4f37cf1b321410073f88b35c8d980a30206d6af6b0155e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
