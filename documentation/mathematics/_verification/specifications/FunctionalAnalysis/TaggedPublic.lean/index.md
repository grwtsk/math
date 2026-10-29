# Verification target: Tagged Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f27201c4aaac73501bda93fa4ff61f3180da3a15",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tagged/Variant9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TaggedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TaggedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f27201c4aaac73501bda93fa4ff61f3180da3a15`.

Source path: `GRWTSK/Topology/GeneralTopology/Tagged/Variant9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tagged/Variant9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean.json)

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
| 1 | `structure` | [TaggedPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/taggedprepartition.md) | 41 | `declaration-track:459584518df672f2be3ca1b3d4f89947b7d09447ed74a238fe1b1346687ac6b0` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/instance-source-edition-2.md) | 52 | `declaration-track:e47e3ac74256a8574262250315a8613f3f7edc849722a3fdf91d2094f4804749` |
| 3 | `theorem` | [mem_toPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/mem-toprepartition.md) | 56 | `result-track:2c4d02ec645ca45a1d3d17629a7de413cdc5884627942fb30b22c3173f62fb42` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/mem-mk.md) | 59 | `result-track:4e0895b42914eda6bb5f00e71d3e4e9f9e07de2703af807bb66d5aacefce61b9` |
| 5 | `def` | [iUnion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/iunion.md) | 62 | `declaration-track:f079af9e691c7983992145c5a3544832a40425c6a18126390e3ff72c0f7119a4` |
| 6 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/iunion-def.md) | 65 | `result-track:38148ec29d7fcf8ad47b61c4f28addbac7e8de62dcbd14b66b33c11d40f3ca2a` |
| 7 | `theorem` | [iUnion_mk](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/iunion-mk.md) | 68 | `result-track:0d7a36ba814789eb868ffefcfc0b29909f27b950be7f89e4f5faeb2c674702e3` |
| 8 | `theorem` | [iUnion_toPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/iunion-toprepartition.md) | 71 | `result-track:a119904c7061ddd3c305b12431dd90305684b476a01b831ab46d10922e0dca73` |
| 9 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/mem-iunion.md) | 74 | `result-track:af1b5e7c48857b9122d4dfe539a446510b906068c8d63a508fedb3e83d3e8bd7` |
| 10 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/subset-iunion.md) | 78 | `result-track:21517920b2bae7952a8de55e227f3b2b42357415a07ced38c5185f841decf307` |
| 11 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/iunion-subset.md) | 81 | `result-track:a4fdb79008b5dd40b7325673e1d9315671ce1d688238d994b15cffc15f2729f8` |
| 12 | `def` | [IsPartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ispartition.md) | 85 | `declaration-track:633aeceeab3fc1e8900ae3287fd1ca6708c7345cb97c5517c0e98ead120e4347` |
| 13 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ispartition-iff-iunion-eq.md) | 88 | `result-track:99b4b27a6a5b08945e9d74722dc1c449506ce319721e46124547973723cc4f25` |
| 14 | `def` | [filter](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/filter.md) | 93 | `declaration-track:2cdac800252f8516cc3abc00df2ef5f9007f2d08620c5eef1fbe199cd1fa6d94` |
| 15 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/mem-filter.md) | 97 | `result-track:0ea0a0bc9f4f6c9b19362f30d79a7e2eecfc0fcb0f5e7605d6ab44fd11ecc294` |
| 16 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/iunion-filter-not.md) | 101 | `result-track:a06d62317c8f199a34558127b9d800faac14657da0a4ccc18ae13125dfc35431` |
| 17 | `def` | [biUnionTagged](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/biuniontagged.md) | 114 | `declaration-track:e9c1cbe80ca69d108dc388968c9b7b3d612b44652fc3dfc3131997701f9ef443` |
| 18 | `theorem` | [mem_biUnionTagged](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/mem-biuniontagged.md) | 121 | `result-track:568bbf31cd7310086fdb38b3fc56cfd5d79a2fbb0cb6bdbf91f56abc6aa6fc56` |
| 19 | `theorem` | [tag_biUnionTagged](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/tag-biuniontagged.md) | 125 | `result-track:8d4563ac37ffdd38d54cacf65f2aa3089d2a0dbabb16d2230d4876cd18b29ca4` |
| 20 | `theorem` | [iUnion_biUnionTagged](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/iunion-biuniontagged.md) | 131 | `result-track:147c1f8e326552a569a111e8ffe28c97a79bd47df371e4e80c67e056356cf050` |
| 21 | `theorem` | [forall_biUnionTagged](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/forall-biuniontagged.md) | 135 | `result-track:5888ccb73d754357fc694f80e707d98a24a45a63d0a463bb8b98c38cd5ee98b2` |
| 22 | `theorem` | [IsPartition.biUnionTagged](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ispartition-biuniontagged.md) | 146 | `result-track:7c3ea226235987aad32eaeb30a76d027566feacad6a62ff60258d27c5b4cd979` |
| 23 | `def` | [biUnionPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/biunionprepartition.md) | 163 | `declaration-track:cde34fb668e6f338b7c5294edf02e50f76a6239a19f859a92df924d1b5923929` |
| 24 | `theorem` | [IsPartition.biUnionPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ispartition-biunionprepartition.md) | 169 | `result-track:b2b6dffee97a3b1d6bac6a28eb9bc8d7f8b8c8d6541fe47f9deb0940cb27e2be` |
| 25 | `def` | [infPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/infprepartition.md) | 178 | `declaration-track:a96da76d68400a4730a6d2345496eb5d7298db030b23de40064974999243808c` |
| 26 | `theorem` | [infPrepartition_toPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/infprepartition-toprepartition.md) | 182 | `result-track:dccb15aec6ee554eb1986a964bab2a0266477ba95eba6a24df55b98ebaa3c48d` |
| 27 | `theorem` | [mem_infPrepartition_comm](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/mem-infprepartition-comm.md) | 185 | `result-track:771572df46a6fb563ff3c6e7b013d23e4043309d66444f13e7dfc85af9204745` |
| 28 | `theorem` | [IsPartition.infPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ispartition-infprepartition.md) | 189 | `result-track:77df4aa94889cd3e7368d41d6407d0491c7669c307023fa4ec92180cfab5e748` |
| 29 | `def` | [IsHenstock](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ishenstock.md) | 197 | `declaration-track:b25635f30f1082ee65bdea358f29206b381d1c735fad715cea756f15dcdca576` |
| 30 | `theorem` | [isHenstock_biUnionTagged](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ishenstock-biuniontagged.md) | 201 | `result-track:7174ab73a242ff742d3f4e10fdbc439844a2ae7e045a7dbd3b9bd25e950e3f47` |
| 31 | `theorem` | [IsHenstock.card_filter_tag_eq_le](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ishenstock-card-filter-tag-eq-le.md) | 206 | `result-track:d1e6feff78eff42f01b86cc1711e7b5c9702d64b5d8b11a06ef9920bcb1a9a92` |
| 32 | `def` | [IsSubordinate](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/issubordinate.md) | 218 | `declaration-track:8b890b445fbc0cbf4657dd9a6b381b622084329d00101fdaddd630680cc89357` |
| 33 | `theorem` | [isSubordinate_biUnionTagged](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/issubordinate-biuniontagged.md) | 224 | `result-track:2702e25a7d90b0f55ae3c7e418113b1f176781e3f9da5b913eb6265f6d53901c` |
| 34 | `theorem` | [IsSubordinate.biUnionPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/issubordinate-biunionprepartition.md) | 229 | `result-track:67290a9e2b2deafbc60497fd755a954238b372c4564e0df2d2a5bf0491c3a9a3` |
| 35 | `theorem` | [IsSubordinate.infPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/issubordinate-infprepartition.md) | 234 | `result-track:a9c2c84c51f8248beb227ccaf78c4065ad2a7f28af7ba0a205479214fd2377f7` |
| 36 | `theorem` | [IsSubordinate.mono'](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/issubordinate-mono.md) | 238 | `result-track:c4396bfb0424705d3a3206dab110f22e420de6a0af539de8648344eadb6f8b4b` |
| 37 | `theorem` | [IsSubordinate.mono](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/issubordinate-mono-source-edition-2.md) | 242 | `result-track:d1bc5bd636420e4f574a4bf9c3524ce971b45463d9019700fcf350cbe5c7079a` |
| 38 | `theorem` | [IsSubordinate.diam_le](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/issubordinate-diam-le.md) | 246 | `result-track:19e7b4a1212578c5c76c5511a68be0c1f448e5d07bb3ea4fe8c9a870f1d044c6` |
| 39 | `def` | [single](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/single.md) | 255 | `declaration-track:0ab660ae0d81d5e198069b96c371be59d389e36f9135a3d725fad11d2a6ecb21` |
| 40 | `theorem` | [mem_single](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/mem-single.md) | 259 | `result-track:c3bea7f771c2e2cb1407e794993dd0e6888a4fde464c329ea59a986d06cbfed1` |
| 41 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/instance.md) | 262 | `declaration-track:d32837998fa54d874babc2909e5149391ee8e074cd7fe1749a50d33da8d15a36` |
| 42 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ispartition-single-iff.md) | 265 | `result-track:05592dc08dadc5d8fce8086ac6566e18e05a8c2cb522271e3fb111f34a4dec71` |
| 43 | `theorem` | [isPartition_single](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ispartition-single.md) | 269 | `result-track:31cb9b24a4292c58f945bb637094cf21c31c30029b268ed140df93ff6f1b0624` |
| 44 | `theorem` | [forall_mem_single](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/forall-mem-single.md) | 272 | `result-track:4869277e448b19a2028e901de7e7a15abcfa124e3ec93e338fafefda3d2cd887` |
| 45 | `theorem` | [isHenstock_single_iff](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ishenstock-single-iff.md) | 276 | `result-track:680a0ebc41c08cebb502936cbdf78dbb62d9a9b0c1fcf87b4d04da775f9fe3bd` |
| 46 | `theorem` | [isHenstock_single](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ishenstock-single.md) | 280 | `result-track:02c82d9391b8570c275f6e224e5b5588fea7a2e6b00b346cdff0ba10a19ba34f` |
| 47 | `theorem` | [isSubordinate_single](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/issubordinate-single.md) | 284 | `result-track:f4ef2541c47ed18857a096c644cc090628403c5a4c842609edd0fd8d5eea4e1f` |
| 48 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/iunion-single.md) | 289 | `result-track:a181cc218bac6550cd32bd621ef3bf0f0ffd80245710a01ecab409dc4cd34d75` |
| 49 | `def` | [disjUnion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/disjunion.md) | 294 | `declaration-track:f45734fc18d359152305bbc1fb9514d542ced7a83ff62550f46c75170ccd568e` |
| 50 | `theorem` | [disjUnion_boxes](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/disjunion-boxes.md) | 305 | `result-track:1ab21c23f611382d6f70c5eafd6a1660abcec4c96ebe5da4482e5766945341f0` |
| 51 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/mem-disjunion.md) | 309 | `result-track:7f51868f63c023e2a04c0c24874c604dc42f3f9ce8554c85ae08bbf13eca61ad` |
| 52 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/iunion-disjunion.md) | 314 | `result-track:c70b7d0755017c06c26338b5aa7e4bf087ac4dcbaf97b798fb7c9988d265c69b` |
| 53 | `theorem` | [disjUnion_tag_of_mem_left](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/disjunion-tag-of-mem-left.md) | 318 | `result-track:2cf8e48091244283af3fcfdcee62991d35adb57fd12526f0d65a2e7f50c4bf8e` |
| 54 | `theorem` | [disjUnion_tag_of_mem_right](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/disjunion-tag-of-mem-right.md) | 322 | `result-track:55be721ec80dd16fde4d4ba3c55ff939e717665f4f69b0017e3c9e542447e8c2` |
| 55 | `theorem` | [IsSubordinate.disjUnion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/issubordinate-disjunion.md) | 327 | `result-track:1678fc587335978c28baff722928c9723048ffdbf249dfff8d74c12fdcbf72ec` |
| 56 | `theorem` | [IsHenstock.disjUnion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/ishenstock-disjunion.md) | 336 | `result-track:b4b083de176a23ba52ae603486c01d4ae3b301f865760c7e7f89d029aa732888` |
| 57 | `def` | [embedBox](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/embedbox.md) | 346 | `declaration-track:d0bd303306096d72db3f4a5f7612d0a31ab427a3cad586196db85cca92c5957f` |
| 58 | `def` | [distortion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/distortion.md) | 362 | `declaration-track:66133ac9150b45976ae07ecb5adcb3712c950791ebbe78bbaf6627c57d0ce814` |
| 59 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/distortion-le-of-mem.md) | 365 | `result-track:28fee37081852be0ef032eb606711d78054eb630b79e832420db7c8a9d89a096` |
| 60 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/distortion-le-iff.md) | 368 | `result-track:a15de05e1df7abd93c650b0caa861c8284d61143266a69c36910925234d27bad` |
| 61 | `theorem` | [_root_.BoxIntegral.Prepartition.distortion_biUnionTagged](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/root-boxintegral-prepartition-distortion-biuniontagged.md) | 372 | `result-track:7380726c486fbd5da4655c006c3a9fc368a52f80dbf613e6239228493121297e` |
| 62 | `theorem` | [distortion_biUnionPrepartition](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/distortion-biunionprepartition.md) | 378 | `result-track:a045e25dcc3d771fd79d89ae9a2b807ba97bbded611e6599a1ecdc8b357a3192` |
| 63 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/distortion-disjunion.md) | 383 | `result-track:4c232dcd7756ffd88a73fcd72363462abcb4dda89f17c91741107340b9d035ab` |
| 64 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/distortion-of-const.md) | 387 | `result-track:07f0f0f8a7aefd4c1d56e8676d74e9af54fcb7289444bf3aa60578225144e36d` |
| 65 | `theorem` | [distortion_single](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/distortion-single.md) | 392 | `result-track:7750874c372314c758fd97cd65bcd8dea4b422a1e8b06d5cdb53c9c46c638a9c` |
| 66 | `theorem` | [distortion_filter_le](../../../../FunctionalAnalysis/TaggedPublic.lean/declarations/distortion-filter-le.md) | 396 | `result-track:17adbf6ac8964fc101d34fdb76e7f12aec25a058fb55cec6f3251363b87316f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3606762e94efac9ee40eae24113f909bdb28c423bc375e8d133ff88f0927b761 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Tagged/Variant9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Tagged/Variant9a0244b443bab58557125b6b141e099004d316a34cb7208eb289ae0a03209715.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
