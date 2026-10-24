# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "259b59be1ca8e5cad69fa1f6f50469cb06f40284",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `259b59be1ca8e5cad69fa1f6f50469cb06f40284`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dist_le_Ico_sum_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/dist-le-ico-sum-dist--05a06d968b31aa3760eed4a0.md) | 36 | `result-track:05a06d968b31aa3760eed4a09d83632b817485b19e9f1d5e285a7bcfb191f426` |
| 2 | `theorem` | [dist_le_range_sum_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/dist-le-range-sum-dist--344a5dcbfd0817069b7bbb2f.md) | 48 | `result-track:344a5dcbfd0817069b7bbb2f4bea818656f3c099ef2c2acc2fe3442a56d0efcf` |
| 3 | `theorem` | [dist_le_Ico_sum_of_dist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/dist-le-ico-sum-of-dist-le--4c6b4daa0385ca332357d502.md) | 54 | `result-track:4c6b4daa0385ca332357d5029b1b80a84f8169591607dec5bc618c6849048306` |
| 4 | `theorem` | [dist_le_range_sum_of_dist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/dist-le-range-sum-of-dist-le--d8e6d03615a968912659ab42.md) | 62 | `result-track:d8e6d03615a968912659ab4279de42d46fc07843aada74fe7bbb409c8a7062f4` |
| 5 | `theorem` | [isUniformInducing_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/isuniforminducing-iff--c86faaf06366690287a20900.md) | 71 | `result-track:c86faaf06366690287a20900b69ef80e32f82475e078a5fbe9beea2d481c548c` |
| 6 | `theorem` | [isUniformEmbedding_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/isuniformembedding-iff--f46d05efec0adb4e00809a2d.md) | 78 | `result-track:f46d05efec0adb4e00809a2d36e1f4e37f227950ec901fa7e7d7e5ce6c5f2383` |
| 7 | `theorem` | [controlled_of_isUniformEmbedding](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/controlled-of-isuniformembedding--bd96b05dd23817de21fcdfaf.md) | 85 | `result-track:bd96b05dd23817de21fcdfaf1ee2a58725d636560eb43a36d7ef25bfd0ff8730` |
| 8 | `theorem` | [totallyBounded_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/totallybounded-iff--2e4d465f5479ae018d73f2fd.md) | 91 | `result-track:2e4d465f5479ae018d73f2fddc71061fe3a1680f01e331d2ef5f08601b77303a` |
| 9 | `theorem` | [totallyBounded_of_finite_discretization](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/totallybounded-of-finite-discretization--962af82c0b6884ca7cbaaa01.md) | 97 | `result-track:962af82c0b6884ca7cbaaa01cfe708ef47edd26919b54387f00b4d1be998c77e` |
| 10 | `theorem` | [finite_approx_of_totallyBounded](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/finite-approx-of-totallybounded--85a0d954c9371db1f8761683.md) | 115 | `result-track:85a0d954c9371db1f876168369b3d651f2fb47fda370a6039f8620afb1ab6fe0` |
| 11 | `theorem` | [tendstoUniformlyOnFilter_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/tendstouniformlyonfilter-iff--acdc6d95614381e344246904.md) | 122 | `result-track:acdc6d95614381e3442469041cf955e73b06c3056354676f9a5208eeae03dcfc` |
| 12 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/tendstolocallyuniformlyon-iff--d914300ed33cbebc79d0f112.md) | 130 | `result-track:d914300ed33cbebc79d0f1124e2b6e19f64b272a535612404d3f27f823143153` |
| 13 | `theorem` | [tendstoUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/tendstouniformlyon-iff--9e5e2306019f0bd9dc1e7704.md) | 140 | `result-track:9e5e2306019f0bd9dc1e7704f7a8bd40ce94d19f122b8ba69cddb7167558d3c0` |
| 14 | `theorem` | [tendstoLocallyUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/tendstolocallyuniformly-iff--6adba595add30853d2ee5824.md) | 147 | `result-track:6adba595add30853d2ee5824dc3fb97ff437b89185c6908d96bad22fe28cd12f` |
| 15 | `theorem` | [tendstoUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/tendstouniformly-iff--42fc45c377a79a7ab7b2397e.md) | 155 | `result-track:42fc45c377a79a7ab7b2397ed312ceb7422993e6789263bb647a5afe5808b72f` |
| 16 | `theorem` | [cauchy_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/cauchy-iff--dbc2a6ac75d715c1cdf85a65.md) | 160 | `result-track:dbc2a6ac75d715c1cdf85a65c9a956791740197c86b3ef36aacf34b5ebd9a17b` |
| 17 | `theorem` | [exists_ball_inter_eq_singleton_of_mem_discrete](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/exists-ball-inter-eq-singleton-of-mem-discrete--df4863a5bb994d30be7c8ba4.md) | 168 | `result-track:df4863a5bb994d30be7c8ba4aecf6a112e0e9b835f9377126ad21faf618d4052` |
| 18 | `theorem` | [exists_closedBall_inter_eq_singleton_of_discrete](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/exists-closedball-inter-eq-singleton-of-discrete--6ee835d55494bb6fdcfe3228.md) | 174 | `result-track:6ee835d55494bb6fdcfe3228ce34b573d17c9f554bc550b5d13fff2b76d23f12` |
| 19 | `theorem` | [Metric.inseparable_iff_nndist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/metric-inseparable-iff-nndist--3c649a35a389599c6b997cac.md) | 182 | `result-track:3c649a35a389599c6b997caccb3788fcade64518e1dee048c184868a1c8c95b2` |
| 20 | `theorem` | [Metric.inseparable_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/metric-inseparable-iff--f5c3aa8acba8544e23a777a9.md) | 187 | `result-track:f5c3aa8acba8544e23a777a96613c74f9d97bc0cf8ffa1a187f51a4ad0ce9663` |
| 21 | `theorem` | [tendsto_nhds_unique_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/tendsto-nhds-unique-dist--fdffa5f6229d120910e9300f.md) | 193 | `result-track:fdffa5f6229d120910e9300ff4181fb519fc656e6c5fd15075f9f94b3aadfb11` |
| 22 | `theorem` | [cauchySeq_iff_tendsto_dist_atTop_0](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/cauchyseq-iff-tendsto-dist-attop-0--3e6273cd0e5d7c43ecb3ea1a.md) | 199 | `result-track:3e6273cd0e5d7c43ecb3ea1a2b0e993dc66b596c9c84b6abb2577c340be7e744` |
| 23 | `lemma` | [IsInducing.isSeparable_preimage](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/isinducing-isseparable-preimage--885a050791b4a89ec49cc5e8.md) | 210 | `result-track:885a050791b4a89ec49cc5e80b9dcd34300d111932c81cc425c64fbe707170f2` |
| 24 | `theorem` | [IsEmbedding.isSeparable_preimage](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/isembedding-isseparable-preimage--ac911a40860429ecc3d406ef.md) | 222 | `result-track:ac911a40860429ecc3d406efbb06462a6d7c7d61800a1de6053d525fe6939e62` |
| 25 | `theorem` | [IsCompact.isSeparable](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/iscompact-isseparable--a3fe1f1df371ca51f5d0654d.md) | 232 | `result-track:a3fe1f1df371ca51f5d0654dea94826b9c65f5bce5b5df964d8b01df68a891ea` |
| 26 | `theorem` | [secondCountable_of_almost_dense_set](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/secondcountable-of-almost-dense-set--f8dfb7d3b395175563a4f2a5.md) | 244 | `result-track:f8dfb7d3b395175563a4f2a5cead2bdf60e452c98b285cd4c60e4245725a812f` |
| 27 | `theorem` | [finite_cover_balls_of_compact](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/finite-cover-balls-of-compact--fe6f46c2c4e07599884655fc.md) | 262 | `result-track:fe6f46c2c4e07599884655fc445a4f46e37f8aa7cce29f039c76205e8b736cd5` |
| 28 | `lemma` | [exists_finite_cover_balls_of_isCompact_closure](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/exists-finite-cover-balls-of-iscompact-closure--3112a0bf49fd409105564bae.md) | 271 | `result-track:3112a0bf49fd409105564bae885f017573729b02785ac947c4de58005e7eff08` |
| 29 | `theorem` | [ContinuousOn.isSeparable_image](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9b0eb80fc36ab9fa5183735c5bc024b41a0cd61640f8dd07579ca3dd7d2e4f80.lean/declarations/continuouson-isseparable-image--8c7e7d201bf3d80035690e2a.md) | 281 | `result-track:8c7e7d201bf3d80035690e2aa1f43ede3f9d2fc39e7cf61e766a048003c87373` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
