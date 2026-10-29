# Verification target: Discrete Subset Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3f3ea1f154904c59164564b00ca3de3977939d3",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantfe86717480f5db6e31cb5dfbcd58f4d330e897be2f30420b4d3829d5ca472e02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3f3ea1f154904c59164564b00ca3de3977939d3`.

Source path: `GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantfe86717480f5db6e31cb5dfbcd58f4d330e897be2f30420b4d3829d5ca472e02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiscreteSubset/Variantfe86717480f5db6e31cb5dfbcd58f4d330e897be2f30420b4d3829d5ca472e02.lean.json)

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
| 1 | `theorem` | [discreteTopology_subtype_iff](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/discretetopology-subtype-iff-source-edition-2.md) | 58 | `result-track:459bd55979cb9e7f008b1e3924a4cf9b22b481ff364aa445d37edfaa53bbc0cf` |
| 2 | `theorem` | [isDiscrete_iff_nhdsNE](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-iff-nhdsne.md) | 62 | `result-track:11dcfdf4643defb9897e19b9bf5a6cac0992e99300a076a84baf513677c1ac9c` |
| 3 | `lemma` | [discreteTopology_of_noAccPts](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/discretetopology-of-noaccpts.md) | 68 | `result-track:1c8a14d10a9adfa0b7066ad87db4375d30833771858f9a9292e6c8504f4fb0ea` |
| 4 | `lemma` | [discreteTopology_subtype_iff'](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/discretetopology-subtype-iff.md) | 72 | `result-track:220515f7ae25fdce1fff5020454a993d1e6c85af07c0992f9e5e00c3fd37769b` |
| 5 | `theorem` | [isDiscrete_iff_forall_mem_exists_isOpen](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-iff-forall-mem-exists-isopen.md) | 79 | `result-track:5467a65bd1c99e363e54566e707eed731f8b62db73c8a6630a962b629328ab49` |
| 6 | `theorem` | [isDiscrete_iff_forall_subset_exists_isOpen](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-iff-forall-subset-exists-isopen.md) | 88 | `result-track:54c16148e4e2dd5642b8e4f03e677397e8291daa9c9845dfffcb9ec08ecb00dd` |
| 7 | `theorem` | [isDiscrete_iff_forall_mem_exists_isClosed](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-iff-forall-mem-exists-isclosed.md) | 95 | `result-track:5b107e0a549f86cef1eabf3095efe69965705784b8ed3778666797f46bb08378` |
| 8 | `theorem` | [isClosed_of_subset_discrete_closed](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isclosed-of-subset-discrete-closed.md) | 104 | `result-track:6a5510999f02e49068aaf4dc01fb907f7eb33a2eee1ed1d928d56215d6086d31` |
| 9 | `lemma` | [Set.Subsingleton.isDiscrete](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/set-subsingleton-isdiscrete.md) | 110 | `result-track:3bc01d8d6927ca52a32fd4ae45d150e4fc13cfa90746e735ff3073092ebfd7cf` |
| 10 | `lemma` | [isDiscrete_iff_nhdsWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-iff-nhdswithin.md) | 114 | `result-track:f8ef7c86d65facf19b9e66e9dfb8e13debdea3092b169cbf338e181aee0aac05` |
| 11 | `lemma` | [IsDiscrete.of_nhdsWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-of-nhdswithin.md) | 122 | `result-track:21d40297a994d02dab4a1806f1ae57d22f8b6690ba53c9851837f4c0239e0e2f` |
| 12 | `lemma` | [isDiscrete_univ_iff](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-univ-iff.md) | 125 | `result-track:08c74bf4b9aec65581ae0c5b785b405e5daf299635500a84e3338d763b8eb141` |
| 13 | `lemma` | [IsDiscrete.univ](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-univ.md) | 129 | `result-track:e7126c1c989bc2631c8cebde884e53624da14faa8a0b7051e5a71d5c1d5c4c03` |
| 14 | `lemma` | [IsDiscrete.image_of_isOpenMap](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-image-of-isopenmap.md) | 132 | `result-track:765b89eac2f845a197df17243238ed2535bdfb9f81d69382f26b1a01f9fbffa3` |
| 15 | `lemma` | [IsDiscrete.image_of_isOpenMap_of_isOpen](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-image-of-isopenmap-of-isopen.md) | 139 | `result-track:d7abd64eeeabc9900ef286fb1e5b87dd86f71486c52b716d5f59b4439c9d0244` |
| 16 | `lemma` | [IsOpenMap.isDiscrete_range](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isopenmap-isdiscrete-range.md) | 146 | `result-track:4c26dabe12df8c3973f59e3cb35fb1377c8ddc0ffac8dfcec007dc54959df3e5` |
| 17 | `lemma` | [IsDiscrete.image](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-image.md) | 150 | `result-track:7e56aa15672388cef76093485ed362e72b5cb468b0fe9513753705e0c7aa606b` |
| 18 | `lemma` | [Topology.IsInducing.isDiscrete_range](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/topology-isinducing-isdiscrete-range.md) | 153 | `result-track:b40c89c45ad2ca98ebc4264ccb7b963857857f34ff1681d1d357bed10e25c892` |
| 19 | `lemma` | [IsDiscrete.preimage](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-preimage.md) | 160 | `result-track:42a1295f9c8ddb08199ebeac45f4e363a566b98bd4ab999cec46bc0cdb32ecdf` |
| 20 | `lemma` | [IsDiscrete.preimage'](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-preimage-source-edition-2.md) | 168 | `result-track:df550e7a93ce86f96d3155ee9e2edb5c19cd123d38f865858d217ec03c990337` |
| 21 | `lemma` | [IsDiscrete.eq_of_specializes](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-eq-of-specializes.md) | 177 | `result-track:cdc1ab932fc6f1286342737348dedd6a4eb584477800d22f69d0184a87b1a7aa` |
| 22 | `lemma` | [IsDiscrete.isLocallyClosed](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-islocallyclosed.md) | 183 | `result-track:3326d47b61d6f8985cf88c0a17f844118d8f9354b10a32073bc32ffe5c2c9508` |
| 23 | `lemma` | [tendsto_cofinite_cocompact_iff](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/tendsto-cofinite-cocompact-iff.md) | 193 | `result-track:2289198ec34345e7444d5a0fa5a7efbbb41c381d7a07e0335334dc18ad35b141` |
| 24 | `lemma` | [Continuous.discrete_of_tendsto_cofinite_cocompact](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/continuous-discrete-of-tendsto-cofinite-cocompact.md) | 199 | `result-track:1d43e151244fe7653815590506af4f4f6dd774ddf0e1078041a84f3a68fd09d4` |
| 25 | `lemma` | [tendsto_cofinite_cocompact_of_discrete](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/tendsto-cofinite-cocompact-of-discrete.md) | 209 | `result-track:411f8ff3d7570a96d7fecda585ef1b300d980369c0d7d8991bc31fe77fcddc20` |
| 26 | `lemma` | [IsClosed.tendsto_coe_cofinite_of_isDiscrete](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isclosed-tendsto-coe-cofinite-of-isdiscrete.md) | 215 | `result-track:ab249d6cbaa85558e7f85864935eb1115616b2781c92cf2c77cb746a36028b25` |
| 27 | `lemma` | [IsClosed.tendsto_coe_cofinite_iff](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isclosed-tendsto-coe-cofinite-iff.md) | 221 | `result-track:e8303f8ef22c1e69d96593431efc6470f5e1571a6190dfe30891ce7307105282` |
| 28 | `theorem` | [isClosed_and_discrete_iff](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isclosed-and-discrete-iff.md) | 233 | `result-track:df4560e5e173d49e23772e1ab454ce24b92919ac3ea629412c855763f1a2df0f` |
| 29 | `def` | [Filter.codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/filter-codiscretewithin.md) | 246 | `declaration-track:3adf52c9af4f2c8f6e33c84ee78aac717262097d7e06c358c60919ba6d395914` |
| 30 | `lemma` | [mem_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/mem-codiscretewithin.md) | 248 | `result-track:a234575b5762c22e31fd05dac1cf462e856e088bc639fb86d656c5a2d4d3b3fa` |
| 31 | `theorem` | [mem_codiscreteWithin_iff_forall_mem_nhdsNE](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/mem-codiscretewithin-iff-forall-mem-nhdsne.md) | 258 | `result-track:0f66d8038f93d0f9d7b45191fac8477371aad48a44e70c5a9fd3919a5343c7d9` |
| 32 | `theorem` | [mem_codiscreteWithin_iff_forall_mem_nhdsWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/mem-codiscretewithin-iff-forall-mem-nhdswithin.md) | 264 | `result-track:aa59c5db80c8feeb4ff024e76c4b797a7cdfdfe075660ba230d9cda13c6a765b` |
| 33 | `theorem` | [nhdsWithin_le_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/nhdswithin-le-codiscretewithin.md) | 270 | `result-track:671981a5976bcc26bfe905951a082a15230c53a7bb832611b1fd6a6743b78790` |
| 34 | `theorem` | [eventually_codiscreteWithin_iff_forall_eventually_nhdsNE](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/eventually-codiscretewithin-iff-forall-eventually-nhdsne.md) | 276 | `result-track:2cc48aed385a2bb88292d8a24b55062b4c7db3f01747d7cdf97b54e054eaf5c2` |
| 35 | `theorem` | [eventuallyEq_codiscreteWithin_iff_forall_eventually_nhdsNE](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/eventuallyeq-codiscretewithin-iff-forall-eventually-nhdsne.md) | 283 | `result-track:5e9d313a406107f3c3a841118846d0d93005bbcf617be74a03d023e5f7bb6eb5` |
| 36 | `theorem` | [eventually_codiscreteWithin_iff_forall_eventually_nhdsWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/eventually-codiscretewithin-iff-forall-eventually-nhdswithin.md) | 289 | `result-track:cfba3a755fc5e4d7c99bcdde3c9285ff48e82e50ea0f1a26bb7f6cc64a58bd17` |
| 37 | `theorem` | [eventuallyEq_codiscreteWithin_iff_forall_eventuallyEq_nhdsWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/eventuallyeq-codiscretewithin-iff-forall-eventuallyeq-nhdswithin.md) | 295 | `result-track:4690a2a573772e80fbea9d6bbb6d025ddeaf34fc8e9eca4b59b7dd0e06cd47ce` |
| 38 | `lemma` | [mem_codiscreteWithin_accPt](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/mem-codiscretewithin-accpt.md) | 299 | `result-track:8087c1778aaf4d9eedab02cc6c21ca56da2d9b7adda34d8daafd6a2885790962` |
| 39 | `theorem` | [Filter.self_mem_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/filter-self-mem-codiscretewithin.md) | 304 | `result-track:71f2e97703c422b02c9fe3f96f6c711166cb569f1e7e553833aa6d9ed0eccfa5` |
| 40 | `lemma` | [Filter.codiscreteWithin_mono](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/filter-codiscretewithin-mono.md) | 309 | `result-track:d3b83f7e50d1ce27609cc82b274253fcc8d80803103556bb3df0e416178991f9` |
| 41 | `theorem` | [isDiscrete_of_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-of-codiscretewithin.md) | 318 | `result-track:35091af3b54e17bda3823b20887008d684c0b7d9cee8cde739a11d3a8a678d3c` |
| 42 | `lemma` | [codiscreteWithin_iff_locallyEmptyComplementWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/codiscretewithin-iff-locallyemptycomplementwithin.md) | 327 | `result-track:c255871bef7fc3ff36efaec3662632c903dbadc13bc26a6d9dd9036b3eeafaba` |
| 43 | `theorem` | [isClosed_sdiff_of_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isclosed-sdiff-of-codiscretewithin.md) | 336 | `result-track:c5a639a7687bce7bac2e68d11f0e0abfe0cb1faf76d0afdf271068f85655d33a` |
| 44 | `theorem` | [nhdsNE_of_nhdsNE_sdiff_finite](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/nhdsne-of-nhdsne-sdiff-finite.md) | 355 | `result-track:e2847630608995bec1291f5cb56fef7bb1307bb4601921d253befc252ed15dc2` |
| 45 | `theorem` | [codiscreteWithin_iff_locallyFiniteComplementWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/codiscretewithin-iff-locallyfinitecomplementwithin.md) | 369 | `result-track:d17e14cc5f5f309aeb5d076f0b3036e992bd7b7272bc0a15cce524b46eeae0e6` |
| 46 | `theorem` | [Set.Subsingleton.mem_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/set-subsingleton-mem-codiscretewithin.md) | 389 | `result-track:d0b2a00afaea1ed985de549a571dd1d13efadb9f674b1ed26cf3bbd17b1c4d58` |
| 47 | `theorem` | [compl_singleton_mem_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/compl-singleton-mem-codiscretewithin.md) | 400 | `result-track:4f7c1f94a4237c3e3ee72f258166881f8fc90bd671b1a7f50a4fe39ba9e12634` |
| 48 | `theorem` | [compl_finite_mem_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/compl-finite-mem-codiscretewithin.md) | 411 | `result-track:4d168a180e3daca2b16b3c443dd16cb48da80179d9eee398b0d570b6ad4f8a09` |
| 49 | `def` | [Filter.codiscrete](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/filter-codiscrete.md) | 424 | `declaration-track:38d7ecd7f61fe70a54df27221e7212983138e5c301c0e710f6d7be5fc0ed9c91` |
| 50 | `lemma` | [mem_codiscrete](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/mem-codiscrete.md) | 426 | `result-track:6995b3282b7fd3d3ffbb7021c7c00ec0a8dd60535b9037fd53b3391b035b9769` |
| 51 | `lemma` | [Disjoint.eventually_nhdsWithin_specializes](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/disjoint-eventually-nhdswithin-specializes.md) | 430 | `result-track:561a6e2af9798aace0573e626e7de6c06d88c1b7bf0259cc8a3ba33cb298da51` |
| 52 | `lemma` | [Disjoint.nhdsWithin_eq_of_cofinite](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/disjoint-nhdswithin-eq-of-cofinite.md) | 444 | `result-track:c7ee4c8faf406699d6487c92e0024911b06d89f3b66eac322f2737e0fa4208e9` |
| 53 | `lemma` | [mem_codiscrete_iff_forall_mem_nhdsNE](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/mem-codiscrete-iff-forall-mem-nhdsne.md) | 455 | `result-track:6bfbb57e24e5d7b09acc6ae09992d7fa5930a6f173c676e9ef4c7e968bef39bc` |
| 54 | `lemma` | [nhdsNE_le_codiscrete](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/nhdsne-le-codiscrete.md) | 460 | `result-track:9168a9c3bcb14524fa2e044a3c77820b95c0dc096326a33d98c2141fa25c77e2` |
| 55 | `lemma` | [eventually_codiscrete_iff_forall_eventually_nhdsNE](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/eventually-codiscrete-iff-forall-eventually-nhdsne.md) | 467 | `result-track:fd90bc3ad42486c69a7f115a52c5876955ab215c175f2a1bd1192fa6662c3fad` |
| 56 | `lemma` | [eventuallyEq_codiscrete_iff_forall_eventuallyEq_nhdsNE](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/eventuallyeq-codiscrete-iff-forall-eventuallyeq-nhdsne.md) | 474 | `result-track:3ff278b9885eee331f358d2893d391b8c3ebd71a07b2271c6eb4d68b5ce967a0` |
| 57 | `lemma` | [mem_codiscrete_accPt](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/mem-codiscrete-accpt.md) | 478 | `result-track:79170a4775d54eb604db884ecfacd8f8307cadc87b381d900f92b424c7e46489` |
| 58 | `lemma` | [mem_codiscrete'](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/mem-codiscrete-source-edition-2.md) | 482 | `result-track:8cdbceae736657def84c5586bda0aecddd436b9f2241ffd50a9a5af266c02655` |
| 59 | `lemma` | [compl_mem_codiscrete_iff](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/compl-mem-codiscrete-iff.md) | 486 | `result-track:71cc96893e1dc75ea78d3d9b00228b888da20bac8f4f9f40c554ee05dd4114ff` |
| 60 | `lemma` | [codiscreteWithin_le_codiscrete_inf_principal](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/codiscretewithin-le-codiscrete-inf-principal.md) | 490 | `result-track:88f342968d8499a559795c87d63b8d727aee1d625b965a97e9852f5ef23c36e9` |
| 61 | `theorem` | [Topology.IsEmbedding.image_mem_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/topology-isembedding-image-mem-codiscretewithin.md) | 494 | `result-track:90e2b85a96e32fb099f2f2eaa61e058e9490d5d8882c8effb11d64e771e13ff9` |
| 62 | `theorem` | [Topology.IsEmbedding.image_mem_codiscreteWithin_range](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/topology-isembedding-image-mem-codiscretewithin-range.md) | 499 | `result-track:7efd3c83f46d84747cfa0285b50d643b0789c0b4c32f393b6c4be2261b4e999c` |
| 63 | `lemma` | [mem_codiscrete_subtype_iff_mem_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/mem-codiscrete-subtype-iff-mem-codiscretewithin.md) | 503 | `result-track:0165cec8e4df1fb8b833ccbc8f9f70ed6fa7376123198f7f331f6402b3f68f99` |
| 64 | `theorem` | [codiscreteWithin_eq_bot_iff](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/codiscretewithin-eq-bot-iff.md) | 508 | `result-track:5f473811985128a257c68e32ba37d023971732c2c2b88230204f69fff2d2501b` |
| 65 | `lemma` | [codiscrete_le_cofinite](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/codiscrete-le-cofinite.md) | 515 | `result-track:747f3f3765a811eba7dbbea4f8f7d9254cb720fccbec92da2ddb01cd43eaee9f` |
| 66 | `lemma` | [Set.Finite.compl_mem_codiscrete](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/set-finite-compl-mem-codiscrete.md) | 520 | `result-track:5dee5d068703c0e5853d09cf14abc8f0aaa2a5db35966ef2c115826abb5b70d6` |
| 67 | `lemma` | [Set.Infinite.of_accPt](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/set-infinite-of-accpt.md) | 523 | `result-track:44e094a40090e11b7ff70cef2ee5ff4c1b69f1dad8ac7da2757a2b13b63144e3` |
| 68 | `theorem` | [finite_sdiff_of_mem_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/finite-sdiff-of-mem-codiscretewithin.md) | 535 | `result-track:53aecf0ae1c94f6c2ec4987ea6dbf03113bcca6d0e4ab1eda7122db0bcf84e4a` |
| 69 | `theorem` | [cofinite_inf_le_codiscreteWithin](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/cofinite-inf-le-codiscretewithin.md) | 544 | `result-track:8b0d0f56b4ab42820a5bfae1bee17abdb29013d1116c7a3a642511027175bee1` |
| 70 | `theorem` | [codiscreteWithin_eq](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/codiscretewithin-eq.md) | 549 | `result-track:48fdd4270a644097e20edf5d06315443a01a13d92d5808592193aa96d85b4323` |
| 71 | `theorem` | [cofinite_le_codiscrete](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/cofinite-le-codiscrete.md) | 557 | `result-track:80c7d2fbcef4487293cf3b3ffc61d881be7538df37471e3796b1351e985ccee0` |
| 72 | `theorem` | [codiscrete_eq_cofinite](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/codiscrete-eq-cofinite.md) | 560 | `result-track:a29ca76a63b5e85f9fb6f0561f78f97f0efff70af7b4a6ae4fbbc7e8b5dab96c` |
| 73 | `theorem` | [IsDiscrete.iUnion](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-iunion.md) | 570 | `result-track:b26c034d96718184ac974b08870b0a8414e46f502ff79ff7c530e865a8ec2f74` |
| 74 | `theorem` | [IsDiscrete.union](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-union.md) | 576 | `result-track:c4bd86a4102d14e0119f9ae3b3cce31871e5e4f304d9efc76624c605d470501d` |
| 75 | `theorem` | [IsDiscrete.biUnion](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-biunion.md) | 582 | `result-track:182dc23d333cc14d826586689d7034d81a77d103e09ed778cb778ed445e58752` |
| 76 | `theorem` | [IsDiscrete.biUnion_finset](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/isdiscrete-biunion-finset.md) | 590 | `result-track:bade19733ea7d0264f2a25223ccf2786a5ed57d6ea8482d887baa516cda62b2d` |
| 77 | `theorem` | [discreteTopology_union](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/discretetopology-union.md) | 597 | `result-track:78e46aa127eb476e0265692e5c20cbf2a7356840c1e21f85508aaf3a8e37a374` |
| 78 | `theorem` | [discreteTopology_biUnion_finset](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/discretetopology-biunion-finset.md) | 604 | `result-track:f293a8ef76e58ada2bd34aff8445ce970e330778711145cd6e7d3740a66864ad` |
| 79 | `theorem` | [discreteTopology_iUnion_finite](../../../../GeneralTopology/DiscreteSubsetNamespacedPublic.lean/declarations/discretetopology-iunion-finite.md) | 612 | `result-track:3801e635563ff3ce122da3e261068c5529a1982bd499ec237ad4a2f213276197` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a00dbf58ee899dc12203549bbe4a2165000a7def4e7dd078e2bdbb87e5f74ca4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantfe86717480f5db6e31cb5dfbcd58f4d330e897be2f30420b4d3829d5ca472e02.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DiscreteSubset/Variantfe86717480f5db6e31cb5dfbcd58f4d330e897be2f30420b4d3829d5ca472e02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
