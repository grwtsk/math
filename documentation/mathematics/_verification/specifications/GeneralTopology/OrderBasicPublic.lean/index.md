# Verification target: Order Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a6d413ad1c02252c0c69261cf5761e95af1cec",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OrderBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/OrderBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a6d413ad1c02252c0c69261cf5761e95af1cec`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean.json)

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
| 1 | `def` | [Preorder.topology](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/preorder-topology.md) | 67 | `declaration-track:3bef0996d6c777ad8d88478a8ec43d5aaff48bd1d59c70921bb94cc02e8dbb45` |
| 2 | `class` | [OrderTopology](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/ordertopology.md) | 76 | `declaration-track:dd244d01c9f586a22c91c4461fb8c824a7530cfd267cf103a5f30ff7c1c633c4` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/instance.md) | 85 | `declaration-track:371f5a8daf4e8610c2acc80af7784cb6a8f023b11f656190f9c2816dd214a342` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:3c3ebfaa7966e460b15da421094740a8b87249e2f5211bef46be4d9dea48c053` |
| 5 | `theorem` | [OrderTopology.continuous_iff](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/ordertopology-continuous-iff.md) | 100 | `result-track:301bfde45b5da7da0f9f2e401f7b0809b40baf968b3f9659cdb9c78035b116be` |
| 6 | `theorem` | [isOpen_iff_generate_intervals](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/isopen-iff-generate-intervals.md) | 106 | `result-track:7b539c48b1e34a20792d59b4b2c3fd7d5eb0b66311a86fee6f75464ada5e0ea1` |
| 7 | `theorem` | [isOpen_lt'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/isopen-lt.md) | 111 | `result-track:ab66e6bca3c41be81c90cce22e8e5698353fbf75b8c79309668db3a273c9f1c2` |
| 8 | `theorem` | [isOpen_Ioi'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/isopen-ioi.md) | 116 | `result-track:4ddef2cd5ee4adb982b2d3443b023986fb9491ea68a3672d5d99dc6a1cef0592` |
| 9 | `theorem` | [isOpen_Ioo'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/isopen-ioo.md) | 120 | `result-track:a582f6c62505213779747b7b551527bf1833a4a4c5f56016fcdb4b124cf64c26` |
| 10 | `theorem` | [lt_mem_nhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/lt-mem-nhds.md) | 124 | `result-track:331f0d092dcb8cb0a151a27a71dabab10eafcdf515f4b6b0eb269cccdfd37b62` |
| 11 | `theorem` | [le_mem_nhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/le-mem-nhds.md) | 128 | `result-track:b724da133b7519466ac9c06fb3eea452744fc516fba1ad279e81ffeda22395d6` |
| 12 | `theorem` | [nhds_eq_order](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhds-eq-order.md) | 132 | `result-track:d7fde06ac460053d592915b3d4497d1db13627839bcd6e88ca642364e66b83f1` |
| 13 | `theorem` | [tendsto_order](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendsto-order.md) | 139 | `result-track:e130aa1cfa9e2576106ef3e022ddac77662cce24c4cfcbd2dd179f28fb46cb98` |
| 14 | `instance` | [tendstoIccClassNhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendstoiccclassnhds.md) | 142 | `declaration-track:72b6357b33b125ab439b332df3e19a52cd8da56e9f3dbbba138c7b1d17c7596d` |
| 15 | `instance` | [tendstoIcoClassNhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendstoicoclassnhds.md) | 150 | `declaration-track:d050da3292d120b9d0dbefda253ae2c4ad2af23ec60c562c30de1ccc4d8e1003` |
| 16 | `instance` | [tendstoIocClassNhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendstoiocclassnhds.md) | 153 | `declaration-track:175dc5b679e76637d1318d7ddb5d6cd396365d69bee183dd0dd4b3b54edc9024` |
| 17 | `instance` | [tendstoIooClassNhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendstoiooclassnhds.md) | 156 | `declaration-track:33a07cc00025c054eaa50beac058a676eae3fc42168df55aa172751b225b42b8` |
| 18 | `lemma` | [exists_countable_generateFrom_Ioi_Iio](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/exists-countable-generatefrom-ioi-iio.md) | 162 | `result-track:54f2c2a8a944a6fd51237ed5792b10c4ca5cce2e44a2eab14638da093273d0fe` |
| 19 | `lemma` | [isTopologicalBasis_biInter_Ioi_Iio_of_generateFrom](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/istopologicalbasis-biinter-ioi-iio-of-generatefrom.md) | 183 | `result-track:535aecb48466000167930c788809dfad6330c845b6f1bb4ace9b6864ffe4caca` |
| 20 | `theorem` | [tendsto_of_tendsto_of_tendsto_of_le_of_le'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendsto-of-tendsto-of-tendsto-of-le-of-le.md) | 220 | `result-track:2bbbdcb35e7d2a123993a58343c264caccac85ad8d875d57272a5de0fd6d3985` |
| 21 | `theorem` | [tendsto_of_tendsto_of_tendsto_of_le_of_le](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendsto-of-tendsto-of-tendsto-of-le-of-le-source-edition-2.md) | 231 | `result-track:7d55164942184c71f63423d4ad3f32fafd7033335bd1d19b21873287703e0ccb` |
| 22 | `theorem` | [nhds_order_unbounded](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhds-order-unbounded.md) | 240 | `result-track:0148dc47c6b79f4f322290132179784c570d9196b39d1edee290a1463d03b80f` |
| 23 | `theorem` | [tendsto_order_unbounded](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendsto-order-unbounded.md) | 244 | `result-track:28b8b3125cb19e3a1bde912d7881a1de99d9fea9e8f20a55e4e026ad07b8223e` |
| 24 | `instance` | [tendstoIxxNhdsWithin](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendstoixxnhdswithin.md) | 252 | `declaration-track:8c4115f94792d4f01d70613c8d489a480f8b833e9b2f9da6d9f4b2994809e61d` |
| 25 | `instance` | [tendstoIccClassNhdsPi](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendstoiccclassnhdspi.md) | 257 | `declaration-track:428fdcc1b862c990931eb6e81ba232f4316f9f2c6820d19d6bd544c97df28c66` |
| 26 | `theorem` | [induced_topology_le_preorder](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/induced-topology-le-preorder.md) | 268 | `result-track:f13c957d50792d6241121db4b8450a0029de50c1e02db8ccee145c3ae0ab65f9` |
| 27 | `theorem` | [induced_topology_eq_preorder](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/induced-topology-eq-preorder.md) | 278 | `result-track:83cbe07bf02fef6fef660423a6c30f8f9d8aa7be09dd319c7a2bdd0ef49d4cba` |
| 28 | `theorem` | [induced_orderTopology'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/induced-ordertopology-source-edition-2.md) | 300 | `result-track:8b754ed2e8efaab3033ec6604bdab7255a8f7f01b50cafb80a92a87e15ff259c` |
| 29 | `theorem` | [induced_orderTopology](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/induced-ordertopology.md) | 308 | `result-track:20e8b25624b6971187e4a46099c8296015f599f4a5572a90fced5684667022be` |
| 30 | `theorem` | [StrictMono.induced_topology_eq_preorder](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/strictmono-induced-topology-eq-preorder.md) | 317 | `result-track:2358388cf51c4c275034e18d9c1c97a9e2d1bc5982cc68eb580fd7ef180026c0` |
| 31 | `theorem` | [StrictMono.isEmbedding_of_ordConnected](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/strictmono-isembedding-of-ordconnected.md) | 328 | `result-track:445c08cbcec054d8735df297a1a2cbb23e821f40efdc0648b84bf10e31b1348e` |
| 32 | `lemma` | [OrderEmbedding.isEmbedding_of_ordConnected](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/orderembedding-isembedding-of-ordconnected.md) | 335 | `result-track:3701020af762fa410e167c1e557cbf9ee1c440380742a3384efa1442092ceeb9` |
| 33 | `instance` | [orderTopology_of_ordConnected](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/ordertopology-of-ordconnected.md) | 342 | `declaration-track:59703ff81168e7915a67d2d8d4037573b6606309da88cace3ccf6a21e31dd13a` |
| 34 | `theorem` | [nhdsGE_eq_iInf_inf_principal](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhdsge-eq-iinf-inf-principal.md) | 348 | `result-track:b4a9446bd34402273b024d0758344a913f3b23067d0df9a056821a9cd62fd709` |
| 35 | `theorem` | [nhdsGE_eq_iInf_principal](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhdsge-eq-iinf-principal.md) | 355 | `result-track:95c00967a8b34382c65183787fa71871b3aded7691d2bab0c8d2400e87b7de85` |
| 36 | `theorem` | [nhdsGE_basis_of_exists_gt](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhdsge-basis-of-exists-gt.md) | 360 | `result-track:4690cc0a6b8e2af764077dab4d5ae888dfbb66a47ef6070f39603e83ee27e4df` |
| 37 | `theorem` | [nhdsGE_basis](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhdsge-basis.md) | 367 | `result-track:587c1adb8e95c96454c21b1ee055b82e5e9fb15a1ae3f561e2b52b1b6bf0c80c` |
| 38 | `theorem` | [nhds_top_order](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhds-top-order.md) | 372 | `result-track:1dfb57bf74a21dd5fb87a5bf5d14f1ea5133f18e8695d6cd97a2595206ddab9f` |
| 39 | `theorem` | [nhds_top_basis](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhds-top-basis.md) | 376 | `result-track:988a9d8c924bd4405012506b66f02e9aae1e28f1c94f55a9f5b890de41e4b828` |
| 40 | `theorem` | [nhds_top_basis_Ici](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhds-top-basis-ici.md) | 382 | `result-track:7cd7dfdb52bc4a6c5ac8f2af75a29827638be3bd2ebcce4e6715c746b5b29dfa` |
| 41 | `theorem` | [tendsto_nhds_top_mono](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendsto-nhds-top-mono.md) | 389 | `result-track:84a00cff219642b99c54550b1698ca4a2b6c692217daf19360a0b938a95fa605` |
| 42 | `theorem` | [tendsto_nhds_top_mono'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/tendsto-nhds-top-mono-source-edition-2.md) | 396 | `result-track:a01a54b31541573a55921c5bab4574d74b5e99dd781c5b5fe009d3a967a7eb84` |
| 43 | `theorem` | [order_separated](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/order-separated.md) | 408 | `result-track:c4b7c67434a5e3e6606cd601e573f2b4e914563847b47d28e77491c9a10d2411` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/instance-source-edition-3.md) | 414 | `declaration-track:b64a0de55f25c0609b2d8ca68b887b1cd64b1285fbc110e84e549bf929d5088b` |
| 45 | `theorem` | [exists_Ioc_subset_of_mem_nhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/exists-ioc-subset-of-mem-nhds.md) | 421 | `result-track:29d708dcecb989b8c36dae4837c54e4f582e6fb5f978e53deeea90f6c2a8936c` |
| 46 | `theorem` | [exists_Ioc_subset_of_mem_nhds'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/exists-ioc-subset-of-mem-nhds-source-edition-2.md) | 426 | `result-track:dc677197d415bdde2347047a8827c0f2622a28593bd03ab0e555fbed44019ac1` |
| 47 | `theorem` | [exists_Icc_mem_subset_of_mem_nhdsGE](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/exists-icc-mem-subset-of-mem-nhdsge.md) | 433 | `result-track:cc2e27a25d4c22ea4f44cd4f200fff741f05248cd8865dfc622c6fff4fd88e4a` |
| 48 | `theorem` | [exists_Icc_mem_subset_of_mem_nhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/exists-icc-mem-subset-of-mem-nhds.md) | 444 | `result-track:6c3cd46d13a9469b8d093550c3b95510d07effcc9032c186784ab2b020e4aaf4` |
| 49 | `theorem` | [IsOpen.exists_Ioo_subset](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/isopen-exists-ioo-subset.md) | 455 | `result-track:9c23416c6272cf41f57e6a9790c4166cfea0b7214b0a318ed05166a786c6498a` |
| 50 | `theorem` | [dense_of_exists_between](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/dense-of-exists-between.md) | 469 | `result-track:9c76345a5b1c4c55515359119808eb75133c410735cffa291cfea3572ffe55d4` |
| 51 | `theorem` | [IsUpperSet.isClosed](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/isupperset-isclosed.md) | 477 | `result-track:ce23621a9c16021c85da01e505f535777a14f5071a549d239242ab878b1bf86a` |
| 52 | `theorem` | [IsLowerSet.isOpen](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/islowerset-isopen.md) | 482 | `result-track:4b5829a035739e0cd976a8c5a9f4e582d823a66a767a36c005bb8bba127d5300` |
| 53 | `theorem` | [dense_iff_exists_between](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/dense-iff-exists-between.md) | 489 | `result-track:8f7177405d42e60ed07b294499c5855ecb5d090b09ed636fac04c7d13d2b1240` |
| 54 | `theorem` | [mem_nhds_iff_exists_Ioo_subset'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/mem-nhds-iff-exists-ioo-subset.md) | 496 | `result-track:5fe058fd674f3400ff366d0b482586206662f57524d1715b53420df88a3a3a26` |
| 55 | `theorem` | [mem_nhds_iff_exists_Ioo_subset](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/mem-nhds-iff-exists-ioo-subset-source-edition-2.md) | 508 | `result-track:e01705d87cc69cac285da068a09f3b452893e6b9fea6bd9a2882e84146b649fd` |
| 56 | `theorem` | [nhds_basis_Ioo'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhds-basis-ioo.md) | 512 | `result-track:c52f2829a27083bad8c3143e261ae8312c7942dd1c1a94a8bfeff7074e858bb1` |
| 57 | `theorem` | [nhds_basis_Ioo](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/nhds-basis-ioo-source-edition-2.md) | 516 | `result-track:ec51c9f094c04b0790ab355fba96004d6ee22ab1e685594528a7b8c22b51a698` |
| 58 | `theorem` | [Filter.Eventually.exists_Ioo_subset](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/filter-eventually-exists-ioo-subset.md) | 520 | `result-track:0ca509105618959f2ac5151b59f3e994d0529ede3394743768574b2aacfab3ba` |
| 59 | `theorem` | [Dense.topology_eq_generateFrom](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/dense-topology-eq-generatefrom.md) | 524 | `result-track:72053aaa618d60ec69c0eec7196aff9f08bbdfe840166879451cce3f9bb9297c` |
| 60 | `theorem` | [SuccOrder.hasBasis_nhds_Ioc_of_exists_lt](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/succorder-hasbasis-nhds-ioc-of-exists-lt.md) | 539 | `result-track:bf0e36da2a1ef4d39225d8685bac9ab95e2588594d45d152a914a8961b03ab3f` |
| 61 | `theorem` | [SuccOrder.hasBasis_nhds_Ioc](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/succorder-hasbasis-nhds-ioc.md) | 547 | `result-track:e61384578f5fbcd78a3483ca194443b850029219a34608d3047bc6f694be542c` |
| 62 | `theorem` | [SecondCountableTopology.of_separableSpace_orderTopology](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/secondcountabletopology-of-separablespace-ordertopology.md) | 558 | `result-track:83a9269f52bcc5c32b4265c52b7a5a92a07c65129bd3dc70fc1563517c9f2231` |
| 63 | `theorem` | [countable_setOfPred_covBy_right](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/countable-setofpred-covby-right.md) | 569 | `result-track:0853caa7164d18af3aad7870e371a15310b8e6b2d300f79d037ec4a2ccce3727` |
| 64 | `theorem` | [countable_of_isolated_left'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/countable-of-isolated-left.md) | 617 | `result-track:06141220918dba1045515d903b7ce4ccb6ed121b47d71fae37942803d5d36fe5` |
| 65 | `theorem` | [Set.PairwiseDisjoint.countable_of_Ioo](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/set-pairwisedisjoint-countable-of-ioo.md) | 626 | `result-track:9c17cb09c12c5a36a05c3a49974c2ad1c1f588c1878e1c160c556afef8a93093` |
| 66 | `theorem` | [countable_image_lt_image_Ioi_within](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/countable-image-lt-image-ioi-within.md) | 641 | `result-track:30fee4b1798794d50d2a7f5793be2540e4b0f51b0ba291e787b0f08451fb6d2e` |
| 67 | `theorem` | [countable_image_lt_image_Ioi](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/countable-image-lt-image-ioi.md) | 681 | `result-track:f03238c41a1dde0200b025ed7782533a94f0680173ac6b3358f40108c2367890` |
| 68 | `theorem` | [countable_image_gt_image_Ioi_within](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/countable-image-gt-image-ioi-within.md) | 692 | `result-track:030bb3000a659784f83fbb2b0372567a464d4e951758c9cff135996c6e5756de` |
| 69 | `theorem` | [countable_image_gt_image_Ioi](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/countable-image-gt-image-ioi.md) | 702 | `result-track:24c1aa9943969a1694301dabac64b39b1cee0be834853ce32c192d8ce3de845c` |
| 70 | `instance` | [instIsCountablyGenerated_atTop](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/instiscountablygenerated-attop.md) | 707 | `declaration-track:70393a1bde21fd5e9688863886594c181be3cad1d2aadfedd4a33747060433df` |
| 71 | `theorem` | [pi_Iic_mem_nhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-iic-mem-nhds.md) | 737 | `result-track:0ca6f58d6d06f3113168756114ae37efbd48cac9ffff2c9064a63dc599c71271` |
| 72 | `theorem` | [pi_Iic_mem_nhds'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-iic-mem-nhds-source-edition-2.md) | 741 | `result-track:21cd047043697389cca43158d8fd03c05021035aff64f23dcd5f8f5641348b07` |
| 73 | `theorem` | [pi_Icc_mem_nhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-icc-mem-nhds-source-edition-2.md) | 745 | `result-track:ffea30c88d100e7ed0a50b6f02a0e2e5e8cedfe5ad8febeb9cfa1ed424f3a737` |
| 74 | `theorem` | [pi_Icc_mem_nhds'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-icc-mem-nhds.md) | 749 | `result-track:4a9e8d7c52948950df5f4353dc409fc176ea6ee5603f4a94cff33d0eb125c5c8` |
| 75 | `theorem` | [pi_Iio_mem_nhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-iio-mem-nhds-source-edition-2.md) | 755 | `result-track:c49ffc6285cd59b774708ec6650a83c4f9491fd9b69c545e2027803510d7c480` |
| 76 | `theorem` | [pi_Iio_mem_nhds'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-iio-mem-nhds.md) | 759 | `result-track:3a097e55eb992efd3999ba49ef5b8255a08f70726a77e16d381ce183d1473351` |
| 77 | `theorem` | [pi_Ioc_mem_nhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-ioc-mem-nhds.md) | 763 | `result-track:4ca86efe9bd949aaad72934830de4a87ee221111f114d7e2d8762fcda61f770a` |
| 78 | `theorem` | [pi_Ioc_mem_nhds'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-ioc-mem-nhds-source-edition-2.md) | 768 | `result-track:e1459d4be1b49db91f4f7c0ae75af2c4a41a34be99fe0313683238886d98e300` |
| 79 | `theorem` | [pi_Ioo_mem_nhds](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-ioo-mem-nhds-source-edition-2.md) | 772 | `result-track:e87bf31e42a24d7e3b892359093acbcf739584ac61170502bccc4ff250c7e202` |
| 80 | `theorem` | [pi_Ioo_mem_nhds'](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/pi-ioo-mem-nhds.md) | 777 | `result-track:54d03cd980b29d0e79468b3045f43f8a866a0b4a2673755648ad4104f7d4ca0d` |
| 81 | `lemma` | [LeftOrdContinuous.continuousWithinAt_Iic](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/leftordcontinuous-continuouswithinat-iic.md) | 791 | `result-track:e44ee3525f006c476359607fd176461c35ea4689d7abc5edc655eefe2e83438f` |
| 82 | `lemma` | [RightOrdContinuous.continuousWithinAt_Ici](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/rightordcontinuous-continuouswithinat-ici.md) | 814 | `result-track:ff13ae1c276c2f63fa244c61ba2ab09afb4683a0b6bae99ef0fde1e7c20498e9` |
| 83 | `lemma` | [Continuous.of_ordContinuous](../../../../GeneralTopology/OrderBasicPublic.lean/declarations/continuous-of-ordcontinuous.md) | 819 | `result-track:0006afd38f3e97e7b84ab5b91985731831b4b27d4849af81f93aee4bebddfac9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0b3c9109e05020109d80412b4f9e52639755b630a8b4002f614935107cd63e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
