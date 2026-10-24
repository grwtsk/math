# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f2f519ce058863da937de627e501864f1a3664e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f2f519ce058863da937de627e501864f1a3664e`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean.json)

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
| 1 | `theorem` | [dist_le_Ico_sum_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/dist-le-ico-sum-dist--1f233c9f780365e4534161b3.md) | 41 | `result-track:1f233c9f780365e4534161b39a3e3c8da6031352f1ffe5a94025332c11443c80` |
| 2 | `theorem` | [dist_le_range_sum_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/dist-le-range-sum-dist--964ef4f37239d1ba819305bc.md) | 53 | `result-track:964ef4f37239d1ba819305bc5e71abd3abdb71c32575c4973c832913ed77e460` |
| 3 | `theorem` | [dist_le_Ico_sum_of_dist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/dist-le-ico-sum-of-dist-le--6cd5dd6d6ef77c03b1ae2dc2.md) | 59 | `result-track:6cd5dd6d6ef77c03b1ae2dc2388a03ab6ef25ac91d67a7c44891fb2cc6bd4b10` |
| 4 | `theorem` | [dist_le_range_sum_of_dist_le](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/dist-le-range-sum-of-dist-le--19641a534b014ad79dc63274.md) | 67 | `result-track:19641a534b014ad79dc632743f87343f87704bd62f4cb73e53117a8c22810f39` |
| 5 | `theorem` | [isUniformInducing_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/isuniforminducing-iff--a9ee805f28df32af6bff8bdf.md) | 76 | `result-track:a9ee805f28df32af6bff8bdf83074e4ff62998848b442f66c2b8ce57959989df` |
| 6 | `theorem` | [isUniformEmbedding_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/isuniformembedding-iff--89860e62aaa3d8518b1cd729.md) | 83 | `result-track:89860e62aaa3d8518b1cd729ab58c614e6a37c1f2aac0359d2f19c43ca88168d` |
| 7 | `theorem` | [controlled_of_isUniformInducing](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/controlled-of-isuniforminducing--43401be95e75d64b585019c4.md) | 90 | `result-track:43401be95e75d64b585019c454af702414c91b253f59dd0cdc3931e53bea7624` |
| 8 | `theorem` | [controlled_of_isUniformEmbedding](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/controlled-of-isuniformembedding--4476f2cce56f55143f49042e.md) | 97 | `result-track:4476f2cce56f55143f49042edd2140d88eac6454ede9733e06600e9fef4ad8f1` |
| 9 | `theorem` | [totallyBounded_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/totallybounded-iff--16016720dde0c9bd8061e5ed.md) | 103 | `result-track:16016720dde0c9bd8061e5ed5aa2e912f450291c903b2660c8a4d82e60c6e12a` |
| 10 | `theorem` | [totallyBounded_of_finite_discretization](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/totallybounded-of-finite-discretization--5d7f3992b4740cffa8fc0543.md) | 109 | `result-track:5d7f3992b4740cffa8fc0543f0d3e7e4801b7fbdb2f9e5d596e05e8130b3129b` |
| 11 | `theorem` | [finite_approx_of_totallyBounded](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/finite-approx-of-totallybounded--eee14e2f1027b98d27213db7.md) | 127 | `result-track:eee14e2f1027b98d27213db79a6cf57a334dc98e2e103ae7af864366309355f6` |
| 12 | `theorem` | [tendstoUniformlyOnFilter_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/tendstouniformlyonfilter-iff--efb0f6c28f44ac7f11265a0e.md) | 134 | `result-track:efb0f6c28f44ac7f11265a0e33a74dee8cd4dccb4ac83f408b0e0b3b782f9f70` |
| 13 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/tendstolocallyuniformlyon-iff--4577ab077a3794ae09fd8a23.md) | 142 | `result-track:4577ab077a3794ae09fd8a235ae20c26e3f212c43ad2dd82ae29b05a04c8bd70` |
| 14 | `theorem` | [tendstoUniformlyOn_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/tendstouniformlyon-iff--bc0678bf50719ffbaa514996.md) | 152 | `result-track:bc0678bf50719ffbaa514996110b3788b4dc20e645f483bac851c233e384d057` |
| 15 | `theorem` | [tendstoLocallyUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/tendstolocallyuniformly-iff--a3ecd4f505f6d0ed481aff8e.md) | 159 | `result-track:a3ecd4f505f6d0ed481aff8e2e25f96f306868c323fa639aeb482ea9d3cdb557` |
| 16 | `theorem` | [tendstoUniformly_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/tendstouniformly-iff--71f5a29d902603c8bdc5d5ab.md) | 167 | `result-track:71f5a29d902603c8bdc5d5ab851354307d832e812850b78958adc62f52adec91` |
| 17 | `theorem` | [cauchy_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/cauchy-iff--468166fd2ad8f4e2e5bd1992.md) | 172 | `result-track:468166fd2ad8f4e2e5bd19928ff31e921e7a8e10cd67b39a197556c453efb02a` |
| 18 | `theorem` | [exists_ball_inter_eq_singleton_of_mem_discrete](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/exists-ball-inter-eq-singleton-of-mem-discrete--74cd8b6a706d6d44020f5f56.md) | 180 | `result-track:74cd8b6a706d6d44020f5f567d3b5d29c525d9d1ab21e39007354ae7a1c7beb0` |
| 19 | `theorem` | [exists_closedBall_inter_eq_singleton_of_discrete](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/exists-closedball-inter-eq-singleton-of-discrete--d3545985aac858d6dec5c7c3.md) | 186 | `result-track:d3545985aac858d6dec5c7c384ba754cc1cdd756bfd5c4192cd685b361a98e1c` |
| 20 | `theorem` | [Metric.inseparable_iff_nndist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/metric-inseparable-iff-nndist--f54fd728e2e1448c51a2016b.md) | 194 | `result-track:f54fd728e2e1448c51a2016bd1c435cae4ca2a9527a36afed0ef64ad822fa465` |
| 21 | `theorem` | [Metric.inseparable_iff](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/metric-inseparable-iff--55c62fd3450e3df8b48f9213.md) | 199 | `result-track:55c62fd3450e3df8b48f9213afd200372fb4c4833cec2847b96f1964883b27f5` |
| 22 | `theorem` | [tendsto_nhds_unique_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/tendsto-nhds-unique-dist--25e809d9fd42564a6ecaf750.md) | 205 | `result-track:25e809d9fd42564a6ecaf750dca74b27e40a4ff79022a4546460f0e20a6f01cf` |
| 23 | `theorem` | [cauchySeq_iff_tendsto_dist_atTop_0](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/cauchyseq-iff-tendsto-dist-attop-0--7fd1f2e589ac1cd108fcc9ef.md) | 211 | `result-track:7fd1f2e589ac1cd108fcc9efa5e922857d0d41944bd5940eff90c94896888679` |
| 24 | `lemma` | [IsInducing.isSeparable_preimage](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/isinducing-isseparable-preimage--73850fef71c2952e24a0bf4c.md) | 222 | `result-track:73850fef71c2952e24a0bf4ce0ef06a031b8bb6381f1d9e751a885b493e8f675` |
| 25 | `theorem` | [IsEmbedding.isSeparable_preimage](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/isembedding-isseparable-preimage--0b4c93b855de32556269545d.md) | 234 | `result-track:0b4c93b855de32556269545d9eecc3f7bf2453f42543311d8d060b50a1ee1459` |
| 26 | `theorem` | [IsCompact.isSeparable](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/iscompact-isseparable--95719c0cde43582ce472235c.md) | 242 | `result-track:95719c0cde43582ce472235c679d6c647ed36abb67af75242b198b9523a783d1` |
| 27 | `theorem` | [secondCountable_of_almost_dense_set](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/secondcountable-of-almost-dense-set--cde27eec414c56a1f899af67.md) | 253 | `result-track:cde27eec414c56a1f899af67a47185a6a71af19535e74284508c117ff9cf4f26` |
| 28 | `theorem` | [finite_cover_balls_of_compact](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/finite-cover-balls-of-compact--bae3ca96e6b593e0aa901244.md) | 271 | `result-track:bae3ca96e6b593e0aa901244be6ad7492b8551de537b9ed5aee7ab1463626d04` |
| 29 | `lemma` | [exists_finite_cover_balls_of_isCompact_closure](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/exists-finite-cover-balls-of-iscompact-closure--d3ecaedc4f4808912a12a2d7.md) | 280 | `result-track:d3ecaedc4f4808912a12a2d7489cd50ca83a5c71ebce1d09b3194bbb7bc96f4a` |
| 30 | `theorem` | [ContinuousOn.isSeparable_image](../../../../../mathematics/Topology/MetricTopology/Basic/Variant8067bc89d7e62c447e2a31a09327361777fc5619bfabb95746278dc65cd161dd.lean/declarations/continuouson-isseparable-image--ec9fd91047c8ec284eaedeab.md) | 290 | `result-track:ec9fd91047c8ec284eaedeab3ded31ca20a412e0dbbdcdc6e9b001f49d6cb38b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
