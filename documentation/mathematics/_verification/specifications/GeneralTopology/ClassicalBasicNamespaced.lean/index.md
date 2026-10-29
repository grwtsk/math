# Verification target: Classical Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cc6b3374c97b03c6a56d2c64b8139c81eb7cfbb`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.PartialEquiv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Real` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RelCWComplex.](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex.md) | 91 | `declaration-track:80139c40455561ff0d9876dbb9c5d8902d8487e8ea73783f629a73526114d1a5` |
| 2 | `class` | [CWComplex.](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex.md) | 130 | `declaration-track:5ffadd6a586c90137719aad7f643d6fefdd664cb31e0582332b78d2449f04536` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/instance.md) | 160 | `declaration-track:07971552155fe7e1f610e29e1e739e0f0df4a7575e69e24cf908e020f1f48680` |
| 4 | `def` | [RelCWComplex.toCWComplex](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-tocwcomplex.md) | 176 | `declaration-track:4977dd60b3f3427d1bb5c8e68277d295e7212f8583f8b46ac2e1d41705537808` |
| 5 | `lemma` | [RelCWComplex.toCWComplex_eq](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-tocwcomplex-eq.md) | 188 | `result-track:23e0c3695eaa379ec2f342e7811c24d93ebdaa914945a632a40ef801cd5bea8e` |
| 6 | `def` | [RelCWComplex.openCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-opencell.md) | 196 | `declaration-track:2fe8dc70560c369a737f26c89eea8123ee60715c54092c453d0f535bb178c1f3` |
| 7 | `def` | [RelCWComplex.closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-closedcell.md) | 200 | `declaration-track:e3e66efc35e609ddab7736fb6759e3685769d2d9b617ffba2aecbfea0acabbcf` |
| 8 | `def` | [RelCWComplex.cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-cellfrontier.md) | 205 | `declaration-track:585e0752abfb3c303952c5a49d02c8509563ba6638b2f45ec6a43d92954d909e` |
| 9 | `lemma` | [CWComplex.mapsTo](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-mapsto.md) | 215 | `result-track:af0f1fd7140dc1d44de197309965b645c93f09773710d89832269fa895cf373b` |
| 10 | `lemma` | [RelCWComplex.pairwiseDisjoint](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-pairwisedisjoint.md) | 224 | `result-track:3e16af7b2a13612bcdcc6fd561d5f0b48700dddd7c0e4bb605538d270dccd482` |
| 11 | `lemma` | [RelCWComplex.disjointBase](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-disjointbase.md) | 228 | `result-track:311cd053510177aacd4a8e4b0a4df7cb586e5abb62eafa36c51daa8116c5345a` |
| 12 | `lemma` | [RelCWComplex.disjoint_openCell_of_ne](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-disjoint-opencell-of-ne.md) | 232 | `result-track:5264ec40e5b6ebf73e43b8d3523a5b19a833c437eedefb90d1ae37f769b19752` |
| 13 | `lemma` | [RelCWComplex.cellFrontier_subset_base_union_finite_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-cellfrontier-subset-base-union-finite-closedcell.md) | 237 | `result-track:58feaebecbff3179c0c445eb32793de46138a0f54906568a1ae62730933fbd24` |
| 14 | `lemma` | [CWComplex.cellFrontier_subset_finite_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-cellfrontier-subset-finite-closedcell.md) | 245 | `result-track:1c4039df6e1e149bb9426b9b1b7505a2501816271df42e52f8e7df3db46cdf5b` |
| 15 | `lemma` | [RelCWComplex.union](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-union.md) | 252 | `result-track:211aa2f52f1d649373d126f7bd96fa12950ee7f52850389cfe99ae96931106df` |
| 16 | `lemma` | [CWComplex.union](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-union.md) | 255 | `result-track:f03cf1d636b2381c37b7ee46ee356b9535533895df22a3d3ac2fd11124c3cdc1` |
| 17 | `lemma` | [RelCWComplex.openCell_subset_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-opencell-subset-closedcell.md) | 260 | `result-track:0d0b7501a818dd84a06469734ec425dea63e0c65bcd4e651cfcd89510a1ef568` |
| 18 | `lemma` | [RelCWComplex.cellFrontier_subset_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-cellfrontier-subset-closedcell.md) | 263 | `result-track:06b63a1597587deac8db1bbd9bd7abebba85476b66736629d8d5579fb28d0b0f` |
| 19 | `lemma` | [RelCWComplex.cellFrontier_union_openCell_eq_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-cellfrontier-union-opencell-eq-closedcell.md) | 266 | `result-track:34cfed72f1edd8d84e14fe57a2b5eeb6c40cdd587314f7c8691c01c68691f4c7` |
| 20 | `lemma` | [RelCWComplex.map_zero_mem_openCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-map-zero-mem-opencell.md) | 272 | `result-track:61d47225d240a896e1e7833ce918d496055f75a31e62075aa5ae0baab32a5d28` |
| 21 | `lemma` | [RelCWComplex.map_zero_mem_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-map-zero-mem-closedcell.md) | 277 | `result-track:c2fa4f170ab7882a08ad2b05ff6d65da07a21f982bb8ed4d28037f5d29740bea` |
| 22 | `lemma` | [RelCWComplex.isCompact_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-iscompact-closedcell.md) | 281 | `result-track:ce43025dd7828d43b5485693e90f0063507428c83fb70b1ad4f362cc91167a9d` |
| 23 | `lemma` | [RelCWComplex.isClosed_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-isclosed-closedcell.md) | 285 | `result-track:c32883c4b8933d82cb56abe134e018f570504e01b192e98f070d9c2d98f16cfc` |
| 24 | `lemma` | [RelCWComplex.isCompact_cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-iscompact-cellfrontier.md) | 288 | `result-track:447f19b89ad9ac4567631f67361e1680f9602a9e89338c177345381adfa1b6ae` |
| 25 | `lemma` | [RelCWComplex.isClosed_cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-isclosed-cellfrontier.md) | 292 | `result-track:65d903570727c149566f99a5ae154a739152990f881747bebaea419340459c0f` |
| 26 | `lemma` | [RelCWComplex.closure_openCell_eq_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-closure-opencell-eq-closedcell.md) | 296 | `result-track:e2419666613a8a619ed81d9ec768461b5bce05a5cebedff12f59856a3c17ad4c` |
| 27 | `lemma` | [RelCWComplex.closed](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-closed.md) | 304 | `result-track:7f7bad27da350a667d69f8495548feecd107e62a55a47f2fdbc5cce37741f64e` |
| 28 | `lemma` | [CWComplex.closed](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-closed.md) | 310 | `result-track:c80d8994cfa245fabdef7c90c427dc2c4e1cda3ba99b457163422e252c972179` |
| 29 | `lemma` | [RelCWComplex.closedCell_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-closedcell-subset-complex.md) | 315 | `result-track:4b281b228d66ae8c5e66fb1c874e9561084edbcbd3e1fe2ecba7d916a01f9300` |
| 30 | `lemma` | [RelCWComplex.openCell_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-opencell-subset-complex.md) | 320 | `result-track:9cbfb5f057ebab55190df202da5d0d135071412472eaca5e6034a7aac492cc6a` |
| 31 | `lemma` | [RelCWComplex.cellFrontier_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-cellfrontier-subset-complex.md) | 324 | `result-track:72cb1beaa01010997c9e1818354c4e9b3b5440f5a0ec3a5467b5fa656b3fee31` |
| 32 | `lemma` | [RelCWComplex.closedCell_zero_eq_singleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-closedcell-zero-eq-singleton.md) | 328 | `result-track:49999a158420ee431f9c82c668f05341072c8fe63eceaf635f37b0859154823f` |
| 33 | `lemma` | [RelCWComplex.openCell_zero_eq_singleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-opencell-zero-eq-singleton.md) | 332 | `result-track:9938475c4049f48233e8da8fc9c93b69e2ab1db749ce415cd4a4786fa2f4e88a` |
| 34 | `lemma` | [RelCWComplex.cellFrontier_zero_eq_empty](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-cellfrontier-zero-eq-empty.md) | 336 | `result-track:546aef4b11c596b850a82541840c126f9b00bb981d0bdec0d73d06f2fd0b8f35` |
| 35 | `lemma` | [RelCWComplex.base_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-base-subset-complex.md) | 340 | `result-track:6de9b2d6892257d5fb3a25230e2373ed5c69365acfc6cd94d867e475ac3dc599` |
| 36 | `lemma` | [RelCWComplex.isClosed](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-isclosed.md) | 344 | `result-track:8380f60ce6355c910cc6991630c318a9ad4b941800cfb52310f39e5542a3386d` |
| 37 | `lemma` | [RelCWComplex.iUnion_openCell_eq_iUnion_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-iunion-opencell-eq-iunion-closedcell.md) | 355 | `result-track:2a26b7d6865d0b1149508898faad5b06f2b1a3495e869508ce638f29d3936e2d` |
| 38 | `lemma` | [RelCWComplex.union_iUnion_openCell_eq_complex](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-union-iunion-opencell-eq-complex.md) | 384 | `result-track:7168159d16815a5b8f3f86197cdbd5a0fbee94893b349011788074a97a208b3b` |
| 39 | `lemma` | [CWComplex.iUnion_openCell_eq_complex](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-iunion-opencell-eq-complex.md) | 391 | `result-track:e562e081c42bcdbeddf68fba79c39a294c3186956e7a64db3e90feecf5562699` |
| 40 | `lemma` | [RelCWComplex.eq_of_not_disjoint_openCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-eq-of-not-disjoint-opencell.md) | 396 | `result-track:770a9b891578f988ef8a0591e3d37c9c16e2bf86b09ed5c298066ce3c8224bdd` |
| 41 | `lemma` | [RelCWComplex.disjoint_base_iUnion_openCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-disjoint-base-iunion-opencell.md) | 402 | `result-track:f0813da14d722d27d2edda4ef43b5e5e18b6b39fb440117c7acbad4f385083e2` |
| 42 | `lemma` | [RelCWComplex.isClosed_inter_cellFrontier_succ_of_le_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-isclosed-inter-cellfrontier-succ-of-le-isclosed-inter-close.md) | 411 | `result-track:9e6e690d260a32d8a1a1c61e12c6c8a1a2b7ca100c48e4c98b22886205775a76` |
| 43 | `lemma` | [CWComplex.isClosed_inter_cellFrontier_succ_of_le_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-isclosed-inter-cellfrontier-succ-of-le-isclosed-inter-closedce.md) | 427 | `result-track:14a69209b5deaeb5f7bda18eecf83dc54e949597da60619a9f18ae4265f621d9` |
| 44 | `lemma` | [RelCWComplex.isClosed_of_isClosed_inter_openCell_or_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-isclosed-of-isclosed-inter-opencell-or-isclosed-inter-close.md) | 436 | `result-track:345b8aca4c1100fa6a5b06ae9f65e23490962cccae7dd324959c4951318e6edb` |
| 45 | `lemma` | [CWComplex.isClosed_of_isClosed_inter_openCell_or_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-isclosed-of-isclosed-inter-opencell-or-isclosed-inter-closedce.md) | 456 | `result-track:30329cba84bc88b5367375c7a4a829c87354c4041a8f08a8dce9d16cdb5c0b65` |
| 46 | `lemma` | [RelCWComplex.cellFrontier_subset_finite_openCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-cellfrontier-subset-finite-opencell.md) | 463 | `result-track:fc7bb867aec056c36f2133040e0ced950d68d170d0b5211c0e9a7603f62749fc` |
| 47 | `lemma` | [CWComplex.cellFrontier_subset_finite_openCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-cellfrontier-subset-finite-opencell.md) | 498 | `result-track:96c065fe93c71e111b391c45d2484d13f3bc9d2f156ffd419c10c6a7984521aa` |
| 48 | `def` | [RelCWComplex.skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeletonlt.md) | 508 | `declaration-track:78cf1708219c652d9da6b61108d30c69178dbc0c204e308a7bb9027f10fd8e70` |
| 49 | `def` | [RelCWComplex.skeleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeleton.md) | 513 | `declaration-track:6bcd9e4aee423eaa6050ec6df868603141782d31395fcec6e90d2d83383f26d4` |
| 50 | `lemma` | [RelCWComplex.skeletonLT_zero_eq_base](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeletonlt-zero-eq-base.md) | 522 | `result-track:c18ceb817bca7a243afd26a2b701f0b0ba07c0b2682c87a4a53467b5f6ed43f0` |
| 51 | `lemma` | [CWComplex.skeletonLT_zero_eq_empty](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-skeletonlt-zero-eq-empty.md) | 525 | `result-track:195ecb90830359b1216011e8bfa0a77e5206ab2ef3b211c20759e876ec153264` |
| 52 | `lemma` | [RelCWComplex.skeletonLT_top](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeletonlt-top.md) | 528 | `result-track:5ae4565915d29dcdf4fa8aa3cc68d7c79544662891f8c06b02b504d6d2f0f4d1` |
| 53 | `lemma` | [RelCWComplex.skeleton_top](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeleton-top.md) | 531 | `result-track:06dacd155838953e13ad296840bcd0e683abca626858cc358a90f57e804d474b` |
| 54 | `lemma` | [RelCWComplex.skeletonLT_mono](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeletonlt-mono.md) | 533 | `result-track:d72b71f055276508c9c96b749770866d97e911e8ef12af16feeed0490b6b9fda` |
| 55 | `lemma` | [RelCWComplex.skeletonLT_monotone](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeletonlt-monotone.md) | 541 | `result-track:8f5dd41a199a48e3ec53d0cad2e748830782f827e1868f0089ea8d44e803f335` |
| 56 | `lemma` | [RelCWComplex.skeleton_mono](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeleton-mono.md) | 544 | `result-track:f6c4a1418c89f876cf43246d0280177dbd4e2cf6caf144c70def2454341837a0` |
| 57 | `lemma` | [RelCWComplex.skeleton_monotone](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeleton-monotone.md) | 548 | `result-track:3e104f5b5b7ce17c1cd6628618d83f85e78321d2ecc7f5658cd15c3ff5de643c` |
| 58 | `lemma` | [RelCWComplex.skeletonLT_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeletonlt-subset-complex.md) | 551 | `result-track:d7de0711436e845b7c426515467e4b7b99101379385e4971bc3273c141b66895` |
| 59 | `lemma` | [RelCWComplex.skeleton_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeleton-subset-complex.md) | 555 | `result-track:1273a84658188025cff24dfdc98a36464c9bc87f4187a122a2ad554d72302a46` |
| 60 | `lemma` | [RelCWComplex.closedCell_subset_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-closedcell-subset-skeletonlt.md) | 559 | `result-track:f2dbff4650723c3fc314048c8b7941d9da6254946ae932d50ad825f05e0be053` |
| 61 | `lemma` | [RelCWComplex.closedCell_subset_skeleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-closedcell-subset-skeleton.md) | 566 | `result-track:3b6e0291dbe9bbce1f7050f49b9dd6197d1b46f25f2a0cbb85c4f1d7d3277557` |
| 62 | `lemma` | [RelCWComplex.openCell_subset_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-opencell-subset-skeletonlt.md) | 570 | `result-track:490dcbe70a4a9daa2418192f1dcdf5a7e9e914aaa739b2e4d5a7377ff440bd86` |
| 63 | `lemma` | [RelCWComplex.openCell_subset_skeleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-opencell-subset-skeleton.md) | 574 | `result-track:793c26b731163340509ab6339b68a70ca745047e82fd194edb79bb3b5b4e89d0` |
| 64 | `lemma` | [RelCWComplex.cellFrontier_subset_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-cellfrontier-subset-skeletonlt.md) | 578 | `result-track:3af7cddd03db5575155042ce3e0a7b921f12ccbda067abe94217e04d7fbf0a0f` |
| 65 | `lemma` | [RelCWComplex.cellFrontier_subset_skeleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-cellfrontier-subset-skeleton.md) | 588 | `result-track:78b569d16041cf743fda9f8434e287bcde489679d6ee259551f36211f0346b01` |
| 66 | `lemma` | [RelCWComplex.iUnion_cellFrontier_subset_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-iunion-cellfrontier-subset-skeletonlt.md) | 592 | `result-track:520b9185aa39d4041806d82f73203fb1ba148370c77b69c08f6d2a367f265164` |
| 67 | `lemma` | [RelCWComplex.iUnion_cellFrontier_subset_skeleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-iunion-cellfrontier-subset-skeleton.md) | 596 | `result-track:25ec05e9586f32383d3977ac65e27decc7cd2ff06aa79c055e0d80e53271688f` |
| 68 | `lemma` | [RelCWComplex.base_subset_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-base-subset-skeletonlt.md) | 600 | `result-track:eba3822595b82a4b4b271eebda134158b33203ff6d1af34eb91f3a8b64fdde86` |
| 69 | `lemma` | [RelCWComplex.base_subset_skeleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-base-subset-skeleton.md) | 603 | `result-track:2cb41b54f752bdd4fa7a845e7c14817908cde7a71493b8305db1d306f19be22b` |
| 70 | `lemma` | [RelCWComplex.skeletonLT_union_iUnion_closedCell_eq_skeletonLT_succ](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeletonlt-union-iunion-closedcell-eq-skeletonlt-succ.md) | 606 | `result-track:d4a909499d6c169f8ffabc30073d02f4df13e017e8624a499d8448d14aae1198` |
| 71 | `lemma` | [RelCWComplex.skeleton_union_iUnion_closedCell_eq_skeleton_succ](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeleton-union-iunion-closedcell-eq-skeleton-succ.md) | 613 | `result-track:2ec48b36b287de11350d51821e5f3fad2c98c4d48559ab5f58f951025ebfe3ef` |
| 72 | `lemma` | [RelCWComplex.iUnion_openCell_eq_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-iunion-opencell-eq-skeletonlt.md) | 618 | `result-track:426860a95a7a56884a2dcc1007a12e93518d5ac466be7d9f271202a4d40ded64` |
| 73 | `lemma` | [CWComplex.iUnion_openCell_eq_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-iunion-opencell-eq-skeletonlt.md) | 622 | `result-track:22b67a7f4c2b83584eb44c628cc54c70ac797e366b4c59437ab1578b4147cbbc` |
| 74 | `lemma` | [RelCWComplex.iUnion_openCell_eq_skeleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-iunion-opencell-eq-skeleton.md) | 626 | `result-track:99314a3d9cd010c9ed5b53b3c642c4bede51ffc8f224ce59ab944e782fd08dd2` |
| 75 | `lemma` | [CWComplex.iUnion_openCell_eq_skeleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-iunion-opencell-eq-skeleton.md) | 630 | `result-track:1644257e5341c8c90af6c683b7ddc45da0da45dbd7f4ce2316bc41ae54552f86` |
| 76 | `lemma` | [RelCWComplex.mem_skeletonLT_iff](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-mem-skeletonlt-iff.md) | 634 | `result-track:d067827ccdda49ef4781412091d0139b1cc39e1eafd3f10f111b609d459d7e99` |
| 77 | `lemma` | [CWComplex.mem_skeletonLT_iff](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-mem-skeletonlt-iff.md) | 638 | `result-track:cb4f577e2c3030dae2629b2fe258223a962008922210d0c3bb7956293d60cc66` |
| 78 | `lemma` | [RelCWComplex.mem_skeleton_iff](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-mem-skeleton-iff.md) | 642 | `result-track:5e08fa80eadaa8ce9940fcc81ef4fa37f4c271f3548b49596f3a4b1de4381173` |
| 79 | `lemma` | [CWComplex.exists_mem_openCell_of_mem_skeleton](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/cwcomplex-exists-mem-opencell-of-mem-skeleton.md) | 651 | `result-track:90d82e38a1c934901413a3c87c905baadeed289a1ece0597610f322ed3d19129` |
| 80 | `lemma` | [RelCWComplex.disjoint_skeletonLT_openCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-disjoint-skeletonlt-opencell.md) | 656 | `result-track:a80900931b343628f7800eb839265a556f2b219769b110e552c88a9068261ae2` |
| 81 | `lemma` | [RelCWComplex.disjoint_skeleton_openCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-disjoint-skeleton-opencell.md) | 668 | `result-track:d73526b3fd156b1553098405a69ea9477385baf5be878e8bcab5a25526e6d465` |
| 82 | `lemma` | [RelCWComplex.skeletonLT_inter_closedCell_eq_skeletonLT_inter_cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeletonlt-inter-closedcell-eq-skeletonlt-inter-cellfrontie.md) | 674 | `result-track:e384f186662fefef801cc74ecb668f444ecf96c63183d0620b2979b80c5756bd` |
| 83 | `lemma` | [RelCWComplex.skeleton_inter_closedCell_eq_skeleton_inter_cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-skeleton-inter-closedcell-eq-skeleton-inter-cellfrontier.md) | 684 | `result-track:d7bad6ee2e8ed9a1113b3e6226cbd2baa35528f6cb5c3823ed2fa6436e7eab7d` |
| 84 | `lemma` | [RelCWComplex.disjoint_interior_base_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-disjoint-interior-base-closedcell.md) | 689 | `result-track:af6817b63827cae790505929dcf9660ce45433002145ae8fa148fa65b718f164` |
| 85 | `lemma` | [RelCWComplex.disjoint_interior_base_iUnion_closedCell](../../../../GeneralTopology/ClassicalBasicNamespaced.lean/declarations/relcwcomplex-disjoint-interior-base-iunion-closedcell.md) | 701 | `result-track:db2a2068ffb504a004c6042be4e054575c58f00fb7ec87bf9f93ad2c68151b1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc58f7fd0df97e434a3c744b4278fabab8d4343e89d780d4e1c0820cd800b8bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Varianta1893c7313cbb5536b4dd9edec7a1775a3685a9564acfeeafb19c498021e32ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
