# Verification target: Pseudo Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "481819ce8af510c9a5de64ea11361fadaad4d113",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant80da0475206e305e343c46b77c4816aff59cebbfe9fad6dc3c41b36e3ce6c91c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PseudoBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PseudoBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `481819ce8af510c9a5de64ea11361fadaad4d113`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant80da0475206e305e343c46b77c4816aff59cebbfe9fad6dc3c41b36e3ce6c91c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant80da0475206e305e343c46b77c4816aff59cebbfe9fad6dc3c41b36e3ce6c91c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dist_le_Ico_sum_dist](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/dist-le-ico-sum-dist.md) | 33 | `result-track:c7061382113e908ffc8296894f3baf9fcb168b2b8f1ed285c5f5e34e0249131b` |
| 2 | `theorem` | [dist_le_range_sum_dist](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/dist-le-range-sum-dist.md) | 45 | `result-track:c63cb39157e2eba52e732acf5ccba0a492c1a746eb2b4490132cd7ae304e2ae3` |
| 3 | `theorem` | [dist_le_Ico_sum_of_dist_le](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/dist-le-ico-sum-of-dist-le.md) | 51 | `result-track:b2d122ea7ffad17ed14923c607ed764eb45f31a4e5729f7b27938765644b88da` |
| 4 | `theorem` | [dist_le_range_sum_of_dist_le](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/dist-le-range-sum-of-dist-le.md) | 59 | `result-track:a1a940107d76b5f552788beef6f8e8e2bbc699838541d7382085660a0355e278` |
| 5 | `theorem` | [isUniformInducing_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/isuniforminducing-iff.md) | 68 | `result-track:31d91a01d084e7f516d2e1776a05c9fc18f2906d943ceda8390d2b65f5b61b61` |
| 6 | `theorem` | [isUniformEmbedding_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/isuniformembedding-iff.md) | 75 | `result-track:ff9829162f1b19e4202b52a39c99bf4040e23a661c1a9009af5f8c40384b2446` |
| 7 | `theorem` | [controlled_of_isUniformInducing](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/controlled-of-isuniforminducing.md) | 82 | `result-track:4440c677daf7737d1473c1bd28e1eea685eb5b435afb441fc06f72c785465e9d` |
| 8 | `theorem` | [controlled_of_isUniformEmbedding](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/controlled-of-isuniformembedding.md) | 89 | `result-track:8540d1a6520b34acfd03c6d6be0e2890e879513bc0195513af8e86f4fb6b699d` |
| 9 | `theorem` | [totallyBounded_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/totallybounded-iff.md) | 95 | `result-track:95851ffaeb51427d3465b900012e2ca5ade5008addc77c554d683834ad7b20b3` |
| 10 | `theorem` | [totallyBounded_of_finite_discretization](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/totallybounded-of-finite-discretization.md) | 101 | `result-track:a5c46c6330be2905fca5f6387cdb5e2a705fc03f49a821cfee18e42df80f48c2` |
| 11 | `theorem` | [finite_approx_of_totallyBounded](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/finite-approx-of-totallybounded.md) | 119 | `result-track:10376f50b446fb07b0d48de22d0eb9e0c464d509b46454ae4cf5b68968bab9ce` |
| 12 | `theorem` | [tendstoUniformlyOnFilter_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/tendstouniformlyonfilter-iff.md) | 126 | `result-track:30886206b79deb8508078b4c31ea42fee7ad230a6df32c97c5cea7cce29d34f5` |
| 13 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/tendstolocallyuniformlyon-iff.md) | 134 | `result-track:d41c40c8721d7262c1036e219bf66baf4391c93318001c6e6fdf52737122d18a` |
| 14 | `theorem` | [tendstoUniformlyOn_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/tendstouniformlyon-iff.md) | 144 | `result-track:d9c880342ae98ebd6dffe673a98953c5ad5cff4408fe251d4a1418baa57cb503` |
| 15 | `theorem` | [tendstoLocallyUniformly_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/tendstolocallyuniformly-iff.md) | 151 | `result-track:9e51e7713bf6513c6c3090d1294714ad79929e5a1731f2520b6f1befaf466ac0` |
| 16 | `theorem` | [tendstoUniformly_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/tendstouniformly-iff.md) | 159 | `result-track:571c6cbd024b9441117058ece2aa5f2d55d5a6425a1c89332f9b6dfd0600ac0f` |
| 17 | `theorem` | [cauchy_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/cauchy-iff.md) | 164 | `result-track:8f569d98f107914649501fdc6c9ad085bc5278d7c5720d172e22a605262d213b` |
| 18 | `theorem` | [exists_ball_inter_eq_singleton_of_mem_discrete](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/exists-ball-inter-eq-singleton-of-mem-discrete.md) | 172 | `result-track:d0348e7296dc25a1262d33248a51547c7ff74bd7cbdf6914cd75c3164aac55bf` |
| 19 | `theorem` | [exists_closedBall_inter_eq_singleton_of_discrete](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/exists-closedball-inter-eq-singleton-of-discrete.md) | 178 | `result-track:53628ba852128ac8679a058a7b847062cb88263c0879ad0a5b9ffef56fc50f61` |
| 20 | `theorem` | [Metric.inseparable_iff_nndist](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/metric-inseparable-iff-nndist.md) | 186 | `result-track:7739794241ec60c5d742cdfecc93f402997d6bf185da31d6a19c5e8eafd92e15` |
| 21 | `theorem` | [Metric.inseparable_iff](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/metric-inseparable-iff.md) | 191 | `result-track:8504a176bca53d7cdd6a715905653a87fd47cb4469c37637025139dd7baa4b68` |
| 22 | `theorem` | [tendsto_nhds_unique_dist](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/tendsto-nhds-unique-dist.md) | 197 | `result-track:c8dc48315707810e016bd9ae7a4d34469840352f0ad4b2c2e234bfbe63358434` |
| 23 | `theorem` | [cauchySeq_iff_tendsto_dist_atTop_0](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/cauchyseq-iff-tendsto-dist-attop-0.md) | 203 | `result-track:4d1603f4f3c54c4bd12bfe54262ccc346ee06bc41e0da15adcf166b8a927d9f8` |
| 24 | `lemma` | [IsInducing.isSeparable_preimage](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/isinducing-isseparable-preimage.md) | 214 | `result-track:81dcf0b241a512d590932b95a8424d75ca290b0d9ccdd859660539709ba96605` |
| 25 | `theorem` | [IsEmbedding.isSeparable_preimage](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/isembedding-isseparable-preimage.md) | 226 | `result-track:08fa150283c8da0d4f99175b7af86a795f0a06e4cdb359b723159b2fd004fc06` |
| 26 | `theorem` | [IsCompact.isSeparable](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/iscompact-isseparable.md) | 234 | `result-track:20f2e0aaec402a29049de7e28dfbf111e9f87d2512637054e1a4f8b8d3b5b04f` |
| 27 | `theorem` | [secondCountable_of_almost_dense_set](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/secondcountable-of-almost-dense-set.md) | 245 | `result-track:6bb404a7bc5737897f69ed889fd21fa1ede4ec4ceadba5923ae3ef99b494664a` |
| 28 | `theorem` | [finite_cover_balls_of_compact](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/finite-cover-balls-of-compact.md) | 263 | `result-track:685745933658284f77ea958dbfe5a94d6fd00892a844f45d6b22e4fc2f6f247b` |
| 29 | `lemma` | [exists_finite_cover_balls_of_isCompact_closure](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/exists-finite-cover-balls-of-iscompact-closure.md) | 272 | `result-track:effa7c83a5e83d8088bb97dcaa0b2d588654fff53d84ac26d374c6eda30f1a71` |
| 30 | `theorem` | [ContinuousOn.isSeparable_image](../../../../GeneralTopology/PseudoBasicPublic.lean/declarations/continuouson-isseparable-image.md) | 282 | `result-track:5237e6000b0380f0a5abd151e375d4d64d6766f90cddc00f9913f505d73609d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fb86c4cbcc152b293be637a05afea60dec395c9d50eba806cbbc1e82278a987 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Basic/Variant80da0475206e305e343c46b77c4816aff59cebbfe9fad6dc3c41b36e3ce6c91c.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Basic/Variant80da0475206e305e343c46b77c4816aff59cebbfe9fad6dc3c41b36e3ce6c91c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
