# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d83cb25f9216848b201ca8f594740746f7af234",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d83cb25f9216848b201ca8f594740746f7af234`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GroupSeminormClass.toSeminormedGroup](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/declarations/groupseminormclass-toseminormedgroup--65ab24fa7a8c3d4f66a7d8e0.md) | 25 | `declaration-track:65ab24fa7a8c3d4f66a7d8e0f26b9963c48207130bc0e3548e9c87387679c24b` |
| 2 | `lemma` | [GroupSeminormClass.toSeminormedGroup_norm_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/declarations/groupseminormclass-toseminormedgroup-norm-eq--8ed1de2550bf0cfee271b391.md) | 35 | `result-track:8ed1de2550bf0cfee271b3914531ce16d8be5efb82dc61825c3715cf19a54a45` |
| 3 | `abbrev` | [GroupSeminormClass.toSeminormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/declarations/groupseminormclass-toseminormedcommgroup--74812a6a820ba55a60b042ef.md) | 42 | `declaration-track:74812a6a820ba55a60b042efbe68e5aa2f9171ce331bd5c94c4b15eb02ede837` |
| 4 | `lemma` | [GroupSeminormClass.toSeminormedCommGroup_norm_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/declarations/groupseminormclass-toseminormedcommgroup-norm-eq--3a8cd80e93ea3bda4fca9388.md) | 48 | `result-track:3a8cd80e93ea3bda4fca938847f021581231fcbd988c19a7a7769d02174892fe` |
| 5 | `abbrev` | [GroupNormClass.toNormedGroup](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/declarations/groupnormclass-tonormedgroup--c109ac78ba63345d754f66fc.md) | 55 | `declaration-track:c109ac78ba63345d754f66fc10fd5bffefce894bd0b0f0669e39ea563576637c` |
| 6 | `lemma` | [GroupNormClass.toNormedGroup_norm_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/declarations/groupnormclass-tonormedgroup-norm-eq--7800a55e1052cdcf7f5a5c57.md) | 61 | `result-track:7800a55e1052cdcf7f5a5c570cc78793a4c29cfa75631cfdf9520f74d8a60715` |
| 7 | `abbrev` | [GroupNormClass.toNormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/declarations/groupnormclass-tonormedcommgroup--9b257f947be5a3b135a4a48b.md) | 68 | `declaration-track:9b257f947be5a3b135a4a48b32a7c0154bdc80ad6fc75814cce81fc5e84b8b1d` |
| 8 | `lemma` | [GroupNormClass.toNormedCommGroup_norm_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant5e4bb942d43cdc90f05d42f7f4c193fb45de0748838e0f309be54430f77f8a3f.lean/declarations/groupnormclass-tonormedcommgroup-norm-eq--76637881937327df4b91b811.md) | 74 | `result-track:76637881937327df4b91b811d3f5d32a0c75c83fa6a0b43b789ed677d10313c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
