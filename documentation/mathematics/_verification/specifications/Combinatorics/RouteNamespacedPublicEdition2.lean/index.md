# Verification target: Route Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "361aa0e4549e8cfeaf3671dbdda499cfa5aa6991",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant43b590e7eec60604701ee0d08fc3b8b4b439ba675cff221e776ebf8285600cc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `361aa0e4549e8cfeaf3671dbdda499cfa5aa6991`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant43b590e7eec60604701ee0d08fc3b8b4b439ba675cff221e776ebf8285600cc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Route/Variant43b590e7eec60604701ee0d08fc3b8b4b439ba675cff221e776ebf8285600cc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StableFiniteCode](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/stablefinitecode.md) | 46 | `declaration-track:9c289762ac7efa02a88104c11ce41ceec4225f294873d8e4c91750380ae86a5d` |
| 2 | `structure` | [DeclaredEdge](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/declarededge.md) | 52 | `declaration-track:2fe8cbdf1550c0b6679658e5ec95afcf18219eb0f3398569f01ee4fc7d02a989` |
| 3 | `structure` | [EdgeKey](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/edgekey-source-edition-2.md) | 61 | `declaration-track:687f92dd5abef337e6bb1c4f156f520bbb84df600f6a5b3724b24cf4103c9610` |
| 4 | `def` | [EdgeKey.lexValue](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/edgekey-lexvalue.md) | 70 | `declaration-track:2134c7d814e0cd23ad06048e002cccb22e9f12eca2e7b93ca1a96f07473a3e08` |
| 5 | `def` | [EdgeKey.LE](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/edgekey-le.md) | 74 | `declaration-track:6764d42078ed0af689da186b8f94618a717acf4383f6542160066d8653541029` |
| 6 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-11.md) | 77 | `declaration-track:ffe1ac7c7bb03cd20f0c08220d5ee0becbff632ff316ba048697a77076dfa3b1` |
| 7 | `theorem` | [EdgeKey.le_total](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/edgekey-le-total.md) | 81 | `result-track:785cc800ab16e1411b7df0fbbb21d144e1c61d4c1049f095e9b60607d34f5e2a` |
| 8 | `theorem` | [EdgeKey.le_trans](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/edgekey-le-trans.md) | 86 | `result-track:f15925c36f483119b08e6118607463bbd2b995b77493c7885aac45c853279ff1` |
| 9 | `inductive` | [TraversalMode](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/traversalmode.md) | 94 | `declaration-track:6897da07154219b602ade20694f086cf3f01408a7945b883555db958f47147c5` |
| 10 | `def` | [xyzRoutingSchemaVersionV1](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/xyzroutingschemaversionv1.md) | 99 | `declaration-track:cbc899e42da3f1e6dd31184299361241484a926a39dfc02a66de5c035ec0c06d` |
| 11 | `def` | [xyzRoutingAlgorithmVersionV1](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/xyzroutingalgorithmversionv1.md) | 100 | `declaration-track:ab0e1f7f5354e9dd553b37512d8412f2076788d14fd1ff1b9fb2141d8f264584` |
| 12 | `def` | [xyzRoutingSerializationVersionV1](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/xyzroutingserializationversionv1.md) | 101 | `declaration-track:0620cb771f57dbbd43bf995fd3bb6cee906d87cc59995796b9df2c3c6e0c169e` |
| 13 | `def` | [xyzIdentityExpectedUpdateId](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/xyzidentityexpectedupdateid.md) | 102 | `declaration-track:ddf993f75e35d0ced05507b24aa9116f9840c6b5913dcc3f2814b5badcf623d6` |
| 14 | `def` | [xyzRevisionFormatV1Id](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/xyzrevisionformatv1id.md) | 104 | `declaration-track:b7cf69287c0c91994e69d33a52ea79a1ae9c8ae1a8f67e2d7c75e0f6b8650109` |
| 15 | `structure` | [RoutingContract](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routingcontract.md) | 108 | `declaration-track:b3686614d5213141ff7116944ed2c2a8e2ae29ba023c6a9d9661e9731bfafdd2` |
| 16 | `def` | [edgeKey](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/edgekey.md) | 132 | `declaration-track:24a04e846cfd668e4fb7093dcc93cabcfbfa18549a26612ea22d4e3dc20999fe` |
| 17 | `def` | [canonicalEdgeLexValue](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/canonicaledgelexvalue.md) | 141 | `declaration-track:fece84b6db844367209b0a949e220d55737d51c5dfee3c5f7478519daf42f1ec` |
| 18 | `def` | [canonicalEdgeLE](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/canonicaledgele.md) | 151 | `declaration-track:02e7c7781799f40498c58cf9d0310315127ed307d9a39978862d45a44a2c1dde` |
| 19 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-9.md) | 155 | `declaration-track:d03d4d9e32f55d7fe68f734e4dbae844ca3c79c9c9cda8ceef0db611601b67f8` |
| 20 | `theorem` | [canonicalEdgeLexValue_injective](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/canonicaledgelexvalue-injective.md) | 161 | `result-track:c5a3ceba4eb69f2ff88838907f312ec82d44ae79167f6dac3f23a342370a1aa8` |
| 21 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance.md) | 181 | `declaration-track:216fe60ff1998b2b2d172c130be05eda82bafc3a850d8684c97bd069898be6f6` |
| 22 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-6.md) | 186 | `declaration-track:7d11f5ce4aef8356446871172de4a71a68109e89fa584450c3271891c38d0d4c` |
| 23 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-5.md) | 192 | `declaration-track:6c6ca3b791cae04551f2a4d2222d40774fbc33781190a4fe16083ee3eb1802eb` |
| 24 | `def` | [sortedCanonicalEdges](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/sortedcanonicaledges.md) | 198 | `declaration-track:abf7e2f890678bc8948effc5e13dfc796d38f10f21c33c11dce00943e6dc4519` |
| 25 | `def` | [hostCodeLE](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/hostcodele.md) | 203 | `declaration-track:f949d583cab02f303cd0bbb92eae90a46700414c75c4ebe5215ea64d89f187fe` |
| 26 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-7.md) | 207 | `declaration-track:9a497643f95e2aa4b55eae220af046e220738ef751208775e1ee87a79257d9c8` |
| 27 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-4.md) | 213 | `declaration-track:62bfe93e1ad36d19e648d10cef008bb2b759c5b97237cec702c75373560ea367` |
| 28 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-3.md) | 218 | `declaration-track:454180f9e898c2136af972c6eb3743e8600df99bf56e85d0b706cefb0266f1df` |
| 29 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-10.md) | 223 | `declaration-track:e940f53560375ec2b7223af81b1f8e492ca31aba7abc8dc0176e3aaf6c916ef9` |
| 30 | `def` | [sortedHosts](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/sortedhosts.md) | 228 | `declaration-track:5c1f7ec22e99afb1ec9879a02ac9372e2aa65195f71c33ad099252aaf04ec759` |
| 31 | `def` | [hashMatches](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/hashmatches.md) | 234 | `declaration-track:2736d286bfc4319959ca69fc6648fdb7bb06eafaac38f8835a2fb93c9e88b01c` |
| 32 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-8.md) | 237 | `declaration-track:cea33400224506b178c2904856fbedc011c377ac8b1163ded18a8b7278b227d2` |
| 33 | `def` | [Valid](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/valid.md) | 245 | `declaration-track:248b1843d40bda6fbf3f964735b18c2b9a06ae0fbe9c4cea550056ad7b856b5b` |
| 34 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/instance-source-edition-2.md) | 283 | `declaration-track:2720ae8384cbb0fa762e6e07e34b54616d9d7a6b71ab6aeccbf6046f35f99a6a` |
| 35 | `def` | [verifyRoutingContract](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/verifyroutingcontract.md) | 287 | `declaration-track:c30bca24f298c487bf8b36c4e508a85cf05f0babb7afe5520094df666a80c953` |
| 36 | `theorem` | [verifyRoutingContract_sound](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/verifyroutingcontract-sound.md) | 292 | `result-track:188e1a8794571fa8730de7042cdc325cc808d890be398709e1493f646ac1f14d` |
| 37 | `def` | [outgoingEdges](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/outgoingedges.md) | 298 | `declaration-track:786fc7d7d774be5b741146e43a96ff678680dcf72ca6805499424b7acf95ffbc` |
| 38 | `def` | [orderedOutgoingEdges](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedoutgoingedges.md) | 302 | `declaration-track:38caf7814964e33130e8bf7e091cfa18a233a90c355e07998f784bb9d47b8c6b` |
| 39 | `theorem` | [orderedOutgoingEdges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedoutgoingedges-declared.md) | 307 | `result-track:df69a9f81707dd4350f8a5a61deefb9c305051e975da9c4362c2dab90716bb1e` |
| 40 | `theorem` | [orderedOutgoingEdges_source](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedoutgoingedges-source.md) | 317 | `result-track:8266c1bf232631eadb23567daa0033408171843558343aed68679ac6aa970716` |
| 41 | `theorem` | [orderedOutgoingEdges_complete](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedoutgoingedges-complete.md) | 325 | `result-track:19b2ad2471ba85d1286848e95eb38a73b0011204044f4eb3628d808f8b0752bf` |
| 42 | `theorem` | [orderedOutgoingEdges_sorted](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedoutgoingedges-sorted.md) | 337 | `result-track:c8c6c913bcc2e58ac45d051e0060e9677c41d6379a171e686f5aa54ffcdddc4e` |
| 43 | `theorem` | [orderedOutgoingEdges_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedoutgoingedges-nodup.md) | 358 | `result-track:b94d62c9361d3e4a52f56d9fd002fc4e8d82c062a64f73571070130d516e29e5` |
| 44 | `structure` | [RouteState](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routestate.md) | 368 | `declaration-track:4cfa85bc33614c74b5f0dba5020aa19a4761a7d8f13b077816d49004f0d28562` |
| 45 | `def` | [initialRouteState](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/initialroutestate.md) | 375 | `declaration-track:fc0fced76af2a525c7f24b7e63ea6f33f2cd85a6b309a8029b1a82a5430f78c0` |
| 46 | `def` | [discoverOne](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoverone.md) | 381 | `declaration-track:6a42a244f2f3f813ceb8484905ee5324c1d63cf19560b06909fe97f52baedeb4` |
| 47 | `def` | [discoverOutgoing](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoveroutgoing.md) | 391 | `declaration-track:04b46a297a63f4a5ba612b3020abc3526fd736b6fbb8ba6c5a1b793adf8b1c61` |
| 48 | `def` | [processQueuedHost](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/processqueuedhost.md) | 397 | `declaration-track:c4d77603e4ba295d8bf25ce525171ccb53a7d5c2a65828046af0a56b56934ed5` |
| 49 | `def` | [routeLoop](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routeloop.md) | 406 | `declaration-track:38089897e8f00f6992d28fdceae4cd924f9ba015f2b9fea3bcbeb3db07035107` |
| 50 | `structure` | [OrderedRoute](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedroute.md) | 417 | `declaration-track:43315690dd263327557458435e405fc4fbe1b45ec1fefd2c4086c3373f4a0258` |
| 51 | `def` | [orderedRoute](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedroute-source-edition-2.md) | 422 | `declaration-track:ed0c3164adff61e7ee5edf41ad6b5851a04b21ce5ced3afed48160d7533c1e4a` |
| 52 | `def` | [DeclaredStep](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/declaredstep.md) | 429 | `declaration-track:7ec22af5acfbe20993f07c7f4dfc87b907cfffe71781fb50454a77af3d56183c` |
| 53 | `def` | [Reachable](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/reachable.md) | 434 | `declaration-track:54bab34863b676a2fcc1de77c3565040bc2f36c2112c3d0edbb33b35b6e50103` |
| 54 | `theorem` | [orderedRoute_deterministic](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedroute-deterministic.md) | 439 | `result-track:f14942e88757f98f6b9c64822b4f47a6b842e50d28312ffd14a05528b4c1756f` |
| 55 | `def` | [DiscoveryEdgesDeclared](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoveryedgesdeclared.md) | 449 | `declaration-track:f4e14eb204d7e5a7ecbc489147d6ff4a828af9af47386022b9396d5dca7cdbb2` |
| 56 | `theorem` | [discoverOne_edges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoverone-edges-declared.md) | 454 | `result-track:7406e62e7c7094ba85f1c38f221f31254345471b6575ad40fdeb60e372eb77cb` |
| 57 | `theorem` | [discoverOutgoing_edges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoveroutgoing-edges-declared.md) | 472 | `result-track:a25947803d3fa067b04f415a6d733543b69a18652f19b6df2fe262304d2d922e` |
| 58 | `theorem` | [routeLoop_edges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routeloop-edges-declared.md) | 489 | `result-track:e07c94ed8e3530aa9dd3e43b74134fa2817f7dab7660eaaad28e0f05e142a040` |
| 59 | `theorem` | [orderedRoute_edges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedroute-edges-declared.md) | 508 | `result-track:7f0e65efeabd3741ed0df9c3d069cd88cf49808f24cef1b51311f38a208e3413` |
| 60 | `def` | [StateNodup](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/statenodup.md) | 519 | `declaration-track:1caa1660308977b1751c3c51f04d6f17b822c6e40cef36cf55fbc97b1be07c92` |
| 61 | `theorem` | [discoverOne_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoverone-nodup.md) | 522 | `result-track:5805e022a8c5dbb826fe90b298ae2f0d77082a75210871f0da2dc649d007d471` |
| 62 | `theorem` | [discoverOutgoing_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoveroutgoing-nodup.md) | 531 | `result-track:faa05189dd9a16332215a94fa5d37fbebd2a90d8330cb565e23fecdee677761f` |
| 63 | `theorem` | [routeLoop_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routeloop-nodup.md) | 542 | `result-track:715fa6635aea0bf5f7d6304611ebec4002c98a6fa0d1286d1e2a31849a0be228` |
| 64 | `theorem` | [orderedRoute_hosts_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedroute-hosts-nodup.md) | 556 | `result-track:5289fb8be6d42b5afc0e48e21b12bf271b12fac8bd8dfd5a6501a97407084970` |
| 65 | `theorem` | [discoverOne_visited_prefix](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoverone-visited-prefix.md) | 563 | `result-track:93ca9374f5ae4204121a2d96f5c8564ba4852a48385caa4f2b54015f31a00c71` |
| 66 | `theorem` | [discoverOutgoing_visited_prefix](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoveroutgoing-visited-prefix.md) | 571 | `result-track:fafeca48f56603b978e8da80d86643d1c5eab1c2c478154b5fab3bdc7fec9cbc` |
| 67 | `theorem` | [routeLoop_visited_prefix](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routeloop-visited-prefix.md) | 581 | `result-track:d80c48455ba46d7a61574010f3b742dfc4c94803888ae18d83ccaee8368a7144` |
| 68 | `def` | [StatePartition](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/statepartition.md) | 603 | `declaration-track:4a499814aff0fb6a7ad58f4b343814c942a2c70dca6e376974ef2ea971599351` |
| 69 | `theorem` | [discoverOne_partition](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoverone-partition.md) | 606 | `result-track:0caf891ba5165f8be5dffd7835c68fe3d29387e60118f822df4d7c47520f9738` |
| 70 | `theorem` | [discoverOutgoing_partition](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoveroutgoing-partition.md) | 616 | `result-track:aa851ae1500a87e18beed9adf728f8b97724f7e92ba2233a24af666b1bb70010` |
| 71 | `theorem` | [processQueuedHost_partition](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/processqueuedhost-partition.md) | 628 | `result-track:ee1512d1e429ef8557d7f4b691f239943fbe472c0488ddaafa05ede634949cbf` |
| 72 | `theorem` | [routeLoop_partition](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routeloop-partition.md) | 640 | `result-track:06c9a0a2b0a06818f68479b0e91715a344618a0f8456eb8c390d1048652647a4` |
| 73 | `theorem` | [discoverOne_processed](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoverone-processed.md) | 655 | `result-track:a5659362e4e017d41e15bbc92cf1da43483558061eb4e3eeb4cc57691ddde1a5` |
| 74 | `theorem` | [discoverOutgoing_processed](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoveroutgoing-processed.md) | 661 | `result-track:8872cf9508819ced99e1873678bc5d9ac764177ba0c5e9eb11a5f17473a5c2dd` |
| 75 | `theorem` | [processQueuedHost_processed_length](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/processqueuedhost-processed-length.md) | 673 | `result-track:2865c117b117217a6c07ca16d8c2e6342b4fb513c1561ff30af4cce7be15727a` |
| 76 | `theorem` | [routeLoop_processed_length_of_queue_ne_nil](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routeloop-processed-length-of-queue-ne-nil.md) | 682 | `result-track:6911f34447225328e15fd62cd0d753bf48909cf9640f27ebad27666ea5ba8945` |
| 77 | `theorem` | [finalRouteState_queue_empty](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/finalroutestate-queue-empty.md) | 705 | `result-track:737013ec470c385387491b1399c9ba5e40780bafb93a8d8c611a5deb9dcbb5e8` |
| 78 | `def` | [StateReachable](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/statereachable.md) | 738 | `declaration-track:422bfcfcd996078b0e04836ba520cf830c1143cc8f7af98797d34fa9d3e2793f` |
| 79 | `theorem` | [discoverOne_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoverone-reachable.md) | 742 | `result-track:74ba604c541a829b288c44bbb8b9009496982c3d5bcd9840904719ce9c9712e4` |
| 80 | `theorem` | [discoverOutgoing_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoveroutgoing-reachable.md) | 760 | `result-track:9151c1bc35ba1095cf3f56dde4553c2f282a723a9d32d8598e0434bc3cb02b91` |
| 81 | `theorem` | [processQueuedHost_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/processqueuedhost-reachable.md) | 782 | `result-track:492235a88753f88d14f8d6ab39a1268d0ba7729ba0e9947d2a621a56c4ec9281` |
| 82 | `theorem` | [routeLoop_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routeloop-reachable.md) | 803 | `result-track:1fc92ba0ce264a7c2b02339b949ff62bb02d988d26b96ad4d049430f19c8a9f5` |
| 83 | `theorem` | [discoverOne_target_mem](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoverone-target-mem.md) | 825 | `result-track:dcfe34b46e2a5033b5e4da9d67a25d03dea5a7640ed246351dadab94de87e712` |
| 84 | `theorem` | [discoverOutgoing_contains_edge_target](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/discoveroutgoing-contains-edge-target.md) | 832 | `result-track:49c7bb6be4479355cab6d6ce2d3f7bd03202002bc54864a5cc45d3952c6cf408` |
| 85 | `def` | [StateProcessedClosed](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/stateprocessedclosed.md) | 848 | `declaration-track:0b9a1050a3b4617afeee954d8d9484b0961be1ccbfdd0f0f58d9c6910cec9f96` |
| 86 | `theorem` | [processQueuedHost_closed](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/processqueuedhost-closed.md) | 853 | `result-track:8cdb3750e38861681a97af7ab85c984321428720516df2d873cd895d3d659f0f` |
| 87 | `theorem` | [routeLoop_closed](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/routeloop-closed.md) | 884 | `result-track:41a7d8ac3607af60b9c4aae6c7d0c44f7205fad86d950aa2c7e4c917eaccf023` |
| 88 | `theorem` | [orderedRoute_hosts_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedroute-hosts-reachable.md) | 898 | `result-track:d11fe810b886d8635cc08bc9fd4d88793f462f98d5107f992646aeb041b8ae9d` |
| 89 | `theorem` | [reachable_mem_orderedRoute](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/reachable-mem-orderedroute.md) | 916 | `result-track:19e0ecf91a3acdb2a268e114e732d7c32994d17c01f076e7a31702665418ae50` |
| 90 | `theorem` | [orderedRoute_reaches_exactly_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedroute-reaches-exactly-reachable.md) | 952 | `result-track:0d3d78d213f33a4140aa7cbfca54b83227f8c8d311eaf91b09fe9dc191c9ea83` |
| 91 | `theorem` | [orderedRoute_start](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedroute-start.md) | 963 | `result-track:ec3ef9d8470d28e0815e56b67da3ceae5258c3c7b1a33ad362f3971d03712242` |
| 92 | `abbrev` | [CanonicalBytes](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/canonicalbytes.md) | 976 | `declaration-track:b64783c9aca22309f9f72e0f567ab9fd8fe0cad0b5358e73f1d4f348b9a68318` |
| 93 | `def` | [encodeU8](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodeu8.md) | 978 | `declaration-track:f24dfdb129d9096a378544ccc0f7eb2970690ce946a4bf1177d626c5d21b3728` |
| 94 | `def` | [encodeNatLE](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodenatle.md) | 981 | `declaration-track:f7bf723f8b8655328b2721c5710d9c54554bbec3a142d9c850d65322342e6e65` |
| 95 | `def` | [encodeU32LE](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodeu32le.md) | 985 | `declaration-track:73d6b330fea7495a94086b02dcd93311b22a1887e93d4a64455cf754dfd887c2` |
| 96 | `def` | [encodeU64LE](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodeu64le.md) | 988 | `declaration-track:a2bc131d7a4e90a066d1074c61448e1ad44e6f25e9fdd8f092ade4f0eb251e2a` |
| 97 | `def` | [encodeSignedLE](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodesignedle.md) | 991 | `declaration-track:26eddc0ab63093d306bbd3a3c7a71bcc3751ffb544455cd947003115c868dc8b` |
| 98 | `def` | [encodeI32LE](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodei32le.md) | 994 | `declaration-track:28cf0532fd22c61855ed4c5c0753606c2f5d72fa93d298ca58fb9063cf1d08f8` |
| 99 | `def` | [encodeI64LE](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodei64le.md) | 997 | `declaration-track:08ad360f7235f8e35683da89bd30e9ab0e8e627526f5257ba48835782e272dee` |
| 100 | `def` | [encodeUtf8](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodeutf8.md) | 1000 | `declaration-track:301fa6341b21132a98007b9e6237e0bd8a4fc9d34a3f1192737bc2f0601e12f4` |
| 101 | `def` | [encodeLengthPrefixedUtf8](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodelengthprefixedutf8.md) | 1003 | `declaration-track:7ca69a941504ad89aaf7aa8443230b2293d9b742f8d23139ecca084d2ee4dc36` |
| 102 | `def` | [lowerHexNibble](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/lowerhexnibble.md) | 1006 | `declaration-track:bd440ed07c0dedb74d08130f0ef00cf5dd9375baa6216ef8dfb64ee2750b5db3` |
| 103 | `def` | [decodeLowerHexPairs](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/decodelowerhexpairs.md) | 1016 | `declaration-track:85a85517781f8f8581bf3ef8d8dad0aededb7c0eb80b0c7c50829a137f1bde8d` |
| 104 | `def` | [encodeHash256](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodehash256.md) | 1022 | `declaration-track:cf93b744a896aaa3ee0389f97d6d1347d6d0687c5a6ae5db3c08ea011c9fbaa6` |
| 105 | `def` | [encodeOverflowPolicy](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodeoverflowpolicy.md) | 1025 | `declaration-track:6cb69204501a9e3429c2c15337c564b8d465cb52f708af50639b01fb83045889` |
| 106 | `def` | [encodeRoundingRule](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encoderoundingrule.md) | 1028 | `declaration-track:5a35b2b7307ff301357991ecff1984f2d7b55ee4f98a08e24fde277d86436b75` |
| 107 | `def` | [encodeTraversalMode](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodetraversalmode.md) | 1035 | `declaration-track:32c4d578ec3b6f70d2b997fbb36594961456e2c2d783f1f645eb77462353f5a9` |
| 108 | `def` | [encodeFixedFormat](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodefixedformat.md) | 1039 | `declaration-track:67e09b2d1f0d20f2b47afcfda94fa2d02d10e5c2970ef2fdc9f286a01f102f6e` |
| 109 | `def` | [encodeHostCode](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodehostcode.md) | 1051 | `declaration-track:9c930ec59152bbe283c00d9185d09343728c84fa36355341caaeed236dbb6cff` |
| 110 | `def` | [encodeEdgeRow](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/encodeedgerow.md) | 1055 | `declaration-track:0648eb30e5376e817ea3c6face9f17e14dadb6071c21cef9165ac0d79336ec0f` |
| 111 | `def` | [canonicalBytesWithoutHash](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/canonicalbyteswithouthash.md) | 1065 | `declaration-track:0e8129751d12dda3943ece042bb25ba121be35ee6e4de9a9ba1321ea206dcf6a` |
| 112 | `theorem` | [hashMaterialDeterministic](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/hashmaterialdeterministic.md) | 1085 | `result-track:5668125fb33c20e8f407d34d613ee6b64b51e1f54570f9ace2bc3c6cdc44bf75` |
| 113 | `structure` | [SourceSnapshot](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/sourcesnapshot.md) | 1096 | `declaration-track:117a07000641bcf8da7b99e2a4beff4bf648e81d6356aa143bab6c21f4ae7899` |
| 114 | `def` | [SourceSnapshot.canonicalBytesWithoutHash](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/sourcesnapshot-canonicalbyteswithouthash.md) | 1105 | `declaration-track:fa84ee6b5736d2229f8992982aa1ab7bf4a6d7abd1588b4a1276f13500833cb1` |
| 115 | `structure` | [ProposalKey](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/proposalkey-source-edition-2.md) | 1119 | `declaration-track:f93cb298f95a5e44bfb351571f5580d5e83746fbcd70449ab3c796aa9e08be9b` |
| 116 | `def` | [ProposalKey.canonicalBytes](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/proposalkey-canonicalbytes.md) | 1132 | `declaration-track:ddd35d8c635b2849a1edd9da4b4e2de10aafb453b4d37ea9ba7e126c650d6f50` |
| 117 | `theorem` | [ProposalKey.serialization_deterministic](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/proposalkey-serialization-deterministic.md) | 1151 | `result-track:3bb536327752ba5659f7fd3dc331f9acf229cf93102d6128d3af175c93c85861` |
| 118 | `abbrev` | [OrderedRoute](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/orderedroute-source-edition-3.md) | 1166 | `declaration-track:fa305e74e98c920ff17d234a3d93a68d9e6900710e632b38658cad9cedb3eb18` |
| 119 | `abbrev` | [SourceSnapshot](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/sourcesnapshot-source-edition-2.md) | 1169 | `declaration-track:72bc903ac0437fab52ee2ba891db9e2e41979a79a4013b2b283c0d48179121cc` |
| 120 | `abbrev` | [ProposalKey](../../../../Combinatorics/RouteNamespacedPublicEdition2.lean/declarations/proposalkey.md) | 1172 | `declaration-track:2db664c234b11f52de556d45fa88c50dcb70d018f7a3651f3fbfd1e5dcea1411` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f45e5a5fd14370d68c31b9907a1b3f955d23b2284b03cc2a768d7224bf13493f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant43b590e7eec60604701ee0d08fc3b8b4b439ba675cff221e776ebf8285600cc3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Route/Variant43b590e7eec60604701ee0d08fc3b8b4b439ba675cff221e776ebf8285600cc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
