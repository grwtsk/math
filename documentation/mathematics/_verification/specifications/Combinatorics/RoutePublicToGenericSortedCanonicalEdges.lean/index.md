# Verification target: Route Public To Generic Sorted Canonical Edges

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9648f7f1cea307e94c477fc2b801dac62f3fb4ff",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/index.md) · [Full source](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9648f7f1cea307e94c477fc2b801dac62f3fb4ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [StableFiniteCode](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/stablefinitecode.md) | 38 | `declaration-track:2a0edfe0cd608f8dc03478420ba822cff7d70051a7c4f7a67e03ada1715750ef` |
| 2 | `abbrev` | [DeclaredEdge](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/declarededge.md) | 39 | `declaration-track:60dd3dd46e867b37df9de9c07fab9689d337c2aae190031d53ff25a67338e21e` |
| 3 | `abbrev` | [EdgeKey](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/edgekey-source-edition-2.md) | 40 | `declaration-track:8bd6c1ab80612ccdbac89e1afb67ac4651912c6d0e6a8a0e09c0963a6edbf459` |
| 4 | `def` | [EdgeKey.lexValue](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/edgekey-lexvalue.md) | 45 | `declaration-track:42452e992e3f431bdef26464fc7019d4c2ebb8e67cffad3445fba69d29faa127` |
| 5 | `def` | [EdgeKey.LE](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/edgekey-le.md) | 49 | `declaration-track:b88e116083180fa7e49c7bc5e24119744207dfdc05c6fb39a348f90ed8e62bb1` |
| 6 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-5.md) | 52 | `declaration-track:8b7e6ffc04d4ce4bb4bb7c5fb6d6de3576ec783bfd49b8e80be431f8e6adf4ed` |
| 7 | `theorem` | [EdgeKey.le_total](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/edgekey-le-total.md) | 56 | `result-track:64f2c26ab1e48a3e2ef84831c415510860c677c5508b6cf15f093a39d422fd8e` |
| 8 | `theorem` | [EdgeKey.le_trans](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/edgekey-le-trans.md) | 61 | `result-track:0549cfc8391097d6868212fce0dc61e8804eadd58973dd4b8b08fc9fdcdb3fdc` |
| 9 | `abbrev` | [TraversalMode](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/traversalmode.md) | 69 | `declaration-track:aff0c9cf1c8d026885f4fdd3299fdb61be2d37830e95f79edcc4da67a22c45ec` |
| 10 | `def` | [xyzRoutingSchemaVersionV1](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/xyzroutingschemaversionv1.md) | 71 | `declaration-track:1f026b9aa9a1e309609fd566b69eb44d5beb7225bd1e63cff39b33664684fa29` |
| 11 | `def` | [xyzRoutingAlgorithmVersionV1](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/xyzroutingalgorithmversionv1.md) | 72 | `declaration-track:fc4177c102e0f801ce12c3cc147e75082ddf3a9f112368caec310e6ceefb7861` |
| 12 | `def` | [xyzRoutingSerializationVersionV1](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/xyzroutingserializationversionv1.md) | 73 | `declaration-track:986880f6b6a3dbe391db8e1387b3c2d4f5e451e3ab6d42a8583282d1c65ba056` |
| 13 | `def` | [xyzIdentityExpectedUpdateId](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/xyzidentityexpectedupdateid.md) | 74 | `declaration-track:a953eb8b9cd92dee010c5a9d7b1d89b55f9bef57d9a3005c2bcfcad7571625e7` |
| 14 | `def` | [xyzRevisionFormatV1Id](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/xyzrevisionformatv1id.md) | 76 | `declaration-track:32d1f6476f25128bdb1866b75aeec54a29d7b017bc279386950be5c2ae3fa7e1` |
| 15 | `structure` | [RoutingContract](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/routingcontract.md) | 80 | `declaration-track:2285b85188f4df62fd93a8f26c2632fd530ce0614c4b78905aa39f6fb73c5f09` |
| 16 | `def` | [RoutingContract.toGeneric](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/routingcontract-togeneric.md) | 100 | `declaration-track:4f8e217f3673ca9e5298c6790d2a93a9b413d7061bbb5fbd514a74a06bc56f44` |
| 17 | `def` | [edgeKey](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/edgekey.md) | 124 | `declaration-track:62bbf9617613d8d7623705864fc749cbdfbdf066a4b500e23173e5228744e778` |
| 18 | `def` | [canonicalEdgeLexValue](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/canonicaledgelexvalue.md) | 131 | `declaration-track:9395ca4a7188364babe16822deb69ca54b9537331a5264b6d4f7f1df2d11d95d` |
| 19 | `def` | [canonicalEdgeLE](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/canonicaledgele.md) | 138 | `declaration-track:7833bb31aec3f410929f7b82bae049aa045f59b517d5ccfcd2fa7a9b97f6003b` |
| 20 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-3.md) | 143 | `declaration-track:7d89082a5634038e90eec9e965cef029c637136f58c2723e2dca6145f545903d` |
| 21 | `theorem` | [canonicalEdgeLexValue_injective](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/canonicaledgelexvalue-injective.md) | 149 | `result-track:9a301bd749da83a80807559a23336a57ebd775953a422d9adfd43186ea19d033` |
| 22 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-8.md) | 169 | `declaration-track:c6d4a7766dd5c8f775b05de4ead04d6445d5f63fae011a500975a13f121b6b32` |
| 23 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-10.md) | 174 | `declaration-track:f86f5cd179d0ca513765d9838633120db6b0cabf5b12b6c8af63531cf37f3ddf` |
| 24 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-2.md) | 180 | `declaration-track:77ab3b466f116d63ba859a7a8045549ed2b26816fe82a91ea21280e62e12399c` |
| 25 | `def` | [sortedCanonicalEdges](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/sortedcanonicaledges.md) | 186 | `declaration-track:cb56380f6ab159591c22ab820e18b5e7c7bf91916417b198dc6f7a00f11e3e57` |
| 26 | `theorem` | [toGeneric_sortedCanonicalEdges](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/togeneric-sortedcanonicaledges.md) | 193 | `result-track:3114ec6fe22ee00fc9a619cab81c29b7d8c24872192fa341c3ba525872fb1eb5` |
| 27 | `def` | [hostCodeLE](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/hostcodele.md) | 198 | `declaration-track:150f7b266c55847b8d9e517c26a1e28ad95601c26853451579ad44e81de7c6a9` |
| 28 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-11.md) | 203 | `declaration-track:feaf8801dda2e8b6ab2a5b6a8b606dfe41496cb3bac86aef21eb2539bf6c60ae` |
| 29 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance.md) | 209 | `declaration-track:318906dc3f08fce03eaad11b3f1ce0af1b96e6bb73ecb887ae1503356492df84` |
| 30 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-6.md) | 214 | `declaration-track:8f76e49a81453088f492a063107ee891998fc0a39bccd1366853db7dacae078e` |
| 31 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-9.md) | 219 | `declaration-track:e6dcd5fd722c60677d6651db5a21d64a3f4835472a29ba1daf7444c0b1d84a6c` |
| 32 | `def` | [sortedHosts](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/sortedhosts.md) | 224 | `declaration-track:4ee5e58de4845215979bfbc6018c78d92769c32750f307b32726135e7dadc1d3` |
| 33 | `def` | [hashMatches](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/hashmatches.md) | 230 | `declaration-track:1bbfbc59db84e3cf3453db4e547c71a9f1a5e64eb9bc564fbfa09f862461b029` |
| 34 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-4.md) | 233 | `declaration-track:86d05f5fbbf6a1cb31f911631424e8091a2426100648311f187a0eedb4052bb9` |
| 35 | `def` | [Valid](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/valid.md) | 241 | `declaration-track:0f14b5cf88d2d4971392b4366663af64aa8166d9de377d6bfa0b45afefac7c90` |
| 36 | `instance` | [(anonymous)](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/instance-source-edition-7.md) | 279 | `declaration-track:bafd13b619aebe1425b44aeb562c585f78b6c5cb245fe4ab8cf636b69a82f658` |
| 37 | `def` | [verifyRoutingContract](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/verifyroutingcontract.md) | 283 | `declaration-track:ea7319b4961f774bb974d27472eb68a5c1298200c17aecbf3ee2f04da9a8baea` |
| 38 | `theorem` | [verifyRoutingContract_sound](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/verifyroutingcontract-sound.md) | 288 | `result-track:72d3400384df278e29dd3590a31e5d0876923d7d45c8952fb31a9e5509c7fd55` |
| 39 | `theorem` | [valid_toGeneric](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/valid-togeneric.md) | 292 | `result-track:f3f2c9aefb129fec6afa356fb43a0a632f3717982ec2fbed96cdd6b22f2be572` |
| 40 | `def` | [outgoingEdges](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/outgoingedges.md) | 341 | `declaration-track:06e0536f8345f130c9bf4fa69d7aaeb142541bda999e892402924207a4fd5748` |
| 41 | `def` | [orderedOutgoingEdges](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedoutgoingedges.md) | 346 | `declaration-track:d83ae478f364e7a36dac4ed5ca504525356ec1897ad92d08b2ebfb33b309e44c` |
| 42 | `theorem` | [orderedOutgoingEdges_declared](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedoutgoingedges-declared.md) | 352 | `result-track:3ac91fe56e2a0e4d4778ca4d817e9c9cdb080f9ed5c9d14a261624e4d44755fd` |
| 43 | `theorem` | [orderedOutgoingEdges_source](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedoutgoingedges-source.md) | 361 | `result-track:6c182e8328a6b312337106e0b8ca9c7927e9d38fa4cd286072407197cfb8ee12` |
| 44 | `theorem` | [orderedOutgoingEdges_complete](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedoutgoingedges-complete.md) | 370 | `result-track:b09cbab1226728382e38e28d00888ac18dbd78600d24c30433ad5475a6a98e19` |
| 45 | `theorem` | [orderedOutgoingEdges_sorted](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedoutgoingedges-sorted.md) | 380 | `result-track:8e905937eb249502b0d603fe1af5f6f2ce7e2be43efea55deb8b0e063c4f88f0` |
| 46 | `theorem` | [orderedOutgoingEdges_nodup](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedoutgoingedges-nodup.md) | 389 | `result-track:e099244e209317470ac4eb57d66056747e4b79f5ea2387d3af74305e3620e906` |
| 47 | `abbrev` | [RouteState](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/routestate.md) | 397 | `declaration-track:77a54c8d7c891874280a18d0c3fe5943f8e614a891ae2437970b98e795667657` |
| 48 | `def` | [initialRouteState](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/initialroutestate.md) | 400 | `declaration-track:d6193fa2f09b1d97f9707102cd3b1eb57088724c0d68129ef1ca4958b8e9d650` |
| 49 | `def` | [discoverOne](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/discoverone.md) | 404 | `declaration-track:17f9321f5f6eff08ff73f36f597cec9240809166102d446182c1393240ba997f` |
| 50 | `def` | [discoverOutgoing](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/discoveroutgoing.md) | 408 | `declaration-track:f76ce003f141f9c88a6732d4262caf17d142d41336c26be2dda249fe3222e553` |
| 51 | `def` | [processQueuedHost](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/processqueuedhost.md) | 414 | `declaration-track:c44b3573f5af66773707dc75f997727d84e7fdc076bd4149d38e7b27fe05166a` |
| 52 | `def` | [routeLoop](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/routeloop.md) | 420 | `declaration-track:19c528165657b7e703352b79da110001cf4eb5c8b0ef0129a9cab4ecc7f4a7bb` |
| 53 | `abbrev` | [OrderedRoute](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute.md) | 426 | `declaration-track:ae2647b182c4b5d1f13cbf7d52c2fe15d2d292cb3374ea583e6e76b9448ac10f` |
| 54 | `def` | [orderedRoute](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-source-edition-2.md) | 429 | `declaration-track:c49e8f3e260ce0a419c91be2b5e6f55a7bb9c1c29e5bdb749d34e8aaa5dd6412` |
| 55 | `def` | [DeclaredStep](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/declaredstep.md) | 435 | `declaration-track:cf2a9afdc83c1f34c3f50794e4cdd10add1015a9ecd17201e212d7f6fea36b25` |
| 56 | `def` | [Reachable](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/reachable.md) | 441 | `declaration-track:2fc6875767e0759e008ae776964a703b51a82a6770c962bc8297e143ebbecec2` |
| 57 | `theorem` | [orderedRoute_deterministic](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-deterministic-source-edition-2.md) | 447 | `result-track:992304ad2f2a8d230ac6a999e5241624b1408cac2cde8a4dd4c7e13f0f315942` |
| 58 | `theorem` | [orderedRoute_edges_declared](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-edges-declared-source-edition-2.md) | 974 | `result-track:2701bc1baa75770bc8bd0a60a7e2321c70213d41e865f310d9d15fc269b2c4b0` |
| 59 | `theorem` | [orderedRoute_hosts_nodup](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-hosts-nodup.md) | 983 | `result-track:319758d47ee79ff571962cd5761254ca601a6a7f46939a362969231c2f17f356` |
| 60 | `theorem` | [orderedRoute_reaches_exactly_reachable](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-reaches-exactly-reachable.md) | 990 | `result-track:ae1335107fb7bc39052e809576d2561bf80b166f6166e0ecac10f6aa91095627` |
| 61 | `theorem` | [orderedRoute_start](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-start-source-edition-2.md) | 1000 | `result-track:e1e69f6314ab0c40b54cc0b5bb87c65dc746c7d82eaf8012b7c31e29616692a7` |
| 62 | `abbrev` | [CanonicalBytes](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/canonicalbytes.md) | 1008 | `declaration-track:634cab051908a4ef690445946e09c46e8d035809e4656f5dc903aed3081df00c` |
| 63 | `def` | [encodeU8](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodeu8.md) | 1010 | `declaration-track:502f5cca1c691d492a83ee15989eafc21a1dbc366ee3b55db313ff19089a7a0b` |
| 64 | `def` | [encodeNatLE](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodenatle.md) | 1013 | `declaration-track:ddeb0d89830a3b651bb4d6abf23f5a91e61ec099d5b1b10422c097c49a66a87f` |
| 65 | `def` | [encodeU32LE](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodeu32le.md) | 1017 | `declaration-track:c89576bccb99d62ab5242deb14763cd9f1bd09f7a3d104ca2ed01b9284a64730` |
| 66 | `def` | [encodeU64LE](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodeu64le.md) | 1020 | `declaration-track:732f547252936f0c8551a04d18cf1f5edb9330e59ffafb073c3ca47532645e4f` |
| 67 | `def` | [encodeSignedLE](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodesignedle.md) | 1023 | `declaration-track:2df27627d824e414026310301093b0844e68898e33346b643db6baaf3c6a76e8` |
| 68 | `def` | [encodeI32LE](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodei32le.md) | 1026 | `declaration-track:e72449a6f2f91b5a00a2c1dbe685c24ef2c99d30bc9289d5603fb77afcfd3bff` |
| 69 | `def` | [encodeI64LE](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodei64le.md) | 1029 | `declaration-track:b4cf7a255cfa73782c137309d9a435d5f42f6e5aaad5aed8112be16084bc8d12` |
| 70 | `def` | [encodeUtf8](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodeutf8.md) | 1032 | `declaration-track:91040d23bab4d8bc7e08a852e9551bf0d3a4d01a1a9b362bae9476c8bd85b389` |
| 71 | `def` | [encodeLengthPrefixedUtf8](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodelengthprefixedutf8.md) | 1035 | `declaration-track:81e78900e75b406bcec9c7c9d311723a927eb36a81e9fbaf11d1292a619d0905` |
| 72 | `def` | [lowerHexNibble](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/lowerhexnibble.md) | 1038 | `declaration-track:9fea59206365d5abd089a294050b040e4803643474b1bc0c1a7022fb7761a1a3` |
| 73 | `def` | [decodeLowerHexPairs](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/decodelowerhexpairs.md) | 1048 | `declaration-track:8921dad080310ee283e1fc23a86194448989cb35a7edbefe05a5143e57d1413c` |
| 74 | `def` | [encodeHash256](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodehash256.md) | 1054 | `declaration-track:97b3fda060a3c35016727bd1878f3afb67b6a1dd3e72e7c89148b36915a8b35d` |
| 75 | `def` | [encodeOverflowPolicy](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodeoverflowpolicy.md) | 1057 | `declaration-track:1b139cbf09a2609b6a3971a3ec48d873d94572e8b78185a758d2d3db2ea378f2` |
| 76 | `def` | [encodeRoundingRule](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encoderoundingrule.md) | 1060 | `declaration-track:8b8f9259119d32c51338e5003a915a8406e43084669a990d3413c6f229f2e1b1` |
| 77 | `def` | [encodeTraversalMode](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodetraversalmode.md) | 1067 | `declaration-track:12798f12b2e3562c477d472b09eb035c28e8768220324cdd8ee29408ca330ab5` |
| 78 | `def` | [encodeFixedFormat](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodefixedformat.md) | 1071 | `declaration-track:1402ab92ec34f75460d1b08438337c6db8f229e61569930e4cf41d553086117a` |
| 79 | `def` | [encodeHostCode](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodehostcode.md) | 1083 | `declaration-track:f3f71699da02dbe02867ba389e1ddf199adf95835d795dd81e807a493a6c0e4c` |
| 80 | `def` | [encodeEdgeRow](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/encodeedgerow.md) | 1087 | `declaration-track:3cfbda5ba525e9e9f9d0b26edaa86dbb7e03464a83de92bbd298504bd208762b` |
| 81 | `def` | [canonicalBytesWithoutHash](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/canonicalbyteswithouthash.md) | 1097 | `declaration-track:afdae4e7f452efc3c63856fdadff97f609e1f34b14a88c7a87b3a1d13bd7c457` |
| 82 | `theorem` | [hashMaterialDeterministic](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/hashmaterialdeterministic.md) | 1117 | `result-track:feabc1c75610227ca4883f43f823de7b63f1738050453d797330758423c171a1` |
| 83 | `structure` | [SourceSnapshot](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/sourcesnapshot-source-edition-2.md) | 1128 | `declaration-track:eee85bc669a1b83b3267371fd4bc69fd75e1a0ce573df7989b50ac600093028e` |
| 84 | `def` | [SourceSnapshot.canonicalBytesWithoutHash](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/sourcesnapshot-canonicalbyteswithouthash.md) | 1137 | `declaration-track:58ea0cacc684b89bd0de51b67fdcaf30b897690032e43a08ce001875a65e6934` |
| 85 | `structure` | [ProposalKey](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/proposalkey.md) | 1151 | `declaration-track:248130a00b2fc088a4764656fc86c189108fabeb678c0bb4816bc404b78f9ac0` |
| 86 | `def` | [ProposalKey.canonicalBytes](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/proposalkey-canonicalbytes.md) | 1164 | `declaration-track:e81fe7cba57e357bfdf978aa3a226a88e2bf4dac70f98162570baeb42dbdf655` |
| 87 | `theorem` | [ProposalKey.serialization_deterministic](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/proposalkey-serialization-deterministic.md) | 1183 | `result-track:6bd10e33471ce1779e95fbb807b185540a7e0376687ea8fc9b1f3265225fca11` |
| 88 | `abbrev` | [OrderedRoute](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-source-edition-3.md) | 1198 | `declaration-track:f108ce18785c65abb5e9e6903c4a4e649cffe13022869eac030ff8ff5605c1a9` |
| 89 | `abbrev` | [SourceSnapshot](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/sourcesnapshot.md) | 1201 | `declaration-track:3276699fa7cc337b7bc510f48cb0ef86d39115cb56acbfa1b049dd8c05dad00b` |
| 90 | `abbrev` | [ProposalKey](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/proposalkey-source-edition-2.md) | 1204 | `declaration-track:e76e8feb0a86144f06e52008278642e614cbc38d2806dffa0b1fc926beee3300` |
| 91 | `theorem` | [orderedRoute_deterministic](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-deterministic.md) | 1216 | `result-track:7cc0909928ab60c99b48670218da0a1978efbd464c3af6555b9ea9d8e7b40594` |
| 92 | `theorem` | [orderedRoute_edges_declared](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-edges-declared.md) | 1227 | `result-track:0fa0dae6ae7daa2de8f73ab4e2549ed4b449a12cd932adad7ad17e208ef974cb` |
| 93 | `theorem` | [orderedRoute_hosts_nodup](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-hosts-nodup-source-edition-2.md) | 1235 | `result-track:9f1989cd27cf143d17698001641598554c06e1026f03394ba69dc65efc79fbd9` |
| 94 | `theorem` | [orderedRoute_start](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-start.md) | 1241 | `result-track:760ec13f4f30b5e75b7dc727f4b5896600ea264f303d48ed5b467352a5f42e83` |
| 95 | `theorem` | [orderedRoute_reaches_exactly_reachable](../../../../Combinatorics/RoutePublicToGenericSortedCanonicalEdges.lean/declarations/orderedroute-reaches-exactly-reachable-source-edition-2.md) | 1247 | `result-track:e5e19cd386601e69f7639c84e0d1d10b626ca5b697886852a39b9226cfa82da1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=427c8547ae826cd20b7c31472ffd733600ba068de058cb3681347a2fb63e877e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Route/Variant5ae7d92d4f9df86e796381dbb8d6c6bd194d983e5a3062835c18046b076f06ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
