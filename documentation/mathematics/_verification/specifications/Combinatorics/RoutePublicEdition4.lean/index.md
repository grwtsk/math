# Verification target: Route Public Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57f42551be9d9e407bafcb65a02d55d15d5a59ee",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc44491863e2264170a1a0da660efb5767254309951ba45cf2bcdb9986fe2c527.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RoutePublicEdition4.lean/index.md) · [Full source](../../../../Combinatorics/RoutePublicEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57f42551be9d9e407bafcb65a02d55d15d5a59ee`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc44491863e2264170a1a0da660efb5767254309951ba45cf2bcdb9986fe2c527.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Route/Variantc44491863e2264170a1a0da660efb5767254309951ba45cf2bcdb9986fe2c527.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StableFiniteCode](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/stablefinitecode.md) | 38 | `declaration-track:77388839b4696c32add4e303efbe8f85334f8b4eeff49af93d649399eb624101` |
| 2 | `structure` | [DeclaredEdge](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/declarededge.md) | 44 | `declaration-track:16b241a717415c4452a1815b10c05b953931ce075144e2505c36f4021adc42a4` |
| 3 | `structure` | [EdgeKey](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/edgekey-source-edition-2.md) | 53 | `declaration-track:6f52419d0d9fc52c8c7ee98900a89d4a767f13e763a1ce135310b069575b5991` |
| 4 | `def` | [EdgeKey.lexValue](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/edgekey-lexvalue.md) | 62 | `declaration-track:df75d3d5195fb5377f5aee9d631342392c34bb79f2f73e400737e3256dd2c5d9` |
| 5 | `def` | [EdgeKey.LE](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/edgekey-le.md) | 66 | `declaration-track:62a160418d8ce499415ccd7ec6833b915812d36f59e37917bb46458ffa4c7252` |
| 6 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-6.md) | 69 | `declaration-track:c09dc59c757de48bae08aa5a1f5b1f7414f68c6ec3003cbb4cc83a15a8aeddab` |
| 7 | `theorem` | [EdgeKey.le_total](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/edgekey-le-total.md) | 73 | `result-track:82d6ee54c23fd2b44965901229eff2a82a56190ac5dca65da84145eec5ff049f` |
| 8 | `theorem` | [EdgeKey.le_trans](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/edgekey-le-trans.md) | 78 | `result-track:96ac5610af16091bcbbe8177fddbaaddb52517894833ec2aa269f91decee965f` |
| 9 | `inductive` | [TraversalMode](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/traversalmode.md) | 86 | `declaration-track:0fd8e626f560a2abe4a8b6aeee44a7a67caefcfee232630143334d97e821ea72` |
| 10 | `def` | [xyzRoutingSchemaVersionV1](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/xyzroutingschemaversionv1.md) | 91 | `declaration-track:ae563cacec19f306d34b0c5f690341d0519c5ce8a9ede438c1235e67857df57a` |
| 11 | `def` | [xyzRoutingAlgorithmVersionV1](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/xyzroutingalgorithmversionv1.md) | 92 | `declaration-track:625abd09cf79a799f14cc93459b94ed35c3cbf1522c0e2f799c1bdfb41b6c946` |
| 12 | `def` | [xyzRoutingSerializationVersionV1](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/xyzroutingserializationversionv1.md) | 93 | `declaration-track:114266b6b454b45066ee3b673f48aaa6c5f5c7222c0c1aad9c0fcbdf76decead` |
| 13 | `def` | [xyzIdentityExpectedUpdateId](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/xyzidentityexpectedupdateid.md) | 94 | `declaration-track:aa11ac46599062643038568d898942f85fd672d2e20e3b8ea76a0822f6043d1f` |
| 14 | `def` | [xyzRevisionFormatV1Id](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/xyzrevisionformatv1id.md) | 96 | `declaration-track:dae4c6cbcc04788bc824ba89a26d2c960006332c69dfe7bbf9adf4be55cd6031` |
| 15 | `structure` | [RoutingContract](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routingcontract.md) | 100 | `declaration-track:168d2f960f2f48d87788894a7c2d6c6dbeccd9155d82af266e99201b37da42df` |
| 16 | `def` | [edgeKey](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/edgekey.md) | 124 | `declaration-track:5cb81af14af9164caf0c95e23b5d2ad4ae786e939f2eea5d3dfed3efef63f026` |
| 17 | `def` | [canonicalEdgeLexValue](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/canonicaledgelexvalue.md) | 133 | `declaration-track:e8c88331eba97f8ae712f94ad3dfc394699894d8c88ef22515c2c142bddd8226` |
| 18 | `def` | [canonicalEdgeLE](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/canonicaledgele.md) | 143 | `declaration-track:5648e91e9118b318c1925e94a3d1648d8143c427890e81713647ff0e5445c2f0` |
| 19 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance.md) | 147 | `declaration-track:0484d2ea11e611b3052d5c4d8520a2a692d78308fd8ecec6a485e41043cf9c3a` |
| 20 | `theorem` | [canonicalEdgeLexValue_injective](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/canonicaledgelexvalue-injective.md) | 153 | `result-track:d6f2009717eb950a6c32e750d1de3cff0da39f720fd2044388b463e6705b4f2b` |
| 21 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-9.md) | 173 | `declaration-track:cba73c77ab8d2bb12a20f82dd7000edb18d91ddc4c48172fa6529f61dedbf3bf` |
| 22 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-8.md) | 178 | `declaration-track:c683fb7bdc190c1464b0a7f5dc009621bcd2857b76ee1d06bfdb27400a995929` |
| 23 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-5.md) | 184 | `declaration-track:a81119c3b6beeb9d1a03c73dad84c9e453bb8c1f8acfed5625740af111ce027d` |
| 24 | `def` | [sortedCanonicalEdges](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/sortedcanonicaledges.md) | 190 | `declaration-track:c1851d059a36df54a858b7ba56e1c56a5bbf633b487bbe059ae6c9706c7cda68` |
| 25 | `def` | [hostCodeLE](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/hostcodele.md) | 195 | `declaration-track:c68bede0d0c67648f068a0f600eff2ed3c1427f4767ba4398ce37a3af1edbd7b` |
| 26 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-10.md) | 199 | `declaration-track:ec56dcf5dc31256f214eb23ab6714353deb567669ef0b2f6182a5522b4c7bbba` |
| 27 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-4.md) | 205 | `declaration-track:85aa76e68da21615e039e32075a44648ccd141f3b4438d0744fd45cbaf51396a` |
| 28 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-7.md) | 210 | `declaration-track:c2c28ebe9e622707c48e466634e7af20e5c4bc7d820f226abae627d7b44504ab` |
| 29 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-2.md) | 215 | `declaration-track:0bb339c2b42ff5122a828610a606436038ceb359878fa1a429d9b137d7067d80` |
| 30 | `def` | [sortedHosts](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/sortedhosts.md) | 220 | `declaration-track:68ce99a65f32164d512127b327a7485c5bb4c340764f3d82796bd1ca27d06a49` |
| 31 | `def` | [hashMatches](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/hashmatches.md) | 226 | `declaration-track:03a170bf78bf506a5d49b7a8bf5b7e9ca7caa9f30b214774e4597d6d2790b3c4` |
| 32 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-3.md) | 229 | `declaration-track:857e1efd71bb2edfd2c50831be5070aae87baa703c0f87708bccf06c850cf5f7` |
| 33 | `def` | [Valid](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/valid.md) | 237 | `declaration-track:6f93a3a28e94e4d0a072c8b4c60783904191427c88a02b589146ce4d3767aec0` |
| 34 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/instance-source-edition-11.md) | 275 | `declaration-track:f150736db245c130bff780bb36e5608e45177b679d8f06d39d8fb0263b407691` |
| 35 | `def` | [verifyRoutingContract](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/verifyroutingcontract.md) | 279 | `declaration-track:30d803b14ab01097cb52f09d11b204f61ef3820659ddd9740a41562df1dbf3f8` |
| 36 | `theorem` | [verifyRoutingContract_sound](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/verifyroutingcontract-sound.md) | 284 | `result-track:431ef2ec422aa6705edc50b2bb46f8072b164b145a5f2c64e6e2e8055fb579c2` |
| 37 | `def` | [outgoingEdges](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/outgoingedges.md) | 290 | `declaration-track:de1888ff4d3fff1fd4a3490ec9bd29f04ad3ae572d33b3bf19e05fb37ed02382` |
| 38 | `def` | [orderedOutgoingEdges](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedoutgoingedges.md) | 294 | `declaration-track:92f2cc82a6988d51bab64e7359b078fe3831d779fdbcd37d19543a352911e2c3` |
| 39 | `theorem` | [orderedOutgoingEdges_declared](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedoutgoingedges-declared.md) | 299 | `result-track:a3a5aac92c0da9b35036bc601d8a2ae409a2c809c0e579ca6a3f5d5b96bd4835` |
| 40 | `theorem` | [orderedOutgoingEdges_source](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedoutgoingedges-source.md) | 309 | `result-track:14aa9d7f7708395c2ae6b4bcf94143e0ebcee650d0f21cf7fd94e8b51c6132cd` |
| 41 | `theorem` | [orderedOutgoingEdges_complete](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedoutgoingedges-complete.md) | 317 | `result-track:5f397e64bb8638964e61f80a195944900186b3454eb3fba86c981572c52b09be` |
| 42 | `theorem` | [orderedOutgoingEdges_sorted](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedoutgoingedges-sorted.md) | 329 | `result-track:2b39ac2a05ed680c73af0072d48f5edc864a1864ea81e17d0ce87f1494531e5c` |
| 43 | `theorem` | [orderedOutgoingEdges_nodup](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedoutgoingedges-nodup.md) | 350 | `result-track:015155d1909b9a684f3d89cfb4cc83e02e8ec39ad8ad1455e1efa47a3f70f738` |
| 44 | `structure` | [RouteState](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routestate.md) | 360 | `declaration-track:1fccb0b533239db99c9822d8d1b7f05784dcefd473a67e2867e69a69c3adb63c` |
| 45 | `def` | [initialRouteState](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/initialroutestate.md) | 367 | `declaration-track:2c9c4c0d37b59d88cdb03c8e603e7bab89a84fbf700e53f709aab5975b3a9798` |
| 46 | `def` | [discoverOne](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoverone.md) | 373 | `declaration-track:11377f88d31aac330e6336cdfae03f57c3f64d169e06c1f680b0564ad56602ae` |
| 47 | `def` | [discoverOutgoing](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoveroutgoing.md) | 383 | `declaration-track:8eedb55767ce62308d5d1b9f9de411664efe175da04b875548f892c37302c65e` |
| 48 | `def` | [processQueuedHost](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/processqueuedhost.md) | 389 | `declaration-track:2c1ae1fa3d4939dd94900cc2d7302b3ad46458831bad9076fb675a0bcdfe2c19` |
| 49 | `def` | [routeLoop](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routeloop.md) | 398 | `declaration-track:90e484faa38d045b45ec52ac1b9ae7bd387b611dd17781aa1c33ce37f2d06b4c` |
| 50 | `structure` | [OrderedRoute](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedroute-source-edition-3.md) | 409 | `declaration-track:7643c6760b0aba82ae5711b460842ee99ae253d15a06f8aa53d5dea8ac4a5d21` |
| 51 | `def` | [orderedRoute](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedroute.md) | 414 | `declaration-track:1a1b456e3a1595e73899ef4896cb4fa6c0d11b0b88b5bfed6ad4e9300d09734b` |
| 52 | `def` | [DeclaredStep](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/declaredstep.md) | 421 | `declaration-track:e8d0bf8d2a85509b222d273f5accd67bf7782524cb6ba25fcc0c3dd6dcb89e59` |
| 53 | `def` | [Reachable](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/reachable.md) | 426 | `declaration-track:6c1cb2fc48b7a0c6669ed4cd25e2d24c957029d90d1c75b3309f7affe82ca40b` |
| 54 | `theorem` | [orderedRoute_deterministic](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedroute-deterministic.md) | 431 | `result-track:1cd3a1e63685afd567498b135f8f862ec8d81a379301a602c2a6dc863666efb1` |
| 55 | `def` | [DiscoveryEdgesDeclared](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoveryedgesdeclared.md) | 441 | `declaration-track:ef4d4a41ff7bcd7f9ef4c1f6114cfaac4af966ded8f7e7156a8e33fe8b33316c` |
| 56 | `theorem` | [discoverOne_edges_declared](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoverone-edges-declared.md) | 446 | `result-track:80c334ce9262d5a2443b60b69d4ed272523b98719cbedd94c227b21e0864ea57` |
| 57 | `theorem` | [discoverOutgoing_edges_declared](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoveroutgoing-edges-declared.md) | 464 | `result-track:0d00d210ec53899c5d2c2ba656c43c96b628f1fcd2e7068161c2e2a80f09b289` |
| 58 | `theorem` | [routeLoop_edges_declared](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routeloop-edges-declared.md) | 481 | `result-track:6653ed31cee6c4b2000d46de246ec514cbe59aaa1cb205408f0333e4e983a858` |
| 59 | `theorem` | [orderedRoute_edges_declared](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedroute-edges-declared.md) | 500 | `result-track:52ec94df8be154f663631b912a58295065cfac8927a12a3fe9868f94bb1e22cf` |
| 60 | `def` | [StateNodup](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/statenodup.md) | 511 | `declaration-track:4a5ef7f06044158e96ab1472b76f2f0321cf2a27b66d308390e6cf1cceb8339a` |
| 61 | `theorem` | [discoverOne_nodup](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoverone-nodup.md) | 515 | `result-track:1b78b08455c6e14ade500b61b789eff69c8796bac4b4ba2091605db39f3b93df` |
| 62 | `theorem` | [discoverOutgoing_nodup](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoveroutgoing-nodup.md) | 525 | `result-track:89095e84f22f2b2972ad33a7024a144c5bb249839f645d7da5308c7c9c49dd73` |
| 63 | `theorem` | [routeLoop_nodup](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routeloop-nodup.md) | 536 | `result-track:6816c8849e588c03c1479b7d2a4d5dac5fb827e8da88a6ba4b195f35c2f8582e` |
| 64 | `theorem` | [orderedRoute_hosts_nodup](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedroute-hosts-nodup.md) | 550 | `result-track:092178ac83898c8b7896c86f943801e4ff16dc6e7b67840ee6d2fb11474dd729` |
| 65 | `theorem` | [discoverOne_visited_prefix](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoverone-visited-prefix.md) | 558 | `result-track:6be2c560abad3976fb547f81a6a8293840c6c8f5fb055bcfb0955b6d23053245` |
| 66 | `theorem` | [discoverOutgoing_visited_prefix](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoveroutgoing-visited-prefix.md) | 567 | `result-track:8d47341e47f5a01e085eae08c1103843dd5078a9675973ecc2b856c2218be3b5` |
| 67 | `theorem` | [routeLoop_visited_prefix](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routeloop-visited-prefix.md) | 577 | `result-track:dc12923dccf8d1cdd1778d6ef28ee85804e1896e6868d30546a194e6f8feef84` |
| 68 | `def` | [StatePartition](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/statepartition.md) | 599 | `declaration-track:03e1c8e8bed5ace650b6823a4ab9ba0dedc2b70943d5c647cbf76cbc965b3973` |
| 69 | `theorem` | [discoverOne_partition](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoverone-partition.md) | 603 | `result-track:5bac21ac4f77f4897759e4410d7412dd444b8223650c00d44e8e6f51c71af886` |
| 70 | `theorem` | [discoverOutgoing_partition](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoveroutgoing-partition.md) | 614 | `result-track:ce2d21c2522fc6121f2ea581997f65468b7a09e7018050442aaaffc06a4a83b4` |
| 71 | `theorem` | [processQueuedHost_partition](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/processqueuedhost-partition.md) | 626 | `result-track:fadd0c78adf3918bc9cf43bf736907d853142c18fc23ce35fab03c2e5cbbd30f` |
| 72 | `theorem` | [routeLoop_partition](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routeloop-partition.md) | 638 | `result-track:1acc032e43e4006a955fa8a1bb3942bd306f89a6fc2e920b6bd422cd6575190c` |
| 73 | `theorem` | [discoverOne_processed](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoverone-processed.md) | 654 | `result-track:68f82e7e673bf6a5f4c4d6d6d635940d31f4a378b5f4e1ef1b264f0301057827` |
| 74 | `theorem` | [discoverOutgoing_processed](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoveroutgoing-processed.md) | 661 | `result-track:8e4e5735b0d6ec2c0fad7a97bcde501469670755217535a2b4147caeac1dbbe1` |
| 75 | `theorem` | [processQueuedHost_processed_length](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/processqueuedhost-processed-length.md) | 673 | `result-track:d01b98a747238ef0abaccc08e1df3cfe7208d5f2cc57882c02779d5061802265` |
| 76 | `theorem` | [routeLoop_processed_length_of_queue_ne_nil](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routeloop-processed-length-of-queue-ne-nil.md) | 682 | `result-track:97728c823097e61d74519aa048eae9fc77465eba979758190463d49ba8289195` |
| 77 | `theorem` | [finalRouteState_queue_empty](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/finalroutestate-queue-empty.md) | 705 | `result-track:2a7ee9e107495d4326c9b208477cc381e1a3476ad113cc69891cea2bd6800147` |
| 78 | `def` | [StateReachable](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/statereachable.md) | 738 | `declaration-track:5154cb01c7aebf491f681837b48beb6da6e2869e16fe8939254d611a0222c524` |
| 79 | `theorem` | [discoverOne_reachable](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoverone-reachable.md) | 742 | `result-track:ce52fddac4cba76831b3c861dbf79eddb70df066de9555723569ed1616daecd4` |
| 80 | `theorem` | [discoverOutgoing_reachable](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoveroutgoing-reachable.md) | 760 | `result-track:0b4d57d4cc40924ecdb2cf7d37c8699fefdbe4e2cd55ecfcf060a72c8671c5e5` |
| 81 | `theorem` | [processQueuedHost_reachable](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/processqueuedhost-reachable.md) | 782 | `result-track:fd0f4831b772148b965bc60979e084bb57a83f6580842dc43eb38aba8af98eb3` |
| 82 | `theorem` | [routeLoop_reachable](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routeloop-reachable.md) | 803 | `result-track:7d12ce03a7887595ee8132d16e666383b5cb99c81330bd7486d2f63a1eea6016` |
| 83 | `theorem` | [discoverOne_target_mem](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoverone-target-mem.md) | 826 | `result-track:32515857fdf7eff868813706d895f9a0c3f0ff6c8245d615d7893331ce64229d` |
| 84 | `theorem` | [discoverOutgoing_contains_edge_target](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/discoveroutgoing-contains-edge-target.md) | 834 | `result-track:37e70a919ba081303064c0fd6de82cac6e49fba5c8933a70c17310dbe5b48df5` |
| 85 | `def` | [StateProcessedClosed](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/stateprocessedclosed.md) | 850 | `declaration-track:9f8b43c097a093980594b3a635bd1e97d8b8fc2210ca035fc84796f8e4bf9200` |
| 86 | `theorem` | [processQueuedHost_closed](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/processqueuedhost-closed.md) | 855 | `result-track:edbe09a0690dfda7d58a0b6ba615008831cea8431aa8f36ef5fad7164f97304f` |
| 87 | `theorem` | [routeLoop_closed](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/routeloop-closed.md) | 886 | `result-track:c52d50901d69c45d68af7ad293cbae3fd119d7eb8472552002e856e3fa3af458` |
| 88 | `theorem` | [orderedRoute_hosts_reachable](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedroute-hosts-reachable.md) | 900 | `result-track:89929151957dfffd30295c2901450dbbfe4a67d963ce5893563024afa2f78dae` |
| 89 | `theorem` | [reachable_mem_orderedRoute](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/reachable-mem-orderedroute.md) | 918 | `result-track:3b628db127b697a2e82f27adbdee872cead333d9dd6130ab4d6600071d82862d` |
| 90 | `theorem` | [orderedRoute_reaches_exactly_reachable](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedroute-reaches-exactly-reachable.md) | 954 | `result-track:f1238694de1452c808811977d8d1707baa75be58c975f27c161e8d136368504f` |
| 91 | `theorem` | [orderedRoute_start](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedroute-start.md) | 965 | `result-track:9555bd252e66bd1d4fd48785d1cdf19f1aab3e75da91eca8d1d827f7b37edbc4` |
| 92 | `abbrev` | [CanonicalBytes](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/canonicalbytes.md) | 978 | `declaration-track:835f0f43bf98c4a9b4b2d79f5aabdc871fef6d464be799cba6b67aacea24853c` |
| 93 | `def` | [encodeU8](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodeu8.md) | 980 | `declaration-track:cc71e5139ff61f9f8eb30e7babab69d2117c280e0ca3980edc2f6efbd3fa77fb` |
| 94 | `def` | [encodeNatLE](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodenatle.md) | 983 | `declaration-track:c50c7da434f3d30fdcf4c822c5561d78c1055d3f2c7c355594a59dc263f51982` |
| 95 | `def` | [encodeU32LE](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodeu32le.md) | 987 | `declaration-track:be56885491c75dd08b489ca4dc1ff6059e3f95bda8a451b6d4d5d83f8e37b9b3` |
| 96 | `def` | [encodeU64LE](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodeu64le.md) | 990 | `declaration-track:136198b74d37f6486d09e100b67b5f6691631b9fd175000e252c4dca715ef3ff` |
| 97 | `def` | [encodeSignedLE](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodesignedle.md) | 993 | `declaration-track:9e53b04806cbe9df7bdfa974e92100a4792187c5464d6a2e5be2f4088902f3a6` |
| 98 | `def` | [encodeI32LE](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodei32le.md) | 996 | `declaration-track:8660c1af61752b962b8f91115c1641396c419d44d8da9e57f4e257cfe7b4096d` |
| 99 | `def` | [encodeI64LE](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodei64le.md) | 999 | `declaration-track:2642b65d7f8a6450d5856db6486a93544095d01190d8549baed856bcda07a5fe` |
| 100 | `def` | [encodeUtf8](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodeutf8.md) | 1002 | `declaration-track:f0168bec4be534fff71224e39f87fb2689a3a9a53375e38cdea4d143995f58a9` |
| 101 | `def` | [encodeLengthPrefixedUtf8](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodelengthprefixedutf8.md) | 1005 | `declaration-track:b90c25b0e026eaaaec72c048f47c5032b89126fedb733ba3a47ce6dfdaed9136` |
| 102 | `def` | [lowerHexNibble](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/lowerhexnibble.md) | 1008 | `declaration-track:84941e740c86fdc84cf76f988512656176cf2c576b98ced1f8313a4406141131` |
| 103 | `def` | [decodeLowerHexPairs](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/decodelowerhexpairs.md) | 1018 | `declaration-track:7817fbab664f71088ce3410412a073c96c15729ae644123ba6a0e62482aa3c4f` |
| 104 | `def` | [encodeHash256](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodehash256.md) | 1024 | `declaration-track:1aac1b6f72a406456d0bf239a5f82132746857a70de4c9838d99113720b8febc` |
| 105 | `def` | [encodeOverflowPolicy](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodeoverflowpolicy.md) | 1027 | `declaration-track:dba89e51c8d33ade22b76ac5111f3fd88b68ef0e64f0311a5b703ed7acbbdf4f` |
| 106 | `def` | [encodeRoundingRule](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encoderoundingrule.md) | 1030 | `declaration-track:f55c672b8510a787e02b1ac2b075636487ef9fe00e45828eafe85e6d6d438f5d` |
| 107 | `def` | [encodeTraversalMode](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodetraversalmode.md) | 1037 | `declaration-track:63149bcc233f6f6307cf64e1161a23a8d2828e3c902ba0514bb3c669eddfec8d` |
| 108 | `def` | [encodeFixedFormat](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodefixedformat.md) | 1041 | `declaration-track:375c158a9555e9fa7c1720db6f81bf3c0392018140654081a8df47bf8da37d86` |
| 109 | `def` | [encodeHostCode](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodehostcode.md) | 1053 | `declaration-track:fd3e059905596d2fad4d0ec6e225c318680b82b01f4eff6c10e3a15e65d9f112` |
| 110 | `def` | [encodeEdgeRow](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/encodeedgerow.md) | 1057 | `declaration-track:8f4e4b64a7d5757f8e61c5c6897d9f783150a3bdc6c10f998c900e359ecac7ac` |
| 111 | `def` | [canonicalBytesWithoutHash](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/canonicalbyteswithouthash.md) | 1067 | `declaration-track:a7445c19315c3973b095577f9c74a7101b891d0abf3eeae6d546ff2b9fea3cd8` |
| 112 | `theorem` | [hashMaterialDeterministic](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/hashmaterialdeterministic.md) | 1087 | `result-track:734341d7db2357652df584e99efce78d2a9ddd48f7b590400775a4b3ccee8ad0` |
| 113 | `structure` | [SourceSnapshot](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/sourcesnapshot-source-edition-2.md) | 1098 | `declaration-track:c26f7a8c1c9df414eeb53094ab575b20784349512d0621a06a798fddeff6d059` |
| 114 | `def` | [SourceSnapshot.canonicalBytesWithoutHash](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/sourcesnapshot-canonicalbyteswithouthash.md) | 1107 | `declaration-track:5edd8730af78ba744a479aa29bce018cf88abbb3e559fdb98c40b0c72bbd1273` |
| 115 | `structure` | [ProposalKey](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/proposalkey.md) | 1121 | `declaration-track:2a762b1d0b669d418cfc18c8fe1855dd465b173e650ebacc55bbd23b970a59de` |
| 116 | `def` | [ProposalKey.canonicalBytes](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/proposalkey-canonicalbytes.md) | 1134 | `declaration-track:c700ad812afa4aba110f4b5d01ba4751d06801074e6261adf589071c739e0b6b` |
| 117 | `theorem` | [ProposalKey.serialization_deterministic](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/proposalkey-serialization-deterministic.md) | 1153 | `result-track:776b94f2025492c16c1d72664c27f772889d2081d7c54188e27bd4d00f44ef85` |
| 118 | `abbrev` | [OrderedRoute](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/orderedroute-source-edition-2.md) | 1168 | `declaration-track:4b18e8c3d3167840e1c08a95033e67eccfaa4a612db2a63966dea46c2951d347` |
| 119 | `abbrev` | [SourceSnapshot](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/sourcesnapshot.md) | 1171 | `declaration-track:76547f32e0211fd21c1468096c6eb8c280e07f7f55cf221bb309336c1b7fdc3f` |
| 120 | `abbrev` | [ProposalKey](../../../../Combinatorics/RoutePublicEdition4.lean/declarations/proposalkey-source-edition-2.md) | 1174 | `declaration-track:be22bd9675a93a644a1eb48d37650137cb78431fd0b512dea530887c0bcbe307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=927db0bb00bd17cdbd71df7dcadeaf1d3cc19b508079d522371244bbcd906062 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantc44491863e2264170a1a0da660efb5767254309951ba45cf2bcdb9986fe2c527.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Route/Variantc44491863e2264170a1a0da660efb5767254309951ba45cf2bcdb9986fe2c527.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
