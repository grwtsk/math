# Verification target: Hausdorff Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddf72e60d14630eb308d655c326bf191e5bdd935",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddf72e60d14630eb308d655c326bf191e5bdd935`.

Source path: `GRWTSK/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean.json)

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
| 1 | `class` | [T2Space](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2space.md) | 93 | `declaration-track:bbe17bfbc8116a1a30a5a12d1b046bc53d88bf78ff74d9925eee9268ff5762f8` |
| 2 | `theorem` | [t2_separation](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2-separation.md) | 98 | `result-track:742c088d025123a5314bbbc8e901999f4ba2a93c7ab10c7d455ba02ad905fec1` |
| 3 | `theorem` | [t2Space_iff_disjoint_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2space-iff-disjoint-nhds.md) | 103 | `result-track:9e030b32c951b43eb8752717af53f766b75f354c5ebefce3173667919809f456` |
| 4 | `theorem` | [disjoint_nhds_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/disjoint-nhds-nhds.md) | 109 | `result-track:e452a6eb09bf7007472780b6bca3feccbe7f500596f74a8b99566e8295deb6d3` |
| 5 | `theorem` | [pairwise_disjoint_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/pairwise-disjoint-nhds.md) | 112 | `result-track:cd148bdec062ffbc14366dfd34aff39db1f005a3f9fa070fa39dccbde6dfcd5c` |
| 6 | `theorem` | [Set.pairwiseDisjoint_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/set-pairwisedisjoint-nhds.md) | 115 | `result-track:c4b441c55a42021103721f254e454b791336be914f4d6402759ea8afd1347d1e` |
| 7 | `theorem` | [Set.Finite.t2_separation](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/set-finite-t2-separation.md) | 119 | `result-track:d2f947924397da80e89d5cb8a74a630e847c68a8fae2a235126c0444092e882a` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 124 | `declaration-track:f3852f6387cc8c998ebbbda97e9c4a077c28278efbb043f547c024a47f32c600` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 129 | `declaration-track:d8fb51eb93ac0c925c046fda2b7c92f1afa465c3f9f4a69524d9cc82b3e2f377` |
| 10 | `theorem` | [SeparationQuotient.t2Space_iff](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/separationquotient-t2space-iff.md) | 132 | `result-track:bf68e128d82275c153eb9810650bcd641ceb1b7f576df81d59f7b85a65e5b0da` |
| 11 | `instance` | [SeparationQuotient.t2Space](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/separationquotient-t2space.md) | 137 | `declaration-track:10e7d4f6f5af6a4f062ef3bdd4db07199d4a033ca4039edf1f373acc07a63fb4` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 140 | `declaration-track:fc414395e6f689fad141ebff0e1d7a5289ddede6a48e88fcd265a9077d9e57d3` |
| 13 | `theorem` | [R1Space.t2Space_iff_t0Space](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/r1space-t2space-iff-t0space.md) | 144 | `result-track:c9eee059f7b73c9000d1b70eca1bcec43133a96f9ee0ca3fa9d1e3cb1d3f3049` |
| 14 | `theorem` | [t2_iff_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2-iff-nhds.md) | 148 | `result-track:801c0099fdab89db0ee2b2858639713bfa6cbee0549981dc43279bdbb7eb55a4` |
| 15 | `theorem` | [eq_of_nhds_neBot](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/eq-of-nhds-nebot.md) | 151 | `result-track:678af8f134c335182d33702017747c2e52ad4e5de90b8ec89b99720de6e3f4c6` |
| 16 | `theorem` | [t2Space_iff_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2space-iff-nhds.md) | 154 | `result-track:ab09c044978dfb87b81fa5a1739ae504dafb7e4724f5af78a03d2241ff71cc99` |
| 17 | `theorem` | [t2_separation_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2-separation-nhds.md) | 158 | `result-track:984331dadc72a64036af54378d88432b1ce69793da1cdff6d70fe861914b6804` |
| 18 | `theorem` | [t2_separation_compact_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2-separation-compact-nhds.md) | 163 | `result-track:533a7e54ac7c5dd8e605cfd4e427cff7a51c0890b25765b694a13646448eb036` |
| 19 | `theorem` | [t2_iff_ultrafilter](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2-iff-ultrafilter.md) | 168 | `result-track:f48ac8d6eb49d0301c57fd20191757d5e1d58d5536cb9c9bd1f59aa661a082ae` |
| 20 | `theorem` | [t2_iff_isClosed_diagonal](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2-iff-isclosed-diagonal.md) | 172 | `result-track:5bc3b3d88904fdd3d735be5e71bbc80edc037abe76f6ca6d77e2508216dbaccc` |
| 21 | `theorem` | [isClosed_diagonal](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/isclosed-diagonal.md) | 177 | `result-track:6e2b82fdbbaf777c9299b31f31de299d97b307a0d545a337ddee30b71b946088` |
| 22 | `theorem` | [t2Space_iff_of_isOpenQuotientMap](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2space-iff-of-isopenquotientmap.md) | 180 | `result-track:41e7f8ce5dd5402a592b849ed3a3b932a5a64d7f61849b99217c71d4744d7a6a` |
| 23 | `theorem` | [tendsto_nhds_unique](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/tendsto-nhds-unique-source-edition-2.md) | 189 | `result-track:508234b3306c9465cb10379f069a8de78d8ab75dccd47f5916ea7105fabffeba` |
| 24 | `theorem` | [tendsto_nhds_unique'](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/tendsto-nhds-unique.md) | 193 | `result-track:0dbf32c93e628414f3992607d9bf86a4d4b910b1af18e20ec16b37b18ab27952` |
| 25 | `theorem` | [tendsto_nhds_unique_of_eventuallyEq](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/tendsto-nhds-unique-of-eventuallyeq.md) | 197 | `result-track:3b21ba395165a2546b682673f42183af0cf74345df0000c205e5c1b2e68d8a63` |
| 26 | `theorem` | [tendsto_nhds_unique_of_frequently_eq](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/tendsto-nhds-unique-of-frequently-eq.md) | 201 | `result-track:9182fcf72dd7becc18d1252469e90cbf5f2df8ea2c1b4fae14ce5ba13671181a` |
| 27 | `theorem` | [tendsto_nhds_unique_of_forall](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/tendsto-nhds-unique-of-forall.md) | 206 | `result-track:96c59129d937f5cea248bc4762ce6868ce31375a8e2f6c133ca331117f14f744` |
| 28 | `theorem` | [IsCompact.nhdsSet_inter_eq](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/iscompact-nhdsset-inter-eq.md) | 214 | `result-track:d6976f49b6544ddc0c28fd753417c664297cbf6f4f133b44ef290067239abe0b` |
| 29 | `lemma` | [IsCompact.separation_of_notMem](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/iscompact-separation-of-notmem.md) | 225 | `result-track:262fe2108b93747b4e1d56516d877d0cd9542336cb4f949b93527f32daaccc45` |
| 30 | `lemma` | [IsCompact.disjoint_nhdsSet_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/iscompact-disjoint-nhdsset-nhds.md) | 233 | `result-track:d208843fcb5c32e57b4cc09c9c5bd3d32900150c99d4faa7aa514d035637e109` |
| 31 | `theorem` | [Set.InjOn.exists_mem_nhdsSet](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/set-injon-exists-mem-nhdsset.md) | 246 | `result-track:5aa56e082e66cf91621ece8a319093505605a76cd2c8304275ec70b514de294c` |
| 32 | `theorem` | [Set.InjOn.exists_isOpen_superset](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/set-injon-exists-isopen-superset.md) | 267 | `result-track:efcfb7ddf2efcc749f6f873cffb376ae86b60f1943e026718d81b812273be338` |
| 33 | `theorem` | [lim_eq](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/lim-eq.md) | 287 | `result-track:5273423b82cacdb3c3b744d294431069a387bea968eac6f67da30f8b057b3430` |
| 34 | `theorem` | [lim_eq_iff](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/lim-eq-iff.md) | 290 | `result-track:7292bbbd088ef498ca81e6ccddeb2e0abef41c4312347a647c1f052b17ef9e22` |
| 35 | `theorem` | [Ultrafilter.lim_eq_iff_le_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/ultrafilter-lim-eq-iff-le-nhds.md) | 293 | `result-track:a19cae910f56904895b11c03512fefb7f69d60fa3612f4ac1b084f725ab7d40f` |
| 36 | `theorem` | [isOpen_iff_ultrafilter'](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/isopen-iff-ultrafilter.md) | 297 | `result-track:4019960086206afd7dd368177d61f2dbdc5e246aaacde160a0e2036050e16735` |
| 37 | `theorem` | [Filter.Tendsto.limUnder_eq](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/filter-tendsto-limunder-eq.md) | 305 | `result-track:724d6d4bc438a4480b656aeb63125d9b86a1641880f95f589672fdf94841b539` |
| 38 | `theorem` | [Filter.limUnder_eq_iff](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/filter-limunder-eq-iff.md) | 309 | `result-track:8644409215f5cbe6f80983c3db0ec82694d3c7c06679211fa64f9839f2db20c3` |
| 39 | `theorem` | [Continuous.limUnder_eq](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/continuous-limunder-eq.md) | 313 | `result-track:bfafdd193cbc9a6dcf2ebf8978299d3ad5c5142fe276c13071f4f99633deace2` |
| 40 | `theorem` | [lim_nhds](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/lim-nhds.md) | 318 | `result-track:fc4b856738a8ec608c04b8bcc374b115676b6e1888dc3cb4647f0f1efc9702ba` |
| 41 | `theorem` | [limUnder_nhds_id](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/limunder-nhds-id.md) | 322 | `result-track:507a21d46c79e346b2f819623f145f0a320c1c6db814741ce7e8bdadebf53473` |
| 42 | `theorem` | [lim_nhdsWithin](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/lim-nhdswithin.md) | 326 | `result-track:d075f600713d14b2180152958d50898033f0dcf6b9941ccb04137511de11b39d` |
| 43 | `theorem` | [limUnder_nhdsWithin_id](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/limunder-nhdswithin-id.md) | 331 | `result-track:f8cbd206b22d4768bcd839c5004552152340ca7b76a9fa3d172ff0760678f002` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 354 | `declaration-track:c9b13ccccfb439ef5c6b2f8f05547f8471e4621e6d9d7a7aa90532d512034673` |
| 45 | `theorem` | [separated_by_continuous](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/separated-by-continuous.md) | 358 | `result-track:74a0c1dc6437c142c990530e8f7352ab0640fe70b16714ca64b665bd179917f8` |
| 46 | `theorem` | [separated_by_isOpenEmbedding](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/separated-by-isopenembedding.md) | 364 | `result-track:3091bc92914fa4e0fd504150de630454f0498f00ead6da592a163e3d92ec9786` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 371 | `declaration-track:ea5894c2eaa5358ae597369befb71416176bc98a6adb90b8c8e227e45a7c7f61` |
| 48 | `instance` | [Prod.t2Space](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/prod-t2space.md) | 373 | `declaration-track:d946b0a1bebba6530bc7d7c53b806a1cbfdc38c22bc115cd629ab990b7c8ea84` |
| 49 | `theorem` | [T2Space.of_injective_continuous](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2space-of-injective-continuous.md) | 378 | `result-track:1f3a3ea971364b0973c91e648b81c7cdd5d50c47544f7af5e4513cf6dcc4a120` |
| 50 | `theorem` | [Topology.IsEmbedding.t2Space](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/topology-isembedding-t2space.md) | 384 | `result-track:8a904ed26beb59ecb2a43d2e715ba318bb8b579eebaad64244c87ec72ad04d34` |
| 51 | `theorem` | [Homeomorph.t2Space](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/homeomorph-t2space.md) | 388 | `result-track:f496d1265b16e10825627ab98285a1202c6b759962d4b7ffa37ffedcdf6cc14d` |
| 52 | `instance` | [ULift.instT2Space](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/ulift-instt2space.md) | 391 | `declaration-track:0f1eb402347c38c0f876aef450ff91966c22a0741609e2169d940334952595f4` |
| 53 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/instance.md) | 394 | `declaration-track:61b154dc7f232cde4d71c495bc28e323ea2cd40af705dd54dc62d6d1ddae2b40` |
| 54 | `instance` | [Pi.t2Space](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/pi-t2space.md) | 403 | `declaration-track:89abe540388620bb2422d913e5701773e874c42c1965d095e4e4a3d9fe77e91c` |
| 55 | `instance` | [Sigma.t2Space](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/sigma-t2space.md) | 407 | `declaration-track:35dc60ad4c4dbd3185196743b5c7cd80daab6c00ee86b09f1c0f15104ad8ca24` |
| 56 | `def` | [t2Setoid](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2setoid.md) | 422 | `declaration-track:ec05a6db08ca16ff5c0888334a17218a075f84b89263de39297187c9c7005f72` |
| 57 | `def` | [T2Quotient](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2quotient.md) | 426 | `declaration-track:840a3e119f9ec1fa0f574f9679f1b3b50f4b13ba142640d58aa8a57930d61bb0` |
| 58 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 431 | `declaration-track:6ebc582ebd7769d69ac1af363886066db6bb4d430ca6498b858b9ac740d23504` |
| 59 | `def` | [mk](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/mk.md) | 435 | `declaration-track:35f032e115bfa114150b478a8404d14cd1006f3e3fcad7202b870748e7eacc11` |
| 60 | `lemma` | [mk_eq](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/mk-eq.md) | 437 | `result-track:eb906fbed1c3a938ac32a4981cfef7cef49c68953bfcd8a2ad518360ec48ac0f` |
| 61 | `lemma` | [surjective_mk](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/surjective-mk.md) | 442 | `result-track:229718841622ad1ea775c855b269f9db56d082baf4868a25b5d011a4ed76da24` |
| 62 | `lemma` | [continuous_mk](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/continuous-mk.md) | 444 | `result-track:5e9ece0ebb07c00b94f09dfb5bf9a66037b4f8d7b382c2a1c5b43475849d69c7` |
| 63 | `lemma` | [inductionOn](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/inductionon.md) | 450 | `result-track:0ea105203413ffbfcae9f3db07703e7e05836209b9fd7c205c464518bffc8036` |
| 64 | `lemma` | [inductionOn₂](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/inductionon-source-edition-2.md) | 454 | `result-track:b413d65da3e1e3c5f8866dd1bc48ca16b3ae3e52046b3ace62b616baa0e67c98` |
| 65 | `instance` | [(anonymous)](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 459 | `declaration-track:858da41e6aeed34b76dc04a1cb5198a51bf0643caee2c9a82f5192db4614fd24` |
| 66 | `lemma` | [compatible](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/compatible.md) | 466 | `result-track:e3bc9c9e6ad8a52fbaa68dba250ec848e0c0c347c520394bf1f186e3aef79915` |
| 67 | `def` | [lift](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/lift.md) | 477 | `declaration-track:3f292a292b2bca3d304d464aa2d0c1388219e50c9cfdfe242c36329632759df5` |
| 68 | `lemma` | [continuous_lift](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/continuous-lift.md) | 481 | `result-track:5a94f69362e444dc2df427a316bd0fb78f252f6e1b18c9ab090e9297a88b81ee` |
| 69 | `lemma` | [lift_mk](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/lift-mk.md) | 486 | `result-track:b0bcc942436992e3a6d712913ff055c7972766fd10feb6ed0289552899195474` |
| 70 | `lemma` | [unique_lift](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/unique-lift.md) | 490 | `result-track:8e67fb217d883aace734c6bfee1bc78e64e2a6bfcb0a04ea84392dae8adce6e3` |
| 71 | `theorem` | [isClosed_eq](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/isclosed-eq.md) | 501 | `result-track:d5297c51a9557236a145abb2f8d9274d27a5266a146bdc4266630dee2a98b06a` |
| 72 | `theorem` | [IsClosed.isClosed_eq](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/isclosed-isclosed-eq.md) | 508 | `result-track:8eba6b1e736bb8495b09e05ec7d2215ee278083e57ed0500633f4fa63961c5e1` |
| 73 | `theorem` | [isOpen_ne_fun](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/isopen-ne-fun.md) | 512 | `result-track:18e74b8d38c9e875b68c3245389309c5f78798b762614c70dbdc2592889bf8e6` |
| 74 | `theorem` | [Continuous.isClosed_graph](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/continuous-isclosed-graph.md) | 517 | `result-track:49300970a13cd7faf6e7a0b153cb5bf4338a221971366699b1f53cccae288bff` |
| 75 | `theorem` | [Set.EqOn.closure](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/set-eqon-closure.md) | 522 | `result-track:5edad676e39596c92f1ae8a1941912fb2687827c3e9f2f60e3a08bbc7e3f1666` |
| 76 | `theorem` | [Continuous.ext_on](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/continuous-ext-on.md) | 527 | `result-track:75a3f00a162f77e132a103d378a20010257982c09c1c832b2402cfb51a56803c` |
| 77 | `theorem` | [eqOn_closure₂'](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/eqon-closure-source-edition-2.md) | 531 | `result-track:7b40df0c3e41c72fc9812ddc7978a502c485b0332f971a435d2b20b670f91fc2` |
| 78 | `theorem` | [eqOn_closure₂](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/eqon-closure.md) | 539 | `result-track:442355677e8dac65fc2aefd1fdf20f71ee4e9d499d4b19bdab67fada50970c9c` |
| 79 | `theorem` | [Set.EqOn.of_subset_closure](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/set-eqon-of-subset-closure.md) | 546 | `result-track:65f224960f6d75d88a3cfd4cb620676f6263a4378dbbc98a55961d7ec1d4f119` |
| 80 | `theorem` | [Function.LeftInverse.isClosed_range](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/function-leftinverse-isclosed-range.md) | 556 | `result-track:e250ca5e25656cf34b203a1e0361ae0e14aca2b0a5fef5efd19d260755878ed2` |
| 81 | `theorem` | [Function.LeftInverse.isClosedEmbedding](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/function-leftinverse-isclosedembedding.md) | 562 | `result-track:98cf100940266044f7498bd56f1be4b71c6235e04ea2f5249f77f1e539324393` |
| 82 | `theorem` | [SeparatedNhds.of_isCompact_isCompact](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/separatednhds-of-iscompact-iscompact.md) | 566 | `result-track:c6febd82500c13e7ee9272168953b1846b2497c0ef35aa89184eb315be479c15` |
| 83 | `lemma` | [SeparatedNhds.of_isClosed_isCompact_closure_compl_isClosed](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/separatednhds-of-isclosed-iscompact-closure-compl-isclosed.md) | 573 | `result-track:4d43de0ff4bdfb80baec7b02e5ab067b1e89195c634455dae1f67e5211c45695` |
| 84 | `theorem` | [SeparatedNhds.of_finset_finset](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/separatednhds-of-finset-finset.md) | 592 | `result-track:221abe0bc120cc29562787ed10f64d8153b0c7f97284399ce143b0c779061597` |
| 85 | `theorem` | [SeparatedNhds.of_finite](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/separatednhds-of-finite.md) | 596 | `result-track:55deb105ae37acf43e6a7e60f93f973c75da65b6920611b572ca771946dd0d3a` |
| 86 | `theorem` | [SeparatedNhds.of_singleton_finset](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/separatednhds-of-singleton-finset.md) | 601 | `result-track:ae67104f4552d377f277474dbae5874f3a160cd33160c0a0bb6748d78a76f5a1` |
| 87 | `theorem` | [IsCompact.isClosed](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/iscompact-isclosed.md) | 609 | `result-track:d19eb0e93055376279a00a077895a0d83bb6021bdc0fb5a66a9c73968f3e967f` |
| 88 | `theorem` | [IsCompact.preimage_continuous](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/iscompact-preimage-continuous.md) | 615 | `result-track:2aaab0a34327073ba12637be869f4dc91b0d32158e5d00e56b4a86bf08813292` |
| 89 | `lemma` | [Pi.isCompact_iff](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/pi-iscompact-iff.md) | 619 | `result-track:feb2e0229d34aa59278f9e74d06ebbffcf9a27393b9636cff7d4c9d271553cfc` |
| 90 | `lemma` | [Pi.isCompact_closure_iff](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/pi-iscompact-closure-iff.md) | 626 | `result-track:8d3de0b3c9ad10ed72cbec955d282d89735819c240ef37fbf475c3ad791497d5` |
| 91 | `theorem` | [exists_subset_nhds_of_isCompact](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/exists-subset-nhds-of-iscompact.md) | 635 | `result-track:fbf420f86c0232f8b9f407ac78469926eed3197fa38ec0472137728b19aac851` |
| 92 | `theorem` | [CompactExhaustion.isClosed](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/compactexhaustion-isclosed.md) | 640 | `result-track:96c36eaa5621338a0d3a41699fa338b3d6237f0cc1ef053440e58fce9bb909ca` |
| 93 | `theorem` | [IsCompact.inter](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/iscompact-inter.md) | 644 | `result-track:fe6d275874208c008195f8022810efba71b36bf3638934b6e8565180bd823e81` |
| 94 | `theorem` | [image_closure_of_isCompact](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/image-closure-of-iscompact.md) | 648 | `result-track:57cf91ce3e98a205d7b52e96c6f226558b46c66c50f54c03ee77fa35e40cf104` |
| 95 | `theorem` | [ContinuousAt.ne_iff_eventually_ne](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/continuousat-ne-iff-eventually-ne.md) | 655 | `result-track:9e23af1ccac6943852ab44e16e11b495463cb2af8285bb29b7302c96ccfcff0d` |
| 96 | `theorem` | [ContinuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/continuousat-eventuallyeq-nhds-iff-eventuallyeq-nhdsne.md) | 675 | `result-track:942886304d5222878f464a8f382638b6304064c227dd42eeec8aa604d49f6297` |
| 97 | `theorem` | [Continuous.isClosedMap](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/continuous-isclosedmap.md) | 690 | `result-track:4cd379019b812de7f03c81cb035705e6f3a451f546cb03836671215d1f590952` |
| 98 | `theorem` | [Continuous.isClosedEmbedding](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/continuous-isclosedembedding.md) | 694 | `result-track:f29978a8f03cb2339b16de998831591f7d2f1ddcf44ca4f6a1761bf5d20f7c92` |
| 99 | `theorem` | [Topology.IsQuotientMap.of_surjective_continuous](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/topology-isquotientmap-of-surjective-continuous.md) | 699 | `result-track:231e81f50df5f92cfc599037982a586b88dbe2f666e693c9fd73fff7afa57f3c` |
| 100 | `theorem` | [isPreirreducible_iff_forall_mem_subset_closure_singleton](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/ispreirreducible-iff-forall-mem-subset-closure-singleton.md) | 703 | `result-track:4e35a3f8ce637d616671a6e61331be7e3f0340234f6546f253472c0182ed7ef0` |
| 101 | `theorem` | [isPreirreducible_iff_subsingleton](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/ispreirreducible-iff-subsingleton.md) | 713 | `result-track:66fcac32c9dfac89c40758788eb046332d5e770c5e3d1109221828e519991e51` |
| 102 | `lemma` | [IsPreirreducible.subsingleton](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/ispreirreducible-subsingleton.md) | 718 | `result-track:79ce512c6fcbb0ac1af3d198591985094d6103f123853e2430c45f845fb90387` |
| 103 | `theorem` | [isIrreducible_iff_singleton](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/isirreducible-iff-singleton.md) | 722 | `result-track:831905d38df0ed7f4e04427db4f64397d5480294825984a5a4020bc3b32e5fdb` |
| 104 | `theorem` | [not_preirreducible_nontrivial_t2](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/not-preirreducible-nontrivial-t2.md) | 727 | `result-track:8bfe08ef202a6652471ef9f7d6318b09f02d64f2d9c7c031382e277c9a533e5b` |
| 105 | `theorem` | [t2Space_antitone](../../../../GeneralTopology/HausdorffNamespacedPublic.lean/declarations/t2space-antitone.md) | 731 | `result-track:05c1b4336d885f95ce1dfa996ee00c8214b21b1c6d3181aabc4cae9962668a0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ef425021c94a34189a31c79ec2c7988ed91764ae3902506469d08af6e0d08ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Hausdorff/Variant25107a08ef2506d126bcf05f4d0ce33c0fe48efc6c0bdedd585c743e2950dfe1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
