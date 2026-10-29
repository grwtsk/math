# Verification target: Ring Subsemiring Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a58a8d6a31d065e295d46ccb8e590010547a7851",
  "lexical_observation_count": 190,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f471ad13e0ea22ca3d477986616c3b038537efd726393448fc1945e339cc0d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a58a8d6a31d065e295d46ccb8e590010547a7851`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f471ad13e0ea22ca3d477986616c3b038537efd726393448fc1945e339cc0d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f471ad13e0ea22ca3d477986616c3b038537efd726393448fc1945e339cc0d8.lean.json)

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
| 1 | `instance` | [instCharZero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instcharzero.md) | 45 | `declaration-track:6f9b0b525dd3bdbed64ccd850df42bf25644aea6bda3c6af2bcfdff557b6aa1c` |
| 2 | `theorem` | [toSubmonoid_strictMono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/tosubmonoid-strictmono.md) | 59 | `result-track:1689e73d72ae849e503c1bee46e007e415a7294695c3d8ecf134bb74c390a5e7` |
| 3 | `theorem` | [toSubmonoid_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/tosubmonoid-mono.md) | 63 | `result-track:1e0111f9419965da491621aca80ae267eb54903b73670855d212605586e02b59` |
| 4 | `theorem` | [toAddSubmonoid_strictMono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/toaddsubmonoid-strictmono.md) | 67 | `result-track:af5ec5ab5683a4df695ef5ecac5d2c2f86bf0c1da04048098a85df191179ada5` |
| 5 | `theorem` | [toAddSubmonoid_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/toaddsubmonoid-mono.md) | 71 | `result-track:d5628d8edf779b839bc2971e037a25a77f9aca4fe0271ce175c536d53bca0608` |
| 6 | `theorem` | [list_prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/list-prod-mem.md) | 75 | `result-track:3d465be344cbc50da9015c978e2ca9fe93c6d36568bb9d210004f75f8d6b5fb1` |
| 7 | `theorem` | [list_sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/list-sum-mem.md) | 80 | `result-track:55546f591034a395006f4ce649dbc98665e9fe230d9514b8091088471a0588f9` |
| 8 | `theorem` | [multiset_prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/multiset-prod-mem.md) | 85 | `result-track:905da2f0952f9decfbd43659ab10b88cc7990a310bbada3329f3614de058cad2` |
| 9 | `theorem` | [multiset_sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/multiset-sum-mem.md) | 91 | `result-track:926fbf5cd0329db69c4d131a9a5eaa58d9f61b74e668678c6189bb8d7db69dff` |
| 10 | `theorem` | [prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/prod-mem.md) | 96 | `result-track:908f66b53d7bc2d45c138356597cb4115bd3992d226f08bf14f5d9d3e00d9dac` |
| 11 | `theorem` | [sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/sum-mem.md) | 102 | `result-track:deb48d29c7de6d91939636bee2915a9d885e0da1b08166faae71c372d79a8825` |
| 12 | `def` | [topEquiv](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/topequiv.md) | 108 | `declaration-track:2379341061433f8a5f860e62cb713709b4a5b31e442acfb5f3a8b35051bf2d8c` |
| 13 | `def` | [comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/comap.md) | 116 | `declaration-track:84a2d3a66367340049dc2ccea1923d9395be99d2f803df40460e64e43e62e1b4` |
| 14 | `theorem` | [mem_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-comap.md) | 120 | `result-track:1fe648c3fb4e31f8c60822987e15f8ddff0c92a3939c4f09a3a1ddb096ec4294` |
| 15 | `theorem` | [comap_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/comap-comap.md) | 123 | `result-track:40633991d8df988dc2ca20a22a7284a3df8e6f5f366cb7bcde016ec219a5bdf1` |
| 16 | `def` | [map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map.md) | 129 | `declaration-track:55420a0b5d500d663cce25d7a5c84113e472534a8b1c353e426d0faa89fd84a6` |
| 17 | `lemma` | [mem_map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-map.md) | 133 | `result-track:510daf86af3cc60aba6308ef049373b5b26f63802742dc50981f24964f905959` |
| 18 | `theorem` | [map_id](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-id.md) | 136 | `result-track:2314cb02e2be79ab3018236f2bf55fdf27f4936de1dd481904226c0064d02ced` |
| 19 | `theorem` | [map_map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-map.md) | 139 | `result-track:26466d5148c256f871aa6a17e02f997f5a7a431b0f068b1069d2b3290b6a16b9` |
| 20 | `theorem` | [map_le_iff_le_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-le-iff-le-comap.md) | 142 | `result-track:a9de9a152eee8c790666995ac540d15d2cc9901d60b96f1361dd8d622b8e804f` |
| 21 | `theorem` | [gc_map_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/gc-map-comap.md) | 146 | `result-track:e3b18ef5489dcd6a8c662bb78c5e70eb2221fabdd495d67c44cadfe187aa2b77` |
| 22 | `def` | [equivMapOfInjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/equivmapofinjective.md) | 150 | `declaration-track:57a291805579de134419711d54faae0ef2b4a02de61ea345bc5002f63630f29c` |
| 23 | `theorem` | [coe_equivMapOfInjective_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-equivmapofinjective-apply.md) | 156 | `result-track:7a7e7bf7b5e0332b87efa0ad772c969b68c9c50e6e8dcdc53f72104992116b63` |
| 24 | `def` | [rangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ranges.md) | 168 | `declaration-track:53c8c201a345da13f519999ffe1d8ed777480b7faee163443f5e60484196ef2c` |
| 25 | `theorem` | [mem_rangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-ranges.md) | 172 | `result-track:384e3d4a75a5c13525c8ca2a2dbee1a631b447db5a7a7d40e28aafbe12ca51cf` |
| 26 | `theorem` | [rangeS_eq_map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ranges-eq-map.md) | 175 | `result-track:738eb432aba5acd1e679004d1da32c2d52aa564dca4428a2ab5d357646b329ff` |
| 27 | `theorem` | [mem_rangeS_self](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-ranges-self.md) | 179 | `result-track:43528d0fa3b850c670f9731680b0c202867ce79f67dd16146372d1841fb9deba` |
| 28 | `theorem` | [map_rangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-ranges.md) | 182 | `result-track:335ee406806c48fc2bd60bb0be97d62f20709f61e7004957ff8d693425f486b2` |
| 29 | `theorem` | [rangeS_eq_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ranges-eq-top.md) | 186 | `result-track:a4c0970280f4cad6141ea9b1b5a6effa55de55bd52b258a02629138b3d5ac4ca` |
| 30 | `instance` | [fintypeRangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/fintyperanges.md) | 192 | `declaration-track:e1beadf72408651daceb2c9fad726b50c7f173658b83fcbdafd06b8070699d1a` |
| 31 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 199 | `declaration-track:877a81a787a75a76b5699cbd7528490a370b9b01fc714bd657c3f193d91d7adb` |
| 32 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 202 | `declaration-track:30cefd6294561876618164f83ecd01843e156444f70539af4cb26d4c6ea6a117` |
| 33 | `theorem` | [coe_bot](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-bot.md) | 206 | `result-track:88d0ec94eb28736c665b68e9f21e35ca93c766a95cef535e35bc3d52ce40223d` |
| 34 | `theorem` | [mem_bot](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-bot.md) | 209 | `result-track:a82999f37fd7701d69e13312059c208afb26398c69457c0c719783f6e3c46598` |
| 35 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 212 | `declaration-track:d8acc0cd5c8e1b40759512baf1754f250f554851e1779bf67dac2f352013a70f` |
| 36 | `theorem` | [coe_sInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-sinf.md) | 219 | `result-track:3b2deaebb39912e1b6efd967cd5421fb9e61c7f89192ca585a48963c97f29383` |
| 37 | `theorem` | [mem_sInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-sinf.md) | 223 | `result-track:ef60105ed26843f8bf924c5c5da35d03a53d730436f73c0df0e304ffbb1a1807` |
| 38 | `theorem` | [coe_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-iinf.md) | 227 | `result-track:fd4d71c9b077f50a48d5b1f6a35acf362b87d734f3443e8be473d124766249ec` |
| 39 | `theorem` | [mem_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-iinf.md) | 231 | `result-track:b1eb3b9b007f7e2a5f33b151c0537f0c8af836dbac7359cea154282d1e745805` |
| 40 | `theorem` | [sInf_toSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/sinf-tosubmonoid.md) | 235 | `result-track:2f0f17b3ff693a161a7cbffe72f063e450594eea4c2db5b340c95bb4f4e4c06c` |
| 41 | `theorem` | [sInf_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/sinf-toaddsubmonoid.md) | 240 | `result-track:dd67989a4403c2408c86876281ce9cff22e3be9882c79c1afe0ef5856ca19b47` |
| 42 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance.md) | 245 | `declaration-track:292d3187d2d691ec2a9ce45f48f42320165aca0cc31c8ce9abba0c676823547e` |
| 43 | `theorem` | [eq_top_iff'](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/eq-top-iff.md) | 261 | `result-track:8ce3e89608e6b2e42c65eff98fc4626c85ba19e14eced00778d6e5e45b5a72d5` |
| 44 | `def` | [center](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/center.md) | 271 | `declaration-track:2ae120b3db5745ba8de07cf15fd38022fe83d81590e0d3f364f82fa2b0f6a499` |
| 45 | `abbrev` | [center.commSemiring'](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/center-commsemiring-source-edition-2.md) | 279 | `declaration-track:e9f57b49acd3fb4f5676544bf6223dc515150cf00d9d2ebdb4caf265789d6553` |
| 46 | `def` | [centerCongr](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/centercongr.md) | 285 | `declaration-track:695f0c33f25971722ec1c94a54c2bf92bb7b204365ef4946b29afd59daa1cae5` |
| 47 | `def` | [centerToMulOpposite](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/centertomulopposite.md) | 290 | `declaration-track:d567b365a5262562a7ee143b74e7ee46cb5cc234524a0bf10aa355df6aef44b4` |
| 48 | `instance` | [center.commSemiring](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/center-commsemiring.md) | 298 | `declaration-track:d2ae176ca58e656dcb2aa68a0f55d747b0e5a3b89e9174ff212f4ecf8f999a38` |
| 49 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/example.md) | 303 | `declaration-track:53b1596bc9fb8591af3fbbe428475c9d8a4990e0846930e97ac3d9ad9d0991ba` |
| 50 | `theorem` | [mem_center_iff](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-center-iff.md) | 307 | `result-track:2a4940f89f5bb1e13acee13446493e29fd6ddf2c303e52e56a389835059af5e4` |
| 51 | `instance` | [decidableMemCenter](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/decidablememcenter.md) | 310 | `declaration-track:1f25021bdc67a7776b73a6d6a032d1bd86bdb9420cf8cf695b8cf7c8b5c0a98b` |
| 52 | `theorem` | [map_center_le_center](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-center-le-center.md) | 313 | `result-track:9cbe33cffff69bc88bb4b098dceb5672cf9166e64dd5ad832702e36140f49c33` |
| 53 | `theorem` | [comap_center_le_center](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/comap-center-le-center.md) | 317 | `result-track:7ae925b2041dbcc34d81f4963375b92c243f6b9744fab908be7f4549d16de576` |
| 54 | `theorem` | [map_center_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-center-eq.md) | 322 | `result-track:f87f71115bbdace0452d4dfc6abe3a7a5067e2395b21fa0dfd97a525f7b33808` |
| 55 | `theorem` | [center_eq_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/center-eq-top.md) | 327 | `result-track:0026181a9816d15b74083b0d01f032717afb31f373d42f6e1912eed898c0fd89` |
| 56 | `def` | [centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/centralizer.md) | 335 | `declaration-track:1352c4336cbde1e2cac3a335a7b924591acdabc5aa3e1cf36fa82ad7c8178753` |
| 57 | `theorem` | [coe_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-centralizer.md) | 342 | `result-track:464a8d28c6c5745918f8d2f756f272a8de61dbcf1b4ee6ed1ec779d4c3a1fed4` |
| 58 | `theorem` | [centralizer_toSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/centralizer-tosubmonoid.md) | 345 | `result-track:18e57908699b924f16adca41e8852697f8c2b55450ca49930d4b0eb057b7f7a1` |
| 59 | `theorem` | [mem_centralizer_iff](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-centralizer-iff.md) | 349 | `result-track:7052bee3d91968655fc9d9d569a9301477190a4ccf85995e1474fdf7d048dfd6` |
| 60 | `theorem` | [center_le_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/center-le-centralizer.md) | 353 | `result-track:90c5311fa4c338b942a9b98412b31061b92e5c66c225e4079c532dfdc163a4bb` |
| 61 | `theorem` | [centralizer_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/centralizer-le.md) | 356 | `result-track:c2376f56218f973b55247c0ec096b7d87adec6a31b9597ab10b20f0551fc5f68` |
| 62 | `theorem` | [centralizer_eq_top_iff_subset](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/centralizer-eq-top-iff-subset.md) | 360 | `result-track:4af5db587b9106b362b44c5da2a8fcb79b9478bd8dd509cabd5d16403a1bcd55` |
| 63 | `theorem` | [centralizer_univ](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/centralizer-univ.md) | 365 | `result-track:f9c4a47bfce52fef65eb9c99e08ff37f377d71cdcd670b67cda7239f3fb68665` |
| 64 | `lemma` | [le_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/le-centralizer-centralizer.md) | 368 | `result-track:8285058a5459461af9d8e8ca09343edb14a0a6a09df1435f1a3d985f1376f8da` |
| 65 | `lemma` | [centralizer_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/centralizer-centralizer-centralizer.md) | 373 | `result-track:e5ee0471d62aa28802b1fb36b283f7fc3a2b5b3540252046cf9c5f28749c4554` |
| 66 | `def` | [closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure.md) | 381 | `declaration-track:88b9c8f76e49d760190a951024088450f685ff053a297b7820bce1f48f515138` |
| 67 | `theorem` | [mem_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-closure.md) | 384 | `result-track:6937db50e26c01b1101a0ca91dd0f389a7c9d3f869f5d348dbbc0399b9ca7b19` |
| 68 | `theorem` | [subset_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subset-closure.md) | 389 | `result-track:6fb3c8dfbf6c8e621082659787669843c7871c2c902ca39be1894b9587039680` |
| 69 | `theorem` | [mem_closure_of_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-closure-of-mem.md) | 392 | `result-track:575728fbe3824033218a21262d65d644a0dfad47bcb842f2c92495481a35d407` |
| 70 | `theorem` | [notMem_of_notMem_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/notmem-of-notmem-closure.md) | 394 | `result-track:e1f9931b684800ff0f93abb429c906d519dd2e5ec09d3eee0d6be2ebf9f05782` |
| 71 | `theorem` | [closure_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-le.md) | 399 | `result-track:5b0fd3c7bd58bbc8f6447c85841df0e716ed1b6cb14978f277c0f3051ee487b6` |
| 72 | `theorem` | [closure_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-mono.md) | 405 | `result-track:9a4f12e8368e79a190989db2399e7c840ce08c2b0539bb2a8ad84c4e1f88464b` |
| 73 | `theorem` | [closure_eq_of_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-eq-of-le.md) | 408 | `result-track:b8b2e8dbaa5b3d8ae95fadd37cb518313c0e7133015b9eb903c13f28b98bbdb2` |
| 74 | `theorem` | [mem_map_equiv](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-map-equiv.md) | 412 | `result-track:22d21fc9b64add50eb512cc812f820e15c5fa790fa1f73a9938dcf8ca8dbc9f1` |
| 75 | `theorem` | [map_equiv_eq_comap_symm](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-equiv-eq-comap-symm.md) | 416 | `result-track:55a9f8e437b925ec3ea647e8ea8bd0b4e143e1530134ec14e4d0c0b6b0bb989a` |
| 76 | `theorem` | [comap_equiv_eq_map_symm](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/comap-equiv-eq-map-symm.md) | 420 | `result-track:a94df66d0cfec8d2c523cc04dd4c02e5874bd8c41bba4bb513404acf6792dfbb` |
| 77 | `def` | [subsemiringClosure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringclosure.md) | 429 | `declaration-track:84fa09348b3ffc11f6d46babfae98dc3f26442f887b5d081af3db3d40590e947` |
| 78 | `theorem` | [subsemiringClosure_coe](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringclosure-coe.md) | 434 | `result-track:74c8196a8893e57b4d492810bc51746030775c6ba72197e5bf475d5fdd28a92f` |
| 79 | `theorem` | [subsemiringClosure_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringclosure-mem.md) | 438 | `result-track:3b18fdcbd63993fc916392b3d8fbb9663b1f3e0fd62773ac4a44be82dc77a6f7` |
| 80 | `theorem` | [subsemiringClosure_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringclosure-toaddsubmonoid.md) | 442 | `result-track:30688bc705b3679dd7858a8deb94fab058808e3889add6b423f0f858015a9861` |
| 81 | `lemma` | [subsemiringClosure_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringclosure-tononunitalsubsemiring.md) | 446 | `result-track:056a9c845912ee68c88b67f8a6ba3476473aa200dfae3003ba18c75f4d203025` |
| 82 | `theorem` | [subsemiringClosure_eq_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringclosure-eq-closure.md) | 455 | `result-track:65ea5b94eee607b793eef1537514567068b89ecaa21eb3d0e8006240799bc33a` |
| 83 | `theorem` | [closure_submonoid_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-submonoid-closure.md) | 470 | `result-track:dcbc0cf9e808715d13f36b175d0802c606c43584b510d001237b9e1ba1e32242` |
| 84 | `theorem` | [coe_closure_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-closure-eq.md) | 478 | `result-track:d00578ee4304235b3f7373cdfa4926cbb421efb8e7d35ca4a87d35ac923abbbe` |
| 85 | `theorem` | [mem_closure_iff](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-closure-iff.md) | 482 | `result-track:6b811f685d3bd959c23014c2aa382c5250ed8ec69623f6a4defbaea79ad57258` |
| 86 | `theorem` | [closure_addSubmonoid_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-addsubmonoid-closure.md) | 487 | `result-track:44f19dded29389c0be9816af58b20394c588a32e74b56266fcbc78fa12884762` |
| 87 | `theorem` | [closure_induction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-induction.md) | 501 | `result-track:11c6e2b4d69c0ef89a3e7ce4fdc43d75e7dedc183078e47cc35586d648fcc7c5` |
| 88 | `theorem` | [closure_induction₂](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-induction-source-edition-2.md) | 517 | `result-track:927d83e0bebef4f72e664ecf84962c4cd669a991f8dd8cb5df55efa3a34b0fb8` |
| 89 | `theorem` | [mem_closure_iff_exists_list](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-closure-iff-exists-list.md) | 539 | `result-track:b4741c68b7a6ec50627c1d45b7531fa63323bdb1bc87d37d92b3a3049da37507` |
| 90 | `def` | [gi](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/gi.md) | 569 | `declaration-track:c69b38df5f6e1d6fcb7f33f31ac54614cd26b91495a942d55a83cee560ff3cdf` |
| 91 | `theorem` | [closure_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-eq.md) | 577 | `result-track:7d2f6ee8bd995c1ae462084f2386523ad979434d93bb3e649f6b5a4c8901019d` |
| 92 | `theorem` | [closure_empty](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-empty.md) | 581 | `result-track:344d685b08a05099d8285307104374f01b2a5dc699161c5349b7171367d3db5d` |
| 93 | `theorem` | [closure_univ](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-univ.md) | 585 | `result-track:7848262e2d4799935c502e6b08173e8feadaf1c0f6a37f8a7cfac0b82c552b91` |
| 94 | `theorem` | [closure_union](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-union.md) | 588 | `result-track:edfd307395ff44b6303b6e09294ed2d87d87c5568ed683184d959f6d72de2fed` |
| 95 | `theorem` | [closure_iUnion](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-iunion.md) | 591 | `result-track:8f54cafca5eb42d49b5c4d480fbd90b02e6d5565442501c433babeb782b94b69` |
| 96 | `theorem` | [closure_sUnion](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-sunion.md) | 594 | `result-track:60b5aa8c61a5288281db7c88e21a044a2e71eb5b0793970ce1ae79847bf3becc` |
| 97 | `theorem` | [closure_singleton_natCast](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-singleton-natcast.md) | 598 | `result-track:52ac9f336129dcf2721ecf9df050444f0bf2788dd9c1843da143e3652dedca5f` |
| 98 | `theorem` | [closure_singleton_zero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-singleton-zero.md) | 602 | `result-track:1f0feca506eaad410f08d10786007c02ca8b2f0d4ab56c2b2d33149a0230ce31` |
| 99 | `theorem` | [closure_singleton_one](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-singleton-one.md) | 605 | `result-track:25b79b8aab4310fd09f2eed3ff22d7ef4b92abf54a47bba06d481f3cd2d64a7b` |
| 100 | `theorem` | [closure_insert_natCast](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-insert-natcast.md) | 608 | `result-track:0b1725e5d7de013e055219ad698faffb598fe07822a99622937825fa8de7ef77` |
| 101 | `theorem` | [closure_insert_zero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-insert-zero.md) | 613 | `result-track:4c985d86f5ca5e671bab8d3ce0a5aba2418e05cd15ca1106aacdcdf4306db152` |
| 102 | `theorem` | [closure_insert_one](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-insert-one.md) | 617 | `result-track:1f8919063a1c4c6c6147b9756a6ba14ce3949c10271afeda60a9e923647b7e56` |
| 103 | `theorem` | [map_sup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-sup.md) | 620 | `result-track:23fe6c725180f3dd48f7bd55d71e2048e301770c0b91b6ea3a7303efcb3be6da` |
| 104 | `theorem` | [map_iSup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-isup.md) | 623 | `result-track:0b41269af96a85e133fc87c879aa9740fc98db939bff029a0d7027ca7af370d7` |
| 105 | `theorem` | [map_inf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-inf.md) | 627 | `result-track:a7acdece717bc54ea9d374d02dcdb28d8ed858e0542af8b6f76bc56266a865b0` |
| 106 | `theorem` | [map_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-iinf.md) | 630 | `result-track:a2be8631fa02d1477b16c1e0813017f721efb7db8ee041d8c99001386e4d487e` |
| 107 | `theorem` | [comap_inf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/comap-inf.md) | 635 | `result-track:213206ecd336cf6a0d79beb4342751398c2196f2eb0440c62c64c4ebe6ddf2d6` |
| 108 | `theorem` | [comap_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/comap-iinf.md) | 638 | `result-track:d436e902d301e235762e9d19fcae32d2088eb1143e600e504314f961d6cfda92` |
| 109 | `theorem` | [map_bot](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-bot.md) | 643 | `result-track:c488011909936261d467339769574bf68c280c948d4ddbd119bd177494dfc12c` |
| 110 | `theorem` | [comap_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/comap-top.md) | 647 | `result-track:d3d1bb8f14ae727f5e79a1ff9d551619472cc1d3315bb1eef74837e8c561bd33` |
| 111 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/prod.md) | 652 | `declaration-track:16a1a38918df8af5eab5e3a98cdd057050798390011d9431f58bae49d827b54e` |
| 112 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-prod.md) | 657 | `result-track:498992bce970571463ce05c8d1438ab1a08a304e2b40e2b86d6560c3f9386fc0` |
| 113 | `theorem` | [mem_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-prod.md) | 661 | `result-track:0fe014e257e98c867b74009753a5fe9a60f4360da5f898d72481552e8955246a` |
| 114 | `theorem` | [prod_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/prod-mono.md) | 666 | `result-track:e47a420374906f50d30f9ac13079a3760afdc409ee34724ccc83f068b9923cee` |
| 115 | `theorem` | [prod_mono_right](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/prod-mono-right.md) | 670 | `result-track:fb63210b93202068e7c824b0ca6cc590a6186a40559cb794811c42b28d9c4ccb` |
| 116 | `theorem` | [prod_mono_left](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/prod-mono-left.md) | 673 | `result-track:48678f715c624ddb7707219757e32fd70dae7df2300e742013e853965dd0fe99` |
| 117 | `theorem` | [prod_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/prod-top.md) | 676 | `result-track:fec0d2b2df15cc396e1a1466183e805f04a1eadfdc6605859e974bce700b79ba` |
| 118 | `theorem` | [top_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/top-prod.md) | 679 | `result-track:1003e15108606924f6218c2cefaad4f74fc026e38f44aa3f0d2f8bfca9d2a485` |
| 119 | `theorem` | [top_prod_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/top-prod-top.md) | 683 | `result-track:968bf6ddeb0c055d949155e77942e2afc4bdf78ae05090a707612a102559bd99` |
| 120 | `theorem` | [Ring Subsemiring Basic Namespaced Public](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-tosubmonoids.md) | 687 | `result-track:3d0b40b69abc46b47dcc4743ae08ba638e1dd66217e433603d4658de0c705c83` |
| 121 | `theorem` | [center_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/center-prod.md) | 691 | `result-track:ee7a59894911ecc033b1475e82302b7ed4eb399b1eb0d4e1ed9094e9c4f5f7a8` |
| 122 | `def` | [prodEquiv](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/prodequiv.md) | 695 | `declaration-track:11308f215cb2901a5eeec3174262ca06d8c88cd934b38760951682ee6dcb6488` |
| 123 | `theorem` | [mem_iSup_of_directed](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-isup-of-directed.md) | 700 | `result-track:3bb05dc7c243099458130e414b6839333a62e1410a320724196b661b57b031a3` |
| 124 | `theorem` | [coe_iSup_of_directed](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-isup-of-directed.md) | 710 | `result-track:f95b5bc14a273c5c4ce5a06982316e05766d2dd9b65f0faf220b388dd41ca341` |
| 125 | `theorem` | [mem_sSup_of_directedOn](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mem-ssup-of-directedon.md) | 714 | `result-track:4a2318d0cc8e4a526e2b5704f96adaf78d50713740cdbbde2a775805df4035db` |
| 126 | `theorem` | [coe_sSup_of_directedOn](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-ssup-of-directedon.md) | 719 | `result-track:3a325cdfbe13c6d20e31d032936ba92cbc74b0a3e5c73936c195f4298ee0b9bf` |
| 127 | `theorem` | [isMulCommutative_iSup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ismulcommutative-isup.md) | 723 | `result-track:f09396856fdd83d94ed98bec6aa318d6629fde3a45d6cf713d49621be71c6fc8` |
| 128 | `instance` | [instIsMulCommutative_iSup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instismulcommutative-isup.md) | 729 | `declaration-track:588fa75fc241089392311fee33f1b95ddc26213f6a6a67e8c514d79944ec8bf6` |
| 129 | `def` | [codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/codrestrict.md) | 746 | `declaration-track:4158ecb51e02bbd93af415ce5833b9ad601d1776e6d18b140913d2b3864540c5` |
| 130 | `theorem` | [codRestrict_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/codrestrict-apply.md) | 750 | `result-track:cbe512d1fedd3415cd8decd475a30598801820c666921f8f2d5d99cc35d36fcc` |
| 131 | `theorem` | [injective_codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/injective-codrestrict.md) | 754 | `result-track:d06efd75a872a644fc3a2f3dead040d3a03b05fb4c3374d481004567ab607d60` |
| 132 | `theorem` | [rangeS_codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ranges-codrestrict.md) | 758 | `result-track:19522fb68d4cffffe62042b09f459022cc38acb7e2edae4002d3780347ef4d74` |
| 133 | `theorem` | [surjective_codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/surjective-codrestrict.md) | 762 | `result-track:ea3e6f321045d6b6a6b9b6f795f71ca322ef1776523a516801f0cb6e0f471649` |
| 134 | `def` | [restrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/restrict.md) | 767 | `declaration-track:1219b3726d789b68dfc5218c0af60b5d3d4400871fd030f00159f9f6f7daad52` |
| 135 | `theorem` | [coe_restrict_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-restrict-apply.md) | 771 | `result-track:605e29437013b2e76c4dd0fb380980850f426a2407a7d90f5ff125897d98076e` |
| 136 | `theorem` | [comp_restrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/comp-restrict.md) | 776 | `result-track:6a5351d0064b3d8f06b5265cc8bc188bb94c2462672333f8e8432518d5e1b1ef` |
| 137 | `theorem` | [domRestrict_comp_codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/domrestrict-comp-codrestrict.md) | 781 | `result-track:2823a9d84ca22f764d150baafba6681b47aa36c150757d744bf5997d6796809c` |
| 138 | `def` | [rangeSRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/rangesrestrict.md) | 789 | `declaration-track:bf34d2c1192c242e35b36f27ecabd45501a22cb6524ef96e2c52df14055417bc` |
| 139 | `theorem` | [coe_rangeSRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/coe-rangesrestrict.md) | 793 | `result-track:7a7773678770ea44e7ce9ef39f991ca211f1e6b5f01660b92160d3f551507b82` |
| 140 | `theorem` | [rangeSRestrict_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/rangesrestrict-surjective.md) | 796 | `result-track:89dcb20da99ca266f5f8797f33a91166a94958f623bdb42b409b733fed9d15bd` |
| 141 | `theorem` | [rangeS_top_iff_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ranges-top-iff-surjective.md) | 801 | `result-track:be44d69b99e985b8e6a485563f0832d7dc1d80e6cf59d90ac6fa1b330a288d81` |
| 142 | `theorem` | [rangeS_top_of_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ranges-top-of-surjective.md) | 807 | `result-track:36dded26adbbaf87dd12e6c341099ffa378c1db48bb1158ae193fbc2e19d6e54` |
| 143 | `theorem` | [eqOn_sclosure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/eqon-sclosure.md) | 812 | `result-track:6e1ae16a64320e50e681818720f0fac2c597958c40c47faffc06506068b0b66a` |
| 144 | `theorem` | [eq_of_eqOn_stop](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/eq-of-eqon-stop.md) | 815 | `result-track:673001a90ed5dcc93b2d108b14aed50bd357c2945f12f6b67485969ba558e11b` |
| 145 | `theorem` | [eq_of_eqOn_sdense](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/eq-of-eqon-sdense.md) | 818 | `result-track:61c6ccc3c164048c7f9f2797e4dfac7c9955a441f3063616ab32e20bd1f7e564` |
| 146 | `theorem` | [sclosure_preimage_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/sclosure-preimage-le.md) | 822 | `result-track:aafaec16d857f6de6252a688062cf0b6f6dadd7a5b2b69fd78000fbe5ea36b9f` |
| 147 | `theorem` | [map_closureS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-closures.md) | 827 | `result-track:d93d253a985dd7c9ac414eefcbd2bb82a7ad0724632d3dbbbb8f43e21ef17c63` |
| 148 | `theorem` | [domRestrict_comp_rangeSRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/domrestrict-comp-rangesrestrict.md) | 832 | `result-track:543044ac7ce8609bb6f0cba32c4bee28ad157fef28f9a28c20e2a0118441af98` |
| 149 | `def` | [inclusion](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/inclusion.md) | 843 | `declaration-track:8bb3f95fecec39ea001ffea8cabd26e80fc4138c1f6fcd65c4582d9e5a289524` |
| 150 | `theorem` | [inclusion_injective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/inclusion-injective.md) | 846 | `result-track:64a6dfa4ebd87cd86b93c1f95615ecca5ebcd6b322c994ce5b11ba000a5ddef6` |
| 151 | `theorem` | [rangeS_subtype](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ranges-subtype.md) | 850 | `result-track:6e66d7510a8fba48bf80981d10766b1bfae95a4fc46afad9890c8aaa73c89aff` |
| 152 | `theorem` | [range_fst](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/range-fst.md) | 854 | `result-track:92533e2cf0b0fda9896c65bc4442c64f50ae786aa56ce15db6897d956cfa25d7` |
| 153 | `theorem` | [range_snd](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/range-snd.md) | 858 | `result-track:6aa75e9dcd19d5fe0bacf30ebf411b211ef3a96c7aa9a36dd0a1cc29721c0616` |
| 154 | `theorem` | [prod_bot_sup_bot_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/prod-bot-sup-bot-prod.md) | 862 | `result-track:a89ae4e72d933eba0ccc644c117d04cfbbb6a097a0c5b68b39abbd261c007c90` |
| 155 | `def` | [subsemiringCongr](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringcongr.md) | 878 | `declaration-track:6d6e2e71d4e44a007aaf8efed7a77d6c42a2a2f2c0c68b5b490224850f54512d` |
| 156 | `def` | [ofLeftInverseS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ofleftinverses.md) | 885 | `declaration-track:5d3efae828fc0d212f9975b0f6217bd756c784fbf41fc38c0da5b6719709a926` |
| 157 | `theorem` | [ofLeftInverseS_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ofleftinverses-apply.md) | 896 | `result-track:b90b8bc229e29a11667ea175e3b1180e4e7db8596a39466f63f99e23edda90e2` |
| 158 | `theorem` | [ofLeftInverseS_symm_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ofleftinverses-symm-apply.md) | 901 | `result-track:26146cdd88a575c3262042a1bc95a8397a9503f72ae427fe90aa63a182dc10a6` |
| 159 | `def` | [subsemiringMap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringmap.md) | 907 | `declaration-track:c2737fa24356f9675613af7091b2df9634b07a838e257d115d8843054b372a02` |
| 160 | `theorem` | [subsemiringMap_apply_coe](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringmap-apply-coe.md) | 911 | `result-track:f87bf6682907eb8c945d5b3b3c06ad23662df8eabbf9397c762531c057356fd2` |
| 161 | `theorem` | [subsemiringMap_symm_apply_coe](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/subsemiringmap-symm-apply-coe.md) | 916 | `result-track:49a707a728bf1e01148247b1624a2ff15e49e69b3ab134c5078f75737566ac40` |
| 162 | `instance` | [smul](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/smul.md) | 945 | `declaration-track:0b83dd026f76340014d0eadd734a7afb60eba42dcb74a4260dc59724fe492ba9` |
| 163 | `theorem` | [smul_def](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/smul-def.md) | 948 | `result-track:5a60fb4c519b59170135c3cf8cd85fefeeaa34c1d561fdccc7b6d1d449894960` |
| 164 | `instance` | [smulCommClass_left](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/smulcommclass-left.md) | 951 | `declaration-track:a1cd75c5fba7d2caa6ceff0e51758550eefc0f0c0427aa1e1ab003bf95b04f4e` |
| 165 | `instance` | [smulCommClass_right](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/smulcommclass-right.md) | 955 | `declaration-track:04562692bf73edae10ec91f186bf010303d49005cce0748a8fe7c28035a45202` |
| 166 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 959 | `declaration-track:9ce5ae7c2a6945276fea6a4f7c62819ead93bf269d6a11acc4d6b3aac5141b72` |
| 167 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 963 | `declaration-track:77a630a9034ffc5ada9ada0ad401978b9135b204f51cb3a4e6a949dfaacf0a32` |
| 168 | `instance` | [isScalarTower](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/isscalartower.md) | 968 | `declaration-track:58b8236eb8f85ab6f1e04e145e71a62d6a616dfa9c375c161b24c4e1432684d2` |
| 169 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 973 | `declaration-track:2fede43a7850479f271ad1b167a05446d15f8e4d5e3893e3c7449f28727663b5` |
| 170 | `instance` | [faithfulSMul](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/faithfulsmul.md) | 977 | `declaration-track:12851edfc5c8876cbc799e9fc5d494464a872e94f13d3d069c5d3f26dc95c83a` |
| 171 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 980 | `declaration-track:edd977e6cab87712237e4db71b9422b89904b0f306a6a1c6e7459f6a440267dc` |
| 172 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 986 | `declaration-track:343f76b022cb9dcedbcb26d2bec983dfb5b31e77efd12cb470ad4833243c2f04` |
| 173 | `instance` | [mulAction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mulaction.md) | 994 | `declaration-track:6d9eec3e3bbd55f8fdf48cdf72bb36e5bb67c154e282c8b26a934df942d80977` |
| 174 | `instance` | [distribMulAction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/distribmulaction.md) | 998 | `declaration-track:9b1429e0e6aa8a65431609bc489b0e23d738f2d699d1dcd1468cefa9f09730be` |
| 175 | `instance` | [mulDistribMulAction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/muldistribmulaction.md) | 1003 | `declaration-track:fc2113799fbbc8e087d54f4973584da597ea1fb32aab09b461a048d387a3997c` |
| 176 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 1007 | `declaration-track:c5c2e6214242fc226b62ce65ce539e82c0cf2aebc02e0372782641090726a367` |
| 177 | `instance` | [mulActionWithZero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/mulactionwithzero.md) | 1013 | `declaration-track:ea0a57387e0430f3a9877c59fb25f86cfdad967c4f0a04e1fbd0e9f6eae9f6b6` |
| 178 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 1017 | `declaration-track:a4fd56a72635271a5cfefcde20d3d298d17d01c8866a1171eaaa7d26f246f60a` |
| 179 | `instance` | [module](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/module.md) | 1024 | `declaration-track:d0aa3aea1e9ae74091adf3773e9c349749852cd438f7a8e32088ce0ff954141a` |
| 180 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 1028 | `declaration-track:c8dd583bc4a7c25e88b637eecace51c98ce8c3c2d07feb5270ecc7bda321db3b` |
| 181 | `instance` | [center.smulCommClass_left](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/center-smulcommclass-left.md) | 1032 | `declaration-track:22e356bd16dc81a4b3c000da0fa92152e695001bf40737e64e2cbfbf5ce4bdc8` |
| 182 | `instance` | [center.smulCommClass_right](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/center-smulcommclass-right.md) | 1036 | `declaration-track:41be109434d010bcdd4f3b4d180947d0440bf6a7019216d5a3ba549ab01e4421` |
| 183 | `lemma` | [closure_le_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closure-le-centralizer-centralizer.md) | 1039 | `result-track:b17f0d729cc32ea55c79274f0189984e1ca5dff5d2a792f676fe983d4c6b824d` |
| 184 | `theorem` | [isMulCommutative_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/ismulcommutative-closure.md) | 1044 | `result-track:3aae800350646229afd8de8452f67e3dd75fc3b895c40a6c770d25e674ff071e` |
| 185 | `abbrev` | [closureCommSemiringOfComm](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/closurecommsemiringofcomm.md) | 1053 | `declaration-track:7bef2ffa245784ddbc156481543d63a068a9aae4d4675095ea90bd29c7341102` |
| 186 | `instance` | [instIsMulCommutative_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/instismulcommutative-closure.md) | 1058 | `declaration-track:124bb726bb5354cedca110e852317128c7961a0d78fef38210fb84ecadf02caf` |
| 187 | `theorem` | [map_comap_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-comap-eq.md) | 1068 | `result-track:829482af9c6cfef64681c52213cd47f6a8a76e4a72ab582f93543d71b554de3b` |
| 188 | `theorem` | [map_comap_eq_self](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-comap-eq-self.md) | 1071 | `result-track:a62e019f944fcc3f8de8b0b311bb295a854c228445ebc35e6a70f85eb1397bde` |
| 189 | `theorem` | [map_comap_eq_self_of_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/map-comap-eq-self-of-surjective.md) | 1075 | `result-track:7adf294b56028bd8eb5eb8528796b846798159cd6d79dc533f8f662f4acd06d8` |
| 190 | `theorem` | [comap_map_eq_self_of_injective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasicNamespacedPublic.lean/declarations/comap-map-eq-self-of-injective.md) | 1079 | `result-track:f6387d9cc31d4c0027d31c5e96639e21bbe8806ddc8992a88d63337b23e869db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61dcb6db33e0a4450f964206eee8330c3ce53cb790e5c1296591d47db4523109 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f471ad13e0ea22ca3d477986616c3b038537efd726393448fc1945e339cc0d8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f471ad13e0ea22ca3d477986616c3b038537efd726393448fc1945e339cc0d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
