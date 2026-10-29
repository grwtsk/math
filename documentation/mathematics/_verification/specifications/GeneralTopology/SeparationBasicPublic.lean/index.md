# Verification target: Separation Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d39660bfd78f367e80c7ee07b36871de306e3f2",
  "lexical_observation_count": 193,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeparationBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SeparationBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d39660bfd78f367e80c7ee07b36871de306e3f2`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean.json)

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
| 1 | `class` | [T0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t0space.md) | 77 | `declaration-track:30bf1ac4f2a1bbe89745d5072e163f0c6201563bde1ab8ecf878951766479df6` |
| 2 | `theorem` | [t0Space_iff_inseparable](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t0space-iff-inseparable.md) | 81 | `result-track:64cb8afe95e723155ae65a1ff39ca40a1bb805f5de349f42461ec9d54a764f4a` |
| 3 | `theorem` | [t0Space_iff_not_inseparable](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t0space-iff-not-inseparable.md) | 85 | `result-track:d3069dacdfa5e8d9c7ba11c4195d495fc052fa87e7f78d303badb897d6da7db3` |
| 4 | `theorem` | [Inseparable.eq](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/inseparable-eq.md) | 89 | `result-track:a84f27cb34f80ef15b80802dd5d3dfe1bf1d057e12cf633353bcda17dbe9cd38` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-2.md) | 92 | `declaration-track:07a3ace6a6a68c8dae945b24da00a631e198474baa4eb7ec86b7ffbb7cf906f5` |
| 6 | `theorem` | [Topology.IsInducing.injective](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/topology-isinducing-injective.md) | 96 | `result-track:18173d4e5c6da4d68ced26403674e187ad160946b52e6258e6a1c17c3656f4eb` |
| 7 | `theorem` | [Topology.IsInducing.isEmbedding](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/topology-isinducing-isembedding.md) | 101 | `result-track:53ef52fbc0dbce4f59e0e7c46c12acd105c8716fa7a61e2e9683b457c7c55e88` |
| 8 | `lemma` | [isEmbedding_iff_isInducing](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isembedding-iff-isinducing.md) | 105 | `result-track:14f5f9ccf4b8c827902fb06622f2b30b876af6aa28f164c19d3f5abb59999d3a` |
| 9 | `theorem` | [t0Space_iff_nhds_injective](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t0space-iff-nhds-injective.md) | 109 | `result-track:08c498e49a1b0b13facf811e33112a8e00e206e5d3058e4c60d8e236e3538de4` |
| 10 | `theorem` | [nhds_injective](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhds-injective.md) | 113 | `result-track:9bcd7f97d7b244136412ed0789c525e284d067f4a351c90375be9e621ffb1037` |
| 11 | `theorem` | [inseparable_iff_eq](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/inseparable-iff-eq.md) | 116 | `result-track:4c21f7434a58cdca53968f8633d02c46af439a7d322fbad8b6364f0322a671be` |
| 12 | `theorem` | [nhds_eq_nhds_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhds-eq-nhds-iff.md) | 120 | `result-track:c6d50b3c5bf2c3374bcae70cec3803e55e1dc7355837f39fae20afe7e9d7a8c7` |
| 13 | `theorem` | [inseparable_eq_eq](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/inseparable-eq-eq.md) | 124 | `result-track:8711aab7f682e2b7ad7203cae78a121a3ee48abc4bf4077cb8c0fcd4b551cda5` |
| 14 | `theorem` | [TopologicalSpace.IsTopologicalBasis.inseparable_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/topologicalspace-istopologicalbasis-inseparable-iff.md) | 127 | `result-track:4dcb182ea8b2edf379ebcf7236fbea91f4fc705ec86bf4d29ccf2ba23019352e` |
| 15 | `theorem` | [TopologicalSpace.IsTopologicalBasis.eq_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/topologicalspace-istopologicalbasis-eq-iff.md) | 134 | `result-track:0e1d775de983ecf15b2f7103634c42d31cb88609a287af34b1608f5d7e27c186` |
| 16 | `theorem` | [t0Space_iff_exists_isOpen_xor_mem](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t0space-iff-exists-isopen-xor-mem.md) | 138 | `result-track:7a6609e785487b69137e2aa00172b0fd2550b09d96d26ca2467d45cf9c9ab492` |
| 17 | `theorem` | [exists_isOpen_xor_mem](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/exists-isopen-xor-mem.md) | 146 | `result-track:c94758afd81a41ae6297dde6dadcb58a3450c5eb4d072f69ef12ce4f3c7b316b` |
| 18 | `def` | [specializationOrder](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/specializationorder.md) | 154 | `declaration-track:5f2f2609409f81a70fc40e77041a49d31bcbbed55121de9f2af768a2079dcbf9` |
| 19 | `instance` | [SeparationQuotient.instT0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/separationquotient-instt0space.md) | 157 | `declaration-track:2f5ce07b1381da04eebf0f33ac5b8693e6249105c779861c54a6e21bf027fd2d` |
| 20 | `theorem` | [minimal_nonempty_closed_subsingleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/minimal-nonempty-closed-subsingleton.md) | 161 | `result-track:2469a15594318322c1c671a240ba8e361951837a943d457ead39b78ac7ec39bf` |
| 21 | `theorem` | [minimal_nonempty_closed_eq_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/minimal-nonempty-closed-eq-singleton.md) | 171 | `result-track:667b219125f92fbb8da8a1f342c66c55d1942cf3666d38c89edcb1691c0d9ae9` |
| 22 | `theorem` | [IsClosed.exists_closed_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosed-exists-closed-singleton.md) | 178 | `result-track:b80011d8f3a2dd6b0b2e528be908a396e98746cb3247d711d649c3286d7800ef` |
| 23 | `theorem` | [minimal_nonempty_open_subsingleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/minimal-nonempty-open-subsingleton.md) | 184 | `result-track:0b9eb0a75dc3206fb0c067a826c6a31e42826f07b032cc0ee30c82f6747750e8` |
| 24 | `theorem` | [minimal_nonempty_open_eq_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/minimal-nonempty-open-eq-singleton.md) | 194 | `result-track:87aa2e5f5ecb000ed5de97b83443d0e366a6d96aa338dde849341dc444a7299a` |
| 25 | `theorem` | [exists_isOpen_singleton_of_isOpen_finite](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/exists-isopen-singleton-of-isopen-finite.md) | 199 | `result-track:9bb52643c021e7a5f791b106b5e21a0d2825a77da9a8af6791acb2738273bb72` |
| 26 | `theorem` | [exists_open_singleton_of_finite](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/exists-open-singleton-of-finite.md) | 216 | `result-track:c34de58d36f855018051dc5af826e2644bef5d49ac977d9a2b2f6a7afa0a02bd` |
| 27 | `theorem` | [t0Space_of_injective_of_continuous](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t0space-of-injective-of-continuous.md) | 222 | `result-track:cdf7a6dbbf6c3716a3d4a19a4f77876436daf4325863cef472f8918d0408c86a` |
| 28 | `theorem` | [Topology.IsEmbedding.t0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/topology-isembedding-t0space.md) | 226 | `result-track:673a676d9466febc065623bf9fb44870330401e58eb122b329c33b8066ad7eed` |
| 29 | `theorem` | [Homeomorph.t0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/homeomorph-t0space.md) | 230 | `result-track:cf50ea7bf2b89a60009ab4cbb6ce9bddf5c4a91dbc234a7d1c54a669df5be51b` |
| 30 | `instance` | [Subtype.t0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/subtype-t0space.md) | 234 | `declaration-track:e133a3684c46a377dc08c673dd66b5e12b4c99f4b80eec83a24fb6bc6af90abd` |
| 31 | `theorem` | [t0Space_iff_or_notMem_closure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t0space-iff-or-notmem-closure.md) | 237 | `result-track:84598d2b0297e9c47955f77bf605c1195a0c6b283199ccb02ecd0de2068bfca6` |
| 32 | `instance` | [Prod.instT0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/prod-instt0space.md) | 241 | `declaration-track:9e8db0f15b8b17e3e7f9628954373789c1776e6248184053e1ecab3de326585e` |
| 33 | `instance` | [Pi.instT0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/pi-instt0space.md) | 244 | `declaration-track:6bfe7326305f32bcb09aca8c85d32c0f6917267e3565ae8a01dfaf173208e2b2` |
| 34 | `instance` | [ULift.instT0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/ulift-instt0space.md) | 249 | `declaration-track:d5f33b1f69fc2e6c605a7b3148a80274d052f1d7e20c50d30ee322267fb9ad24` |
| 35 | `theorem` | [T0Space.of_cover](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t0space-of-cover.md) | 251 | `result-track:5fb732d1ba374c99e4cc477e95ed7056fe3f93f04ac0cda25ab8d5333a476907` |
| 36 | `theorem` | [T0Space.of_open_cover](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t0space-of-open-cover.md) | 259 | `result-track:8cbdf407c1641c48dcdafacc29240e3adfa303625824900c3c4778b90b6742f5` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-19.md) | 267 | `declaration-track:ff10e1ed9e2f8fbf781cfa2da6d868564b11ac50c602f6c48f31c507c9f8f2a5` |
| 38 | `theorem` | [subsingleton_iff_indiscreteTopology](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/subsingleton-iff-indiscretetopology.md) | 271 | `result-track:72b8b37a0829e5957d316de35417d39cdff74390f0962c004b0b7aee987e9f7e` |
| 39 | `theorem` | [nontrivial_iff_nontrivialTopology](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nontrivial-iff-nontrivialtopology.md) | 278 | `result-track:90b09a867ae2e6c9d7ff8303cd1c38eff1f1455176c3ebb6f4b5e1ed351e773d` |
| 40 | `class` | [R0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r0space.md) | 287 | `declaration-track:afdcf327bc763b9cf432ee1449c4fad2bbd9c19c4337056d7730403778f2d9fb` |
| 41 | `theorem` | [Specializes.symm](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/specializes-symm.md) | 303 | `result-track:7bcc676e7130b989611c6db07fce0d5a0f0ec3b6a77c2bb336420629877906ee` |
| 42 | `theorem` | [specializes_comm](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/specializes-comm.md) | 307 | `result-track:29d555b671f682ff970e0d443f9882466598c622d675f4a08d1742afc72ff075` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-3.md) | 309 | `declaration-track:1d07d0089f05ab469e2a64b3259bb2c57e9c0a793cfccf8870b97f1f5d929001` |
| 44 | `theorem` | [specializes_iff_inseparable](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/specializes-iff-inseparable.md) | 313 | `result-track:dd87930de38fb3cc97db069caddcbdff15932b99a94aed975b06df8e7e3eb547` |
| 45 | `theorem` | [Topology.IsInducing.r0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/topology-isinducing-r0space.md) | 319 | `result-track:ae774fc49bf82a300d71b9b4317cd67be016a43a6d55441148faef6e651e64aa` |
| 46 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-16.md) | 324 | `declaration-track:cab183b17b6262c9a129d86c64f683ae0e85f326e9d864f25f1e463d3cfa94b9` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-5.md) | 326 | `declaration-track:2e986b92b0f22f0819f8275f3689c2e7b80f1ad2b9cb8cf2b06025538875c9cf` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-10.md) | 329 | `declaration-track:83193531f58fbaa438188ea7c52f2928566d16305c1eb42974991d0e6970aff9` |
| 49 | `lemma` | [R0Space.closure_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r0space-closure-singleton.md) | 333 | `result-track:d928bc61ac0bee9765fbd03372f7d794e181c11a25ffcb161bb3eac2324a70e2` |
| 50 | `theorem` | [isCompact_closure_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-closure-singleton.md) | 337 | `result-track:94fd9d2b0124e2234e48a7bab7547fb4d0f883e4239e4d1412a44f77b95b6fb0` |
| 51 | `theorem` | [Filter.coclosedCompact_le_cofinite](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/filter-coclosedcompact-le-cofinite.md) | 344 | `result-track:20fcb08eb5dc35a4ee348a433a91c69d8fc9fbc2b5aa11d1aa25851c12f2c96c` |
| 52 | `def` | [Bornology.relativelyCompact](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/bornology-relativelycompact.md) | 353 | `declaration-track:7f541f5606a80e2ef27999ca5f9df8e1e23c8ca2286c3f0c601205ce95c67a87` |
| 53 | `theorem` | [Bornology.relativelyCompact.isBounded_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/bornology-relativelycompact-isbounded-iff.md) | 357 | `result-track:074e7a182117b70e7b7518841710188b2745298f375032873167bcb4e24f5f00` |
| 54 | `theorem` | [Set.Finite.isCompact_closure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/set-finite-iscompact-closure.md) | 362 | `result-track:8f8f7490036caa7fd972f91a34f21741d89bdc91e0730f28c0663ceec247b1a3` |
| 55 | `class` | [T1Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space.md) | 371 | `declaration-track:5e6d0db955cea29c457712cb529992f736c9c8dd8e39daac6bf0c20e7df613a6` |
| 56 | `theorem` | [isClosed_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosed-singleton.md) | 376 | `result-track:bb9f688523338209f0596f636921efca303aef43b36410280cb6e1d76801d9ab` |
| 57 | `theorem` | [isOpen_compl_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isopen-compl-singleton.md) | 379 | `result-track:850f50c54b5e1292561bd2f165f0219585bbe32f36062f51a814a858edcf3610` |
| 58 | `theorem` | [isOpen_ne](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isopen-ne.md) | 382 | `result-track:f0a31e1e0b42a3a082c1c854fd7c32c53a8e1d06a3b2e017f96d475788c680b5` |
| 59 | `theorem` | [Continuous.isOpen_mulSupport](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuous-isopen-mulsupport.md) | 386 | `result-track:78d20176a427f24025a68b839a42b6ac55e80dd8178c3e66de295e0a0903f4cd` |
| 60 | `theorem` | [Ne.nhdsWithin_compl_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/ne-nhdswithin-compl-singleton.md) | 390 | `result-track:7c8687ef1cf6a5668bffc9af897473c9541dd46d7121331f181d0a63d48e081c` |
| 61 | `theorem` | [Ne.nhdsWithin_sdiff_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/ne-nhdswithin-sdiff-singleton.md) | 393 | `result-track:bb129fc47c3d86b25a6d940b2b581cb7de8891aa4c2ed9cd328a48bec64396a6` |
| 62 | `lemma` | [nhdsWithin_compl_singleton_le](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhdswithin-compl-singleton-le.md) | 401 | `result-track:6b0fac4cb7ed5b0b65c0c8f66bcbcc46870e781accd1bd9e4522a8b0a928b3be` |
| 63 | `theorem` | [isOpen_setOfPred_eventually_nhdsWithin](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isopen-setofpred-eventually-nhdswithin.md) | 407 | `result-track:c1e0abbc2bf31431e14595f7c8ceed9e7aec59797426dcbd376d1c77029673fc` |
| 64 | `lemma` | [Set.Finite.isClosed](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/set-finite-isclosed.md) | 419 | `result-track:459610641d7ea8a11f2ac351f42614ddfb469bd9fce660251fe8eb8041199313` |
| 65 | `theorem` | [TopologicalSpace.IsTopologicalBasis.exists_mem_of_ne](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/topologicalspace-istopologicalbasis-exists-mem-of-ne.md) | 424 | `result-track:1e8b1445cdb6a94695a80d6fe655af9b5030ca3a3d7aa6b525a527c365ce64ca` |
| 66 | `theorem` | [Finset.isClosed](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/finset-isclosed.md) | 429 | `result-track:1284b48df3782ef6d960f3376a582f77bf837f6e7f784e3731ed4d120f142dc2` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-18.md) | 432 | `declaration-track:e6a3444ff1654de27f133bb36bfd09e402ac55a1f711cfd60815ad51bd61f115` |
| 68 | `theorem` | [t1Space_TFAE](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space-tfae.md) | 435 | `result-track:4feffe951cd5e67694b1001df69d6d9111f3c056b68a7f4d094d617189046009` |
| 69 | `theorem` | [t1Space_iff_continuous_cofinite_of](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space-iff-continuous-cofinite-of.md) | 479 | `result-track:ccbbd6fbbc1ba844dbf9579203ded379f2a741dfad3c52f84b2a822e09dff596` |
| 70 | `theorem` | [CofiniteTopology.continuous_of](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/cofinitetopology-continuous-of.md) | 482 | `result-track:188c61c3000d7084a499e6163dbb45b019e413ab7047b526b856492a4f36804f` |
| 71 | `theorem` | [t1Space_iff_exists_open](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space-iff-exists-open.md) | 485 | `result-track:06dd148d5d0dbea1f748b93a916e83ebb618abc211171856eafe53e2034e50ed` |
| 72 | `theorem` | [t1Space_iff_disjoint_pure_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space-iff-disjoint-pure-nhds.md) | 489 | `result-track:687507ff8d38d01a31563f1225a08efcd3456a2719148b9d88b3bc924a4f8866` |
| 73 | `theorem` | [t1Space_iff_disjoint_nhds_pure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space-iff-disjoint-nhds-pure.md) | 492 | `result-track:3e69b41011a353ccfd442f53e6a4e219764c9430fcbf64b09850bd4ab549ab05` |
| 74 | `theorem` | [t1Space_iff_specializes_imp_eq](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space-iff-specializes-imp-eq.md) | 495 | `result-track:866948af23a4d5eed497e202bb4923506ffef374ff0b32746237820cb1c4e50c` |
| 75 | `theorem` | [t1Space_iff_t0Space_and_r0Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space-iff-t0space-and-r0space.md) | 498 | `result-track:b8be9c6662fef9cb14401fe140e522623dbe4819cfb269773fc7a1ea1423677d` |
| 76 | `theorem` | [disjoint_pure_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/disjoint-pure-nhds.md) | 501 | `result-track:60fb4f01cf6f195d8786fb10bc16949440783e8d6ea075a32512bdc7be349029` |
| 77 | `theorem` | [disjoint_nhds_pure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/disjoint-nhds-pure.md) | 504 | `result-track:8751c9d3f8ff908ba2e3e55a7c4b04b8685cb31eeb1467cb3e24eff7bd7ce694` |
| 78 | `theorem` | [Specializes.eq](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/specializes-eq.md) | 507 | `result-track:93fe983d8cff69291f85f7ee0b2797382b06d71d03fc1074b0c513af69e6b89d` |
| 79 | `theorem` | [specializes_iff_eq](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/specializes-iff-eq.md) | 510 | `result-track:67c8903f8ee40e9b1aa30370f88b9835e83ecd243a290e46615620a011f710e9` |
| 80 | `theorem` | [specializes_eq_eq](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/specializes-eq-eq.md) | 513 | `result-track:fa15d573e424685ba74a5e9ecfb940d10365621bfa297fed00a4b704e104381b` |
| 81 | `theorem` | [pure_le_nhds_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/pure-le-nhds-iff.md) | 517 | `result-track:369302e9372898bd46d8f0f3e25d366c66291d08dd617c829a84314eaee049e4` |
| 82 | `theorem` | [nhds_le_nhds_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhds-le-nhds-iff.md) | 521 | `result-track:d5a5cd1d8abf74f633ba5e44d88c4b8616efbb1dc8f2e8a46e75c47b54266fed` |
| 83 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-17.md) | 524 | `declaration-track:e46f1ac68ca9999f9ab6fe1342a686884fe2ba98f36863888541e9f6db3fbc8e` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-12.md) | 527 | `declaration-track:9f7662b799a7672ed46d3440318c59eef885ddc3655d781dde703b377c12c05f` |
| 85 | `theorem` | [t1Space_antitone](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space-antitone.md) | 530 | `result-track:0e22880bb16c69dd7de74e67e2c0a4622a49a51b8fd4915480c5b7456d01c393` |
| 86 | `theorem` | [continuousWithinAt_update_of_ne](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuouswithinat-update-of-ne.md) | 533 | `result-track:4825cde803abfd8cba68ea952c24d12b6f8bb2ea3dd41264ebc292874b4058c2` |
| 87 | `theorem` | [continuousAt_update_of_ne](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuousat-update-of-ne.md) | 541 | `result-track:7fc6fe76c9bc6e18cc8f3688c6b64b5b0d332de96e700f750877cd0c5872f039` |
| 88 | `theorem` | [continuousOn_update_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuouson-update-iff.md) | 546 | `result-track:5038359ccc9ffb9b633869bb8fffefec28a5a490955ddf1f97b4c6c9a4e7c9cc` |
| 89 | `theorem` | [t1Space_of_injective_of_continuous](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/t1space-of-injective-of-continuous.md) | 560 | `result-track:1ab6f26ff975881bceff3ac3d9388ddf26e2d96cdd07261c71a9761dcc56f566` |
| 90 | `theorem` | [Topology.IsEmbedding.t1Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/topology-isembedding-t1space.md) | 564 | `result-track:b87a6a3d2189fe980dcf951ec5de4bb5078cf81fced303b4452398feab057654` |
| 91 | `theorem` | [Homeomorph.t1Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/homeomorph-t1space.md) | 568 | `result-track:f0a4c5e16ce786c2f2152c2d2f6fc273eecb60ef1df3e5188607bb2bfcfffed5` |
| 92 | `instance` | [Subtype.t1Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/subtype-t1space.md) | 571 | `declaration-track:5d4ca4e385883f0b0e6c0270fffaf9cbc605d1c7ea24805bf6bb050979e7440f` |
| 93 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance.md) | 575 | `declaration-track:0655eb119d289b04f66093162d48c1170c03d10bd89ed2a2cedf9fd8715f5614` |
| 94 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-4.md) | 578 | `declaration-track:20a70d5ba01d7c015201dec5b9ac7e1b62fe8281872a8e28090bac96a949c97f` |
| 95 | `instance` | [ULift.instT1Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/ulift-instt1space.md) | 582 | `declaration-track:c3982f1ecc32802cee9d03775d68171f059461becd0b8673e9f04d870ce9bbfb` |
| 96 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-9.md) | 586 | `declaration-track:5a60a20781fb6d8f2c59b3e44dba84970f10916f2290aa06b9b04f2926fc43fa` |
| 97 | `theorem` | [compl_singleton_mem_nhds_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/compl-singleton-mem-nhds-iff.md) | 590 | `result-track:6855ef4c9e4fbcf280912152e1afef5a2ef6dbd2da9c0b0e5b7d5dd320a6f3fc` |
| 98 | `theorem` | [compl_singleton_mem_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/compl-singleton-mem-nhds.md) | 593 | `result-track:7c21462a184e090a7c8dd4ea140e8ef337ea821f46de55395fbd9661ade7458f` |
| 99 | `theorem` | [closure_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/closure-singleton.md) | 597 | `result-track:90627de8ebaa67a9fde0f0ae9f6cb1cbc32c69a29cc943974a6031aa01ef1410` |
| 100 | `lemma` | [Set.Subsingleton.isClosed](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/set-subsingleton-isclosed.md) | 600 | `result-track:cfc5e7a52109c17e1a76ad45325ced2a17ba6544bfbb44004efc0de51eaa6938` |
| 101 | `theorem` | [Set.Subsingleton.closure_eq](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/set-subsingleton-closure-eq.md) | 605 | `result-track:8096a6297b3c586f215a6c74151ce7b69a9071b274798da99bb10160ab7b1027` |
| 102 | `theorem` | [Set.Subsingleton.closure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/set-subsingleton-closure.md) | 609 | `result-track:7fec1b21557795735b3e9bd0a4ac1721875a14405541468f1730d2531e1751f0` |
| 103 | `theorem` | [subsingleton_closure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/subsingleton-closure.md) | 614 | `result-track:112e4db701ab3b2339bf2fd9d04811195c47e68e11a06b8190b2ab83bd10dc3a` |
| 104 | `theorem` | [isClosedMap_const](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosedmap-const.md) | 618 | `result-track:66f6015d2b093a645e333ae9fc2cd17d8dfc95c503a26dd7884c1b3de68a6de0` |
| 105 | `lemma` | [isClosedMap_prodMk_left](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosedmap-prodmk-left.md) | 622 | `result-track:819243d5579c5af8ebdd8b70a24f0092917a70db60f664fbdffbf35bd3e4904b` |
| 106 | `lemma` | [isClosedMap_prodMk_right](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosedmap-prodmk-right.md) | 626 | `result-track:4c87d7b44eaa9f3894a6fe92281e43845cc2694c210c30dc0a68b95f2fcc5d5c` |
| 107 | `theorem` | [nhdsWithin_insert_of_ne](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhdswithin-insert-of-ne.md) | 630 | `result-track:477e48dd80bcd1d976c90e23aa1a24e61368336193ffbb5a37f05af50b0bb5ee` |
| 108 | `theorem` | [insert_mem_nhdsWithin_of_subset_insert](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/insert-mem-nhdswithin-of-subset-insert.md) | 640 | `result-track:7ab2199c7d1a3a90c4b224a527ea9b60ef1299d65881f95add455bbfca8128e5` |
| 109 | `lemma` | [eventuallyEqSet_insert](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/eventuallyeqset-insert.md) | 648 | `result-track:a25420914164514c48f890d4be9492fbeafe76152bbabfb9daf49a44c0241577` |
| 110 | `theorem` | [ker_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/ker-nhds.md) | 659 | `result-track:04ae143b91fb0db5996d167bf437be79d28aa8103d0a5a4ae80fa2b046160cdf` |
| 111 | `theorem` | [biInter_basis_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/biinter-basis-nhds.md) | 662 | `result-track:73244fae77a151c7ab52854885946f6b12258661dfe66089167f93d2e48d2300` |
| 112 | `theorem` | [compl_singleton_mem_nhdsSet_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/compl-singleton-mem-nhdsset-iff.md) | 667 | `result-track:bf60830a30d5be76326cca393dd9ab7bba6ac78d527ac551ff8e60b2321104b1` |
| 113 | `theorem` | [nhdsSet_le_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhdsset-le-iff.md) | 671 | `result-track:287c8113181cc51950291d740a01de8b681a8bcaded9bdaf6184d016f21253a0` |
| 114 | `theorem` | [nhdsSet_inj_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhdsset-inj-iff.md) | 680 | `result-track:20472cc3c1d804d7c9713c3cda462c1c78490b5a961d3b0ab9c85446f0603ec5` |
| 115 | `theorem` | [injective_nhdsSet](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/injective-nhdsset.md) | 684 | `result-track:626546827a1709a3ccef039b7e65afac013ccbe0756304db8efa8315c963ab05` |
| 116 | `theorem` | [strictMono_nhdsSet](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/strictmono-nhdsset.md) | 687 | `result-track:3286787a05c20fa93cd38891481b9cc36aac8a1c57aa047f723724e520a88b7c` |
| 117 | `theorem` | [nhds_le_nhdsSet_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhds-le-nhdsset-iff.md) | 691 | `result-track:cd4fe4724feb54036de286b56cb44b95fd8432ec912c844de8ed3171ec4765d4` |
| 118 | `theorem` | [Dense.sdiff_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/dense-sdiff-singleton.md) | 695 | `result-track:8f6685edeebe5cc915c5a69544237256e3669d8a68af9ee5d173c8dcfcbe9bf2` |
| 119 | `theorem` | [Dense.sdiff_finset](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/dense-sdiff-finset.md) | 703 | `result-track:03c938a76830014c78c619abfe7a3879aeb28671b95fa2242d8ed36beebbb562` |
| 120 | `theorem` | [Dense.sdiff_finite](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/dense-sdiff-finite.md) | 716 | `result-track:dcb3066382e2d4251ff44446c9157dba729967e9ff4d2146293c363dff2fc22a` |
| 121 | `theorem` | [eq_of_tendsto_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/eq-of-tendsto-nhds.md) | 725 | `result-track:c3e97ccb5accd33eabe7eeac417cbaa23fc629b2854b5cc7f576881a3c02c5a0` |
| 122 | `theorem` | [Filter.Tendsto.eventually_ne](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/filter-tendsto-eventually-ne.md) | 732 | `result-track:d0004c71ad63ac95be7c802fdd950115f6cf69ef0982e26ef6a00905d17595bc` |
| 123 | `theorem` | [ContinuousAt.eventually_ne](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuousat-eventually-ne.md) | 736 | `result-track:9e9123a166480025161511ab94b185815aceda4636c1ed4ebb63af2cbb83dcd8` |
| 124 | `theorem` | [eventually_ne_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/eventually-ne-nhds.md) | 740 | `result-track:33efcb51c9c19e81a499eb5010a621d6643ee322460a058fb12738a7f704e07f` |
| 125 | `theorem` | [eventually_ne_nhdsWithin](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/eventually-ne-nhdswithin.md) | 743 | `result-track:f300eddcdd2ccdecd70e3eab5025f94bba8f184af6bd63b68c2b6237ab659285` |
| 126 | `theorem` | [eventually_nhdsWithin_eventually_nhds_iff_of_isOpen](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/eventually-nhdswithin-eventually-nhds-iff-of-isopen.md) | 747 | `result-track:e005bde151aa5080a61aed452ef8ca258d77ab2f7914a9bb14375c1033cf4367` |
| 127 | `theorem` | [eventually_nhdsNE_eventually_nhds_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/eventually-nhdsne-eventually-nhds-iff.md) | 759 | `result-track:485e2865478731d1167b106d68e5fbda81d01ddce90d075dec1ae6a149d054db` |
| 128 | `theorem` | [continuousWithinAt_insert](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuouswithinat-insert.md) | 763 | `result-track:b37946917d0cc9889079c847824c47e2f38ea7407e8a45e2833f61ddbcde8693` |
| 129 | `theorem` | [continuousWithinAt_sdiff_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuouswithinat-sdiff-singleton.md) | 773 | `result-track:446d6f4e9cdf89a5ee38c003f012dba9c7ef9dac6c797ff12222d711d0ccf514` |
| 130 | `theorem` | [continuousWithinAt_congr_set'](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuouswithinat-congr-set.md) | 783 | `result-track:b9e5d59e8a774a0bdd33bcc6fe247e50d535b503188d3693c5aa3adb2260b2e3` |
| 131 | `theorem` | [ContinuousWithinAt.eq_const_of_mem_closure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuouswithinat-eq-const-of-mem-closure.md) | 789 | `result-track:b7b16e368769ae16cd70b96b6d3ff66f0dd7deab2297c663ea23d8192c7577d8` |
| 132 | `theorem` | [ContinuousWithinAt.eqOn_const_closure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuouswithinat-eqon-const-closure.md) | 795 | `result-track:fe269c1bda9363997e2e69cb3c32137c0f03ba0bc451600581fd2c233abc115e` |
| 133 | `theorem` | [continuousAt_of_tendsto_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/continuousat-of-tendsto-nhds.md) | 803 | `result-track:3d31cdee6695650528a8aa3a4a68985b3549c0b6b73721e97ed467296fb01194` |
| 134 | `theorem` | [tendsto_const_nhds_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/tendsto-const-nhds-iff.md) | 808 | `result-track:7a0d77cdd5d66cd339502513b08aae265663e8287745e02e693d140fd8f9fa73` |
| 135 | `theorem` | [isOpen_singleton_of_finite_mem_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isopen-singleton-of-finite-mem-nhds.md) | 812 | `result-track:2f14dd1dfcdb200f7e863c457008633ccf3a8e859f37dcd47f0eeefaa4e25199` |
| 136 | `theorem` | [infinite_of_mem_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/infinite-of-mem-nhds.md) | 822 | `result-track:ae4d81b3948b7a0805ae0f1d6406c5847358407dd4a9862fb2a0588b4d670ed6` |
| 137 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-14.md) | 828 | `declaration-track:ad8bddd6d746a811b2aad443fe9113ec512c7e37168dc85ebee587f9aacccf9c` |
| 138 | `instance` | [Finite.instDiscreteTopology](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/finite-instdiscretetopology.md) | 830 | `declaration-track:3ad50d6ef7f2a330253fef60031a85a7e080cd4ca8187701c2faec04c6bf048e` |
| 139 | `lemma` | [Set.Finite.isDiscrete](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/set-finite-isdiscrete.md) | 833 | `result-track:959a5c39c3946e3dd80377931026e765e71b8460bf584f5433a6cf1c1f0aba4b` |
| 140 | `theorem` | [subsingleton_iff_discrete_and_indiscrete](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/subsingleton-iff-discrete-and-indiscrete.md) | 836 | `result-track:8e820362ea24282e6197099c5745f44fcf120bccb5aaecec7b0b8076b8d8f9c3` |
| 141 | `theorem` | [Set.Finite.continuousOn](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/set-finite-continuouson.md) | 840 | `result-track:0af9367054cb8eea8341ccc2b04b0aedcf30979e0f11c859976579e10552c5f7` |
| 142 | `theorem` | [SeparationQuotient.t1Space_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/separationquotient-t1space-iff.md) | 846 | `result-track:0176aa7ba47f1f389bce24b489e6de66065164d873e17ce61cc08afe2c5c07ff` |
| 143 | `lemma` | [isClosed_inter_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosed-inter-singleton.md) | 860 | `result-track:e96a95ee26ab74b3c7167a67e3e8cac7bef2cdc68255ca4f4082529be9a8b5b7` |
| 144 | `lemma` | [isClosed_singleton_inter](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosed-singleton-inter.md) | 863 | `result-track:5a1db8bc8170d51886f193944a74d01235f5b6980ccfba3e88e9aa3678bc94f5` |
| 145 | `theorem` | [singleton_mem_nhdsWithin_of_mem_discrete](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/singleton-mem-nhdswithin-of-mem-discrete.md) | 866 | `result-track:26af29cfcf508fe6521746cdb0b31638c4755785eab12dcb57403fdbd360f58b` |
| 146 | `theorem` | [nhdsWithin_of_mem_discrete](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhdswithin-of-mem-discrete.md) | 875 | `result-track:762788f6e7da20a5c48f6d771dd77776294fc1b53753b2cde3e4392606c653db` |
| 147 | `theorem` | [Filter.HasBasis.exists_inter_eq_singleton_of_mem_discrete](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/filter-hasbasis-exists-inter-eq-singleton-of-mem-discrete.md) | 879 | `result-track:b2af50ba1f7bfcb3f0ec358cf29eeaeb238909608c25edb4eb73c202984d1d30` |
| 148 | `theorem` | [nhds_inter_eq_singleton_of_mem_discrete](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhds-inter-eq-singleton-of-mem-discrete.md) | 888 | `result-track:05b2490a57acc46651f80440afaf35952974b67d15d24e16ad86ac969230354d` |
| 149 | `theorem` | [isOpen_inter_eq_singleton_of_mem_discrete](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isopen-inter-eq-singleton-of-mem-discrete.md) | 894 | `result-track:f30991506817c71ea9e0d5bec76507722489606fb4e63e5edf91f951b08a87ab` |
| 150 | `theorem` | [disjoint_nhdsWithin_of_mem_discrete](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/disjoint-nhdswithin-of-mem-discrete.md) | 905 | `result-track:dee9e7a0c987bf2409ba844ba68076bcdbff196688c8b22bd06bfbfb273805d5` |
| 151 | `theorem` | [isClosedEmbedding_update](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosedembedding-update.md) | 911 | `result-track:fe5ab23b7002f2af46eb924d55112ed7a4f1cd25a0271797ffda39e85336dc98` |
| 152 | `lemma` | [nhdsNE_le_cofinite](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/nhdsne-le-cofinite.md) | 921 | `result-track:4f84e19dba2a1a4451d634031d6da441303eb0dbc3bf765ec31094cdbc9274b5` |
| 153 | `lemma` | [Function.update_eventuallyEq_nhdsNE](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/function-update-eventuallyeq-nhdsne.md) | 927 | `result-track:224b8bebd552071d469e9fbe4d54b5d1bf701d11237728013fa31d684d1bdde5` |
| 154 | `class` | [R1Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r1space.md) | 939 | `declaration-track:eba4af2c8733feb5cd5cdee36199f8f119af23b498b4fd0d898fa6a0dd2e2630` |
| 155 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-15.md) | 946 | `declaration-track:c17c8ccacd0c26728e005960831466c5f2b22010a031342d94b0f9179d3f5097` |
| 156 | `theorem` | [disjoint_nhds_nhds_iff_not_specializes](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/disjoint-nhds-nhds-iff-not-specializes.md) | 950 | `result-track:1b6e3ed935acc8de6b3c3fdd54485e48b5ce2cb3d5965ad985c78ca21109780e` |
| 157 | `theorem` | [specializes_iff_not_disjoint](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/specializes-iff-not-disjoint.md) | 953 | `result-track:c587930c27888c3ec5a673a1327b83b258585fb7076b4b07989e4950c2c5d7ef` |
| 158 | `theorem` | [disjoint_nhds_nhds_iff_not_inseparable](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/disjoint-nhds-nhds-iff-not-inseparable.md) | 956 | `result-track:09d12d1755772903191ffe9331607a3d55e2fd685cc9e34c608a6db003421f27` |
| 159 | `theorem` | [r1Space_iff_inseparable_or_disjoint_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r1space-iff-inseparable-or-disjoint-nhds.md) | 959 | `result-track:5f95339f5ebafb8cf420b6b36b9218665729ecddcb0be61f80a34f29c52c4c5d` |
| 160 | `theorem` | [Inseparable.of_nhds_neBot](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/inseparable-of-nhds-nebot.md) | 964 | `result-track:b799852618842229704b295c99fe8b0fdd4ed7f7e258fa46c61dbcbf6eb6f987` |
| 161 | `theorem` | [r1_separation](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r1-separation.md) | 968 | `result-track:0928a62f352b1cbe2b71a82e16d1c5bc8448eed066542624805ab156b0ec04c4` |
| 162 | `theorem` | [tendsto_nhds_unique_inseparable](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/tendsto-nhds-unique-inseparable.md) | 978 | `result-track:33f1a9378bc122e1105f4c3f28b698cf55914b768d8a99ea6e6dcb6946b36910` |
| 163 | `theorem` | [isClosed_setOfPred_specializes](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosed-setofpred-specializes.md) | 982 | `result-track:628de0c6d8296644a468aac3c612ba9530f0b41ed966ab6246ceed886e31aaa0` |
| 164 | `theorem` | [isClosed_setOfPred_inseparable](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/isclosed-setofpred-inseparable.md) | 989 | `result-track:b20c805fa2837110c0420e3a9f9755f632787943d11934be2b33e075526edba7` |
| 165 | `theorem` | [IsCompact.mem_closure_iff_exists_inseparable](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-mem-closure-iff-exists-inseparable.md) | 997 | `result-track:2eb361392b3375cb9b5d7df3b1b524c6ff20cbd13e1dfac3c699e3b95b855bca` |
| 166 | `theorem` | [IsCompact.closure_eq_biUnion_inseparable](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-closure-eq-biunion-inseparable.md) | 1007 | `result-track:790bf40e09816af088c83612f3d0d0370ea6b6d336e4b0c4749a8680fbe95001` |
| 167 | `theorem` | [IsCompact.closure_eq_biUnion_closure_singleton](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-closure-eq-biunion-closure-singleton.md) | 1012 | `result-track:79c480c2178561bb03bc567d18fdff521e24540c766c87f532e789338c8e4176` |
| 168 | `theorem` | [IsCompact.closure_subset_of_isOpen](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-closure-subset-of-isopen.md) | 1019 | `result-track:18e06be1f204488e239cee033bc31d41fbd21487ba913cac0b649c7411aa0c52` |
| 169 | `theorem` | [IsCompact.closure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-closure.md) | 1025 | `result-track:dac3ec70a61ce63b94d01da4673ffd0142faed00ab38a4363ebe378dc3fb8a2d` |
| 170 | `theorem` | [IsCompact.closure_of_subset](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-closure-of-subset.md) | 1030 | `result-track:e25a8bc93ca001bf4f3dffcc4c46b2316a7f3dc7f0cd3305d59bf183d2d1fec9` |
| 171 | `theorem` | [exists_isCompact_superset_iff](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/exists-iscompact-superset-iff.md) | 1035 | `result-track:d4f316150d170dea608572873953c3a4a1f8d7c267d63f403efd943a10ad285f` |
| 172 | `theorem` | [SeparatedNhds.of_isCompact_isCompact_isClosed](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/separatednhds-of-iscompact-iscompact-isclosed.md) | 1041 | `result-track:5ae1bf634cb2d4751b898e28ca41320c2196640d6f2c7420a8741ad045a3fce5` |
| 173 | `theorem` | [IsCompact.binary_compact_cover](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-binary-compact-cover.md) | 1049 | `result-track:5e3f3db65126bd5ec44b8fc7e7c85a23a1d7f744e68963485e2cc8c6f9fe8c28` |
| 174 | `theorem` | [IsCompact.finite_compact_cover](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-finite-compact-cover.md) | 1065 | `result-track:735f664c4693eb529be080ccbc95e30d0d2f3425e816b6e857a043be1f2b54d8` |
| 175 | `theorem` | [R1Space.of_continuous_specializes_imp](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r1space-of-continuous-specializes-imp.md) | 1091 | `result-track:c5e60e792bdfd297f2578a2b9ffd4b18bbe08fdf63686ddb5abce18240bf2d1d` |
| 176 | `theorem` | [Topology.IsInducing.r1Space](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/topology-isinducing-r1space.md) | 1096 | `result-track:d0ecc1b3d04824fc1942e314809ca63ee94fb2dfa6e58d922bed6531fa105fc0` |
| 177 | `theorem` | [R1Space.induced](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r1space-induced.md) | 1099 | `result-track:e74e1580a9bd023a69d86c9e4f1908ee139dff0869b6320aba451b143a850b41` |
| 178 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-11.md) | 1102 | `declaration-track:858e1426cbb8f86e349ce69a3e8f63f5d1156880531f1646ca336af51d3c51d1` |
| 179 | `theorem` | [R1Space.sInf](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r1space-sinf.md) | 1104 | `result-track:29556b3e851e9c856c33aa630b06d96562bb47bd69a417a8fad95d85c45a8cd7` |
| 180 | `theorem` | [R1Space.iInf](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r1space-iinf.md) | 1114 | `result-track:4fd3688a886979888fa0c7a100f6b0cf2b9583d965ddf46780e268deb5026a76` |
| 181 | `theorem` | [R1Space.inf](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/r1space-inf.md) | 1118 | `result-track:0082473ad9734b980aac6bda765c2d82d5de64d2736e98cc39ae62e2d2aeac86` |
| 182 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-7.md) | 1124 | `declaration-track:54ffa3e2120fd6acff8be9619809b1d614cfc5251a107af00ff9d9878b6b2ec5` |
| 183 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-6.md) | 1127 | `declaration-track:4c7b01917b4a91533e2484f66a9847c4246e12674485fbf6d8734d2f5421462f` |
| 184 | `theorem` | [exists_mem_nhds_isCompact_mapsTo_of_isCompact_mem_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/exists-mem-nhds-iscompact-mapsto-of-iscompact-mem-nhds.md) | 1131 | `result-track:96151ab8c95fe026ae178f06e44cef162f47cf5ac35de9ac1ce743c4ce160214` |
| 185 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-13.md) | 1148 | `declaration-track:a7adaebe6966469e4266c6b0519404ce50c1ce681dbfaca19742bcf9705a5ad3` |
| 186 | `theorem` | [IsCompact.isCompact_isClosed_basis_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-iscompact-isclosed-basis-nhds.md) | 1156 | `result-track:51f5c1a70a3a6e283dda2d87f4fbfc9845b0ad3e638e64d902060eab9b33eb99` |
| 187 | `theorem` | [Filter.coclosedCompact_eq_cocompact](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/filter-coclosedcompact-eq-cocompact.md) | 1166 | `result-track:0f9b173b72dca41dfecf1fe7e0af3e53486f4ad5c0f4f7bd83eaa38a968e5aa2` |
| 188 | `theorem` | [Bornology.relativelyCompact_eq_inCompact](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/bornology-relativelycompact-eq-incompact.md) | 1173 | `result-track:1d8d484a1d8ed1498419275603bd66e41c75ab9d0780f87d257cd7b0c0f622df` |
| 189 | `theorem` | [isCompact_isClosed_basis_nhds](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/iscompact-isclosed-basis-nhds.md) | 1188 | `result-track:65bc2f25dae2d41b998ed629510ac98bd5e0d691faa4ec356f44c5b8d58774e2` |
| 190 | `theorem` | [exists_mem_nhds_isCompact_isClosed](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/exists-mem-nhds-iscompact-isclosed.md) | 1194 | `result-track:b8ae03fc4ad1312efe0bc7ab2b30823ed489b0fce74849a6d546698325791250` |
| 191 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/instance-source-edition-8.md) | 1199 | `declaration-track:551b8509fd581f5f00e0ddc4a36b2c3ba2f16c1f09cd22993e180b60852bddf6` |
| 192 | `theorem` | [exists_isOpen_superset_and_isCompact_closure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/exists-isopen-superset-and-iscompact-closure.md) | 1204 | `result-track:7f57dc611fa3984524c01181d146f8a3359509656aa0bda47ecb6facb40438d8` |
| 193 | `theorem` | [exists_isOpen_mem_isCompact_closure](../../../../GeneralTopology/SeparationBasicPublic.lean/declarations/exists-isopen-mem-iscompact-closure.md) | 1211 | `result-track:e7de80ab7e704791bac08a25faecdb725fb40db5855cdabfcbc270302739ebe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dea7246dec97670745ee75f2df874715df228254b13a4c107cabde55a14f88e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
