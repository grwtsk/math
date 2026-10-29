# Verification target: Compacts Coe Sdiff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "245f2d0d1631a2d8047fb1e98ccd31a42d74d502",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compacts/Variant77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactsCoeSdiff.lean/index.md) · [Full source](../../../../GeneralTopology/CompactsCoeSdiff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `245f2d0d1631a2d8047fb1e98ccd31a42d74d502`.

Source path: `GRWTSK/Topology/GeneralTopology/Compacts/Variant77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compacts/Variant77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Closeds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.QuasiSeparated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Compacts](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/compacts.md) | 36 | `declaration-track:cd9499e6b251016465d8719631248f2e1f60bc83bc7c32bde6564a33dce7f9a3` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance.md) | 43 | `declaration-track:037c5e9c4a3b6d6be8a1b8358acc5d17c82083ff7a91535acf569905f13986c5` |
| 3 | `def` | [Simps.coe](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/simps-coe-source-edition-2.md) | 48 | `declaration-track:ad66ac02eee849f897f59c6cfdf1600aaaace67e5c7dddc0c7ff19e64aa6430d` |
| 4 | `theorem` | [isCompact](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/iscompact-source-edition-3.md) | 52 | `result-track:8d26582d446ccc0fa4eae9b57a63e4beec2a2a17030e28d82a8e697e0475ccdd` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-10.md) | 56 | `declaration-track:3ec22f81cd5256185df2b5fb55e6437ad102639d5519703754458654e4717e30` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-30.md) | 59 | `declaration-track:d7b1f8ff60f1dfdb71a99a4c3bde216060889d511092eca075994b014d91b5ff` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/ext.md) | 62 | `result-track:03f0d2be40b2a01746f2e0f8832ae9da016e595f2f2c767739c13a7cd886b2d1` |
| 8 | `theorem` | [coe_mk](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-mk-source-edition-2.md) | 67 | `result-track:517164814a8ef5f92d5dcedd8645fd366e30ba6118bad377737fdf805557d1df` |
| 9 | `theorem` | [carrier_eq_coe](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/carrier-eq-coe-source-edition-3.md) | 72 | `result-track:b3da56f888a3685614dc6dd5dc1aaf74c30e0dcfb45754ec779090756606afee` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-9.md) | 76 | `declaration-track:372983bd8e4f24e068977ec8e35167663a50a6e5f18767fd7bbb79e6a07576c3` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-26.md) | 79 | `declaration-track:9ed17b018b2cf0fd657cba557d29c0189b1cd77d850a350f588196be3b206f0a` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-12.md) | 82 | `declaration-track:4e59904019115b0113b76f120cf3ed868fe54831e326a085da6f17818555c8b7` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-34.md) | 85 | `declaration-track:ece5d9863dff67cc9cd6ec3e230235fefd6e7b7ef357093db99fb4ed517b16ce` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-24.md) | 88 | `declaration-track:9649de80b8f9f53534f43fe46f0dbab62d80a9c3e5a8b650c25e503826726cf8` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-28.md) | 91 | `declaration-track:b93887193e05295f1b6950219d1e60de6f8aa1aaf55e269ea30da72d036dfca2` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-13.md) | 94 | `declaration-track:59a79882b17bf7bab49fb526f58f0fc437e8e9778cc405c7d39ef3a7ed879a4c` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-6.md) | 97 | `declaration-track:29cd179078b6cf21e5e518d1529da9b86e20e8df5f9cc6efbf3f48abd4efb48c` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-16.md) | 101 | `declaration-track:6c50a69333987def18d540d7c70c1694e11d63837336e29ece1bcd02551a0e64` |
| 19 | `theorem` | [coe_sup](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-sup-source-edition-2.md) | 104 | `result-track:857fa9d3060b484c010412a455c68cd93fcee9ed85713c6348c8f1ac28ca7959` |
| 20 | `theorem` | [coe_inf](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-inf-source-edition-2.md) | 109 | `result-track:f225ee3bb50ce2e5f3f47d6db29aca1e12a1fdc86a577d11f7027ac6623d5a28` |
| 21 | `theorem` | [coe_top](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-top-source-edition-4.md) | 114 | `result-track:c9a527760eab7904dbb582e2ba8b2d3796a856b209996525be36136b30e0ca9a` |
| 22 | `theorem` | [coe_bot](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-bot.md) | 119 | `result-track:3a49b3550a9984378818df6bfc0535aa85c1999fcef454ce1a0cf681906679a2` |
| 23 | `theorem` | [coe_finset_sup](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-finset-sup.md) | 124 | `result-track:422a3dd919da7bc53d153ee3e8ac6f3d25adf66fd6332907df22596aed892cb8` |
| 24 | `def` | [map](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/map-source-edition-3.md) | 132 | `declaration-track:e8a41015bc90cbcc90ffd16ec70efd49883edfc0a527eb26253392b698517708` |
| 25 | `theorem` | [coe_map](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-map-source-edition-3.md) | 137 | `result-track:6423ae58855072b94c8113dece017aac4800ef8d9d8b164a826953e3612be1bd` |
| 26 | `theorem` | [map_id](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/map-id-source-edition-2.md) | 142 | `result-track:17b0832c3f3bf4f4f4a0065b8aeca4f0636d893064d67c3f37d2d952c980fd86` |
| 27 | `theorem` | [map_comp](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/map-comp.md) | 146 | `result-track:335c941a45f9de0aa31a8c37f74f94e85d5e6eacfdafb5c34ee1ca2e4aa668b2` |
| 28 | `def` | [equiv](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/equiv.md) | 153 | `declaration-track:c3f52a24a9d17e81bc664a8561ebed60c3743fcd41f4fd64f05e083efe8d0e85` |
| 29 | `theorem` | [equiv_refl](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/equiv-refl.md) | 165 | `result-track:2e296983937c57b4453272484a4727f949106a6a21962596d981ec113ef7a393` |
| 30 | `theorem` | [equiv_trans](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/equiv-trans.md) | 170 | `result-track:4ba3e14325ac2be7358d1b39405c97cb6bb39f8af0242507601f13169ab0a9af` |
| 31 | `theorem` | [equiv_symm](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/equiv-symm.md) | 177 | `result-track:0887487f517929a72b9e73b25cf29e55a4a9396d83ff9f466a0990020ed6452b` |
| 32 | `theorem` | [coe_equiv_apply_eq_preimage](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-equiv-apply-eq-preimage.md) | 182 | `result-track:8308ab714405972fbeb19325f22dd13efaca49e5a54803f017aaa44008b87d59` |
| 33 | `def` | [prod](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/prod-source-edition-2.md) | 189 | `declaration-track:5317997f5bf4f3b6593358a274519eebdd933c2eb96f1d9799b1c5b0e4c5c025` |
| 34 | `theorem` | [coe_prod](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-prod.md) | 195 | `result-track:a2116bef2a45f6c2a3e109a49a7a4b34c559c9a277e523ec414c015a7721a4e9` |
| 35 | `structure` | [NonemptyCompacts](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/nonemptycompacts.md) | 207 | `declaration-track:bff1751e13f22c85c416ca2946859744865485c22ae25f8b8475775827b79f38` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-8.md) | 213 | `declaration-track:2b769f1b7fbedb601f59a77f3914f412a711a906fe9e915c0d624d59fccf7c27` |
| 37 | `def` | [Simps.coe](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/simps-coe-source-edition-3.md) | 221 | `declaration-track:cb1124ce936a1661c42aff434754af1a6943f8f0212c311d469a13d8613cfec7` |
| 38 | `theorem` | [isCompact](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/iscompact-source-edition-4.md) | 225 | `result-track:9b577cb4425668187ef9277d6ad2efa9a129541276813c9de9a4bc83db0ca0e3` |
| 39 | `theorem` | [nonempty](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/nonempty.md) | 229 | `result-track:7f3652c8af790329e8ab7d163226ae2a76c20553addba851785ae950e1fc7762` |
| 40 | `def` | [toCloseds](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/tocloseds.md) | 234 | `declaration-track:4941262f7a1f0ee9c589c884a823d9736d1db98588a912cb4e345ff7f14633d9` |
| 41 | `theorem` | [ext](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/ext-source-edition-4.md) | 239 | `result-track:db2cf9f261fa0b5adca9590a4cfb015d947741eb4880fcca13245e31d5b00a0f` |
| 42 | `theorem` | [coe_mk](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-mk-source-edition-4.md) | 244 | `result-track:a24b77ba96acb50ed644933092a94cbbe5a5a80f4a1c46b3efa62a2c2c38f8e1` |
| 43 | `theorem` | [carrier_eq_coe](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/carrier-eq-coe-source-edition-2.md) | 249 | `result-track:9cf36b73141ecbee1d12d9e55d4af11e0e22257108300702b642abd90ff0ea19` |
| 44 | `theorem` | [coe_toCompacts](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-tocompacts.md) | 254 | `result-track:3ab00f353373d60c8d1f4bbbba0a346ab5c8fa780346b0e022bc09e6bf691657` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-38.md) | 256 | `declaration-track:fd4990821f6b2ff361076577baba95c9efb901e8619586d7eda97cdf961415a1` |
| 46 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-3.md) | 259 | `declaration-track:13e2ed01119e4b1fa03ea9d5b4a7a04bbf73c297c92f37cfe6c91fc6b676cb5f` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-32.md) | 262 | `declaration-track:e313422c3b8175987e277d8c052fa5057f551f99f5f7fcda53e4d8e208c5b732` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-37.md) | 265 | `declaration-track:fb3d77155af0300f757131aa5f799f3b35b0397ccd82b2dd3f4c26cd650400e0` |
| 49 | `theorem` | [coe_sup](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-sup-source-edition-3.md) | 269 | `result-track:afbcd0587ff1bdda458e0753e9aa1baefb08729f76c3647c0350fb50f13cf892` |
| 50 | `theorem` | [coe_top](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-top-source-edition-3.md) | 274 | `result-track:c8033293c4a58100b4a22a5d7e4a175236c60afbcec9f66c57c88b6202972f14` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-33.md) | 280 | `declaration-track:e41ef1d0963763ba4490420db4aab318512b618821783fa56d33a8f677e795fa` |
| 52 | `instance` | [toCompactSpace](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/tocompactspace.md) | 285 | `declaration-track:12d10869fca3974ddfae577c1542bdffc0c092142ee26f3ab066cc1ee60e3d74` |
| 53 | `instance` | [toNonempty](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/tononempty.md) | 289 | `declaration-track:d01d5cb7edb820154c412911224e8f77929ea0208910225bf8b6526ff352f6d5` |
| 54 | `def` | [prod](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/prod-source-edition-4.md) | 295 | `declaration-track:e60346d34cd1335df8c620eb99cb949333417fe8a8648fc5cdb817e7d3cdc31b` |
| 55 | `theorem` | [coe_prod](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-prod-source-edition-3.md) | 300 | `result-track:ee4079de46b83731d9044c950ae09c1944609a97ae593f27ff977ebce98f1b71` |
| 56 | `structure` | [PositiveCompacts](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/positivecompacts.md) | 311 | `declaration-track:2f77a342119e6ccf42917d15387f5d59ce48ca131754a07fcb2f5519850d37ab` |
| 57 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-19.md) | 317 | `declaration-track:743a78667fd70bece56876e58cead82d072f352a3ffadeae07f447a4d48ba5da` |
| 58 | `def` | [Simps.coe](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/simps-coe.md) | 325 | `declaration-track:71f378c22646e707cb7a98d3f28c7dbaed1d3e04645a4da3e17028acc726ebf7` |
| 59 | `theorem` | [isCompact](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/iscompact.md) | 329 | `result-track:03ba9c2617e5c0da0fb5a783a6355c04617f1bae914723ffa00b3ec5530fe14a` |
| 60 | `theorem` | [interior_nonempty](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/interior-nonempty.md) | 333 | `result-track:04a735c075d64c105812770a2048342e6d4380fcd0678b9c426a948f14f2b43a` |
| 61 | `theorem` | [nonempty](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/nonempty-source-edition-3.md) | 337 | `result-track:da06b1e2076220d9d6ce40f2f6360b9f1e95b59d0480f21396603eedd08fd8de` |
| 62 | `def` | [toNonemptyCompacts](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/tononemptycompacts.md) | 342 | `declaration-track:7eb5510f7d70e007ea4a5c6e6ce0dea4b948cacf37805513217b579a571af357` |
| 63 | `theorem` | [ext](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/ext-source-edition-2.md) | 347 | `result-track:134fadcd609827473f3168d3d3f9e55b61595af6b02a10b17499fe3ae899c418` |
| 64 | `theorem` | [coe_mk](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-mk.md) | 352 | `result-track:158b84f9cdae0450ca5a1c13c484dbd9666eca5ceaeef6a2e746e43fba5914aa` |
| 65 | `theorem` | [carrier_eq_coe](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/carrier-eq-coe.md) | 357 | `result-track:0964934c524a3e86b396d7a75e2402e936d17bfc237a2f7db7c9ca3b5b0932eb` |
| 66 | `theorem` | [coe_toCompacts](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-tocompacts-source-edition-2.md) | 362 | `result-track:f3c31244226e19f349b3c72d30cca86adb2ee0d2614c8bb52b30e7a616340f34` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-36.md) | 365 | `declaration-track:fad3c23f7f5965b8134532a8c0cf021bb245d3a06ca3bcba19bac3c6a9f8f68a` |
| 68 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-31.md) | 370 | `declaration-track:de4adfb00d15a4c793949a53ec1b5e000bd6598e2d05004f584aaacbbe19a2fe` |
| 69 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-14.md) | 373 | `declaration-track:5b6be5439a25211c66729c6cbf31e2ea8db90434c52cc2f80580cd4f132f48e4` |
| 70 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-21.md) | 376 | `declaration-track:8b34f05024e635f959ee3de1183bce1d019c2a4a7990ac22ec32a5aab896ca83` |
| 71 | `theorem` | [coe_sup](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-sup.md) | 380 | `result-track:5f581816258e35cc1083f6a4a24ef99681201050432d3694dd427052a2a41f21` |
| 72 | `theorem` | [coe_top](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-top.md) | 385 | `result-track:7f591710088628ddf9a10dc24295a2734b302b0138e8bbb6bb1bb6cc0b2855d0` |
| 73 | `def` | [map](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/map-source-edition-2.md) | 390 | `declaration-track:bfac8365553fdc68c9ff3bc23c5304fe6556dc5d033d4b792c1e5f80ba4044c6` |
| 74 | `theorem` | [coe_map](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-map-source-edition-2.md) | 398 | `result-track:59a63bd3100ba602982c8e73182d1daa8f96a3292275461cd4d388eb6124bd08` |
| 75 | `theorem` | [map_id](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/map-id-source-edition-3.md) | 404 | `result-track:a0c0e2197195ed6756e53b5745a4c65a7e36763fc40d12720361b2b5334c570b` |
| 76 | `theorem` | [map_comp](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/map-comp-source-edition-2.md) | 408 | `result-track:4f516cce312a5439b26effff73df17d8a95dc8a84863e5bc29d216bab82e343d` |
| 77 | `theorem` | [_root_.exists_positiveCompacts_subset](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/root-exists-positivecompacts-subset.md) | 414 | `result-track:15d3e8383a366eeb7d699719c726e4bb05c5a544601f5775f2527b584747be15` |
| 78 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-4.md) | 421 | `declaration-track:14ae9a56ddf544085781170c93d96bb37fe9020d47cd97608e9157edf06a2094` |
| 79 | `instance` | [nonempty'](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/nonempty-source-edition-2.md) | 425 | `declaration-track:9a4d8faf8baf720aa6c401ef668721fd584ce70373efd5a3b5b63c6d5cc7c019` |
| 80 | `def` | [prod](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/prod.md) | 431 | `declaration-track:2558db770f578a2d3dd33e7a94e170a07247a9a63a56d8a83ab0c320b29f826c` |
| 81 | `theorem` | [coe_prod](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-prod-source-edition-4.md) | 440 | `result-track:f8d217197322d65d943c9c089fa3ff693ef1e5d08f0f71cd8909fcfa3d5c06a0` |
| 82 | `structure` | [CompactOpens](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/compactopens.md) | 451 | `declaration-track:c75b44ddf4b0b4515e30f7814fcf12155bad1bb6ff5bd44c46509c6690f9c143` |
| 83 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-23.md) | 457 | `declaration-track:95c41790f4b2c574dd92cc31b9a04796077beedb26c39a0c9a9f20e83d4a764f` |
| 84 | `def` | [Simps.coe](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/simps-coe-source-edition-4.md) | 465 | `declaration-track:cd458397c870c593fb72dcdf952d66277a25049c4ae25f3f3fd7842953141218` |
| 85 | `theorem` | [isCompact](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/iscompact-source-edition-2.md) | 469 | `result-track:31d8c33cac11afd71463d9db0f6b0b94eefb5e0d30ac8f7535770eca485baa95` |
| 86 | `theorem` | [isOpen](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/isopen.md) | 473 | `result-track:6365628e55640a81a49ed2bd0d1acee7354f761f04a9ac539247a474540f3071` |
| 87 | `def` | [toOpens](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/toopens.md) | 479 | `declaration-track:f247ccfac88257c88d203945ba88ddd4c8f879cb240c789b7207303468f005ff` |
| 88 | `def` | [toClopens](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/toclopens.md) | 484 | `declaration-track:882c35b283d3ae894fba7e2ba7204b56cde5805a4718607e180707b9f420ec51` |
| 89 | `theorem` | [ext](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/ext-source-edition-3.md) | 489 | `result-track:2cc10b8e5c226f27d8e6104aa99100d381a71785c399c04064031629f1ab6717` |
| 90 | `theorem` | [coe_mk](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-mk-source-edition-3.md) | 494 | `result-track:7a51552e71080eb5354007c44744d4329b5938540728db0d9920a611f4e0277c` |
| 91 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-7.md) | 498 | `declaration-track:2a05bae7c7e367d9a2ae6d979f35d429e5c0aad0b693fcce96831b34c5cb45ec` |
| 92 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-35.md) | 501 | `declaration-track:f1179dbab0f812f251cbdf07273196889b5720b10d96074e06c258b3b04f4842` |
| 93 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-20.md) | 507 | `declaration-track:752db395bdc8647560acac4febfcd1f29a9bbb9e757c5217d4ada9012319c672` |
| 94 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-2.md) | 510 | `declaration-track:11d633f99866d56e8558c90d73447e023b42ad55def4e50523d7bed192cfec77` |
| 95 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-11.md) | 513 | `declaration-track:49fac13dad74723a5999cd16b3a3c8b8fdceaccd8553bd28ee3401b940b035ae` |
| 96 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-17.md) | 516 | `declaration-track:6e9024bfde1368e83fd497ef62e090c453021e39ccf29ca66f963bf78fd111e9` |
| 97 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-25.md) | 519 | `declaration-track:988dd099b1540942ca71aa1c792fd8c2008dd9bc0a0d96f3d54fea73deab807b` |
| 98 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-18.md) | 522 | `declaration-track:724076187873aa64ba6efa7732540b1d63eb948a4d28de4b8e55845caf879b2e` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-29.md) | 525 | `declaration-track:bd78ba1702945a248cd64e53679cc2724fc1b69e819fe5e1a0546e58f92e6ec0` |
| 100 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-5.md) | 528 | `declaration-track:16756ebaf0587bc9ad3a85aa63e95c065b9a45e2f60bf3b556e7b3e9d58d5dbe` |
| 101 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-15.md) | 532 | `declaration-track:5e88ed7c3d52ca1bf19c851d984eae317466cbf7d7a6c0bc9c2d97217aac9021` |
| 102 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-27.md) | 535 | `declaration-track:a9e6ca084bfcdb213d32ce86d9586372adbe06322dcc21e5389f8c71d5e853e9` |
| 103 | `theorem` | [coe_sup](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-sup-source-edition-4.md) | 540 | `result-track:d6178d1fe14700d44e07521d5e988224459f082b84ef3a08f1c7cf8a322a636f` |
| 104 | `theorem` | [coe_inf](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-inf.md) | 545 | `result-track:3cc6f183aa07704fb4839abf484369395c4f98f958dedbcbfed6b16712fe4279` |
| 105 | `theorem` | [coe_top](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-top-source-edition-2.md) | 550 | `result-track:a0aa3045ddac07d2ba2dfa69982ee47beeca81009e09bb037d86db474760358a` |
| 106 | `theorem` | [coe_bot](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-bot-source-edition-2.md) | 555 | `result-track:768fcd6a4a04cab9d38a4733f7c1fc1990323f61eacaa1326066877629682a04` |
| 107 | `theorem` | [coe_sdiff](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-sdiff.md) | 560 | `result-track:af7baefdb837bc616a5494909f9247fea2152f9b12ea28c3c87ed7c711d6bc97` |
| 108 | `theorem` | [coe_compl](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-compl.md) | 565 | `result-track:48974e87ab46f233416b21fe5639d096bb92c50e40a6cdca02f9e6ae9ff6506f` |
| 109 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/instance-source-edition-22.md) | 569 | `declaration-track:8fe78ef13777d38731f9ceb099017e3a69addbb71db03f8220983f663aa48c71` |
| 110 | `def` | [map](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/map.md) | 574 | `declaration-track:7156efafe3a9b92f662276f59abda2746fa68a04ef25ae6250b640edeb6f87fa` |
| 111 | `theorem` | [coe_map](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-map.md) | 579 | `result-track:490b4fc75e27725cc109ba1d583641fc3d2c504b056f9eac119f3362f202d1c0` |
| 112 | `theorem` | [map_id](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/map-id.md) | 585 | `result-track:046605d062bacc724092c44c5b7121c3f206541aba8dd8904631635790d0b348` |
| 113 | `theorem` | [map_comp](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/map-comp-source-edition-3.md) | 589 | `result-track:d96a51adf4b5f5aea24016f6c886f536d5dc9813ffb5d6004fb195d2522d4c9f` |
| 114 | `def` | [prod](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/prod-source-edition-3.md) | 597 | `declaration-track:b984774a5860ee88ca4e4fdd2b29df44531bd4fb8182db3df67e7391a7d33428` |
| 115 | `theorem` | [coe_prod](../../../../GeneralTopology/CompactsCoeSdiff.lean/declarations/coe-prod-source-edition-2.md) | 602 | `result-track:c0e7548f66ab154266f3e85075490874aad3ac4b6a5be0888f4f99946afa85c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21220b77b60e0fe5259dec803a2f7702ae45271805d225576c1d190362e34fa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Compacts/Variant77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Compacts/Variant77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
