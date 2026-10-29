# Verification target: Attach Public Attach With Cons

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3721b0623eae725fe5b43691e22942a10e349c97",
  "lexical_observation_count": 130,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/index.md) · [Full source](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3721b0623eae725fe5b43691e22942a10e349c97`.

Source path: `GRWTSK/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Count` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Subtype.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap.md) | 29 | `declaration-track:cde8761926dd1359c5213028c2629351e49b03050ba241193fd62843c4f5f288` |
| 2 | `def` | [attachWithImpl](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwithimpl.md) | 37 | `declaration-track:06f97216de520c04724e7dd6cfeac6ad5436c270f256b64944c1b49a2466f885` |
| 3 | `def` | [attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith.md) | 46 | `declaration-track:f20082a04d770846280a708f5df7b6be99c20faa2bfeb9c7c7e5a562e713031b` |
| 4 | `def` | [attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach.md) | 60 | `declaration-track:1a5464f4122e219ab2b4934b0cf59e8f058684b2ff84530153304081172470a9` |
| 5 | `def` | [pmapImpl](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmapimpl.md) | 63 | `declaration-track:7ecd11bd0d834de2d95ff1321198637d1bcce79fca7d8375e9beae77d706cd4d` |
| 6 | `theorem` | [pmap_eq_pmapImpl](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-eq-pmapimpl.md) | 66 | `result-track:f6342cb86a5b7c841374f5d9f68a713bfffef5997723b38710b6e16540664683` |
| 7 | `theorem` | [pmap_nil](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-nil.md) | 74 | `result-track:b3632f3a9ecb0dc464350c0f0d19224457de97efb617993f0602bae46b6040c5` |
| 8 | `theorem` | [pmap_cons](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-cons.md) | 76 | `result-track:46703b2bf3d5b56a527688c7a64df1c31c988903aec96a83753f60a80de89f5a` |
| 9 | `theorem` | [attach_nil](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-nil.md) | 79 | `result-track:623e20c14645cd5e1b714974af95515bccaefb4a88239023dd2467358775a171` |
| 10 | `theorem` | [attachWith_nil](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-nil.md) | 81 | `result-track:848f40b63ee0151b20f5b84f04b9215dbe52f1aa338c912c0bfdb81045cb9a95` |
| 11 | `theorem` | [pmap_eq_map](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-eq-map.md) | 84 | `result-track:9aae037a6d13465d153f33fde417e7875c86e42d2a8c40385a2490bb43dff606` |
| 12 | `theorem` | [pmap_congr_left](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-congr-left.md) | 90 | `result-track:3fb3febc49733c8b1513e7fa1413be7e6c8d649a2d3fec47cbcf1f495a2d5fe3` |
| 13 | `theorem` | [map_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/map-pmap.md) | 97 | `result-track:a8ef39d96df124d5fafc06801fd16f89e5b2b9150a98752e90429efc93cb42b3` |
| 14 | `theorem` | [pmap_map](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-map.md) | 103 | `result-track:faa5bc6fdb0164efe8cb6ef6a307590a92486752ab88c6d4f9784716d5fca54d` |
| 15 | `theorem` | [attach_congr](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-congr.md) | 109 | `result-track:e7f44845f4eeaf1555fa6b873fe8c33fc1774ba6d36a9043a21fb80c5ff88f79` |
| 16 | `theorem` | [attachWith_congr](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-congr.md) | 114 | `result-track:04c8c729fa1e39aafcc7a85c50c454b2bae6e6cc0ecda8a2d38be878114ec758` |
| 17 | `theorem` | [attach_cons](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-cons.md) | 119 | `result-track:a36469fb910b25348508e1c00567465942f6ed65667d21347a37391fc28f1562` |
| 18 | `theorem` | [attachWith_cons](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-cons.md) | 128 | `result-track:462016f0c90e938474187e33b767dc11d2e2cfe674cddf60494fd0d5e33a7f7c` |
| 19 | `theorem` | [pmap_eq_map_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-eq-map-attach.md) | 133 | `result-track:d1d4b7c9c241b25d74fd2bac0158fa3415949c1f214ca544c648bb2a531b5cd0` |
| 20 | `theorem` | [attachWith_eq_map_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-eq-map-attach.md) | 137 | `result-track:352507be1540cf8a981e99072613ec8dd59272f42bcd519d3d852a4f16c0f850` |
| 21 | `theorem` | [pmap_eq_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-eq-attachwith.md) | 142 | `result-track:f677420942cf3f8593b62dba96e717dddcb5e2551bc5fe9747a33f7fdd94f420` |
| 22 | `theorem` | [attach_map_val](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-map-val.md) | 149 | `result-track:003e84e4c7e070cbd61d2ea1e3a98445afe6dd6ebbf45057f7cdd9fd106c1e93` |
| 23 | `theorem` | [attach_map_subtype_val](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-map-subtype-val.md) | 154 | `result-track:82b8c60ab31561222a08652b8aec712ea05c29185bc698fd296b9e0e8b206bda` |
| 24 | `theorem` | [attachWith_map_val](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-map-val.md) | 157 | `result-track:ce5e13eceb0349ce33900a79a0cdbf17c45a504306c5cc5ae5d207de02c583b0` |
| 25 | `theorem` | [attachWith_map_subtype_val](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-map-subtype-val.md) | 161 | `result-track:19fdbdcfd758c5033346d5e64dfe7372fb5b1e94f5255229c54ec89f481d08c7` |
| 26 | `theorem` | [mem_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/mem-attach.md) | 166 | `result-track:f1774a490e37f519ed1735899bbe69b9623fc9182457f74e2a91c7d4cd9f84be` |
| 27 | `theorem` | [mem_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/mem-attachwith.md) | 173 | `result-track:ada9bbb25ca770dc4fcb5f24a97bde14ea86f2f9fb3c147bb6b4ec913ff8d11a` |
| 28 | `theorem` | [mem_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/mem-pmap.md) | 186 | `result-track:a373df90e547365c605fa7cf0de37e8010bdbdf2dc3ba539ac3ec1a21296611a` |
| 29 | `theorem` | [mem_pmap_of_mem](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/mem-pmap-of-mem.md) | 190 | `result-track:06507a8dc999162827d49887dd76a9d3f57da52ec83f9b0235418233031568d1` |
| 30 | `theorem` | [length_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/length-pmap.md) | 198 | `result-track:8a0e8f2ac5c6a1b33e24c9bfa89037be7fff524e536f722d6c0aebd910a54842` |
| 31 | `theorem` | [length_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/length-attach.md) | 204 | `result-track:a6847953077ea2d6eecdb521a36db93bd231ae87f41e2400d0ff656dcffa2e1e` |
| 32 | `theorem` | [length_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/length-attachwith.md) | 208 | `result-track:ce7f0c5d66b1b13370ed1074361daccd59bb6fccff2d9efb124e6389666c2459` |
| 33 | `theorem` | [pmap_eq_nil_iff](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-eq-nil-iff.md) | 212 | `result-track:942089d84b464b7837cc598db97e70d099978e5a0068aedac2629582d22488f7` |
| 34 | `theorem` | [pmap_ne_nil_iff](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-ne-nil-iff.md) | 215 | `result-track:70b4d97eff37facc3696695a398f2c71bfda742583157b04e2fa65e7fe2af33b` |
| 35 | `theorem` | [pmap_eq_self](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-eq-self.md) | 219 | `result-track:37a6846a3226a87c336b226af853e1133c26776496bd92597f0b425bf2daa71c` |
| 36 | `theorem` | [attach_eq_nil_iff](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-eq-nil-iff.md) | 227 | `result-track:1ad2237b58ad6063f3869430268ed030e6c71099c8ba75e6e6da10728ea74a13` |
| 37 | `theorem` | [attach_ne_nil_iff](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-ne-nil-iff.md) | 230 | `result-track:a402ea532b20fa07ead96ee16c71ebdc4e4477cec22d9d7091cacf4805d70f4c` |
| 38 | `theorem` | [attachWith_eq_nil_iff](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-eq-nil-iff.md) | 234 | `result-track:6d0b4ec36b680e6a669ec695da5d447578399a496421346ece8f1aaadc9eca4f` |
| 39 | `theorem` | [attachWith_ne_nil_iff](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-ne-nil-iff.md) | 238 | `result-track:d96943bbb4470e7ded683ac230d363a6e0c3344426367cb5129223d64f62223f` |
| 40 | `theorem` | [getElem?_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getelem-pmap-source-edition-2.md) | 243 | `result-track:818d2e7e1402d6dc10607d5c8107ca109c7873b144b9cd73f5bff2a991bd04cc` |
| 41 | `theorem` | [getElem_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getelem-pmap.md) | 254 | `result-track:6d5d158ea0893eb726c700c5931472c9db68d32714ab856611cebedeeea47078` |
| 42 | `theorem` | [getElem?_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getelem-attachwith.md) | 269 | `result-track:7196d0ce5f58ddd2839bbc03325d4d2917d915359a14d99c854611b1e97c4e47` |
| 43 | `theorem` | [getElem?_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getelem-attach-source-edition-2.md) | 274 | `result-track:dd25871f29f34d8cdc6cb80a4548c1a32bf33387fcdd2a3bae569bd021c446c3` |
| 44 | `theorem` | [getElem_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getelem-attachwith-source-edition-2.md) | 279 | `result-track:d8f42b7340de2792e888ec85e4cc305edff9868902ecb10457de9a6c748f9495` |
| 45 | `theorem` | [getElem_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getelem-attach.md) | 285 | `result-track:9290c4a7edb1aa3409561b3b356e2eca0c136872c913d3951fb676cbc8b99952` |
| 46 | `theorem` | [pmap_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-attach.md) | 289 | `result-track:bba804584d796e5741a3e3245d729b852bb59ba2d4700f58f8811de22dc1a2d3` |
| 47 | `theorem` | [pmap_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-attachwith.md) | 295 | `result-track:6abc7fdf0e3d233152bd36f83ddfcd1f021190b4d5d66e1b13b54dcc7304adf0` |
| 48 | `theorem` | [head?_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/head-pmap-source-edition-2.md) | 301 | `result-track:ee26a3a7c678d0b45add1cb3001410dce49902c8c9052f51a49096a1161f56b5` |
| 49 | `theorem` | [head_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/head-pmap.md) | 310 | `result-track:ac24e9a3dabaea75635da7080e409c4bc15110c8bc78b7a338e0695be7f548b2` |
| 50 | `theorem` | [head?_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/head-attachwith.md) | 317 | `result-track:049c441727609090f0c1f4a2563c5b59ae513887feab6d5af47e051afea61d4d` |
| 51 | `theorem` | [head_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/head-attachwith-source-edition-2.md) | 322 | `result-track:c13f0807ad5893b7f92fe123c6066b9bfb050476a82885f72f71e3be793bdbbd` |
| 52 | `theorem` | [head?_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/head-attach-source-edition-2.md) | 329 | `result-track:ca7150d8b4fdf6fa5a9fe091db23d87dcdd131d298e9b82e82566ab55bd4691c` |
| 53 | `theorem` | [head_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/head-attach.md) | 333 | `result-track:85ad4cf21a2e8821e10bd9a625e00cd2ffae0101244729ab4836c99f54e40c09` |
| 54 | `theorem` | [tail_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/tail-pmap.md) | 339 | `result-track:bf90c67f672c665ee9f8a0a6bfd9521f59780e0eb4dc301b41924f94dcac21ae` |
| 55 | `theorem` | [tail_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/tail-attachwith.md) | 344 | `result-track:c8bfdeab6869b10fec0ef7eae556d55f26f91bb53c56d4708ea6fb135dad0e05` |
| 56 | `theorem` | [tail_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/tail-attach.md) | 349 | `result-track:72853b632417fec496f999f95f9b952dc8f1f0f8373bd57f34d93e3a46e640ef` |
| 57 | `theorem` | [foldl_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldl-pmap.md) | 353 | `result-track:6302b4c028eb6b89a8a4c40edfa6fadc3c73fa36b8fd428e19d7ebc2bbbe790a` |
| 58 | `theorem` | [foldr_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldr-pmap.md) | 358 | `result-track:9d0cf1c6949f8ff6b2c9991865f5eac3d6f9af7df766dc8e7bcaa7fe63ef445d` |
| 59 | `theorem` | [foldl_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldl-attachwith.md) | 363 | `result-track:e5dc5963feefaba555d8fcc228a257789b2e2f0fa44a845009834265fd95dd3a` |
| 60 | `theorem` | [foldr_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldr-attachwith.md) | 370 | `result-track:261dd9fbfb6b48855d0ac656232c073e5b5f208f6c434c643fa5d3ca08475d28` |
| 61 | `theorem` | [foldl_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldl-attach.md) | 387 | `result-track:39aeaf2d7d827f4c5703bc7f71748eed69d3540b271e223ab7d163dd5b574437` |
| 62 | `theorem` | [foldr_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldr-attach.md) | 403 | `result-track:92bfeef584f1dd3d697dd7bd2c2e8ff363318daae4ac341175e735390729dbad` |
| 63 | `theorem` | [attach_map](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-map.md) | 409 | `result-track:c8fb96c0607c420c2b7b27e3253129a70288390fee90d7aa17dac5fa0d9f9fed` |
| 64 | `theorem` | [attachWith_map](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-map.md) | 413 | `result-track:61e6625a780dc25c78b91082321a83d637f6a620c9f7d845be4c7a82f71f3841` |
| 65 | `theorem` | [map_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/map-attachwith.md) | 418 | `result-track:2ae9e4cc2c0e6f86b6a053a8a73badccf566e5e210e0e75598670eb9348a78d7` |
| 66 | `theorem` | [map_attachWith_eq_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/map-attachwith-eq-pmap.md) | 423 | `result-track:4afa3ccc42b72982d3ea8d4acfc1fa5e20b8668679abd9423220b8cad271f744` |
| 67 | `theorem` | [map_attach_eq_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/map-attach-eq-pmap.md) | 435 | `result-track:c84c534d92b1bf1704ecbf2dd420c4c16c616c369e20689f30581de3db403d5a` |
| 68 | `theorem` | [attach_filterMap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-filtermap.md) | 444 | `result-track:28aa9d9203cc972258ea2dcfb9f24c68a936c4412e989a8e0eda61312aea47fb` |
| 69 | `theorem` | [attach_filter](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-filter.md) | 474 | `result-track:07fa6d53b323804286f49aa38e39899c87aaf049f0a04da584e931c77fc20758` |
| 70 | `theorem` | [filterMap_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/filtermap-attachwith.md) | 486 | `result-track:889bf8005aa7373ac9b0d636d4815a4487a274dac811673e767e9a465894f1a1` |
| 71 | `theorem` | [filter_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/filter-attachwith.md) | 495 | `result-track:37906652b6921fb837809791ad53cc8af8548cdc0d6565f4136f3d15b4658ec7` |
| 72 | `theorem` | [pmap_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-pmap.md) | 504 | `result-track:ac78f4e177eca42a305d4461c752526d01d86a9107444e5d1e38048dffccc82b` |
| 73 | `theorem` | [pmap_append](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-append.md) | 510 | `result-track:8bb899e99cacf2e15f71c0c8a0e7c9129f9b757805490e0ca255fc9708623771` |
| 74 | `theorem` | [pmap_append'](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-append-source-edition-2.md) | 521 | `result-track:d4b701e8de46719e97e45ed3ae7a55c99ee44c7198e00a4f772518fb169825ae` |
| 75 | `theorem` | [attach_append](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-append.md) | 527 | `result-track:949f7bf3b9984081e504d23d502f8085b43fdbfc0fda355e920028bf9b50c89d` |
| 76 | `theorem` | [attachWith_append](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-append.md) | 534 | `result-track:331ae7a41d18e5f73fdedbffc6776189665beab5aec8c20843e3a233af2ce4d3` |
| 77 | `theorem` | [pmap_reverse](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/pmap-reverse.md) | 540 | `result-track:92c0c734ebaf7ed027985263a3c748e854a80aad57d1eb4c6afca57da44c160c` |
| 78 | `theorem` | [reverse_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/reverse-pmap.md) | 545 | `result-track:e21da0f9df24544616bcb32fc798dc0c8be57e6750cc000c02623dc2e6c97f13` |
| 79 | `theorem` | [attachWith_reverse](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attachwith-reverse.md) | 550 | `result-track:cfefb1ac1ea4f05ad1de9575cb7531e3df4c0aa0bc49c0b4f13b6dd9a44f8e8d` |
| 80 | `theorem` | [reverse_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/reverse-attachwith.md) | 556 | `result-track:dbe915befb44c6708431fcd2d835ab2fbaca70e40fdf19942632223c2e245172` |
| 81 | `theorem` | [attach_reverse](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/attach-reverse.md) | 561 | `result-track:9815638cdb9f619f89f4bc942f21884ac500a53f193bcae7c5d0f56440bcb359` |
| 82 | `theorem` | [reverse_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/reverse-attach.md) | 568 | `result-track:f6e5080875ee58093fa0fd7d17ef20d6adb328ce267238c6b82b7c667c88d73f` |
| 83 | `theorem` | [getLast?_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getlast-pmap.md) | 575 | `result-track:870dd6327f613facf46947905ee61bf07979004ddd29ca98cdfe644d1418fc09` |
| 84 | `theorem` | [getLast_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getlast-pmap-source-edition-2.md) | 583 | `result-track:8f47f6049b5449e98b734524a033af9778e7635693c87d76e4048f239985825a` |
| 85 | `theorem` | [getLast?_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getlast-attachwith.md) | 589 | `result-track:32f47bedb460528a1754a1ca05370eebbc9438b049fa6e1eea79fade1b662cf8` |
| 86 | `theorem` | [getLast_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getlast-attachwith-source-edition-2.md) | 595 | `result-track:fb515407fa0daf3c4a030818d161e3e0bca14f3fffe7a33d9889015332c889ff` |
| 87 | `theorem` | [getLast?_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getlast-attach.md) | 601 | `result-track:94fb02a018057397909673e21a21812c19a47dfd5582b31fb9f419ba5150707a` |
| 88 | `theorem` | [getLast_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getlast-attach-source-edition-2.md) | 607 | `result-track:b801883d19fb277854f784188a3bf8163a7642d6b4a70f7c868e2c8b4a509f7a` |
| 89 | `theorem` | [countP_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/countp-attach.md) | 612 | `result-track:f8a83b54bddfc35c97b2d7c7067cf1af4095b66dfc448cef7879819ff4123f9a` |
| 90 | `theorem` | [countP_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/countp-attachwith.md) | 617 | `result-track:655fb090034761b90504ef868a1e6d7a22da0902409499d12aa04792ecabbe7f` |
| 91 | `theorem` | [count_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/count-attach.md) | 622 | `result-track:09aa9df8c951196fdd155a417dda661aaec2ff0ed152df9c72aa65a4e929eb6f` |
| 92 | `theorem` | [count_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/count-attachwith.md) | 627 | `result-track:96cb48e035d3d508e6c40f165397cab2c56dccb80630915cafa4f3546b82117d` |
| 93 | `theorem` | [countP_pmap](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/countp-pmap.md) | 631 | `result-track:1237abba353a6b61b0df3677100c13b819ae8c2fbec0df96bc70f1ba4cffd9c0` |
| 94 | `def` | [unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach.md) | 663 | `declaration-track:ad07a4f3e28a319aa3935bb20503b5d3a74a0a7d65b2c51aa4f78ed3738e83e4` |
| 95 | `theorem` | [unattach_nil](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach-nil.md) | 665 | `result-track:f160a0daf762025ac2759894a4aaf6ea2a4008580b4897d169ed46c10f01c79d` |
| 96 | `theorem` | [unattach_cons](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach-cons.md) | 666 | `result-track:242dab997bb2469d2d20e37825fac9a0cf3a7efc6f8e5656ae7c9de88e18fa1f` |
| 97 | `theorem` | [mem_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/mem-unattach.md) | 669 | `result-track:ecd8fac58f36bc47ac4cf5b9bf1c80990b7261708cb9aafdd389bd299c2675c2` |
| 98 | `theorem` | [length_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/length-unattach.md) | 673 | `result-track:d4982c8f03d60658b47aa9cf4005e8b66a19a8933333ff00a40736bd6b0f69e6` |
| 99 | `theorem` | [unattach_attach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach-attach.md) | 678 | `result-track:d6381d998d654f56af174c11858524a7575ce6ed6c94242eb62d7b8d6d65782e` |
| 100 | `theorem` | [unattach_attachWith](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach-attachwith.md) | 684 | `result-track:6af90c96d101329dd2cd2c86d908fdf43ccbf40dfad8f30b2133269b9f77961d` |
| 101 | `theorem` | [getElem?_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getelem-unattach.md) | 692 | `result-track:79f72752edfb850a701c1125f01c69ceb1ae517ada7e83c1725f14a232df8eae` |
| 102 | `theorem` | [getElem_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/getelem-unattach-source-edition-2.md) | 696 | `result-track:c4bdcdf662e8d634efa4260e720ec23d1e1c2036064d214364fd1f0af761e197` |
| 103 | `theorem` | [foldl_subtype](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldl-subtype.md) | 707 | `result-track:7446d545675b82ba74000845635dc24f63abe6e902ca84b68b5f07b36efd4210` |
| 104 | `theorem` | [foldr_subtype](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldr-subtype.md) | 720 | `result-track:2042e08f741a64394e5ae152bfa6576cb1ae39708dab4ae7ec1b05cce64a5d5d` |
| 105 | `theorem` | [map_subtype](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/map-subtype.md) | 733 | `result-track:23f8d12d4db73ffd8599c0b81a5228193d80ba514613314a853220ca83c07680` |
| 106 | `theorem` | [filterMap_subtype](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/filtermap-subtype.md) | 741 | `result-track:d86ba1403903b1afee2084838dcef63ace7fbb8e84bdeb9b005494d49fe8a881` |
| 107 | `theorem` | [flatMap_subtype](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/flatmap-subtype.md) | 749 | `result-track:83039eee0ed5398b3ae1f1eeadb95f551f326a2d33abcabc80606c887faff229` |
| 108 | `theorem` | [findSome?_subtype](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/findsome-subtype.md) | 757 | `result-track:1739b8081547e805ff8dab35a22611f98bddd4ea71e735b2fedd59ede29d2049` |
| 109 | `theorem` | [find?_subtype](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/find-subtype.md) | 765 | `result-track:55b31617bca64de7d9fd6635d8c26e4c2a5d28d0671edec4bafb792d92963af8` |
| 110 | `theorem` | [all_subtype](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/all-subtype.md) | 775 | `result-track:a84db0118ba0d0ac2fc98bbde890d0c61653c37df2f5f5b1604d9f8cf4ab8b24` |
| 111 | `theorem` | [any_subtype](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/any-subtype.md) | 780 | `result-track:162e8c3a779e40bc9553e47f9d5ab4bf6760aa0f68fd4ba86a36d0e9ee310626` |
| 112 | `theorem` | [unattach_filter](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach-filter.md) | 787 | `result-track:efb430014d3479852164f038791cff17b9fd0ad86691d6dbb6e9fdfe7e196e10` |
| 113 | `theorem` | [unattach_reverse](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach-reverse.md) | 796 | `result-track:4d86cee3d9749aa9fd7f67b4ae7c1cde42a941a7cb3b9c10e45397e3d2c27107` |
| 114 | `theorem` | [unattach_append](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach-append.md) | 800 | `result-track:4ae824771990575dc9bc84992d0a790ee69f3e473a79ea5103b10501b1a07997` |
| 115 | `theorem` | [unattach_flatten](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach-flatten.md) | 804 | `result-track:48005424447d6c93b8e0e5a4b56bedb08318ee4563bab7c0f4e908b3f13a2b91` |
| 116 | `theorem` | [unattach_replicate](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/unattach-replicate.md) | 809 | `result-track:ebd02f51038e3be7bba73fa662d4b1f837f61d0c19432e85603d42528fcfe27a` |
| 117 | `theorem` | [map_wfParam](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/map-wfparam.md) | 815 | `result-track:8ab47c4bd562f49be5ff63478734522c9fb2d46806acc90d40d0a290393dfd63` |
| 118 | `theorem` | [map_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/map-unattach.md) | 819 | `result-track:22a31916ec893ad0cc8534b8920f9bb870cbfefb047e355b7000ac0c9a4bf531` |
| 119 | `theorem` | [foldl_wfParam](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldl-wfparam.md) | 824 | `result-track:cb7b5cde0e8945ebaf4a652e1353016c84cf64663ff1ce5a869030684474fa65` |
| 120 | `theorem` | [foldl_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldl-unattach.md) | 828 | `result-track:8575eed7f0ac1e223677b466af1e1dfc1a9592fb7f66f0b85d0e7934fc9f3b49` |
| 121 | `theorem` | [foldr_wfParam](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldr-wfparam.md) | 833 | `result-track:66c57d7755f6e87ecd4eaeed90b8bd6fae2568c2a214efec674d15cd6ba72a88` |
| 122 | `theorem` | [foldr_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/foldr-unattach.md) | 837 | `result-track:018e4e506e1eb978947082242146b7ad19bbd0f3c2af59a86cff1b58b4914588` |
| 123 | `theorem` | [filter_wfParam](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/filter-wfparam.md) | 842 | `result-track:1aff43fd89c49a2e56cd15ecf4ff904df4eeb142ec69af797f162d6e701b08e6` |
| 124 | `theorem` | [filter_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/filter-unattach.md) | 846 | `result-track:2bacfca721886678669858baad14b7e125a1ad50c001c7a78d483fcd1b5b5336` |
| 125 | `theorem` | [reverse_wfParam](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/reverse-wfparam.md) | 851 | `result-track:9b0c796c4594d7dc09f2527a17cad629ebc09b3f43e7e4ca5115a5215dea4692` |
| 126 | `theorem` | [reverse_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/reverse-unattach.md) | 854 | `result-track:4ae1006a8308f71bdd653d90ab6d85852e6bdce9c892c1611b3c5d48bbbd1631` |
| 127 | `theorem` | [filterMap_wfParam](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/filtermap-wfparam.md) | 857 | `result-track:f6a45dca81097a873446c300d74a938dee54873f8b76391d38e2efd2fa10ed02` |
| 128 | `theorem` | [filterMap_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/filtermap-unattach.md) | 861 | `result-track:aadca776dd56847d86ad56c75c88f4fd88934d43e3953053d7249efabeb01591` |
| 129 | `theorem` | [flatMap_wfParam](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/flatmap-wfparam.md) | 866 | `result-track:40e26119a592fd9d8b0da60a84fc23c87460b6a1a1ad63fd83d5e6d85c437455` |
| 130 | `theorem` | [flatMap_unattach](../../../../GeneralTopology/AttachPublicAttachWithCons.lean/declarations/flatmap-unattach.md) | 870 | `result-track:30db85042367362226b95f10d973dfbd7a48cf1a682fc4d8ea7b896bc9f659b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6cd380faaea2c0cb13c3d61aba66a89d6699f10d5f4200e76777ef97b45aef5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Attach/Variant2d392f48cdd9c7886817d3ced7ea82b447e25738ca4249f97492ced94e8baf38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
