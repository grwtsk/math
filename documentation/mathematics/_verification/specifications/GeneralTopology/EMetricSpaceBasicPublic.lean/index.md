# Verification target: EMetric Space Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "882ecde0e689acafe0b31b3c3bda122235166f8d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `882ecde0e689acafe0b31b3c3bda122235166f8d`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean.json)

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
| 1 | `theorem` | [edist_le_Ico_sum_edist](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/edist-le-ico-sum-edist.md) | 36 | `result-track:e2a186e5f33d05e82c757b4686fd5619cee817ab96a8f1291b1d100e06a21654` |
| 2 | `theorem` | [edist_le_range_sum_edist](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/edist-le-range-sum-edist.md) | 48 | `result-track:3e01ff83212d141bd49562f0406960b4b3aef219593b4ae14135f9c400434279` |
| 3 | `theorem` | [edist_le_Ico_sum_of_edist_le](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/edist-le-ico-sum-of-edist-le.md) | 54 | `result-track:0b4a8dfab9b37ab21e6c874b9a084923f6ff55a33b61f21462d8821da6b9acfa` |
| 4 | `theorem` | [edist_le_range_sum_of_edist_le](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/edist-le-range-sum-of-edist-le.md) | 62 | `result-track:d2a0075257d5e58eded39d3451e776ed5bb2315331942621ab015c36a3b51ef5` |
| 5 | `theorem` | [isUniformInducing_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/isuniforminducing-iff.md) | 69 | `result-track:9d1f45474e92e47516bb7cd754457cfc60658f1a79359af3b46840201fa0cb88` |
| 6 | `theorem` | [isUniformEmbedding_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/isuniformembedding-iff.md) | 77 | `result-track:ea251e2252f5681d5c69be6bb44c4307201b310e4c23be13f0c02de58cf75790` |
| 7 | `theorem` | [controlled_of_isUniformInducing](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/controlled-of-isuniforminducing.md) | 84 | `result-track:1105c087e434e579b6b89bfd61d0f4bb455b6f29670b1fb63c31dd0ec775edee` |
| 8 | `theorem` | [controlled_of_isUniformEmbedding](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/controlled-of-isuniformembedding.md) | 91 | `result-track:5fefec4c9d9b2989dfa287296d1c429397bee20e0e1b13d0f18c013e683ba905` |
| 9 | `theorem` | [cauchy_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/cauchy-iff.md) | 98 | `result-track:d6786b60f37e9a1601cc172e54ecd306174d5163eb377d0939434acaf8e43e7e` |
| 10 | `theorem` | [complete_of_convergent_controlled_sequences](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/complete-of-convergent-controlled-sequences.md) | 107 | `result-track:2589b16ea29b462ff6f7ac831c06d80436c45415c9395e732865e11187ea9758` |
| 11 | `theorem` | [complete_of_cauchySeq_tendsto](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/complete-of-cauchyseq-tendsto.md) | 115 | `result-track:b64c7071b31913cce6744872c5c27047d9fd83425adf3605fdc403e201e64367` |
| 12 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/tendstolocallyuniformlyon-iff.md) | 120 | `result-track:019f55e4c6a6dd24e6dfc9beb7c5df6d5a6e1b21d8f2ba070099dc15e07ba2ce` |
| 13 | `theorem` | [tendstoUniformlyOn_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/tendstouniformlyon-iff.md) | 130 | `result-track:d534d9f780d072d4140ce88e9375fa2601c437f2fa2186ebd082d7ec54b6567e` |
| 14 | `theorem` | [tendstoLocallyUniformly_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/tendstolocallyuniformly-iff.md) | 137 | `result-track:e3d49d46fa5d39cbf70925bac62f29b06f873efa4a8b1c7e9dd865f821cdfb0d` |
| 15 | `theorem` | [tendstoUniformly_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/tendstouniformly-iff.md) | 145 | `result-track:097659de30693c94014d6387ca947873eae099a2b34efb0a68569c4d3231e32a` |
| 16 | `theorem` | [inseparable_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/inseparable-iff.md) | 157 | `result-track:e7aba0a807325d8f5ba154d596c173e82467e0a2e697030673aac7326807600e` |
| 17 | `theorem` | [cauchySeq_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/cauchyseq-iff.md) | 170 | `result-track:0b9c66bd4236f29d2e1ddf1dc44e144b4aefe76cb24eefeee1602626ff6c55d6` |
| 18 | `theorem` | [cauchySeq_iff'](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/cauchyseq-iff-source-edition-2.md) | 175 | `result-track:d621dd6ff9f7f54a6baa5bbcb15195f47be669a303c2adb53b30864302b82692` |
| 19 | `theorem` | [cauchySeq_iff_NNReal](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/cauchyseq-iff-nnreal.md) | 181 | `result-track:c5fd6d19262b5a2493b9ac5af139d8202f3bd03e89163d255cbe1e5b46fef261` |
| 20 | `theorem` | [totallyBounded_iff](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/totallybounded-iff-source-edition-2.md) | 185 | `result-track:b3d72aa176d2076f9fc3862b85aa7222ab419f631d1819357c3ce599fb58c7e7` |
| 21 | `theorem` | [totallyBounded_iff'](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/totallybounded-iff.md) | 192 | `result-track:60c16e52925d3a8d25a97470f012bd70f0f97aff4ef4d9d4568a0d6778b4ef45` |
| 22 | `theorem` | [subset_countable_closure_of_almost_dense_set](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/subset-countable-closure-of-almost-dense-set.md) | 203 | `result-track:e604670e3a2e34e0d8e63d1a2cf881e41251248e891647a8cef10c09e3892c7c` |
| 23 | `theorem` | [subset_countable_closure_of_compact](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/subset-countable-closure-of-compact.md) | 222 | `result-track:e7ee0dfdc12a80399ae94b5d1e040fdf7845b6260aec8287145b6f9004a5b13b` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/instance-source-edition-2.md) | 236 | `declaration-track:39d25494c8f3059027a62994c66801c499196032c90d2626bced2ea4672f6334` |
| 25 | `theorem` | [secondCountable_of_almost_dense_set](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/secondcountable-of-almost-dense-set.md) | 245 | `result-track:299e91879b88598fbb3970caa57c7466d2a68c67b1b397b61af35ee0b529862d` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/instance-source-edition-3.md) | 262 | `declaration-track:5f801d7d5d6748c2f934a353cc103a66ff067b3b737e6efddb1ec790ade20343` |
| 27 | `theorem` | [EMetric.isUniformEmbedding_iff'](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/emetric-isuniformembedding-iff.md) | 267 | `result-track:fcce7a6f293ec16986e8c5b4190cd06c944bd1f7227be1439cb6f695d0d97643` |
| 28 | `abbrev` | [EMetricSpace.ofT0PseudoEMetricSpace](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/emetricspace-oft0pseudoemetricspace.md) | 275 | `declaration-track:ab6030fb2bad881e27a8377e9d9a831d36e87bdee90fa28260cac6dc6b1da6fb` |
| 29 | `instance` | [Prod.emetricSpaceMax](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/prod-emetricspacemax.md) | 283 | `declaration-track:62f28dd5605fa97360b2481a10215f0f04c3da64042e71239d757dd99500ad04` |
| 30 | `theorem` | [countable_closure_of_compact](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/countable-closure-of-compact.md) | 289 | `result-track:3e02ec12758c16fb38eeeabd3861c626effb9e89f5f47aa7c628e6294b462d2f` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/instance.md) | 300 | `declaration-track:2ed392f52b32e6e380835dad47abff9ad2ee4b165bc1e98780c3ffe396ed8324` |
| 32 | `theorem` | [SeparationQuotient.edist_mk](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/separationquotient-edist-mk.md) | 304 | `result-track:26693e9fbfcf08e22a7cfb2ce3591194495d185f1b16b92d1d8866ba3cb7d94f` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/instance-source-edition-4.md) | 309 | `declaration-track:601fcac79cedd9a0021d9d3f74f6afc590dceac76979568a2138e9ec4c886e99` |
| 34 | `theorem` | [lebesgue_number_lemma_of_emetric](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/lebesgue-number-lemma-of-emetric.md) | 322 | `result-track:208b15217ddf7431e1a771c1d8a0735ae2bff712794aa3dacaf25cc40ab6cde9` |
| 35 | `theorem` | [lebesgue_number_lemma_of_emetric_nhds'](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/lebesgue-number-lemma-of-emetric-nhds-source-edition-2.md) | 327 | `result-track:d25a107bfa13f72954fa2b67287af03cd61a93b12af985f8a929cf85bc0b58c7` |
| 36 | `theorem` | [lebesgue_number_lemma_of_emetric_nhds](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/lebesgue-number-lemma-of-emetric-nhds.md) | 332 | `result-track:14741f7a745a4487bdc9d13c52b7bfb90a43457ee779ddd434a3c59ddbbc7dbb` |
| 37 | `theorem` | [lebesgue_number_lemma_of_emetric_nhdsWithin'](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/lebesgue-number-lemma-of-emetric-nhdswithin.md) | 337 | `result-track:4757d778106a2213894364619ebb554bf55d0ff2a1274cca2d2373241ce567e9` |
| 38 | `theorem` | [lebesgue_number_lemma_of_emetric_nhdsWithin](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/lebesgue-number-lemma-of-emetric-nhdswithin-source-edition-2.md) | 343 | `result-track:8cc1bb9d3abc4a518ef00b39c5ddf2ba0edfc3c24950c84ed3559a0edcb93977` |
| 39 | `theorem` | [lebesgue_number_lemma_of_emetric_sUnion](../../../../GeneralTopology/EMetricSpaceBasicPublic.lean/declarations/lebesgue-number-lemma-of-emetric-sunion.md) | 348 | `result-track:c3ad8708b304346d9143ec6419191712aa939d63b446b0db755703873a775dd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1f589ea40db549953fc114a474e8518b6e1081643e0ca59e78a5d12427fdc7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Basic/Variant0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Basic/Variant0bf445a6b969f567a74434f3e8783c6a999303bc04b1c0d26023c5891cdb7628.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
