# Verification target: Lindelof Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf1dc92979e8bceb698d5d862049056ec9b51779",
  "lexical_observation_count": 113,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LindelofPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LindelofPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf1dc92979e8bceb698d5d862049056ec9b51779`.

Source path: `GRWTSK/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean.json)

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
| 1 | `def` | [IsLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof.md) | 51 | `declaration-track:9d9e5637f7771ee4ae7f05257a029ad44c7efb486f8ebca8d2d82d91b9d1a7ec` |
| 2 | `theorem` | [IsLindelof.compl_mem_sets](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-compl-mem-sets.md) | 56 | `result-track:fbd6d6e642aa42d822e5c4ec314b68321497b660e0759bbbe2746588de9c2803` |
| 3 | `theorem` | [IsLindelof.compl_mem_sets_of_nhdsWithin](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-compl-mem-sets-of-nhdswithin.md) | 64 | `result-track:941170061b963e9c00e25ca20b6032adf156d1acbdc2070fc08983de1d26b1ac` |
| 4 | `theorem` | [IsLindelof.induction_on](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-induction-on.md) | 73 | `result-track:42765eb6d4ec63ab3d05fcfd0d70ba9fe0cd304ecdd4f325e7958cc94dbc038b` |
| 5 | `theorem` | [IsLindelof.inter_right](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-inter-right.md) | 82 | `result-track:e7e6d2d73a55797cdf01d3e0dbddde3bc81dff696dc7bfe884c0578935aa7d2c` |
| 6 | `theorem` | [IsLindelof.inter_left](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-inter-left.md) | 90 | `result-track:32bf2986eebf01ad8cfb49761344b0fa2088a29336597185fe3d35a512f5395b` |
| 7 | `theorem` | [IsLindelof.diff](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-diff.md) | 94 | `result-track:3214fae1fba05f9e790350491595c9d1afbd4eadb3958a7362ec8b2f5626cb86` |
| 8 | `theorem` | [IsLindelof.of_isClosed_subset](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-of-isclosed-subset.md) | 98 | `result-track:e53a0991cede61df19e9237ff9628edfd46631a66d00dbf223619a063df77b4f` |
| 9 | `theorem` | [IsLindelof.image_of_continuousOn](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-image-of-continuouson.md) | 102 | `result-track:62c66878f4dc79c0fa3a46773d502cf8fe6ab8867b76f37cef27b8b7a08d81d6` |
| 10 | `theorem` | [IsLindelof.image](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-image.md) | 117 | `result-track:e28959a85274a8997abf1f7ba22f7ba446bba9ff83220b4ad14e71c8cd4a06e3` |
| 11 | `theorem` | [IsLindelof.adherence_nhdset](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-adherence-nhdset.md) | 122 | `result-track:08604c71e8ed1845e6011920dd812aac2546fb2a200c6d5c2ca9aaec265b90de` |
| 12 | `theorem` | [IsLindelof.elim_countable_subcover](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-elim-countable-subcover.md) | 133 | `result-track:9e488ad07934cc91f91403be346e9cb12eb86854d3ed62c5e6d2dc1519a58051` |
| 13 | `theorem` | [IsLindelof.elim_nhds_subcover'](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-elim-nhds-subcover.md) | 157 | `result-track:9c0f5980df6e3eae95caf9e65cfc09262d4a36c88eb6576927b91da7425be36a` |
| 14 | `theorem` | [IsLindelof.elim_nhds_subcover](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-elim-nhds-subcover-source-edition-2.md) | 171 | `result-track:d62cff32a7084f0c9b72266532f8f49245fcdbacd727a7ad62140b43e1842a3d` |
| 15 | `theorem` | [IsLindelof.indexed_countable_subcover](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-indexed-countable-subcover.md) | 184 | `result-track:05c84ebe4d3be907151d3454234be6a9d7e764b601ef221eb1e4bec34de8ed16` |
| 16 | `theorem` | [IsLindelof.disjoint_nhdsSet_left](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-disjoint-nhdsset-left.md) | 200 | `result-track:7cacbd4af61fdfb2b069b3373ba042cb10a8c33b53ba6c9d66390600b31fba5c` |
| 17 | `theorem` | [IsLindelof.disjoint_nhdsSet_right](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-disjoint-nhdsset-right.md) | 215 | `result-track:7074f5b22bf2161261424ed4568b9abf96a63deb3d429cbcfab19acc7baee6df` |
| 18 | `theorem` | [IsLindelof.elim_countable_subfamily_closed](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-elim-countable-subfamily-closed.md) | 221 | `result-track:840a174dc08a1a0c8185965babd889212e73a7cc1d0b7167e266ad907ce59f2d` |
| 19 | `theorem` | [IsLindelof.inter_iInter_nonempty](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-inter-iinter-nonempty.md) | 241 | `result-track:145f1571bb0b4bfbc925145160d6fd6a4fb172dc913c80bbfb7419fa0ff719bf` |
| 20 | `theorem` | [IsLindelof.elim_countable_subcover_image](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-elim-countable-subcover-image.md) | 249 | `result-track:f9911975544921c23357ff25be296dd8fbfe33f4ff4ee47e2f07b14d05d56518` |
| 21 | `theorem` | [isLindelof_of_countable_subcover](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-of-countable-subcover.md) | 260 | `result-track:0ab3816c47b3e83b764e4166cb04b710a4c967708ff045c5562d6ee88e46e37d` |
| 22 | `theorem` | [isLindelof_of_countable_subfamily_closed](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-of-countable-subfamily-closed.md) | 279 | `result-track:329d5f748514f40996989f94059f87b20257c976e844ead298a0ed01ba2a9f03` |
| 23 | `theorem` | [isLindelof_iff_countable_subcover](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-iff-countable-subcover.md) | 292 | `result-track:e70fc90848bc902279f94d83abb8229f7460d6546ccdaefe571d35d965fe3d66` |
| 24 | `theorem` | [isLindelof_iff_countable_subfamily_closed](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-iff-countable-subfamily-closed.md) | 300 | `result-track:55bc51102c94cb9d719b81d68c17fb7dd2edb3305a5ae1cc4aad029bd755f6a2` |
| 25 | `theorem` | [isLindelof_empty](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-empty.md) | 308 | `result-track:b81be6f55a9341c15e1d2f95b9c391a497d75e9f3c300c25258d8ae16e2eadf0` |
| 26 | `theorem` | [isLindelof_singleton](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-singleton.md) | 313 | `result-track:86ffe92d6f211fbd5a74ef99c2f133c58d5483168d14255bd1a080feb442ff6b` |
| 27 | `theorem` | [Set.Subsingleton.isLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/set-subsingleton-islindelof.md) | 317 | `result-track:6b3f32be731c71659f1c38aa05d510f827eb37cd957a03e215138be351dbaf8d` |
| 28 | `theorem` | [Set.Countable.isLindelof_biUnion](../../../../GeneralTopology/LindelofPublic.lean/declarations/set-countable-islindelof-biunion.md) | 320 | `result-track:cffbad27860441b423c6253cefadd36317fe5a6d154ee676d9415ad0051aeda7` |
| 29 | `theorem` | [Set.Finite.isLindelof_biUnion](../../../../GeneralTopology/LindelofPublic.lean/declarations/set-finite-islindelof-biunion.md) | 339 | `result-track:5dab23c005620fa02c8d744b1091a629f5625dff90cf52218b89f7322ccb1f71` |
| 30 | `theorem` | [Finset.isLindelof_biUnion](../../../../GeneralTopology/LindelofPublic.lean/declarations/finset-islindelof-biunion.md) | 343 | `result-track:426653201f1cea51de2284d2caa1a0e9821875f34c983cb40f1ada6ff1e3ef29` |
| 31 | `theorem` | [isLindelof_accumulate](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-accumulate.md) | 347 | `result-track:1e716eb25a810434f2e6b9d7cd50eb93e5c3aedfca07af3a6c985b96d0fe6c01` |
| 32 | `theorem` | [Set.Countable.isLindelof_sUnion](../../../../GeneralTopology/LindelofPublic.lean/declarations/set-countable-islindelof-sunion.md) | 351 | `result-track:bc0a1271cd31712d28633f30b70d0f006b2c3381bc77fa0d4f6bfe6b4be4e06c` |
| 33 | `theorem` | [Set.Finite.isLindelof_sUnion](../../../../GeneralTopology/LindelofPublic.lean/declarations/set-finite-islindelof-sunion.md) | 355 | `result-track:e0d475bda06210e064bd78c72c2dbfb8b4b69fe1f79f9db7a3b9355eaa36a33b` |
| 34 | `theorem` | [isLindelof_iUnion](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-iunion.md) | 359 | `result-track:c3ecf77b057d022b5b193139a859c54b72a95b5caed3a8588521a0dcfde55aa8` |
| 35 | `theorem` | [Set.Countable.isLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/set-countable-islindelof.md) | 362 | `result-track:42e7b0b993003d56e47171d8e5abd12d2b0af53957f2a70b161b51c5a6e75da2` |
| 36 | `theorem` | [Set.Finite.isLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/set-finite-islindelof.md) | 365 | `result-track:64e2b38ce10cc154ff63b486cc261392af5dcc62b278506239a0834ae2a45903` |
| 37 | `theorem` | [IsLindelof.countable_of_discrete](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-countable-of-discrete.md) | 368 | `result-track:2de751cf23e39c70f77cc6ce7ccc47b565218d54247f064c456b779f62eea87e` |
| 38 | `theorem` | [isLindelof_iff_countable](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-iff-countable.md) | 375 | `result-track:5587eab6d34b2c9f12553d383d2a1ef5a67549a45e397cca8cff5ca31306a6e7` |
| 39 | `theorem` | [IsLindelof.union](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-union.md) | 378 | `result-track:c85c65dd0b95b06a743d6c3c4cbc52f3509de7cf2cd66c708013072f74b89869` |
| 40 | `theorem` | [IsLindelof.insert](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-insert.md) | 381 | `result-track:7c07d8339ad0cf6457d071f2ef483fca8df4c0904cf63a126be775d5cfb8ac24` |
| 41 | `theorem` | [isLindelof_open_iff_eq_countable_iUnion_of_isTopologicalBasis](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-open-iff-eq-countable-iunion-of-istopologicalbasis.md) | 386 | `result-track:555348cd35f045f098b7794d017ffe5209b40cd55792e607e48b9d2e9cc75d44` |
| 42 | `def` | [Filter.coLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/filter-colindelof.md) | 413 | `declaration-track:a68467bdcec305ee92aee81e56506f913a7b541979723a8d9e26ff96fa2fc700` |
| 43 | `theorem` | [hasBasis_coLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/hasbasis-colindelof.md) | 417 | `result-track:fd042f8f98c68ef4458ed2886d30042f0a88af14e5039ac908d9ec3356d06935` |
| 44 | `theorem` | [mem_coLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/mem-colindelof-source-edition-2.md) | 424 | `result-track:c42715055216ca8f921721462ff9f9d79e714367190f83205841526ce236479f` |
| 45 | `theorem` | [mem_coLindelof'](../../../../GeneralTopology/LindelofPublic.lean/declarations/mem-colindelof.md) | 427 | `result-track:00e8ad8e4f440fdd6505b0396371f54c201b22c35a94a6d81b3cd367a6fdc089` |
| 46 | `theorem` | [_root_.IsLindelof.compl_mem_coLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/root-islindelof-compl-mem-colindelof.md) | 430 | `result-track:2665657c07e0e99633f66e4687b0327218059c38c47c19ec7405dad2cbc9d9f0` |
| 47 | `theorem` | [coLindelof_le_cofinite](../../../../GeneralTopology/LindelofPublic.lean/declarations/colindelof-le-cofinite.md) | 433 | `result-track:fa7cd2fe23ff2f50cbc1960c5e1db2b3a9269869682f4c86bd08cb7ad7030476` |
| 48 | `theorem` | [Tendsto.isLindelof_insert_range_of_coLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/tendsto-islindelof-insert-range-of-colindelof.md) | 436 | `result-track:02ace1535b2b62395392a189e861c1c29b788399b854f4669132754367f44bd9` |
| 49 | `def` | [Filter.coclosedLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/filter-coclosedlindelof.md) | 454 | `declaration-track:5cf10636dcd4c7a8ac921b5208ba0c33ef638f20e6eb9684c919112ab4fa95b5` |
| 50 | `theorem` | [hasBasis_coclosedLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/hasbasis-coclosedlindelof.md) | 458 | `result-track:9f7f3dcc3b7973d0f634ce006cdf576fab96c9b0a7d489df5ff3accc7604b823` |
| 51 | `theorem` | [mem_coclosedLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/mem-coclosedlindelof.md) | 466 | `result-track:c498d19bbad3bdda8f44d4c5f914a87df7d677f30116811d07cdf7afd9e3c748` |
| 52 | `theorem` | [mem_coclosed_Lindelof'](../../../../GeneralTopology/LindelofPublic.lean/declarations/mem-coclosed-lindelof.md) | 470 | `result-track:493d2c1cadefbeb206ec7757692957bb6aaf0d2f51166196698997eae7052fef` |
| 53 | `theorem` | [coLindelof_le_coclosedLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/colindelof-le-coclosedlindelof.md) | 474 | `result-track:89293759c9332e11fbd64626d0f5d219fbe205d71cfcb1ae52b1f1c6bc2e6a26` |
| 54 | `theorem` | [IsLindeof.compl_mem_coclosedLindelof_of_isClosed](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindeof-compl-mem-coclosedlindelof-of-isclosed.md) | 477 | `result-track:961ba91e2f098fc9f80523dff6e650259ee336e028950fd76919caeb92986124` |
| 55 | `class` | [LindelofSpace](../../../../GeneralTopology/LindelofPublic.lean/declarations/lindelofspace.md) | 482 | `declaration-track:4e6d2f4fa042c4a9e05fdd326ed5983d116081f78671082f877901f4b6860e30` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-9.md) | 486 | `declaration-track:a5b6d0aa7ec5e57cf48e4545560cd5240af331069044fc21bd10f576367a92b2` |
| 57 | `theorem` | [isLindelof_univ_iff](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-univ-iff.md) | 489 | `result-track:be5774085c006948c77ff58ac877e93cca33126c482c5e0bedf3be1277c7147b` |
| 58 | `theorem` | [isLindelof_univ](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-univ.md) | 492 | `result-track:a64fab33af67b5204b135309baea1230aead67c57de34f96cb6979f98c9b8c83` |
| 59 | `theorem` | [cluster_point_of_Lindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/cluster-point-of-lindelof.md) | 495 | `result-track:0c89216c55a2a1d2f731011ae5f85314f80686ad9d3674212697aa19cc32fc9f` |
| 60 | `theorem` | [LindelofSpace.elim_nhds_subcover](../../../../GeneralTopology/LindelofPublic.lean/declarations/lindelofspace-elim-nhds-subcover.md) | 499 | `result-track:c217741c165ed62f0482585b24f8f046326dce1f47908a305802ed4d59e66a26` |
| 61 | `theorem` | [lindelofSpace_of_countable_subfamily_closed](../../../../GeneralTopology/LindelofPublic.lean/declarations/lindelofspace-of-countable-subfamily-closed.md) | 505 | `result-track:94cb0854ae8814702c4644dfc4d0c903b5005289795119ace794fa138403adbd` |
| 62 | `theorem` | [IsClosed.isLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/isclosed-islindelof.md) | 511 | `result-track:10a1ad63263d94dcb1227c348df7585760b4d058fe76c2b43c5cb7285fa32337` |
| 63 | `theorem` | [IsCompact.isLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/iscompact-islindelof.md) | 515 | `result-track:9ef5d1be2a3cefe3cb369773ebd2011eed6b4e1570d1aadc613182034faca131` |
| 64 | `theorem` | [IsSigmaCompact.isLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/issigmacompact-islindelof.md) | 519 | `result-track:9e3d59c93996e48258eb770325379c8c1d9f104a2bacc966057caeda452aab02` |
| 65 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-8.md) | 528 | `declaration-track:9ea993a3c6034ad84b3e296baff3988d706c1d16f22211e180b7c96505acc4b5` |
| 66 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-3.md) | 532 | `declaration-track:5c24576438a20e0d0881e0fb863bd62610f96d5c0929aac8f107114ba5836c8f` |
| 67 | `class` | [NonLindelofSpace](../../../../GeneralTopology/LindelofPublic.lean/declarations/nonlindelofspace.md) | 536 | `declaration-track:7d1c6740718bc70083d05ab014d09ec556c935e04c4a79253e4e3b8560c7923b` |
| 68 | `lemma` | [nonLindelof_univ](../../../../GeneralTopology/LindelofPublic.lean/declarations/nonlindelof-univ.md) | 540 | `result-track:141a96076a72c47cb214fd6af74f769c23007383c8adba786a5a2141abe220c2` |
| 69 | `theorem` | [IsLindelof.ne_univ](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-ne-univ.md) | 544 | `result-track:dc707daadd347b475a3455da98f93aa32f7e502aeffd4582c644ef3c6e79af88` |
| 70 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-6.md) | 547 | `declaration-track:759e436db6a2579b1cea4ecfce6e5fbca82e368f93d4fdf176089980cefe4566` |
| 71 | `theorem` | [Filter.coLindelof_eq_bot](../../../../GeneralTopology/LindelofPublic.lean/declarations/filter-colindelof-eq-bot.md) | 555 | `result-track:d0159bdfa18448d4167d7aaa979f26d8f7593613dd1eff0fa5b16915b534ee9d` |
| 72 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-7.md) | 558 | `declaration-track:9b84c6199cfb1998bebfa444d1588d9866e0d701bcfa14f345fbbd2ad000223b` |
| 73 | `theorem` | [nonLindelofSpace_of_neBot](../../../../GeneralTopology/LindelofPublic.lean/declarations/nonlindelofspace-of-nebot.md) | 561 | `result-track:9165e7c1fef4bf5fe74648f64bb1b089aa49901af54293b72b3d51d4abf3b0a3` |
| 74 | `theorem` | [Filter.coLindelof_neBot_iff](../../../../GeneralTopology/LindelofPublic.lean/declarations/filter-colindelof-nebot-iff.md) | 564 | `result-track:38a7642e57d18bc0b8cb63f80fe8c49fb7857001ad2d6997030b29ec6d8ef6ee` |
| 75 | `theorem` | [not_LindelofSpace_iff](../../../../GeneralTopology/LindelofPublic.lean/declarations/not-lindelofspace-iff.md) | 568 | `result-track:07944637463dd685c227b3c215e0c6e93e95fee82d7a539935dc24dcceca444a` |
| 76 | `theorem` | [countable_of_Lindelof_of_discrete](../../../../GeneralTopology/LindelofPublic.lean/declarations/countable-of-lindelof-of-discrete.md) | 571 | `result-track:5700c7257d0098e3a82b17a93d112d2952a79de4cf63660c5401d246294b53a9` |
| 77 | `theorem` | [countable_cover_nhds_interior](../../../../GeneralTopology/LindelofPublic.lean/declarations/countable-cover-nhds-interior.md) | 574 | `result-track:2bd81b4695daf8f1a352fecad2144c1b99ff1b8a8fed9a7b3727e69e9e17882a` |
| 78 | `theorem` | [countable_cover_nhds](../../../../GeneralTopology/LindelofPublic.lean/declarations/countable-cover-nhds.md) | 580 | `result-track:a201a5dbf2291d45309e9c46cfa495aedad0e58084878a695267946c17107f6c` |
| 79 | `theorem` | [Filter.comap_coLindelof_le](../../../../GeneralTopology/LindelofPublic.lean/declarations/filter-comap-colindelof-le.md) | 589 | `result-track:cb0c32b1f0247073eeee052575b766f9f79abbe16b56b0ad3acdfaac91ab2d85` |
| 80 | `theorem` | [isLindelof_range](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-range.md) | 596 | `result-track:4b5df1a006e3e3cb235dcd6095cdcf623dd481012c45b5d7c6b89b3ce12b875b` |
| 81 | `theorem` | [isLindelof_diagonal](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-diagonal.md) | 599 | `result-track:694f9232c9122aca27e2e3f04fba3bf7bf2ab308dd61457d2389e80b2b479ff8` |
| 82 | `theorem` | [Topology.IsInducing.isLindelof_iff](../../../../GeneralTopology/LindelofPublic.lean/declarations/topology-isinducing-islindelof-iff.md) | 604 | `result-track:f9e0fef8a484ccb1ae459534ead4cb1111a6c0b4c1896caccb8939a44cc74ce1` |
| 83 | `theorem` | [Topology.IsEmbedding.isLindelof_iff](../../../../GeneralTopology/LindelofPublic.lean/declarations/topology-isembedding-islindelof-iff.md) | 613 | `result-track:c63d5258c2ee19619aa321eaf26e51319763e18866c8e774aef2a8b32a850fb7` |
| 84 | `theorem` | [Topology.IsInducing.isLindelof_preimage](../../../../GeneralTopology/LindelofPublic.lean/declarations/topology-isinducing-islindelof-preimage.md) | 617 | `result-track:dbedc15e931b91db92d8c23bd9451d0ef77bf76fc90239c422e7bcd84a482fac` |
| 85 | `theorem` | [Topology.IsClosedEmbedding.isLindelof_preimage](../../../../GeneralTopology/LindelofPublic.lean/declarations/topology-isclosedembedding-islindelof-preimage.md) | 623 | `result-track:ea29adb56f788f1cceb4a58fb71fd8a9fa1e9e8d277f95b7e9ada5892f4553fa` |
| 86 | `theorem` | [Topology.IsClosedEmbedding.tendsto_coLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/topology-isclosedembedding-tendsto-colindelof.md) | 630 | `result-track:1558aea95898fad9f88577a47348c8e1a41ea1b5055819fefb7e4964633338c6` |
| 87 | `theorem` | [Subtype.isLindelof_iff](../../../../GeneralTopology/LindelofPublic.lean/declarations/subtype-islindelof-iff.md) | 636 | `result-track:a8a59895ad5bd1c1e97dc3b939078800e60d77450e721d6be991d5043679fc00` |
| 88 | `theorem` | [isLindelof_iff_isLindelof_univ](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-iff-islindelof-univ.md) | 640 | `result-track:1f21318f3986998795df024cd2d0e98d5d7980f16d0b88db0e17d19c6c5f197e` |
| 89 | `theorem` | [isLindelof_iff_lindelofSpace](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-iff-lindelofspace.md) | 643 | `result-track:d443e851209cd7e3e3f274eef681b4831ad25d6860b6d933545830f00217c338` |
| 90 | `lemma` | [IsLindelof.of_coe](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-of-coe.md) | 646 | `result-track:08a832573424d03c8d22a7de6a6ff4ba26c3df2e62eb9a251237d3918c4a2b67` |
| 91 | `theorem` | [IsLindelof.countable](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-countable.md) | 648 | `result-track:8916f3f0a24cdc0d13a2f463be69f7f0e72953b3a230add49e236e8776ce3b30` |
| 92 | `theorem` | [IsLindelof.countable_of_isDiscrete](../../../../GeneralTopology/LindelofPublic.lean/declarations/islindelof-countable-of-isdiscrete.md) | 652 | `result-track:a62304df36b6d49005f5c9b141bb84a551b655089825257a234e20a06a97cca5` |
| 93 | `theorem` | [Topology.IsClosedEmbedding.nonLindelofSpace](../../../../GeneralTopology/LindelofPublic.lean/declarations/topology-isclosedembedding-nonlindelofspace.md) | 655 | `result-track:a5ad10638ac9e7e33216aa9531633b3991b7b4effa350b6633876720dbcd30a7` |
| 94 | `theorem` | [Topology.IsClosedEmbedding.LindelofSpace](../../../../GeneralTopology/LindelofPublic.lean/declarations/topology-isclosedembedding-lindelofspace.md) | 659 | `result-track:f727b16323d18f0669785368e7f856ae48c373287bd1e225bea78fddded5d55d` |
| 95 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance.md) | 664 | `declaration-track:2c8a647e4922f6debfab70e6a4f9ebe9cf30081be2f141725a1ff9972f8ea853` |
| 96 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-10.md) | 668 | `declaration-track:ab43d75ef98c49249026d3624970b74a3873c14d17f71cc93742fdf80658e309` |
| 97 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-2.md) | 673 | `declaration-track:3c5218500cd3aeb45d3bfd8440f13ea661b62c27bbf69b81089f531dbd120af5` |
| 98 | `instance` | [Quot.lindelofSpace](../../../../GeneralTopology/LindelofPublic.lean/declarations/quot-lindelofspace.md) | 679 | `declaration-track:4bfad24af5fc535007145f85a5c01dfc5e0a4ed6d77c43d482820182ae96b032` |
| 99 | `instance` | [Quotient.lindelofSpace](../../../../GeneralTopology/LindelofPublic.lean/declarations/quotient-lindelofspace.md) | 684 | `declaration-track:aeaea2024163489874d6ede0eeec1ae0c2fb4c01d6f9560ac4e06c8d1a6cd70f` |
| 100 | `theorem` | [LindelofSpace.of_continuous_surjective](../../../../GeneralTopology/LindelofPublic.lean/declarations/lindelofspace-of-continuous-surjective.md) | 688 | `result-track:f31fdaf68759e99e4cbbeb42ce86c69912544ddb2e37f7daf2aaf5553e8b7e43` |
| 101 | `def` | [IsHereditarilyLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/ishereditarilylindelof.md) | 696 | `declaration-track:6f2fd65b12d0fb7cf0cc28b16d90839f7702a196befb10f9132fec20b396f085` |
| 102 | `class` | [HereditarilyLindelofSpace](../../../../GeneralTopology/LindelofPublic.lean/declarations/hereditarilylindelofspace.md) | 700 | `declaration-track:c1d6a1252442c0afb18fa5985ec93862a289245558d2b2efb111d02ef9b3a5e9` |
| 103 | `lemma` | [IsHereditarilyLindelof.isLindelof_subset](../../../../GeneralTopology/LindelofPublic.lean/declarations/ishereditarilylindelof-islindelof-subset.md) | 704 | `result-track:238c2d30724bf4e7a3815c9352fe2485b06d23aa004914d03bea0592a46bda32` |
| 104 | `lemma` | [IsHereditarilyLindelof.isLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/ishereditarilylindelof-islindelof.md) | 707 | `result-track:adacc50430380103777cd163d9618fd9bafa13fb4c82d127c4c912a11b0497ae` |
| 105 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-4.md) | 710 | `declaration-track:6cff76187c7ae19e8db5ff56ddcea74b69338a85b1d8c1cfea1fb9335856a777` |
| 106 | `theorem` | [HereditarilyLindelofSpace.isLindelof](../../../../GeneralTopology/LindelofPublic.lean/declarations/hereditarilylindelofspace-islindelof.md) | 714 | `result-track:a6a580ef93d27d88ff934a22854bef37b2dd9f8de4dd9cb3deee22bdeae4baba` |
| 107 | `theorem` | [HereditarilyLindelofSpace.of_forall_isOpen](../../../../GeneralTopology/LindelofPublic.lean/declarations/hereditarilylindelofspace-of-forall-isopen.md) | 719 | `result-track:92054fe5315763fb7bd9c20fbdb0dd29259d93be69a26b9028be54fcabb2283e` |
| 108 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-5.md) | 726 | `declaration-track:716fb1b79ee98c14ed8e118cd41397a13542fa2dd5882615f70a1a1fb7f9f608` |
| 109 | `lemma` | [eq_open_union_countable](../../../../GeneralTopology/LindelofPublic.lean/declarations/eq-open-union-countable.md) | 736 | `result-track:c0f07cfc52858e84f63be50140f27ab91c37db0839781cba582a3ca72977dafe` |
| 110 | `lemma` | [eq_open_union_nat](../../../../GeneralTopology/LindelofPublic.lean/declarations/eq-open-union-nat.md) | 743 | `result-track:62dfe29ac800bbea404728fc319336e6b5411c3b064a951fd458dfc15119f7be` |
| 111 | `lemma` | [eq_closed_inter_countable](../../../../GeneralTopology/LindelofPublic.lean/declarations/eq-closed-inter-countable.md) | 754 | `result-track:fd0b7df28f99514f7e2ba10d7deae2d5250b4a3598f34d33d5aabd5945c10ba7` |
| 112 | `lemma` | [eq_closed_inter_nat](../../../../GeneralTopology/LindelofPublic.lean/declarations/eq-closed-inter-nat.md) | 759 | `result-track:33588fd932d772af9cdc8401b01e2323d8a8280674f0dfd2e092003bd88a7474` |
| 113 | `instance` | [(anonymous)](../../../../GeneralTopology/LindelofPublic.lean/declarations/instance-source-edition-11.md) | 764 | `declaration-track:ced8f95638822ea0f2b56db280011e3d0e5df4254388ee9c0b2a4ea09a7b5edc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23b04e461eada6cf506cb91c5b589c0ecf69054671029d70577920ba45b19e1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lindelof/Variante75a097a0ac483a700c8eb13d91246dd151d3e34edf331f8fcb4f4f15fbe505d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
