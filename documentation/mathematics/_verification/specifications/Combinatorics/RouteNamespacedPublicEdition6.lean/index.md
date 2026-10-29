# Verification target: Route Namespaced Public Edition6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04dc91043f2e0e5d96a144dac5d7ca90d0c4a1b4",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/index.md) · [Full source](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04dc91043f2e0e5d96a144dac5d7ca90d0c4a1b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean.json)

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
| 1 | `structure` | [StableFiniteCode](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/stablefinitecode.md) | 46 | `declaration-track:f0fead7efed663fda9aa3a2344a58487697294e2cd8b38778017c0fad9a0fc04` |
| 2 | `structure` | [DeclaredEdge](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/declarededge.md) | 52 | `declaration-track:4341e741afa21a7f652c485ab4382c7b7fc94460920eb112ce7be50407fe7c1c` |
| 3 | `structure` | [EdgeKey](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/edgekey.md) | 61 | `declaration-track:03342bb73f73f75021166fb349059064a26593ec0c2e8737482a3749389c9ba5` |
| 4 | `def` | [EdgeKey.lexValue](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/edgekey-lexvalue.md) | 70 | `declaration-track:7b50069730937d52d3225eb740fc54c8c2ede0fa6f2e240ad985d771649d49d1` |
| 5 | `def` | [EdgeKey.LE](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/edgekey-le.md) | 74 | `declaration-track:5334b726b11d0f23cfecba29ff4389be79e07b5dd11fc483eb02cc34078caa1f` |
| 6 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-10.md) | 77 | `declaration-track:e73a4caa413c476cb2f742eeb86a0e78ca4ec1e642ee090c86796efff35a1863` |
| 7 | `theorem` | [EdgeKey.le_total](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/edgekey-le-total.md) | 81 | `result-track:79a3f56df27abeca36bc5d9502d111c3cc02963256494094d0b732716590a552` |
| 8 | `theorem` | [EdgeKey.le_trans](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/edgekey-le-trans.md) | 86 | `result-track:cd5d6ea997dcc7c6e1450638b9bcb625519610bcc1f7c2b76ce696399853ac35` |
| 9 | `inductive` | [TraversalMode](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/traversalmode.md) | 94 | `declaration-track:26beed8dcbf07ac1cbaad555e956c42ae9a751f1bad283fe1ddaa879f36e9f35` |
| 10 | `def` | [xyzRoutingSchemaVersionV1](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/xyzroutingschemaversionv1.md) | 99 | `declaration-track:1755ce5ec1d9772ae8f7750b1a0add5af976b5c0f8ea5b451a115429a4f5bf09` |
| 11 | `def` | [xyzRoutingAlgorithmVersionV1](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/xyzroutingalgorithmversionv1.md) | 100 | `declaration-track:4ee19c03eafa7148cd594d86f06293304a5801584ca24514f4f9db10cbff2070` |
| 12 | `def` | [xyzRoutingSerializationVersionV1](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/xyzroutingserializationversionv1.md) | 101 | `declaration-track:816013e4ca653f6441dfc3cbc37db0a9c9be4979ec83c7b02135a3566c305f45` |
| 13 | `def` | [xyzIdentityExpectedUpdateId](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/xyzidentityexpectedupdateid.md) | 102 | `declaration-track:1ffaacf24183b5bf5d9fe2cf59517f7abb1ddb79b1b0e93b4c92d113413febc0` |
| 14 | `def` | [xyzRevisionFormatV1Id](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/xyzrevisionformatv1id.md) | 104 | `declaration-track:ab5e1564460e458da8bf697e8ea9ee43a9f8af7d88d1d8f1fa050226f5f7a4da` |
| 15 | `structure` | [RoutingContract](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routingcontract.md) | 108 | `declaration-track:bcbac8c08a4a7b3f50f2dd2e4b70b790b47bf343282a71c0f1d1ac77c528c973` |
| 16 | `def` | [edgeKey](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/edgekey-source-edition-2.md) | 132 | `declaration-track:ec4d842c696ddd521969c37235ebfcc441cd33c0035d90cf4dfeb8624b4469ac` |
| 17 | `def` | [canonicalEdgeLexValue](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/canonicaledgelexvalue.md) | 141 | `declaration-track:d2598e7813087fba96d65862b12a75afff16c35bda4b77fe8a1406d8aa08fc67` |
| 18 | `def` | [canonicalEdgeLE](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/canonicaledgele.md) | 151 | `declaration-track:2ae240db7078d8876527d572946dcda74fb3b26c8d911706064cf29993286226` |
| 19 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-9.md) | 155 | `declaration-track:bbee9386f7cb0923350fc3d092af929da6f7e5e7ab477a78112a90304445ea31` |
| 20 | `theorem` | [canonicalEdgeLexValue_injective](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/canonicaledgelexvalue-injective.md) | 161 | `result-track:21bac0ae907d7df36ecd2ec435ff7a4a5218f07cec7843ce9b583063251aaa76` |
| 21 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-7.md) | 181 | `declaration-track:bb43725c98511bddc125962e792b498e3bba2bc6fd4c395435a7a1b52bf324cf` |
| 22 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-3.md) | 186 | `declaration-track:90fcbeaa23bc8208fd513e3c0d8a3ef7bc77b81c1d51f73e5b55c8e8b060c563` |
| 23 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-4.md) | 192 | `declaration-track:93c30e220077acf4b7831ebe4827149923bae7d5de582a9afbc8c2d0afed8784` |
| 24 | `def` | [sortedCanonicalEdges](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/sortedcanonicaledges.md) | 198 | `declaration-track:012f273f4fb49b0011d01754117e00f6369cb00e86870cdf7b6539fd1b619391` |
| 25 | `def` | [hostCodeLE](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/hostcodele.md) | 203 | `declaration-track:b7687f4c7647dc1d06c05abb0c5debfe564296221d3358d616b9eb028c080b60` |
| 26 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-5.md) | 207 | `declaration-track:a415219eacbe05f4c1e071579bfd1eeea8ffc630866db397e9ea50d524ecbc00` |
| 27 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance.md) | 213 | `declaration-track:06eee0a7218636563249b269df3d06598f44c2edf95447da6c6405de6f17397f` |
| 28 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-2.md) | 218 | `declaration-track:5d48b46b7724cb9b01816f296d9742512e1f165f1edcc80f870a32c7bf1139c3` |
| 29 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-11.md) | 223 | `declaration-track:e8bfe3c8f72a4c8717a22126d8a4036f6d1830481cf522aacf6766cab4527750` |
| 30 | `def` | [sortedHosts](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/sortedhosts.md) | 228 | `declaration-track:dcadbe03509146cb253cf35e14fa889f89adeebb5540cad8fac1a3c296a83959` |
| 31 | `def` | [hashMatches](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/hashmatches.md) | 234 | `declaration-track:3873ac06172a5c1c83d086e5390e5c5b0c07e5d358cb765b2ef8cea4b4c49a1e` |
| 32 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-8.md) | 237 | `declaration-track:bbb8351512663895e5bdd27e2f6fdf84ba37d93dee10a7a67e092adb7c1e0430` |
| 33 | `def` | [Valid](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/valid.md) | 245 | `declaration-track:2c3243731caf33cd700efb269b14ee35a5d7c6026f3a74ef12eee5e38aa8de8b` |
| 34 | `instance` | [(anonymous)](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/instance-source-edition-6.md) | 283 | `declaration-track:ac580275f2564308647cffd4a4044ba5012c1a4f3ebf118cca03b963855624c2` |
| 35 | `def` | [verifyRoutingContract](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/verifyroutingcontract.md) | 287 | `declaration-track:f7a893f5c8d48eefa24b706433b4e63dc1bc6ced64557d04c1e14ce5e38bd1c7` |
| 36 | `theorem` | [verifyRoutingContract_sound](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/verifyroutingcontract-sound.md) | 292 | `result-track:436c65bb68e5521b33c7455956e80c3cb5d55d283ad046d2a453a65b25bb6864` |
| 37 | `def` | [outgoingEdges](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/outgoingedges.md) | 298 | `declaration-track:4e5a2f95f5cf3e799babb51f71b5e2840f150f5e05ee7c947602d6c6e61cfa11` |
| 38 | `def` | [orderedOutgoingEdges](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedoutgoingedges.md) | 302 | `declaration-track:6c01efdfe200b423f25a8207b65181d03df38a103d9b799e153d632b0ddb8eb2` |
| 39 | `theorem` | [orderedOutgoingEdges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedoutgoingedges-declared.md) | 307 | `result-track:e52ac659392bbe52509cb9c6c6c497b6f2153925a3b17f84ae3d4e6f466608dc` |
| 40 | `theorem` | [orderedOutgoingEdges_source](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedoutgoingedges-source.md) | 317 | `result-track:415e7d1d3b498843e652ee2ac288b95827085ad90b71574b58f439ed8e7c4d14` |
| 41 | `theorem` | [orderedOutgoingEdges_complete](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedoutgoingedges-complete.md) | 325 | `result-track:5aa439cb72db751171c8b26be4650c0c8dcea676c6a3433ad6ffbfa2dfabe6e9` |
| 42 | `theorem` | [orderedOutgoingEdges_sorted](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedoutgoingedges-sorted.md) | 337 | `result-track:e5a2592630df73e2be52901c4903b20dc6aeca64bb337cb2b85b536a42c7d568` |
| 43 | `theorem` | [orderedOutgoingEdges_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedoutgoingedges-nodup.md) | 358 | `result-track:61fa1ea4b4d2911bf2691fd48fe9c9f394b7cf21f8998ae48c368421c89f7638` |
| 44 | `structure` | [RouteState](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routestate.md) | 368 | `declaration-track:deb1fceae1f135b2764203c32af85a6a6aa852495ad874f999fa71bf4c857386` |
| 45 | `def` | [initialRouteState](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/initialroutestate.md) | 375 | `declaration-track:02fc5b787b5bf0029013089eb5144ab7fec7b879a217973371ad6f280b3688bb` |
| 46 | `def` | [discoverOne](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoverone.md) | 381 | `declaration-track:3acf116db04e6f3c5473e4ed08d7ff7208cc35c6a4270c71a3b243b823aa5dfb` |
| 47 | `def` | [discoverOutgoing](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoveroutgoing.md) | 391 | `declaration-track:959db25cc48696b75ae82d4e027aa3842ca135d7e8a90e0a43db56ba55f8fe58` |
| 48 | `def` | [processQueuedHost](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/processqueuedhost.md) | 397 | `declaration-track:1c9b06c0a30911ba22a2c203acb9df40e87729dc698cdfd58266caf5281dbbbc` |
| 49 | `def` | [routeLoop](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routeloop.md) | 406 | `declaration-track:51b88e9621fe293be70c7ce62f32f14b079c5a3467ed9f75b117a1133d3424f1` |
| 50 | `structure` | [OrderedRoute](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedroute-source-edition-3.md) | 417 | `declaration-track:ca265450a7af0930b94032e8705792573f3902cdcd1abb58722cad9710921edf` |
| 51 | `def` | [orderedRoute](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedroute.md) | 422 | `declaration-track:181befbaee74c893ea1389ac2ec977ba11cb5c3f096b05ddbe1c32d1380d01f0` |
| 52 | `def` | [DeclaredStep](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/declaredstep.md) | 429 | `declaration-track:4c66a32fd48f28a3e41b04e7db61fbc1a10474580bff7c4c2880950343c5be62` |
| 53 | `def` | [Reachable](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/reachable.md) | 434 | `declaration-track:b746ee00835e6de93daa4a0596b6af8bdd6407b2918c19c6b9695b275ee1b0f8` |
| 54 | `theorem` | [orderedRoute_deterministic](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedroute-deterministic.md) | 439 | `result-track:c031d8cc66013561982e0651b0dc8c6ef42d66baa057cbafa810f710247723d0` |
| 55 | `def` | [DiscoveryEdgesDeclared](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoveryedgesdeclared.md) | 449 | `declaration-track:6abab0031c9d67ab2ebe6a8077a89dfa858dc434b2126c1d5e78d1432584d32f` |
| 56 | `theorem` | [discoverOne_edges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoverone-edges-declared.md) | 454 | `result-track:78985fd2256b7d20e07a6c038807cbd8fe081c389d912d50ee30b9081f50c9dd` |
| 57 | `theorem` | [discoverOutgoing_edges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoveroutgoing-edges-declared.md) | 472 | `result-track:8d092f3bf1b96e441006f0e4c58f6e050b11d2d8c24f5f61dcebe6adb4efdb61` |
| 58 | `theorem` | [routeLoop_edges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routeloop-edges-declared.md) | 489 | `result-track:abd89ceae7260dbde434ef59d5cd6ead0c74867c4975fbb773882055eb79a0a9` |
| 59 | `theorem` | [orderedRoute_edges_declared](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedroute-edges-declared.md) | 508 | `result-track:5723008345c91aa53a0703883053963f5310ee739fa5921e58a4cd9a58182f29` |
| 60 | `def` | [StateNodup](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/statenodup.md) | 519 | `declaration-track:0b431556f4bedfae48af2389c2e5587f6ef073cbeeb189e157ebdabf847b3662` |
| 61 | `theorem` | [discoverOne_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoverone-nodup.md) | 523 | `result-track:1402fab934f8a7570fa5ee7507643ca6dd5be2915e386f8ab82a53f204dd068d` |
| 62 | `theorem` | [discoverOutgoing_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoveroutgoing-nodup.md) | 533 | `result-track:584fdd02c55ee87a4a5f0661c506de46e58ea45607ca6005a0af98d15ded5b28` |
| 63 | `theorem` | [routeLoop_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routeloop-nodup.md) | 544 | `result-track:3d261601d099993390868224ae19ac63e50ddfc4378cc339146343106725ccae` |
| 64 | `theorem` | [orderedRoute_hosts_nodup](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedroute-hosts-nodup.md) | 558 | `result-track:512f36bc4aec6b9a95d4e4c0997517b4d9ecbaac3486af3dc00577252fb66ee1` |
| 65 | `theorem` | [discoverOne_visited_prefix](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoverone-visited-prefix.md) | 566 | `result-track:ff70dbe3892cd3547f1cb1a048494780699f01d7721f6dbe51c26b9320e9be88` |
| 66 | `theorem` | [discoverOutgoing_visited_prefix](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoveroutgoing-visited-prefix.md) | 575 | `result-track:ab644a148f8779f642594ea31029521924ef78730a7424645df361ecc5f64d1b` |
| 67 | `theorem` | [routeLoop_visited_prefix](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routeloop-visited-prefix.md) | 585 | `result-track:126f8c5451156e33e851aaedfb20221ad7234e0c8433d2578924bb0c1dc7e857` |
| 68 | `def` | [StatePartition](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/statepartition.md) | 607 | `declaration-track:1024b0b8757bb333f41e934b734c43ab0fef47acd312f4101546ea94797ce711` |
| 69 | `theorem` | [discoverOne_partition](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoverone-partition.md) | 611 | `result-track:34baec4433893924d66b82c76df6812c3a02cad3dddda85a17752c1125e990bc` |
| 70 | `theorem` | [discoverOutgoing_partition](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoveroutgoing-partition.md) | 622 | `result-track:d4e24757289864d73619c63c8a532af003c67553a00bd5074b6e726f13efdd24` |
| 71 | `theorem` | [processQueuedHost_partition](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/processqueuedhost-partition.md) | 634 | `result-track:7f7a9d7a7f4cc83ba915c688aef31b6fbf4dca8355f350744bb2367612fd8c6c` |
| 72 | `theorem` | [routeLoop_partition](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routeloop-partition.md) | 646 | `result-track:f5c8053de7833bf25edaf14ded4a9029e9f838d1f0eff16255dfd3efdbe8e0fd` |
| 73 | `theorem` | [discoverOne_processed](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoverone-processed.md) | 662 | `result-track:5e248c9782bccc70221c178ada579fc6bbb463a27173d3a51c6a8041fbe0f089` |
| 74 | `theorem` | [discoverOutgoing_processed](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoveroutgoing-processed.md) | 669 | `result-track:da8a72865d0d9f9c92783e5e463ae392b7c106a868482c42f4ba8cd796eff0bb` |
| 75 | `theorem` | [processQueuedHost_processed_length](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/processqueuedhost-processed-length.md) | 681 | `result-track:619dd5c02e728f57ff0988e64d4ae19ea7bc18b4622d3d4bac4d4ca0f5462825` |
| 76 | `theorem` | [routeLoop_processed_length_of_queue_ne_nil](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routeloop-processed-length-of-queue-ne-nil.md) | 690 | `result-track:5bbb7a20f3fd1e687dacfc19623c925c479ce5e8f08b124a0c2a3603e3befbf3` |
| 77 | `theorem` | [finalRouteState_queue_empty](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/finalroutestate-queue-empty.md) | 713 | `result-track:6705cf6cc831292621a4c1012b71bd735955df8decd6a90b55645ee5732498dc` |
| 78 | `def` | [StateReachable](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/statereachable.md) | 746 | `declaration-track:109aeea0cd242e31f8ecb964da3ebe6ba01f59fabd891ee0cf4b63bcf4eee41c` |
| 79 | `theorem` | [discoverOne_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoverone-reachable.md) | 750 | `result-track:3ee2a7d262443cb89083db23b4e112185187cc8496cd74cae4a1416467f01770` |
| 80 | `theorem` | [discoverOutgoing_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoveroutgoing-reachable.md) | 768 | `result-track:dfd691c09814e06944e5330bad428418e841fe884a27acf9065960d82062af15` |
| 81 | `theorem` | [processQueuedHost_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/processqueuedhost-reachable.md) | 790 | `result-track:a794f1194d96e04cd73164f97ed812aeb883961c7bf982750ecde8af472d56ef` |
| 82 | `theorem` | [routeLoop_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routeloop-reachable.md) | 811 | `result-track:22e3e23b7c0bceb5392858ad07bb90e5ec21be9638bb3e71165a84e24f93436d` |
| 83 | `theorem` | [discoverOne_target_mem](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoverone-target-mem.md) | 834 | `result-track:7117e635ddaab7e249db7e17307450dae573a2adecb3a2937638813b11c5410c` |
| 84 | `theorem` | [discoverOutgoing_contains_edge_target](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/discoveroutgoing-contains-edge-target.md) | 842 | `result-track:08098f6c6f60375c59daffb3031854087ed747c5a1347292bb25dbb6f29dd40f` |
| 85 | `def` | [StateProcessedClosed](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/stateprocessedclosed.md) | 858 | `declaration-track:d26ce95d8581821baec1ab115996c3ef9edb75bb2327496782d96a8299aa9de0` |
| 86 | `theorem` | [processQueuedHost_closed](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/processqueuedhost-closed.md) | 863 | `result-track:0cb6f2ca4b9e4f83a40cc1dcab6bdbc098e9a615a10a72cd66ac90119e9a062d` |
| 87 | `theorem` | [routeLoop_closed](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/routeloop-closed.md) | 894 | `result-track:b5e5f713dd8f67c6c0b94c4b646d3afda2c446039e781085ccb16f5494f44174` |
| 88 | `theorem` | [orderedRoute_hosts_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedroute-hosts-reachable.md) | 908 | `result-track:93a8af92332e7aa5f31d684de6e61802ffa80c66da3ed8aef45062a84158a783` |
| 89 | `theorem` | [reachable_mem_orderedRoute](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/reachable-mem-orderedroute.md) | 926 | `result-track:72c617438d20f110b0649b05a2f0cdd16a29ecaa7a3238fb1ab767ae248dc2e0` |
| 90 | `theorem` | [orderedRoute_reaches_exactly_reachable](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedroute-reaches-exactly-reachable.md) | 962 | `result-track:553dd23fffedf9ce3780d19cdec5d7f0cbb5e9a0c94f16a36d85b5860153c969` |
| 91 | `theorem` | [orderedRoute_start](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedroute-start.md) | 973 | `result-track:ccac16b80e47aeb471e3596e32f77b51ecc49e07c760686f68773b8c366e38f5` |
| 92 | `abbrev` | [CanonicalBytes](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/canonicalbytes.md) | 986 | `declaration-track:08f1d98eb31737b5de86e64e26cba5ca559558938232e3484c1564687f3ee273` |
| 93 | `def` | [encodeU8](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodeu8.md) | 988 | `declaration-track:b01b35248cb17a92de525e8bdc67fdda950c85b33b3697bdee2c7f9eee9f17d4` |
| 94 | `def` | [encodeNatLE](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodenatle.md) | 991 | `declaration-track:e720f34a8fa07594d2d8e5bdbba9d81e6aac424e14c0c87040528654236dd3b1` |
| 95 | `def` | [encodeU32LE](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodeu32le.md) | 995 | `declaration-track:54cef9553f070dcc97957aaae4026e85e07012bff44707c0fb7f29034805a81e` |
| 96 | `def` | [encodeU64LE](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodeu64le.md) | 998 | `declaration-track:89f0f25b5518680936c544a41e412294cea352385c8f26226f44ab2ecd44dccd` |
| 97 | `def` | [encodeSignedLE](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodesignedle.md) | 1001 | `declaration-track:9dfde07d8fec8952ba7f07aa89d4549e47b592b631181be4b924b5bb4fa65960` |
| 98 | `def` | [encodeI32LE](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodei32le.md) | 1004 | `declaration-track:eb30d61352511219b34e9653ddcb16d869888fc9c204f4239e899a87294086e8` |
| 99 | `def` | [encodeI64LE](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodei64le.md) | 1007 | `declaration-track:13abb962564ebab3332079e568bdf7e9c1a7bbed32b294125380bff599128f14` |
| 100 | `def` | [encodeUtf8](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodeutf8.md) | 1010 | `declaration-track:1d0a86de457d6dabd272f27b132592ad26753c50f03f629d2bb8772d2ecef8eb` |
| 101 | `def` | [encodeLengthPrefixedUtf8](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodelengthprefixedutf8.md) | 1013 | `declaration-track:8916721915491d4976c11f76f6a84445a2bbcd90cad76f12048326a8ad28e3b9` |
| 102 | `def` | [lowerHexNibble](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/lowerhexnibble.md) | 1016 | `declaration-track:66d9d485e98a162d231d73f3dd72cebe263ad82ad8c54f365b7d32497f98600c` |
| 103 | `def` | [decodeLowerHexPairs](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/decodelowerhexpairs.md) | 1026 | `declaration-track:c3a19370a6eba4f83e7b9ce14c57aaec7d5a323f4923cf938c14863d3ab9d4f3` |
| 104 | `def` | [encodeHash256](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodehash256.md) | 1032 | `declaration-track:0a6cc3005579a31af0d3c1b0c39e7cd8c669004d440c01ef64adc62297d19872` |
| 105 | `def` | [encodeOverflowPolicy](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodeoverflowpolicy.md) | 1035 | `declaration-track:8f22527351e582d8b6d0e35e16777a4eb7b8ef8c7d47b9c170bde7a80bf4a7c4` |
| 106 | `def` | [encodeRoundingRule](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encoderoundingrule.md) | 1038 | `declaration-track:88ba3f0ad88235abcbfdc99cec0dbe684463992b6e2a19b4ff3d82476a439c03` |
| 107 | `def` | [encodeTraversalMode](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodetraversalmode.md) | 1045 | `declaration-track:77264d1d9a8985281379d1547582bc300ae4970d92b2a846df10d26e84c4f1ea` |
| 108 | `def` | [encodeFixedFormat](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodefixedformat.md) | 1049 | `declaration-track:489bf5820737bd77165bebc24c62d4bdd717f0805c31575923c058ab4bc2bc02` |
| 109 | `def` | [encodeHostCode](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodehostcode.md) | 1061 | `declaration-track:53399a918d04561e4fefe6265b90c86d5eb4b31e5fc7c0f367e23be11132ab07` |
| 110 | `def` | [encodeEdgeRow](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/encodeedgerow.md) | 1065 | `declaration-track:0a67fa5b8b8534b43b3e26914188bd7c44c2a5c5942af43a5008d40d39e12449` |
| 111 | `def` | [canonicalBytesWithoutHash](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/canonicalbyteswithouthash.md) | 1075 | `declaration-track:329b108c6a710b478389966ef425c2c30181e6501b02f1260b09dc31b9d099ed` |
| 112 | `theorem` | [hashMaterialDeterministic](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/hashmaterialdeterministic.md) | 1095 | `result-track:04f7641d69e94147295c061565dd6321ba5ab8c845139150ac623b575fcc5d27` |
| 113 | `structure` | [SourceSnapshot](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/sourcesnapshot.md) | 1106 | `declaration-track:48733d4f056665a9109f4c4cf187304b1a70ee351140fbacd982eebb5be5e752` |
| 114 | `def` | [SourceSnapshot.canonicalBytesWithoutHash](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/sourcesnapshot-canonicalbyteswithouthash.md) | 1115 | `declaration-track:805ab2e24b24bf067f8e1a75e637dbb09cab40acbe78d256ae2c3a20b4ad8899` |
| 115 | `structure` | [ProposalKey](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/proposalkey-source-edition-2.md) | 1129 | `declaration-track:53d0382f34cb15f90300c17793bb00dad6bc276b729ae32e04851244fce480b7` |
| 116 | `def` | [ProposalKey.canonicalBytes](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/proposalkey-canonicalbytes.md) | 1142 | `declaration-track:9c160858264823023eb56785553739e95f63aca38ed50ba8360bbea223062022` |
| 117 | `theorem` | [ProposalKey.serialization_deterministic](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/proposalkey-serialization-deterministic.md) | 1161 | `result-track:13a24faf4d22dfdb4225ee7fd85ccd2bd002ed4b5869ed9c5d5f3946ac4d9812` |
| 118 | `abbrev` | [OrderedRoute](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/orderedroute-source-edition-2.md) | 1176 | `declaration-track:61955d3eafc862d35201c79ceda8c4e4c21ee6422932d2a25a409a8b64030c28` |
| 119 | `abbrev` | [SourceSnapshot](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/sourcesnapshot-source-edition-2.md) | 1179 | `declaration-track:c5f18bffaecd7d2eec376d3285389ea7b1fed917ed0314080923407fa31fcd38` |
| 120 | `abbrev` | [ProposalKey](../../../../Combinatorics/RouteNamespacedPublicEdition6.lean/declarations/proposalkey.md) | 1182 | `declaration-track:3870119c0fea4e2a06c54ea4273f6f652e897ac5b6ea3ef57f247d70db9b46cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=094b6123c2b71b3562c58fe99264950df05b3d808486c42280451f513d613516 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
