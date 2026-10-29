# Verification target: Route Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bef355055175d174cdcf1916aa188fb0f7c6e8c3",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RoutePublicEdition2.lean/index.md) · [Full source](../../../../Combinatorics/RoutePublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bef355055175d174cdcf1916aa188fb0f7c6e8c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean.json)

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
| 1 | `structure` | [StableFiniteCode](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/stablefinitecode.md) | 38 | `declaration-track:9122e3a39c2f11f6db83dd5f191ebb1ac4100d3e0b0be26a683044bf9e53d972` |
| 2 | `structure` | [DeclaredEdge](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/declarededge.md) | 44 | `declaration-track:47545ad2c7062cab4b526a1f319649d4692209d79d703298d07b5b747975cf80` |
| 3 | `structure` | [EdgeKey](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/edgekey-source-edition-2.md) | 53 | `declaration-track:d26f3cef174c77f5fcdbd8db7bc9babef07edb5de27e534f157e91121cdf2243` |
| 4 | `def` | [EdgeKey.lexValue](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/edgekey-lexvalue.md) | 62 | `declaration-track:aa66d877ece75f53057d121821b9ec94f40c237f8e2a008a4366e32515dea549` |
| 5 | `def` | [EdgeKey.LE](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/edgekey-le.md) | 66 | `declaration-track:22bf9ee7a70eb9a91c5eb336b4f1c7d09b48d62226454edf50e2931cf520bc58` |
| 6 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:3dc6109af83429990316ed26f2f55a36160340e10ac9d4a03ef197a5d09b635b` |
| 7 | `theorem` | [EdgeKey.le_total](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/edgekey-le-total.md) | 73 | `result-track:d423d77f2c5d706a9e7a2461b86e9612b6cdeed90f2ac92dba7a7ba9101b6fc0` |
| 8 | `theorem` | [EdgeKey.le_trans](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/edgekey-le-trans.md) | 78 | `result-track:0cf928ec25ce84dbd4534808e680c83c447dc339c87bd34751b4ac0f987d0d37` |
| 9 | `inductive` | [TraversalMode](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/traversalmode.md) | 86 | `declaration-track:97c155ba393a6ca5136d2a3ffbc3d8e50d312f7cd3302bd33d4875c426eb7288` |
| 10 | `def` | [xyzRoutingSchemaVersionV1](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/xyzroutingschemaversionv1.md) | 91 | `declaration-track:f8b7fcd6a932c2ec4a8aa1ac89b0b0e64a5858f55c8dcad9576a3c2185b45f95` |
| 11 | `def` | [xyzRoutingAlgorithmVersionV1](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/xyzroutingalgorithmversionv1.md) | 92 | `declaration-track:0f72470839d6afdf743481a758e1537b4d1869eb8977ebbe90c6a9f1d34f3a18` |
| 12 | `def` | [xyzRoutingSerializationVersionV1](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/xyzroutingserializationversionv1.md) | 93 | `declaration-track:eb92c2bb7e422ed36cdff2ff47efb81a026f67209dd9a1565fa943b90bc6028e` |
| 13 | `def` | [xyzIdentityExpectedUpdateId](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/xyzidentityexpectedupdateid.md) | 94 | `declaration-track:a52f34dd0708c6836f23444ce5051139c4983d2aff5506b4ba2a5005444d1745` |
| 14 | `def` | [xyzRevisionFormatV1Id](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/xyzrevisionformatv1id.md) | 96 | `declaration-track:a52b32088ea50649b219caa73ba458d34ac06ddb16adf1193017790b3861fc3d` |
| 15 | `structure` | [RoutingContract](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routingcontract.md) | 100 | `declaration-track:0743a8e18a087b7ee63dcad9eaa706a6dc6da988117c906e653a602548e49ae1` |
| 16 | `def` | [edgeKey](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/edgekey.md) | 124 | `declaration-track:c77b9271e3bac9f279605bd71ffa13cc9b11f10728e2f26e604325367d3615ac` |
| 17 | `def` | [canonicalEdgeLexValue](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/canonicaledgelexvalue.md) | 133 | `declaration-track:8c587aa3eb742edc8293417422b09f434c1a4deb57ad297af5f92326b29ea24d` |
| 18 | `def` | [canonicalEdgeLE](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/canonicaledgele.md) | 143 | `declaration-track:57a5af069a420f1627480bcb9c925e7a14f51e19e742435b43b26e7e6b8ec525` |
| 19 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-10.md) | 147 | `declaration-track:e4467b6949bb4a57679f19149c0de9198d71709f9347ccb1c41e0f94ab5079b5` |
| 20 | `theorem` | [canonicalEdgeLexValue_injective](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/canonicaledgelexvalue-injective.md) | 153 | `result-track:502cd78a6390422ce04b11c0515ccd0268b6e1a959785110a1f6f972d760c906` |
| 21 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-9.md) | 173 | `declaration-track:dfab03c144e4e4949282da2816f9969840e3cfdf23c25417db6af34065347af0` |
| 22 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-7.md) | 178 | `declaration-track:d3c57d69133c4b96b60011324b82766a06f2b469d67c01ea4d2334e71dd61b5d` |
| 23 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-11.md) | 184 | `declaration-track:f03df344da4001f9793761f3209a7f9c482aee3481ef02c7e64fb59dbd228b13` |
| 24 | `def` | [sortedCanonicalEdges](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/sortedcanonicaledges.md) | 190 | `declaration-track:44eb4efdce9b6235a05238787c03d377cb8adfbc076463126d76932253a5dd76` |
| 25 | `def` | [hostCodeLE](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/hostcodele.md) | 195 | `declaration-track:5b4698d938df666512c9817181676c02810b092a6f22c0d62f3720e340bd7e2e` |
| 26 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-4.md) | 199 | `declaration-track:8ccceaf8eeea2d83db0f5dcd65556a89e842cd728b506a2e5d6d9a23f23a303b` |
| 27 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-3.md) | 205 | `declaration-track:5c329eb946d8fcc6f2f5b57b8e99d20d3032d0a8def3eeca1edb67d004731f0c` |
| 28 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance.md) | 210 | `declaration-track:099b441b6fdd49879911909c7f0a218bf8d507c88b65dc24392cb16eca5a5a3a` |
| 29 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-5.md) | 215 | `declaration-track:8d6f7c97c6cd84b883140551a9cc4edd4d9352af9498d6504c298478f3a45b22` |
| 30 | `def` | [sortedHosts](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/sortedhosts.md) | 220 | `declaration-track:af4b9e02d19728191c1cb989539f2982b312cf3d55b06f7d7c7218425afd19be` |
| 31 | `def` | [hashMatches](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/hashmatches.md) | 226 | `declaration-track:90f47104e5a3633678fbfdcad1253b36f05b80ae5f1a1f01e5c04db1c4e17dd4` |
| 32 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-6.md) | 229 | `declaration-track:aa70f9dd594ae18cc8ecb05e07a444d61383d484a5b7e90ebd68ef2a765a6d03` |
| 33 | `def` | [Valid](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/valid.md) | 237 | `declaration-track:b0db9be1d0d580e33e1692770b38797b533b731b28014713031c16996feaa0d4` |
| 34 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/instance-source-edition-8.md) | 275 | `declaration-track:d8eb641e3990c7655f4cc41b2da7f1a4c3271a268185c2e241bac77158943930` |
| 35 | `def` | [verifyRoutingContract](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/verifyroutingcontract.md) | 279 | `declaration-track:91cb082b08d7b6d38abfbe8f05d6ef367da5a255e78a0a64ed9508fae2b19a18` |
| 36 | `theorem` | [verifyRoutingContract_sound](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/verifyroutingcontract-sound.md) | 284 | `result-track:312599d82ebbd4fcb4f96f8a3daf14486a4371396c47ae9a290152319bf799c6` |
| 37 | `def` | [outgoingEdges](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/outgoingedges.md) | 290 | `declaration-track:d7e0c92ad4281011b6dde9c3ecffb93b49868a9def7836965b8cd832ecfd0db2` |
| 38 | `def` | [orderedOutgoingEdges](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedoutgoingedges.md) | 294 | `declaration-track:222918d2052b44c55bb0eb320a79a53a6288108882bb202638fbc1410297b05e` |
| 39 | `theorem` | [orderedOutgoingEdges_declared](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedoutgoingedges-declared.md) | 299 | `result-track:0e9975386204bc718afb9be926b2ec77f5ca501a9efc1ca951d8b79a824f6959` |
| 40 | `theorem` | [orderedOutgoingEdges_source](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedoutgoingedges-source.md) | 309 | `result-track:c28b64b349c8c4cd9c14e54f3d0f30261349cb61360eb0f30d5c1e8779c8760f` |
| 41 | `theorem` | [orderedOutgoingEdges_complete](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedoutgoingedges-complete.md) | 317 | `result-track:bcc30855a7febb38bc8f1201dd71c3d0fac3d530d22e5ab4816c88d60e03bd12` |
| 42 | `theorem` | [orderedOutgoingEdges_sorted](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedoutgoingedges-sorted.md) | 329 | `result-track:fc5225fcbfe76f5db42ddc555076b296fef4cf2c8bc5ab100979a65840bd9d5a` |
| 43 | `theorem` | [orderedOutgoingEdges_nodup](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedoutgoingedges-nodup.md) | 350 | `result-track:4e0ec39c802012d756463e7e4368a20ee2e28214839fa2eb946b363fe3d128c2` |
| 44 | `structure` | [RouteState](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routestate.md) | 360 | `declaration-track:da5372fed5e70c46aabfdd7cc59ca91be611cb0d097188bac841cb62c21afc8e` |
| 45 | `def` | [initialRouteState](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/initialroutestate.md) | 367 | `declaration-track:1d8d99151b2358732b9e857ba20c3ad6e2093fe3c41d55aebf18b4fa700115a6` |
| 46 | `def` | [discoverOne](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoverone.md) | 373 | `declaration-track:e2db6f299f14355a0d1f73ce9715b7d578e0c17b600d6d48ed9e703cf70642bf` |
| 47 | `def` | [discoverOutgoing](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoveroutgoing.md) | 383 | `declaration-track:16fff17cccd8c8f9671fc43819478b0d7bb54a80429e80a48af6543c9e0a4df4` |
| 48 | `def` | [processQueuedHost](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/processqueuedhost.md) | 389 | `declaration-track:da0fae2879c6da7d970f7855291f2f5b2944253cb4975d9c050954eda3b8962a` |
| 49 | `def` | [routeLoop](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routeloop.md) | 398 | `declaration-track:9949544412abcbdbfd47dc6c956774932086d36182cd6ce8d44217b7c24c11d7` |
| 50 | `structure` | [OrderedRoute](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedroute-source-edition-3.md) | 409 | `declaration-track:716a123dbfcd509f3e24cd8b6f8d21c2dda72df94eb87166759bb9ea1bbb5478` |
| 51 | `def` | [orderedRoute](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedroute-source-edition-2.md) | 414 | `declaration-track:5042a6f6d126a460186b91ad0ac0373fa4a7b111c58b5892415eb636f54a494b` |
| 52 | `def` | [DeclaredStep](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/declaredstep.md) | 421 | `declaration-track:ae848ae43c041bc361f14f0a41ab83ea626c34dc1596070d5fb0233abd08b0e5` |
| 53 | `def` | [Reachable](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/reachable.md) | 426 | `declaration-track:3322ee1175362e087bd7752713436d9c01dddaad2635207fc06c02fc0416aeee` |
| 54 | `theorem` | [orderedRoute_deterministic](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedroute-deterministic.md) | 431 | `result-track:12be4c508c7ba8e62617b0d5af303b582d02623afe713f3eab863ae2374a32b0` |
| 55 | `def` | [DiscoveryEdgesDeclared](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoveryedgesdeclared.md) | 441 | `declaration-track:f2bbfcd4ea53f488a2078cd0d38c35c69e1b0c476a3a2f26f023edf714211188` |
| 56 | `theorem` | [discoverOne_edges_declared](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoverone-edges-declared.md) | 446 | `result-track:dd32e15ec9795a67da8fced81139bcf5ac66d560f7ec26a09f89ff788d3d2801` |
| 57 | `theorem` | [discoverOutgoing_edges_declared](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoveroutgoing-edges-declared.md) | 464 | `result-track:41be3f8c5d07b6c0e74020ffaa6c1a22c4abd17c2a430b5b0a5a084a204e0465` |
| 58 | `theorem` | [routeLoop_edges_declared](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routeloop-edges-declared.md) | 481 | `result-track:5133fff008d2a3e1b6a8f2a7de8df40a2418adc341d8afb402fb4afc3eaf0559` |
| 59 | `theorem` | [orderedRoute_edges_declared](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedroute-edges-declared.md) | 500 | `result-track:a433af085ea816f883640c5b9c309807dd51b87df474148a5040581771510e5a` |
| 60 | `def` | [StateNodup](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/statenodup.md) | 511 | `declaration-track:0fe2635da600223cee484b13fa21bb25d580cd08e84a8c635a4ddf8d6a701cef` |
| 61 | `theorem` | [discoverOne_nodup](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoverone-nodup.md) | 515 | `result-track:84e13c1a5c3325e5427c509872e3e1aff2334ac2565cd1a12e718acfd55d821c` |
| 62 | `theorem` | [discoverOutgoing_nodup](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoveroutgoing-nodup.md) | 525 | `result-track:e561349b561232ccd889e1a7600575fb51c7cb9d40a79f73df277d7a724e1557` |
| 63 | `theorem` | [routeLoop_nodup](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routeloop-nodup.md) | 536 | `result-track:c9732ca02571f9c132cdbc5b8feb0da189ca2c1e9250ea616062f45634462b48` |
| 64 | `theorem` | [orderedRoute_hosts_nodup](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedroute-hosts-nodup.md) | 550 | `result-track:754685d8f7aaed0d3f4e1cbca618710f38317c9690392076a4bf172c03e3a3af` |
| 65 | `theorem` | [discoverOne_visited_prefix](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoverone-visited-prefix.md) | 558 | `result-track:842f8a6300a1346683b836dfced22cf53954365a732756e187f0cb08ad9e8477` |
| 66 | `theorem` | [discoverOutgoing_visited_prefix](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoveroutgoing-visited-prefix.md) | 567 | `result-track:346b003f980b0819ca6c26a146a5b0fcfd9efcdd00b8ce1379edfac2fc494a1a` |
| 67 | `theorem` | [routeLoop_visited_prefix](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routeloop-visited-prefix.md) | 577 | `result-track:2b17d534aab676443760668ceeb3b377be9e7204bf4eff21a17bb17a7f4acb6e` |
| 68 | `def` | [StatePartition](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/statepartition.md) | 599 | `declaration-track:3ffd31ff42a6b4a3a25383743f12567ca408e976879b8faccfb2fa9bc92a357e` |
| 69 | `theorem` | [discoverOne_partition](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoverone-partition.md) | 603 | `result-track:3914e1046f6846906a936bd6d45165a77144120cf3191fcf6aa35fa98a061e7e` |
| 70 | `theorem` | [discoverOutgoing_partition](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoveroutgoing-partition.md) | 614 | `result-track:33dbc31df17fcf6a92ebd7d4ed86a9df5b47c3f6d2d267378313f27ed1421787` |
| 71 | `theorem` | [processQueuedHost_partition](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/processqueuedhost-partition.md) | 626 | `result-track:c8c65bc70fd5ecd8699a98fe7f00adab0d3158e30965504832c2e062ca8da3bd` |
| 72 | `theorem` | [routeLoop_partition](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routeloop-partition.md) | 638 | `result-track:53d02957241184247c0ba983e0949c1a080e3f9ab63ea24637c6f49c9c67e919` |
| 73 | `theorem` | [discoverOne_processed](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoverone-processed.md) | 654 | `result-track:c5317345911baf887cebe68c6c259079ea96f0fd3d857b7f46b82368cbad3427` |
| 74 | `theorem` | [discoverOutgoing_processed](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoveroutgoing-processed.md) | 661 | `result-track:b9a47799bbb463ea133e2d338e6bb7045222b386d03d306b08ef4d31580f9e24` |
| 75 | `theorem` | [processQueuedHost_processed_length](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/processqueuedhost-processed-length.md) | 673 | `result-track:78f4322eab3a486c4b3e0c9860a806b477d1e8969dc2e0e1caccea10aaea82b6` |
| 76 | `theorem` | [routeLoop_processed_length_of_queue_ne_nil](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routeloop-processed-length-of-queue-ne-nil.md) | 682 | `result-track:c8769588ac109bfba0f76d7b957d6bd2aa8b54bc4b98ef56219c3b45119190be` |
| 77 | `theorem` | [finalRouteState_queue_empty](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/finalroutestate-queue-empty.md) | 705 | `result-track:99460101659eaceab98fd73654022efce5c92be313ae8ed37f17a2d87ea8e08b` |
| 78 | `def` | [StateReachable](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/statereachable.md) | 738 | `declaration-track:d85cb091fb9945413a47d0da85169ee061debc02472822b6821e101c9686b83b` |
| 79 | `theorem` | [discoverOne_reachable](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoverone-reachable.md) | 742 | `result-track:72a2a262b3210c58d52d7633392c32d30621247d343217df507a751f72c148c9` |
| 80 | `theorem` | [discoverOutgoing_reachable](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoveroutgoing-reachable.md) | 760 | `result-track:54b2ffe7f6f3d2b1a4a8df70bb853a5bd0937068ccfc73eb46960aea5e8940f0` |
| 81 | `theorem` | [processQueuedHost_reachable](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/processqueuedhost-reachable.md) | 782 | `result-track:7d9d8063d03f87c91ba1b0f30482159238eff5991bac0bd4586e7aab38d6fd09` |
| 82 | `theorem` | [routeLoop_reachable](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routeloop-reachable.md) | 803 | `result-track:e30ac90905c67fea5447901dcdc4b33fe0572c9aee105d057c10dceb65d05492` |
| 83 | `theorem` | [discoverOne_target_mem](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoverone-target-mem.md) | 826 | `result-track:037d3d2803ca4eebf78ecf76073846e5b5fd6a3ed9cdbcfe21f363deaa1411c4` |
| 84 | `theorem` | [discoverOutgoing_contains_edge_target](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/discoveroutgoing-contains-edge-target.md) | 833 | `result-track:02922133496c0e8cae0f3b1145cde2c21bee4e89f885fb0c66e1428e2629f486` |
| 85 | `def` | [StateProcessedClosed](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/stateprocessedclosed.md) | 849 | `declaration-track:92d7cc4381fd7737764ac07ca5fd42ffee4251a143ba161785e6de94fe1d01b5` |
| 86 | `theorem` | [processQueuedHost_closed](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/processqueuedhost-closed.md) | 854 | `result-track:0c3dcc058f506a9f06ea979651a445a0812bd64ee9a517376d94fd9a2748609e` |
| 87 | `theorem` | [routeLoop_closed](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/routeloop-closed.md) | 885 | `result-track:fddcbb7794bbd12e46951310a63a98d729cb24cd5b18ba22d0619804897253ed` |
| 88 | `theorem` | [orderedRoute_hosts_reachable](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedroute-hosts-reachable.md) | 899 | `result-track:4c60f6f67381e66a55ce751cccbbee9f4085fbce29ec05f9dba7ab7ef734f02b` |
| 89 | `theorem` | [reachable_mem_orderedRoute](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/reachable-mem-orderedroute.md) | 917 | `result-track:8e8db2c838ea7ad24bf3d26375aa4e4bb2bf7885cd2bcb4db3a84509df755ce6` |
| 90 | `theorem` | [orderedRoute_reaches_exactly_reachable](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedroute-reaches-exactly-reachable.md) | 953 | `result-track:f4b1a569393757e913f832df391d07a447600f47b8a808e363e679dd9173dd88` |
| 91 | `theorem` | [orderedRoute_start](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedroute-start.md) | 964 | `result-track:b66d7195535a419f3d08584ca64992077cd6247738065a303852f1c77f846990` |
| 92 | `abbrev` | [CanonicalBytes](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/canonicalbytes.md) | 977 | `declaration-track:8f0bdf45010b7feac4643cf982952718470d460ea6d2c661e5899a2d4c5fe1a4` |
| 93 | `def` | [encodeU8](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodeu8.md) | 979 | `declaration-track:09cdd679b1e76da17fb2fba613831bb6a20da7c1ec3e28657d22cf03eeea4120` |
| 94 | `def` | [encodeNatLE](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodenatle.md) | 982 | `declaration-track:91740dd0c4071971cdd747cc18f4986a5e0ff5557024404ff690760093ea21d6` |
| 95 | `def` | [encodeU32LE](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodeu32le.md) | 986 | `declaration-track:50bdb3d82cb0d4b74303cd837cd836ab8d687f9120ffc11699f3ecbd9ea56395` |
| 96 | `def` | [encodeU64LE](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodeu64le.md) | 989 | `declaration-track:5a5790712e603eb94bc5845515e15e76b48c16fe08e40cc1fecc59a68ddfdcfe` |
| 97 | `def` | [encodeSignedLE](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodesignedle.md) | 992 | `declaration-track:f9c436fcfab19d78c49aebd6a65e145974254dd4bff311f786e7f8ef33f9bced` |
| 98 | `def` | [encodeI32LE](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodei32le.md) | 995 | `declaration-track:7988e5ec096ba4686429ea9806c977e8cd1d3d950f667cd0ef2cd1790cf009c2` |
| 99 | `def` | [encodeI64LE](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodei64le.md) | 998 | `declaration-track:47f81555ad26186f4bee62f3ba602df59c11c0d9f5320326c2a7ff404448d678` |
| 100 | `def` | [encodeUtf8](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodeutf8.md) | 1001 | `declaration-track:43f363340c6e1999a0ce6bc87fb6d04d205520e6ce9a6cc1f1167949986a46f0` |
| 101 | `def` | [encodeLengthPrefixedUtf8](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodelengthprefixedutf8.md) | 1004 | `declaration-track:ef5bc188cc5d549f68a2f559825d0845e3bde2c9fad9dc5b170a9609372d5320` |
| 102 | `def` | [lowerHexNibble](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/lowerhexnibble.md) | 1007 | `declaration-track:cdfaa2b99dc9f1949e9d0eabd354a8d2bee3efbdc86874f65eda28ffd3e6e735` |
| 103 | `def` | [decodeLowerHexPairs](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/decodelowerhexpairs.md) | 1017 | `declaration-track:3992017e3dd2357654fb356358cd544609338fac0b08a1814a65cabd89e673ec` |
| 104 | `def` | [encodeHash256](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodehash256.md) | 1023 | `declaration-track:738997325e48ce8db861b50fa26edfab6c3e48eb6b291347723e984df7a38dc4` |
| 105 | `def` | [encodeOverflowPolicy](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodeoverflowpolicy.md) | 1026 | `declaration-track:081a15ddbdd1d44461e0ae405caf99e0e8ee8f3235de3857b0a220c1006b1ebe` |
| 106 | `def` | [encodeRoundingRule](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encoderoundingrule.md) | 1029 | `declaration-track:7bd8dff77ab14563087952b42f49e8b4c8efa4cc57db2bece36ab53b0387998e` |
| 107 | `def` | [encodeTraversalMode](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodetraversalmode.md) | 1036 | `declaration-track:068db816e47df3b93b3e4fafa0eab8e4ef7b37cf9bd3e866ee0da7e23add5365` |
| 108 | `def` | [encodeFixedFormat](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodefixedformat.md) | 1040 | `declaration-track:26c68189253f5a861d27085f7b2882e7595cf62ca79de35e7b14937d7d08fb97` |
| 109 | `def` | [encodeHostCode](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodehostcode.md) | 1052 | `declaration-track:593a4b649211f26e6746c004e2935ba09af8d5a954f1a19123d01ee5f7a4e42c` |
| 110 | `def` | [encodeEdgeRow](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/encodeedgerow.md) | 1056 | `declaration-track:3d6d8b0be6c78930e593d31a56377e801c5cf594fa9e232fdb459031f7e5b3e4` |
| 111 | `def` | [canonicalBytesWithoutHash](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/canonicalbyteswithouthash.md) | 1066 | `declaration-track:a2a44ae25973ca9a90fad33903fd7dde95e9c12ca6ed25d644f8640e6786a98d` |
| 112 | `theorem` | [hashMaterialDeterministic](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/hashmaterialdeterministic.md) | 1086 | `result-track:fbc0a879d18099a81eeb4fa5dccf8920a3f299e0edc87428ed8c8d6321dbbe5e` |
| 113 | `structure` | [SourceSnapshot](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/sourcesnapshot-source-edition-2.md) | 1097 | `declaration-track:f4c10a67548ac845277cd8f6f8b393132890473c5011d7d74285a8eef705dd0e` |
| 114 | `def` | [SourceSnapshot.canonicalBytesWithoutHash](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/sourcesnapshot-canonicalbyteswithouthash.md) | 1106 | `declaration-track:bb69cd7685d7aa7dad22cc2bc2123d04841b786cb234532b3b2e5a07ae8e74f6` |
| 115 | `structure` | [ProposalKey](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/proposalkey.md) | 1120 | `declaration-track:be94e11f698ec9a9265892e1415c3cb65c2cd73e0afd8ddeeeefab3c8aa91905` |
| 116 | `def` | [ProposalKey.canonicalBytes](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/proposalkey-canonicalbytes.md) | 1133 | `declaration-track:ef2d121a2ce29a110facab653aab104f3d8faae809296087132f021c7a46460a` |
| 117 | `theorem` | [ProposalKey.serialization_deterministic](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/proposalkey-serialization-deterministic.md) | 1152 | `result-track:dfa7f6bf39576769d9688d42cfa051109b1aa931e7a3f2f24237a7ffb0b730be` |
| 118 | `abbrev` | [OrderedRoute](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/orderedroute.md) | 1167 | `declaration-track:197b7c27c2dcec8da034a051feb50ecb10cd0d5befd9e7fc1cb5ea04aee3efc2` |
| 119 | `abbrev` | [SourceSnapshot](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/sourcesnapshot.md) | 1170 | `declaration-track:1ffe9f39a11a03dfa0f73ec942780cfeaea689b65cfe91a50e068e0b63f7de8c` |
| 120 | `abbrev` | [ProposalKey](../../../../Combinatorics/RoutePublicEdition2.lean/declarations/proposalkey-source-edition-2.md) | 1173 | `declaration-track:d1b3cbf7a26944fa15c9fc14a499318f249e30d0ae6440c968159a17382ec9e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18f0b87c84a9499d684d2d8e0f5688a0c3b7e64ffe6fbf454d85755eed048c70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Route/Variant30bb8c8bfe327656bf8222e8bf07500fa89e8614c67f50351da1431fb703e430.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
