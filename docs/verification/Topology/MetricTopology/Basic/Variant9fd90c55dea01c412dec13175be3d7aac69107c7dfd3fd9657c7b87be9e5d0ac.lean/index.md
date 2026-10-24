# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cb725b1cf3d27266a6c5b51392ffe0cfcd6a7ea",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cb725b1cf3d27266a6c5b51392ffe0cfcd6a7ea`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dist_le_Ico_sum_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/dist-le-ico-sum-dist--c532efbe3eb510e6783e989a.md) | 28 | `result-track:c532efbe3eb510e6783e989a65122dfe8c52b685623b90bea1b3fa60fd98330c` |
| 2 | `theorem` | [dist_le_range_sum_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/dist-le-range-sum-dist--e534bd18bb9275638e0b7c21.md) | 40 | `result-track:e534bd18bb9275638e0b7c2147a87c5a44689b5899e93396ede6d648b078b8a3` |
| 3 | `theorem` | [dist_le_Ico_sum_of_dist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/dist-le-ico-sum-of-dist-le--9d97721c6a3f1f160385364e.md) | 46 | `result-track:9d97721c6a3f1f160385364e956da53f34352113de2fd3b0e5c05b6852f6701d` |
| 4 | `theorem` | [dist_le_range_sum_of_dist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/dist-le-range-sum-of-dist-le--e4f6a16b5f03035621f46bb5.md) | 54 | `result-track:e4f6a16b5f03035621f46bb5e0711d3ead6df968393cd75ef513551b2029b2dc` |
| 5 | `theorem` | [isUniformInducing_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/isuniforminducing-iff--35725f6d577c027338488d8d.md) | 63 | `result-track:35725f6d577c027338488d8d8fd038b187ea38f4353309cf9816e646624be3ce` |
| 6 | `theorem` | [isUniformEmbedding_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/isuniformembedding-iff--639b0130f37d875f6a313173.md) | 70 | `result-track:639b0130f37d875f6a31317382ce9a4d773627f4270a114b8724a156ad1cd24f` |
| 7 | `theorem` | [controlled_of_isUniformEmbedding](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/controlled-of-isuniformembedding--97b57e00dbdd2dffc6804b30.md) | 77 | `result-track:97b57e00dbdd2dffc6804b30702e02cae79949707ab5c2ec2d97ba4a9af87e6b` |
| 8 | `theorem` | [totallyBounded_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/totallybounded-iff--cea0eddddff174aa59c83174.md) | 83 | `result-track:cea0eddddff174aa59c831742c4d24600ec1231c1ec21a9840fcc4db5f793162` |
| 9 | `theorem` | [totallyBounded_of_finite_discretization](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/totallybounded-of-finite-discretization--69d7b22ba193a7751c94fd94.md) | 89 | `result-track:69d7b22ba193a7751c94fd944c3963e340a401434c5fe80b86c331dde97df754` |
| 10 | `theorem` | [finite_approx_of_totallyBounded](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/finite-approx-of-totallybounded--62a2de84ad7e81f1a9c19806.md) | 107 | `result-track:62a2de84ad7e81f1a9c19806fa29602e4e9cec674f56defd7899bf0ade9c9ff9` |
| 11 | `theorem` | [tendstoUniformlyOnFilter_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/tendstouniformlyonfilter-iff--d1a21e85c07fa72317a1b98a.md) | 114 | `result-track:d1a21e85c07fa72317a1b98ac463782e755a908ff6b23acd43bbf681cdde6ab3` |
| 12 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/tendstolocallyuniformlyon-iff--3c615d57e40e452febfebfca.md) | 122 | `result-track:3c615d57e40e452febfebfcacdc391d681e954df8dfa6f89eede3fef1dffc12e` |
| 13 | `theorem` | [tendstoUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/tendstouniformlyon-iff--a789b57eb4d979c98bc11694.md) | 132 | `result-track:a789b57eb4d979c98bc11694c95dc1aa32b5e57fb2270c2ee927ab9a5684ee4a` |
| 14 | `theorem` | [tendstoLocallyUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/tendstolocallyuniformly-iff--67d86c5c7d57e727081a10e8.md) | 139 | `result-track:67d86c5c7d57e727081a10e845e077eb6a3afcdf934f0a49aa7bdc968076dd0b` |
| 15 | `theorem` | [tendstoUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/tendstouniformly-iff--1b0d78c9cf7fcf92720918dc.md) | 147 | `result-track:1b0d78c9cf7fcf92720918dc5ac7b3d5644f64411e66fa25f1bf7f8e97179fdd` |
| 16 | `theorem` | [cauchy_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/cauchy-iff--1fcdefa7ae541f60d29d33f7.md) | 152 | `result-track:1fcdefa7ae541f60d29d33f7d354459521b4dfb23610cb69a07cadcb92465fcf` |
| 17 | `theorem` | [exists_ball_inter_eq_singleton_of_mem_discrete](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/exists-ball-inter-eq-singleton-of-mem-discrete--78acff9ef701c634f60e9dae.md) | 160 | `result-track:78acff9ef701c634f60e9dae1878dd74cdfc6215f7cbf86d8ff2c72639cf1516` |
| 18 | `theorem` | [exists_closedBall_inter_eq_singleton_of_discrete](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/exists-closedball-inter-eq-singleton-of-discrete--f9c362275be115979cc49469.md) | 166 | `result-track:f9c362275be115979cc494694cf6de39f5eff3ba80fae88af984c00432879e3b` |
| 19 | `theorem` | [Metric.inseparable_iff_nndist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/metric-inseparable-iff-nndist--7a535601c1451c2a2640afe7.md) | 174 | `result-track:7a535601c1451c2a2640afe7b6ce4ea85e72cce06cea779597f275f10e1e775d` |
| 20 | `theorem` | [Metric.inseparable_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/metric-inseparable-iff--428d82c2fcfb73038bde3a6b.md) | 179 | `result-track:428d82c2fcfb73038bde3a6b3fd7802dfc92dc8f76f9e4f6455dbc07a6afbe92` |
| 21 | `theorem` | [tendsto_nhds_unique_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/tendsto-nhds-unique-dist--51748a941ee781ec934e93dc.md) | 185 | `result-track:51748a941ee781ec934e93dc07bf6926508e33cc3ae32b5e26218b0a6abcfe0f` |
| 22 | `theorem` | [cauchySeq_iff_tendsto_dist_atTop_0](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/cauchyseq-iff-tendsto-dist-attop-0--0c210e3ea1a0953cb5445b7d.md) | 191 | `result-track:0c210e3ea1a0953cb5445b7dcb11a19431d47742f01c64b6409a588b337688ad` |
| 23 | `lemma` | [IsInducing.isSeparable_preimage](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/isinducing-isseparable-preimage--4f665b54859ba3377dfe3804.md) | 202 | `result-track:4f665b54859ba3377dfe3804d90b3405e02d90e4b30b8e885b5761ff9ff81abc` |
| 24 | `theorem` | [IsEmbedding.isSeparable_preimage](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/isembedding-isseparable-preimage--3d349d4861f32e779010540e.md) | 214 | `result-track:3d349d4861f32e779010540e7e451feb5c44004ff272c69ddc7bfe021c0b1ab8` |
| 25 | `theorem` | [IsCompact.isSeparable](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/iscompact-isseparable--ec77b724d0950004441488ef.md) | 224 | `result-track:ec77b724d0950004441488efc515bf7444a6822f1968c9918134ece625943bdd` |
| 26 | `theorem` | [secondCountable_of_almost_dense_set](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/secondcountable-of-almost-dense-set--2f8f036d89aa399a477368ad.md) | 236 | `result-track:2f8f036d89aa399a477368ad3ee5fa32387119c1e1eca0b43b5e71e031488e35` |
| 27 | `theorem` | [finite_cover_balls_of_compact](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/finite-cover-balls-of-compact--d61828e232eb0bf5c0b5d7fb.md) | 254 | `result-track:d61828e232eb0bf5c0b5d7fbe7ec3d224b3fb9d3ae9d05d424fe4d3041b0e607` |
| 28 | `lemma` | [exists_finite_cover_balls_of_isCompact_closure](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/exists-finite-cover-balls-of-iscompact-closure--ec95ba6cb43e79a580f6fadb.md) | 263 | `result-track:ec95ba6cb43e79a580f6fadb7971d861cc0dc9f36b61fb3dd85976fd6b743c43` |
| 29 | `theorem` | [ContinuousOn.isSeparable_image](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9fd90c55dea01c412dec13175be3d7aac69107c7dfd3fd9657c7b87be9e5d0ac.lean/declarations/continuouson-isseparable-image--50cea51c5847742b9e3fb0a6.md) | 273 | `result-track:50cea51c5847742b9e3fb0a66142a364174df1065a57fcfc678ff17710660ee0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
