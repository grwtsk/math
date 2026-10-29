# Verification target: Vector Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b904b7db3550aac26841cc7b5f9e566a98a0bbd",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdde7030d4992d45a7e90a0ef99e556b57337cbc8bb698867761971af67453940.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b904b7db3550aac26841cc7b5f9e566a98a0bbd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdde7030d4992d45a7e90a0ef99e556b57337cbc8bb698867761971af67453940.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdde7030d4992d45a7e90a0ef99e556b57337cbc8bb698867761971af67453940.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 41 | `declaration-track:3e0ec91aa2ddecdbef34ef5f701f6fb1b38aa820b3d0ec46ae2460bfeb17353f` |
| 2 | `theorem` | [toList_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-injective.md) | 44 | `result-track:31e3fdad8666b0211d71abec8a3cde054921c85e4aeff30d234b9a32c473912c` |
| 3 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/ext.md) | 49 | `result-track:24ecbae4392cae4d87fcbf5d77cdba85a033cdd7369f4648dea3817e9a584aad` |
| 4 | `instance` | [zero_subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/zero-subsingleton.md) | 54 | `declaration-track:08b0eaf18d457e95322ce9307fa4c96c3ae7140c4c85b7ee1e4f3611dabd1bde` |
| 5 | `theorem` | [cons_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/cons-val.md) | 58 | `result-track:40f45c7e0e2dfd65505a885f58818eb929b595c8c5aeed8f1ece5d68c3999ec3` |
| 6 | `theorem` | [eq_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/eq-cons-iff.md) | 61 | `result-track:eb6f68c1ba257d27db57fd8a5d81b36fa9eaac7617279e9bebc0ce7b00368a88` |
| 7 | `theorem` | [ne_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/ne-cons-iff.md) | 66 | `result-track:309e50f29f44501fc78f3e0d279ff13b7e860c1872dcbdb01be94b40a8dbdaff` |
| 8 | `theorem` | [exists_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/exists-eq-cons.md) | 69 | `result-track:135ee30d50d5dfece353e4b0342d5e070840baff2309905e96e5849fcb99954d` |
| 9 | `theorem` | [toList_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-offn.md) | 73 | `result-track:d7bdf7ac675d5099d3be23194cf396a9e21509188738235dbf1446b6d064a2f8` |
| 10 | `theorem` | [mk_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/mk-tolist.md) | 78 | `result-track:6aa0cc210ed3e5fbc603f5415466f55376e9cf5f100459662383471d07ed2622` |
| 11 | `theorem` | [length_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/length-val.md) | 82 | `result-track:c7a8ad527cfae9748a5f0e8f6092b9e49f45a98cf18946a5c1034c0d31b3cdb3` |
| 12 | `theorem` | [pmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/pmap-cons-source-edition-2.md) | 85 | `result-track:e1eaa7f158b275b44dd2ffa6a69f79faa485e426f6dc3648d33f65921173328b` |
| 13 | `theorem` | [pmap_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/pmap-cons.md) | 95 | `result-track:70bee3f4e9e52628fea1399fac97138fe9dcd99ed30b5265135357fb9724e29d` |
| 14 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-map.md) | 100 | `result-track:a3f474a8ba4614786d9a09f74b17f7cdc431f2c65a4c321f7cbd6e7ae6796a5c` |
| 15 | `theorem` | [head_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/head-map.md) | 104 | `result-track:74af2e21f3421156cef224aba5a9ee2c70a7926c18a7408670c039f257bf2d3c` |
| 16 | `theorem` | [tail_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tail-map.md) | 109 | `result-track:7ae3142841c203d3ca79fa6789b644f70bc0e89e374658709243be8f03f19cd4` |
| 17 | `theorem` | [getElem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/getelem-map.md) | 115 | `result-track:551f7d18b72e2f078e7a4fc9c3d3de69bf899abf47d2e7c9a301c1750b78bb71` |
| 18 | `theorem` | [toList_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-pmap.md) | 120 | `result-track:52b2166d0925d061e03806b1f0d3ac8dd5163ca04bb347dd86ec573812633abe` |
| 19 | `theorem` | [head_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/head-pmap.md) | 125 | `result-track:a026c7b3afdd690074197b4936421c0e34de836ab866de1430864ea1c6554e5b` |
| 20 | `theorem` | [tail_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tail-pmap.md) | 133 | `result-track:4ecbf13c800734cd9691253894a80ead9ac9017b9d01ba23babceda88a6a316a` |
| 21 | `theorem` | [getElem_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/getelem-pmap.md) | 141 | `result-track:42f99e291462389cf350402d1bd52f3dff889a154471c30980116365789767da` |
| 22 | `theorem` | [get_eq_get_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-eq-get-tolist.md) | 146 | `result-track:3e4dd74aea727dee10b21f245df417a7545139254491f7bd62f31f13d7a45333` |
| 23 | `theorem` | [get_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-replicate.md) | 151 | `result-track:192e5def6ae31a22f2e1a608dace4efc0fe68e2f20324a8e28e2aad4fe5b7fb1` |
| 24 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-map.md) | 156 | `result-track:11702409d50ad24e372930bda00e805f93b74f4fbc748cba8347e5eff4aa2fd8` |
| 25 | `theorem` | [map₂_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/map-nil.md) | 161 | `result-track:96aef00a95854ade3228c6eefd62e1b81b7a48df8f76156c72329c0663c3edc1` |
| 26 | `theorem` | [map₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/map-cons.md) | 165 | `result-track:20336f25111568a1cf02f095aff4f01601265d57f83fbf5db4b98dfbba453379` |
| 27 | `theorem` | [get_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-offn.md) | 170 | `result-track:1bb19b087513a34c8380d6ec3954d0015290a4455e2b1b2aa88fb0a7f476f37e` |
| 28 | `theorem` | [ofFn_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/offn-get.md) | 174 | `result-track:1213a992c9efd1de26a827302b3067f4c812802d1660940a136d6eee90df323d` |
| 29 | `def` | [Vector Basic Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-to.md) | 179 | `declaration-track:d4e116f977e6a3129fc6407c0679d063681535ed794f52cb39865ab8e3d4dd22` |
| 30 | `theorem` | [get_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-tail.md) | 182 | `result-track:7f52d3929ed06d6b164d8cd2e70d9a3ec53beee2063eaa39b94d6a2292ae4c39` |
| 31 | `theorem` | [get_tail_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-tail-succ.md) | 190 | `result-track:2575c06f04872fbf631b3127bad1eae2ff5f60167c6c007989886907d994cd84` |
| 32 | `theorem` | [tail_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tail-val.md) | 194 | `result-track:02aa21091c00ab7ff9851918070844f413c035f4bfa9c82f98e16061c619644d` |
| 33 | `theorem` | [tail_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tail-nil.md) | 199 | `result-track:9d68d2d841b6785ae4b91ed2888bd37eaaac1ed26a24e6dcab068d73dd404b0f` |
| 34 | `theorem` | [singleton_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/singleton-tail.md) | 204 | `result-track:8bc5e23b457c4b65015d0726190eff5f3c524d54f788dd622e2328e5d4738238` |
| 35 | `theorem` | [tail_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tail-offn.md) | 208 | `result-track:446b501a24d613ca089198f60434fbd827988108ef04409a4e91387cc2625cc6` |
| 36 | `theorem` | [toList_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-tail.md) | 215 | `result-track:af65b8acc9c338b8865125a8fdcf8ff17a4228f92982cc8827d899794f6e029e` |
| 37 | `theorem` | [toList_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-empty.md) | 220 | `result-track:395a903a61aab0f4a7b05b695683fcdb3937b3e412fd57a3532a5d958014145e` |
| 38 | `theorem` | [toList_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-singleton.md) | 226 | `result-track:b41896de18eab346b33816b37b81b8b5c587baed8322cd4c582076960c196b0e` |
| 39 | `theorem` | [empty_toList_eq_ff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/empty-tolist-eq-ff.md) | 231 | `result-track:9a7a2c27435ea3ace3ce6223dc8ab80cecff8683db4dacb337c8e33a3c28a164` |
| 40 | `theorem` | [not_empty_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/not-empty-tolist.md) | 235 | `result-track:59837a6694b117f40355c2a1684633f84a6848777934e7cf561a7c0d62777d53` |
| 41 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/map-id.md) | 240 | `result-track:9275a63ac7eefb8e64eb17b68129ca302cf16282449fe84794700eddf8744cba` |
| 42 | `theorem` | [nodup_iff_injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/nodup-iff-injective-get.md) | 243 | `result-track:aa7dd2d7a464151b2392ae46506d90b2b9cad0155774eca30483c247cfeb5678` |
| 43 | `theorem` | [head?_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/head-tolist.md) | 247 | `result-track:54a2d2d56838e1f4cfd3a8446b3b8f83a12586e4901c05367db9faaa455f425a` |
| 44 | `def` | [reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/reverse.md) | 251 | `declaration-track:de39e6886abcf6a5e5a69b8cc3a2f3bd74a37e4ac82f437af2674640e247ce6d` |
| 45 | `theorem` | [toList_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-reverse.md) | 256 | `result-track:6d227d59985ebd92cee44c63e47509381dabb205ef82179334d6f93f1d358cc1` |
| 46 | `theorem` | [reverse_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/reverse-reverse.md) | 261 | `result-track:6e02293442322369dd68ef41e71e3b6f9af10bca43020e652a0935c1da86b295` |
| 47 | `theorem` | [get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-zero.md) | 266 | `result-track:3bb331e48dd050ca1df576b96940e81765b3a1b53ad79e77ac76c510f01cffc6` |
| 48 | `theorem` | [head_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/head-offn.md) | 270 | `result-track:f57641c8d7ebd1f2a7b70f8348bc564d3e7d327f052d08aadd71bd6dd0a8afb5` |
| 49 | `theorem` | [get_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-cons-zero.md) | 273 | `result-track:cc968f3d4a457ff099b702385fc52885e687d851d7546b074983748ea5dc8f0f` |
| 50 | `theorem` | [get_cons_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-cons-nil.md) | 278 | `result-track:7ec6f1f60694dfac2a0377b561ab9b7feb41d8d89280f55a5d53341662dd71cd` |
| 51 | `theorem` | [get_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-cons-succ.md) | 282 | `result-track:50cff3ef6f5d484b3870470ec255873b8a543983c4677d6fd46953f98c1433df` |
| 52 | `def` | [last](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/last.md) | 286 | `declaration-track:44f0a180532df74feecd35d399913647c936e5867cfdcd17dc52c3774c764f31` |
| 53 | `theorem` | [last_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/last-def.md) | 290 | `result-track:f1023a7295ab0d44524adc8c9ea180863c7e2a580f54bd2dc8dec24202347ba3` |
| 54 | `theorem` | [reverse_get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/reverse-get-zero.md) | 295 | `result-track:e125398b5aa2e5128fa73d5718587394df4f418d11a008867bb116c8d0ea8ebb` |
| 55 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/scanl.md) | 309 | `declaration-track:9823a4f8113b9cbc358f31fa583ce647f7959a0a99a0f6f892c7d7214847aa43` |
| 56 | `theorem` | [scanl_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/scanl-nil.md) | 314 | `result-track:0adcfc992ca407d7391efa4bbe7f75daaf722100e6b8f4276ac4dbf2e83f49ec` |
| 57 | `theorem` | [scanl_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/scanl-cons.md) | 325 | `result-track:454b46e8c9a4b53506ee44c45dbbebd7cb3f8048a0f5bc46880e641d3fb04d11` |
| 58 | `theorem` | [scanl_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/scanl-val.md) | 332 | `result-track:c09e1d63288a7d6ee5cdd8fd5dbf30e8d507f380eb67b6936a1477f92e2b2fc3` |
| 59 | `theorem` | [toList_scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-scanl.md) | 339 | `result-track:6a823b8551434ee6b585f8221b49ac717a061ffda54a73d8a3cab77dd80d832f` |
| 60 | `theorem` | [scanl_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/scanl-singleton.md) | 347 | `result-track:769a4b8cf0a63e21ddf3db0f57458878ff3ceb48b0ebbb94e2177541a4f43dea` |
| 61 | `theorem` | [scanl_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/scanl-head.md) | 355 | `result-track:2b52a2398d711c9e804c41e761f018ff38c98a689b379e0ee998f4b7c283f3be` |
| 62 | `theorem` | [scanl_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/scanl-get.md) | 370 | `result-track:e60e533c3e1df625220ad45beb37cfdf6f2db973e62994a360ea5a1d019b9a8c` |
| 63 | `def` | [mOfFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/moffn.md) | 389 | `declaration-track:ad8cbc142ad340a0b567e99355354ee408f4f84bc98b86ecd2118e648c0e0ef2` |
| 64 | `theorem` | [mOfFn_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/moffn-pure.md) | 396 | `result-track:2f390e1fa2a7467f159cccd8c29c36fdfca3592130a1b6ac42530b65af276b48` |
| 65 | `def` | [mmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/mmap.md) | 405 | `declaration-track:23b8fdb65e7bd6f56bd7c3d6018d32ca9f4ce1308c95fe0387bc4a031cb189dc` |
| 66 | `theorem` | [mmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/mmap-nil.md) | 413 | `result-track:2cac879e0b8345db15beffa3e3c6dfef709a99ba95d502dd7813f91bfd4d16d2` |
| 67 | `theorem` | [mmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/mmap-cons.md) | 417 | `result-track:5242eba41089c3a699468d806a2c479839c69aeaba4a92f5963b2cc15efb5159` |
| 68 | `def` | [inductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/inductionon-source-edition-3.md) | 434 | `declaration-track:cd796c84fe6e7977972c2416d9620f8314995a4e244ce151e9b3f8cb0018a25e` |
| 69 | `theorem` | [inductionOn_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/inductionon-nil.md) | 446 | `result-track:0030235807267e41bc7da3d402fa39505463979accab8f6dfc95d191c2e697ea` |
| 70 | `theorem` | [inductionOn_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/inductionon-cons.md) | 452 | `result-track:a11a6cabc02c1b1b9ce8d72dc147164a43039c383b73602cd7981ed2c9afc87c` |
| 71 | `def` | [inductionOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/inductionon-source-edition-2.md) | 461 | `declaration-track:a70ad3798ede447bb71219e0fa64c71d4da47c3d597cecb16ac92d22400df48b` |
| 72 | `def` | [inductionOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/inductionon.md) | 481 | `declaration-track:6e6859682ba25204f47195232d097386b538396db2bdc05d53c12912ffa2a7c3` |
| 73 | `def` | [casesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/caseson-source-edition-2.md) | 504 | `declaration-track:71de8f2a6c3be4afa3667c2629d7b45e710112737fe9b5bb4bded1706ffcc1ab` |
| 74 | `def` | [casesOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/caseson-source-edition-3.md) | 511 | `declaration-track:b1736c7de8e63db7da911528e4e629c2f56d462c545efcf3d2582a8fbd8bf019` |
| 75 | `def` | [casesOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/caseson.md) | 520 | `declaration-track:353c6f760eb4c599c4f51f0a8fb4bba1c72fec6d42a23b42787bb0061473bede` |
| 76 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/toarray.md) | 528 | `declaration-track:00969a7b4da820543b64d8d2da4bd773fe04771eaaf3d591ed5a6b388d20e7fc` |
| 77 | `def` | [insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/insertidx.md) | 537 | `declaration-track:eccb80f171e8deb22b139e7b8db3eeda74823c8d137c3fe611d52c8a7ad3594a` |
| 78 | `theorem` | [insertIdx_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/insertidx-val.md) | 542 | `result-track:ce4db66e51fb972ea843de6db77aff14a85ddb1ad59d14bcc364ce0debe20a19` |
| 79 | `theorem` | [eraseIdx_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/eraseidx-val.md) | 547 | `result-track:ab2ca7df33d0b691dec6de025f5d3704498b40897b235445c59d70547073172d` |
| 80 | `theorem` | [eraseIdx_insertIdx_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/eraseidx-insertidx-self.md) | 550 | `result-track:af8a2448a751357c9f764c43830504ce6f5b3d0f0c876f83508d15f2b4392fcb` |
| 81 | `theorem` | [eraseIdx_insertIdx'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/eraseidx-insertidx.md) | 556 | `result-track:bb7661bd95a67299105b4bed8d761d485da0824c4ef20fea72dd649a8f8bba65` |
| 82 | `theorem` | [insertIdx_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/insertidx-comm.md) | 575 | `result-track:61df76f01185ddcf660e31e05d9bbd257583d2331f7e7d62c47d6304d1f47763` |
| 83 | `def` | [set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/set.md) | 591 | `declaration-track:58efe962f3fd1c33b12c24a6d5c95df36b2abc9cbf472d88de0926d9ab2b0caa` |
| 84 | `theorem` | [toList_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/tolist-set.md) | 595 | `result-track:33231efb678f2062ac8bfd37fa96233dff92b76e81d3295d2bc4915ae9d6a119` |
| 85 | `theorem` | [get_set_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-set-same.md) | 601 | `result-track:36b0d8ff5672a3f4151de907b7a561084cbfe0117b9a855a17a9ce06bc1b6bb9` |
| 86 | `theorem` | [get_set_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-set-of-ne.md) | 605 | `result-track:103b310900e591d46b56acd9dd9308e8c0d1de3ca314946d3f22a857429200d2` |
| 87 | `theorem` | [get_set_eq_if](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-set-eq-if.md) | 612 | `result-track:b4bc7f123a26c898c8ac8c392a1c31607a9c6dd6b8304cf85635c0221b4e6f04` |
| 88 | `theorem` | [prod_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/prod-set.md) | 617 | `result-track:5a42db8028a86272738531f5d3f3d74f4b01727476c9d4d4c0849a88c24b2616` |
| 89 | `theorem` | [prod_set'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/prod-set-source-edition-2.md) | 625 | `result-track:f5952abcc657c941a857d987d23dec9d2442b09837f8de404119b4975ddb2c5d` |
| 90 | `def` | [traverseAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/traverseaux.md) | 647 | `declaration-track:d35153d855e414b3a41226c05e1cf821bc79eb559a3fc66c7ece42cc361cf331` |
| 91 | `def` | [traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/traverse.md) | 652 | `declaration-track:c587c7fa5ddb88c2162d6c7eb84db737a7c2dff70df558feea07ce3679333bee` |
| 92 | `theorem` | [traverse_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/traverse-def.md) | 660 | `result-track:e9f9413610f7e5de86d7ec598fcd48a2882c6e9944ba297c491123df00def2b0` |
| 93 | `theorem` | [id_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/id-traverse.md) | 665 | `result-track:5d3d27277f66d13e28dc33c229cce1821cdc4aa3bf7e91f945aa3a2ae3b641c8` |
| 94 | `theorem` | [comp_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/comp-traverse.md) | 679 | `result-track:a16f8e001e9137dcc620a258e818ea7b7494f6c4761f8bc2d16867229cb96df8` |
| 95 | `theorem` | [traverse_eq_map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/traverse-eq-map-id.md) | 691 | `result-track:c57439c3e5bd95116f544e36c6436f4d6929c4838bda82dc38cc902161bffe63` |
| 96 | `theorem` | [naturality](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/naturality.md) | 700 | `result-track:5c201f3984d1a394c6aa162cbf7c2939e2ecb35e65c0219b74cc84c3ebfe2266` |
| 97 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/instance.md) | 710 | `declaration-track:142f4defc5095733ced56541aa0fef6a327390cee2a4050d6f6d81a9574fd73a` |
| 98 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 715 | `declaration-track:5bd1dced917c8ad358300b3902f3cb3415cc87d749f33b3efa78015947c5e029` |
| 99 | `theorem` | [replicate_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/replicate-succ.md) | 729 | `result-track:2b487d80c45c99c63940ee4cb611dcc1307117963e262d5c6230f29881265d89` |
| 100 | `lemma` | [get_append_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-append-cons-zero.md) | 736 | `result-track:9ccc321907fa5411c5435edb93f94e46f1e81ae347c4ed9e2cd9efd0e6087b59` |
| 101 | `theorem` | [get_append_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-append-cons-succ.md) | 739 | `result-track:6f14f53c4c974992a4c0f633c5dd2f34c2eecc3e77d4446e3c89cd7a86955936` |
| 102 | `theorem` | [append_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/append-nil.md) | 745 | `result-track:4046504d9815bccf3fee2126ea9dc24db3eee0fb063db56b47ff6353bcb28d1c` |
| 103 | `theorem` | [get_map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/get-map-source-edition-2.md) | 753 | `result-track:9bdb9a39f2e433fce94c612f0911e2ac733e2d4e655922a735f694478148eb5f` |
| 104 | `theorem` | [mapAccumr_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/mapaccumr-cons-source-edition-2.md) | 765 | `result-track:a9747ac0a546257aebbd8d42527dc721a911c32a5ab3de33e1329b6760147c21` |
| 105 | `theorem` | [mapAccumr₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPublic.lean/declarations/mapaccumr-cons.md) | 773 | `result-track:985495311cbcb7aa1528eb7dd0e76f529167a5a035822a31f9d4bed32180c440` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15a2ecdf4693020b73a351e90dd7a4373afe9a10dc1a8a425bef083100702eb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdde7030d4992d45a7e90a0ef99e556b57337cbc8bb698867761971af67453940.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdde7030d4992d45a7e90a0ef99e556b57337cbc8bb698867761971af67453940.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
