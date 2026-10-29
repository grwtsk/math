# Verification target: EMetric Space Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39db534dade6877fb4888a6c73ccb7f32be05d7a",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39db534dade6877fb4888a6c73ccb7f32be05d7a`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean.json)

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
| 1 | `theorem` | [edist_le_Ico_sum_edist](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/edist-le-ico-sum-edist.md) | 44 | `result-track:7e4db8ac1237373a10d7c782dfca816ff1e9b8494dab257dd3526ac04f07946a` |
| 2 | `theorem` | [edist_le_range_sum_edist](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/edist-le-range-sum-edist.md) | 56 | `result-track:4b4b04651dc2f0604be7baffd6fa9c6c14dbe6cd454a85fc0b3249d1b79e6322` |
| 3 | `theorem` | [edist_le_Ico_sum_of_edist_le](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/edist-le-ico-sum-of-edist-le.md) | 62 | `result-track:4f9f91c0380e306f3b99c1cd7791d07cdc9b4cd22365854fa1bdafdf83dfa351` |
| 4 | `theorem` | [edist_le_range_sum_of_edist_le](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/edist-le-range-sum-of-edist-le.md) | 70 | `result-track:3f73ba13097ff797a9554bb42ed014b0b79a6d6408ee4189c089d60d6326e0f4` |
| 5 | `theorem` | [isUniformInducing_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/isuniforminducing-iff.md) | 77 | `result-track:0d08d4b85a6e4c0cc5a18ee5edf51c6b2cac3031a826d1fa1854f1ddcd4b0f78` |
| 6 | `theorem` | [isUniformEmbedding_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/isuniformembedding-iff.md) | 85 | `result-track:f9e2ea60ec3512c123167434fe40a8a54358977d2c142c662ab516ddd86e9c4f` |
| 7 | `theorem` | [controlled_of_isUniformInducing](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/controlled-of-isuniforminducing.md) | 92 | `result-track:3ce89cf3f9a5f3986090631df7aaf6f27215e158a3108b1b8117995d8da175f7` |
| 8 | `theorem` | [controlled_of_isUniformEmbedding](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/controlled-of-isuniformembedding.md) | 99 | `result-track:5c51354758598422d33f6b72aa8e6917ae6c0151c345f10a4cb8678dda3725ce` |
| 9 | `theorem` | [cauchy_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/cauchy-iff.md) | 106 | `result-track:0d09ccdd52a95e487957467019cc306ba653fae7882ba1b335daec0907948a7e` |
| 10 | `theorem` | [complete_of_convergent_controlled_sequences](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/complete-of-convergent-controlled-sequences.md) | 115 | `result-track:eedb25df5c45eef133feed8673e8c3d95e0d31ca9404729fce5ecddf8a6060fa` |
| 11 | `theorem` | [complete_of_cauchySeq_tendsto](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/complete-of-cauchyseq-tendsto.md) | 123 | `result-track:d45310fcc6bb0fd3f8c524e1f6d0eeac1c44eae6c71e7177f0eb0a57497d4f1c` |
| 12 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/tendstolocallyuniformlyon-iff.md) | 128 | `result-track:d66a79008ce8d427aa9b148d17fbf287888d066b6de943761b860d0094f70c2d` |
| 13 | `theorem` | [tendstoUniformlyOn_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/tendstouniformlyon-iff.md) | 138 | `result-track:94389558c95c9da22273e796de4d3e8ed796e3fd83769bfece708bb12f5f57ab` |
| 14 | `theorem` | [tendstoLocallyUniformly_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/tendstolocallyuniformly-iff.md) | 145 | `result-track:4812481010c54cacffe4344ace77fbb96e25615a5d85e097c202fe96d2091fb4` |
| 15 | `theorem` | [tendstoUniformly_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/tendstouniformly-iff.md) | 153 | `result-track:38ed4a3a1ea5728340836cbd4cc4d983c3c77c92783a5002dc1c843b98d2d04f` |
| 16 | `theorem` | [inseparable_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/inseparable-iff.md) | 165 | `result-track:d61a110c36bd4628804220475ce078175aac9b804738b28183104319d64acb74` |
| 17 | `theorem` | [cauchySeq_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/cauchyseq-iff.md) | 178 | `result-track:3af8ab7a807585a0fba46f7d6bcf9d534448470272e114bf15a080fd367ad636` |
| 18 | `theorem` | [cauchySeq_iff'](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/cauchyseq-iff-source-edition-2.md) | 183 | `result-track:c90a4ebedc17f07d8e6ae00d92a96c17c39de7aa59fb2e55c77a2c0bc38f4be9` |
| 19 | `theorem` | [cauchySeq_iff_NNReal](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/cauchyseq-iff-nnreal.md) | 189 | `result-track:51e656d7cd7b74cee4e48cd33f9b9752419848f395a40ebf3a1e89f1282a730a` |
| 20 | `theorem` | [totallyBounded_iff](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/totallybounded-iff-source-edition-2.md) | 193 | `result-track:f9ef8e6ad2dfd468cc49bed887bc2e161e53a6eeea4d9a260233c727ad25983c` |
| 21 | `theorem` | [totallyBounded_iff'](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/totallybounded-iff.md) | 200 | `result-track:1134488a8697cada966e39ad777cbf32e33c6a25d04723e161d0762326135776` |
| 22 | `theorem` | [subset_countable_closure_of_almost_dense_set](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/subset-countable-closure-of-almost-dense-set.md) | 211 | `result-track:f21d12dbdf746650b832a58fa2f065332a9ebb8139bf6d34a666ecc4a062a0b2` |
| 23 | `theorem` | [subset_countable_closure_of_compact](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/subset-countable-closure-of-compact.md) | 230 | `result-track:a05478e9c90fd8f9f1f1ad2e71877da4421d5c5b3399be2e57e23cb03bd42f68` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 244 | `declaration-track:e426d2297e36c1436287fc9dc771a77b555e071d1a3e8b0b66e9293683e82ed7` |
| 25 | `theorem` | [secondCountable_of_almost_dense_set](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/secondcountable-of-almost-dense-set.md) | 253 | `result-track:1f79b2844848e08641378ac581fc645cbc1f9412bc1f854b8bff3ef019d35304` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 270 | `declaration-track:96032491dbc439f7968903b2ec1d6a36c9f10626d43a14537a072967e1d54557` |
| 27 | `theorem` | [EMetric.isUniformEmbedding_iff'](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/emetric-isuniformembedding-iff.md) | 275 | `result-track:8fc3f08e7aff9e3cb9df31fc3a4dcbb2b768e61656ade012191337f1fe3641c3` |
| 28 | `abbrev` | [EMetricSpace.ofT0PseudoEMetricSpace](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/emetricspace-oft0pseudoemetricspace.md) | 283 | `declaration-track:79e2d736dffbe4c2ec5a9f3cd1218721f53f04ddd1c61105b7dec6a96a1c45f9` |
| 29 | `instance` | [Prod.emetricSpaceMax](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/prod-emetricspacemax.md) | 291 | `declaration-track:8522b400568d766f74b1ee302ef4cb8ee120012e255525d374678cd47f0a314c` |
| 30 | `theorem` | [countable_closure_of_compact](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/countable-closure-of-compact.md) | 297 | `result-track:0adee9f740fa9b5c6aac60183512398a2d788fc5dfe4d2a847872aa68fba04a0` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 308 | `declaration-track:a2cfa6bfb5ec71fb66ac247f483140b1949d975a5de9cfbf722d5da36902ab5e` |
| 32 | `theorem` | [SeparationQuotient.edist_mk](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/separationquotient-edist-mk.md) | 312 | `result-track:0e81ade5b44de75baaa9d9233f1f5d776aeff3066bdd461f3b73e6c34e9731ee` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/instance.md) | 317 | `declaration-track:7d7f16647e1daff54b26110726194389e9b486d3513ebaf9d7d804cd77e7cb8c` |
| 34 | `theorem` | [lebesgue_number_lemma_of_emetric](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/lebesgue-number-lemma-of-emetric.md) | 330 | `result-track:e81fb8859fe76aa36c3496fbc33c5c919cb381d3df00868b7ab2ef71290387e6` |
| 35 | `theorem` | [lebesgue_number_lemma_of_emetric_nhds'](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/lebesgue-number-lemma-of-emetric-nhds.md) | 335 | `result-track:0260ba8d6c53835171b7796b40f9eb40c2930cd3d771e6ab098803a2c5c35d44` |
| 36 | `theorem` | [lebesgue_number_lemma_of_emetric_nhds](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/lebesgue-number-lemma-of-emetric-nhds-source-edition-2.md) | 340 | `result-track:bcb89f34b9ace8bb580426d788d894ddff03f9f6a1a499374725e4ff3432a600` |
| 37 | `theorem` | [lebesgue_number_lemma_of_emetric_nhdsWithin'](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/lebesgue-number-lemma-of-emetric-nhdswithin-source-edition-2.md) | 345 | `result-track:8dd324450b771f303075d0aaf3c6b56345c48293f494779f4733b4f1dfb19d0b` |
| 38 | `theorem` | [lebesgue_number_lemma_of_emetric_nhdsWithin](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/lebesgue-number-lemma-of-emetric-nhdswithin.md) | 351 | `result-track:7349aa991934e96855f14dec1ba2a1c27ece42edc8bd3b243475f0a02e3e0433` |
| 39 | `theorem` | [lebesgue_number_lemma_of_emetric_sUnion](../../../../GeneralTopology/EMetricSpaceBasicNamespacedPublic.lean/declarations/lebesgue-number-lemma-of-emetric-sunion.md) | 356 | `result-track:c6f4963333363da5e493f3c016bbffab93cd950121d8cdf583a7906c545f860c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=226185916a6f6132f8233d1c5c768d1487a74b8335910343e02ad4cd33b561c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
