# Verification target: GRWTSK.Topology.MetricTopology.Congruence.Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bcf001da9bb53ca7c590508a2fbf33c149e7bcf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bcf001da9bb53ca7c590508a2fbf33c149e7bcf`.

Source path: `GRWTSK/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Congruent](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/congruent--c8423068a64647dff8725706.md) | 45 | `declaration-track:c8423068a64647dff8725706cdf689d536bc885f84b76d911705b91a0e72eee3` |
| 2 | `lemma` | [congruent_iff_edist_eq](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/congruent-iff-edist-eq--4d245f453d3032f7a71b8374.md) | 52 | `result-track:4d245f453d3032f7a71b8374df641572c7af3fd4761c48f7d80aa6a945a424cd` |
| 3 | `lemma` | [congruent_iff_pairwise_edist_eq](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/congruent-iff-pairwise-edist-eq--ad33aa1bef6ba6045fc02020.md) | 58 | `result-track:ad33aa1bef6ba6045fc020202819a537e6478d2e22eee481c3e2a494a091e2ff` |
| 4 | `lemma` | [refl](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/refl--70e4a79f1f9b461c187c1fad.md) | 82 | `result-track:70e4a79f1f9b461c187c1fadf97ff4f65d03117773ffc26a16718d86b7bad831` |
| 5 | `lemma` | [symm](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/symm--1c080def1a7779c51481d9c3.md) | 84 | `result-track:1c080def1a7779c51481d9c357b99d30630dfffa46f4f8dcce325a8fe73121da` |
| 6 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.Congruent.Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.congruent_comm](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/root-grwtsk-topology-metrictopology-congruent-variant5a6793f9b379d025deb--e56a530037876dd6223069f6.md) | 86 | `result-track:e56a530037876dd6223069f6599d2c6282e4d1a9b16815ca61d7e963a89328f0` |
| 7 | `lemma` | [trans](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/trans--be6c35e668e057553e84d148.md) | 89 | `result-track:be6c35e668e057553e84d14819d9d354ecc7cd383460addb2673ca412af32f1c` |
| 8 | `lemma` | [index_map](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/index-map--8a53acff443b4acb2b372114.md) | 93 | `result-track:8a53acff443b4acb2b3721140a948bec75fc99dd79d099345ae8771b3f3fcfb5` |
| 9 | `lemma` | [index_equiv](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/index-equiv--26b89aa4ab69446b6c4823f5.md) | 97 | `result-track:26b89aa4ab69446b6c4823f5aad9dc2c4f670fd19e5db54d5099c76fa5029034` |
| 10 | `lemma` | [congruent_iff_nndist_eq](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/congruent-iff-nndist-eq--aa3751c30edb7e275653ec83.md) | 112 | `result-track:aa3751c30edb7e275653ec831a05debabe35c58016958b93b2474bab7287ac3e` |
| 11 | `lemma` | [congruent_iff_pairwise_nndist_eq](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/congruent-iff-pairwise-nndist-eq--6b1401546abc14dcb8b51db4.md) | 118 | `result-track:6b1401546abc14dcb8b51db40db7be426d157d283c0de86f787ce3981aa59d5d` |
| 12 | `lemma` | [congruent_iff_dist_eq](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/congruent-iff-dist-eq--128174d33e8b64196e70a0ba.md) | 124 | `result-track:128174d33e8b64196e70a0ba33fa3dcc7fdecd8a2b32ac21796d7586e62f09f0` |
| 13 | `lemma` | [congruent_iff_pairwise_dist_eq](../../../../../mathematics/Topology/MetricTopology/Congruence/Variant1cb4b835c0edad49389c17d1a45bc658f5cf1333657d83e90d50bc441c149ce1.lean/declarations/congruent-iff-pairwise-dist-eq--e72195a994a599baed19f435.md) | 131 | `result-track:e72195a994a599baed19f435c29922f8100f16e6844618f4b4fbb4c424cfacd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
