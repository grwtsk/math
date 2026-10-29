# Verification target: Vector Basic Namespaced Pmap Cons

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e4555306ef6ac8da8a549b2bee061f46df6e20c",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant09ad68572ced5c47659b7d499c2adca759349b0c679d864f8ea54f4dbac9f84d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e4555306ef6ac8da8a549b2bee061f46df6e20c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant09ad68572ced5c47659b7d499c2adca759349b0c679d864f8ea54f4dbac9f84d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant09ad68572ced5c47659b7d499c2adca759349b0c679d864f8ea54f4dbac9f84d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.OfFn` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Scan` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Applicative` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/instance.md) | 39 | `declaration-track:4f8b9a2fd12191971eaa74ddf447d1b8ea0bf7288170d295638410ebc91a6672` |
| 2 | `theorem` | [toList_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tolist-injective.md) | 42 | `result-track:adfd1c7e7cb809816ad2828396045121a3ecf828433c45ab9314957042fa5fd2` |
| 3 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/ext.md) | 47 | `result-track:e3bb0aaacc6fe07f99a00e9bc854692f686ad1061f8ddaede07a8de8cc5799ec` |
| 4 | `instance` | [zero_subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/zero-subsingleton.md) | 52 | `declaration-track:a5fff1420002888710bfa79605e15fb1ca3ba13c38d2f3021b50fbd188790323` |
| 5 | `theorem` | [cons_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/cons-val.md) | 56 | `result-track:798360f5a9529d965fb3f3b3a86482b12b892b351b494698f6d8468b3a4f25dc` |
| 6 | `theorem` | [eq_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/eq-cons-iff.md) | 59 | `result-track:54eb830854a82ba6223a09cc66ed1f8b5266b99a8636c5034fa0eaa7ef24d670` |
| 7 | `theorem` | [ne_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/ne-cons-iff.md) | 64 | `result-track:a699aae7f8ffb5f65a7d9774374a7f343145fcb90a04215fd9c43f9f2d7f9812` |
| 8 | `theorem` | [exists_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/exists-eq-cons.md) | 67 | `result-track:04c793d9b2534fb074678bc63440d77c7842106ba2a2f81ba4d401293fc93c2e` |
| 9 | `theorem` | [toList_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tolist-offn.md) | 71 | `result-track:3a4ae8cb03fd2300eda82967b5907557ecd0aed58b1d4f353787ca6d22c98d4c` |
| 10 | `theorem` | [mk_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/mk-tolist.md) | 76 | `result-track:1786383e625b1247c73ceb150649ddb90817a4d7f3d3290f4ab93a6e4b19dbdb` |
| 11 | `theorem` | [length_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/length-val.md) | 80 | `result-track:ba55aac307f92c9d8d812f8872d4a84975cfa78ddb33b8d67f681b06ae31e798` |
| 12 | `theorem` | [pmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/pmap-cons-source-edition-2.md) | 83 | `result-track:ef975b0c04b29179d1aeed35586ae741a8b932f173ad306c6309d103528fc040` |
| 13 | `theorem` | [pmap_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/pmap-cons.md) | 93 | `result-track:71c50a25e7cc87c929b100249e7368d7bf9ffe3d047e3e345af212fe9f8be2ef` |
| 14 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tolist-map.md) | 98 | `result-track:0f3733398414159fabc490ed5a89ce9b94cd56268fa23a2fac08c10811990caf` |
| 15 | `theorem` | [head_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/head-map.md) | 102 | `result-track:6c271cb34faf0ffbdce9a254b67149f91951536196013a1a1669d3a1419b484b` |
| 16 | `theorem` | [tail_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tail-map.md) | 107 | `result-track:70578af15d0a4e98c8092b9aa04734ddf6c64c06de8e9f048127bbd49268d38a` |
| 17 | `theorem` | [getElem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/getelem-map.md) | 113 | `result-track:8fddc9b558eac5492bc09842e00193dd60c1ee023b56b17b03fb3ea9861acaa6` |
| 18 | `theorem` | [toList_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tolist-pmap.md) | 118 | `result-track:f03defa146a40c4f5bdba5769d7ecdb89905590a652d9016c61b9aadf5128c9d` |
| 19 | `theorem` | [head_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/head-pmap.md) | 123 | `result-track:a49dadc67b24d332a6ad4a6d074f4bfebf09f1376aa0f6aedbdd1df012e9cbb8` |
| 20 | `theorem` | [tail_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tail-pmap.md) | 131 | `result-track:e61a969f189e21a3945ed8bdb38d654d664098ec9713374b5d878874e21a9be9` |
| 21 | `theorem` | [getElem_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/getelem-pmap.md) | 139 | `result-track:61588c11bb243dd8cdc3e3158101a7e878ccd4bd20c625918291ac8ce5fd1bd0` |
| 22 | `theorem` | [get_eq_get_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-eq-get-tolist.md) | 144 | `result-track:2be920c97f7d92d72271bde776af50ab8b064e5b3c5fcfb473db91cf37cdf12f` |
| 23 | `theorem` | [get_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-replicate.md) | 152 | `result-track:43a035961864a748e489287143e31659536d91e6e43930716647661427d80ac1` |
| 24 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-map-source-edition-2.md) | 156 | `result-track:d005a5b0b3d7cdc0d50c8e7900ed7cb025a8f1188aaa62e0617f09b6871e47b1` |
| 25 | `theorem` | [map₂_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/map-nil.md) | 161 | `result-track:ee73e9bb4aba1fd576b2c0536a7f23b4273ba69496ae49b5a4521afd2c6cc1f3` |
| 26 | `theorem` | [map₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/map-cons.md) | 165 | `result-track:826432fc56f1b4a75aef0d899c3704bedf4fb0179858e0c95d1f1830ef4b69d4` |
| 27 | `theorem` | [get_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-offn.md) | 170 | `result-track:ec9c2d388255650234355ee7c52721486a481161a07e17becdf757da7ddb8af7` |
| 28 | `theorem` | [ofFn_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/offn-get.md) | 176 | `result-track:6871917828956b594f54c83abe7b50579beedb9fc295d04622c730fc5152c917` |
| 29 | `def` | [Vector Basic Namespaced Pmap Cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-to.md) | 183 | `declaration-track:50b4da2ace6bb088707383104004d05c585bb850e435c359532b0df854c642f9` |
| 30 | `theorem` | [get_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-tail.md) | 186 | `result-track:a8ed8c11f72da43bce154f2816c0bd0543da05149018e4e9edc2f60ac989b550` |
| 31 | `theorem` | [get_tail_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-tail-succ.md) | 194 | `result-track:0c0897d5d291d29d095317d849d818af0a3aa9e6eb9d28d0f6ce56eaac9bef46` |
| 32 | `theorem` | [tail_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tail-val.md) | 198 | `result-track:beb81be5af6151972877acb432d7d32ee4c5cfc990cd958af9aab1aea911a8de` |
| 33 | `theorem` | [tail_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tail-nil.md) | 203 | `result-track:6670bba278d9930da1991a2db5f1d0726b9d60501cf499eb0588119c3de9a0d0` |
| 34 | `theorem` | [singleton_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/singleton-tail.md) | 208 | `result-track:26c43cfbf20ff249f85b96daf9df1288fa49946f01eebcb111af76ffa5fb2a89` |
| 35 | `theorem` | [tail_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tail-offn.md) | 212 | `result-track:da4a1ac20ad4eb9981c13ddf78b80f1d4501cd70ac93e01f407e3a5ecdb22d45` |
| 36 | `theorem` | [toList_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tolist-empty.md) | 220 | `result-track:8a7e453efd9ff151d8f557b83e07dcbfcf2033c66aeaa7160c0c2cf4833e791e` |
| 37 | `theorem` | [toList_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tolist-singleton.md) | 226 | `result-track:6795c87faf9dabf447f864db58fc0f052f84f0e33b07ede17d65f4940d56f0ce` |
| 38 | `theorem` | [empty_toList_eq_ff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/empty-tolist-eq-ff.md) | 231 | `result-track:d2d166102426ae8398bde4b2b5ef19200ee290174d29a04c8d34b84b702d29d3` |
| 39 | `theorem` | [not_empty_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/not-empty-tolist.md) | 235 | `result-track:26aa040298b31f48b3970865402adcaffb602a9337e8c4a13527c28f3bf45266` |
| 40 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/map-id.md) | 240 | `result-track:8eac1f53f6b9276f866e6920f61223ac212dd4e1641e62792ea8c24fb4e36ab9` |
| 41 | `theorem` | [nodup_iff_injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/nodup-iff-injective-get.md) | 243 | `result-track:11a0602e64a1bd8476108f0df3ba70f53c1a9a448ad3b06748def09298e1be04` |
| 42 | `theorem` | [head?_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/head-tolist.md) | 248 | `result-track:334050a7533b78f7fc5314668bc7525f8223808dfefcd5325688a819ec534795` |
| 43 | `def` | [reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/reverse.md) | 252 | `declaration-track:33210032df54047704d69c1b0cdc8e0b745f3add8aba48ac7e60c43c48654dd2` |
| 44 | `theorem` | [toList_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tolist-reverse.md) | 257 | `result-track:f437999b5bae38dbb26a753590a99a365d6c8c9b80254ce2b4d6d5e217f4bfeb` |
| 45 | `theorem` | [reverse_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/reverse-reverse.md) | 261 | `result-track:a34c5c6b2bf9f242235e6241a569a759f0143a967aa2698375d4cd73cd6fd507` |
| 46 | `theorem` | [get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-zero.md) | 266 | `result-track:247df1cde9dbc8bf104a5273a2fa1df7f0e48eab2402e65f35bd47507837c1db` |
| 47 | `theorem` | [head_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/head-offn.md) | 270 | `result-track:3ad02c16694167808ad82b169548f2bda98d7153c31e8994a005a7308ab9da47` |
| 48 | `theorem` | [get_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-cons-zero.md) | 273 | `result-track:228c91af57bd2374d52616c5e357f8bfa6cf306ef63e206bc4aec13829db23ce` |
| 49 | `theorem` | [get_cons_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-cons-nil.md) | 278 | `result-track:501a103d5fc3a0a08aff01511a3862ebf3d823b80e34aabf8da778dc228cb8b6` |
| 50 | `theorem` | [get_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-cons-succ.md) | 282 | `result-track:7f409c5814ee49609b5243b0d2ae911728fad24058a74923b56764cc94514dc8` |
| 51 | `def` | [last](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/last.md) | 286 | `declaration-track:2f06a492f14a09a60a1605171559decb3224084ec5222869bfbc8d8c42baf47c` |
| 52 | `theorem` | [last_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/last-def.md) | 290 | `result-track:4c1436efadef7d330cdaa2839f69d6b1fbf932e49878c3425a695e091b352030` |
| 53 | `theorem` | [reverse_get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/reverse-get-zero.md) | 294 | `result-track:53bd8f436414744eb87e092214f1096f2244f5e2e62102fb8b2ab0e8d6686085` |
| 54 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/scanl.md) | 312 | `declaration-track:6f70bf49bf30541aa227f8d4d4d991250edbe774bd8022dcb18a97b58a3eff27` |
| 55 | `theorem` | [scanl_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/scanl-nil.md) | 317 | `result-track:04d8fa1ef03bfd3f3a5693e4ef2c7e8f795720defc94c32a7017d459705690d8` |
| 56 | `theorem` | [scanl_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/scanl-cons.md) | 327 | `result-track:4632865825d948b5712f29cbf051e670b9b54b4e3317447708e7fd06c35e7c19` |
| 57 | `theorem` | [scanl_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/scanl-val.md) | 335 | `result-track:fc7fc86f882780dd3c1444ee7f271d1b93ce5eec86c5600eff9aa2a1f1fa0d92` |
| 58 | `theorem` | [toList_scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tolist-scanl.md) | 342 | `result-track:ff3d98f34a390b726d1bb0f21b34b63b3bbc74776d8c9fe4289749ba1dc7f7d4` |
| 59 | `theorem` | [scanl_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/scanl-singleton.md) | 350 | `result-track:d0747444081a9161d66d852e7fe1f12e485eba75135d1ba76ff994ba71c7da4f` |
| 60 | `theorem` | [scanl_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/scanl-head.md) | 358 | `result-track:2ed3662b351eb9ec59599f7ddfc4c5a52d889eb47570cadd1566f0c7331cc29f` |
| 61 | `theorem` | [scanl_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/scanl-get.md) | 373 | `result-track:3c40d9a520ebe3f4270f4a6682696837367cadd1de524ad711d9b9b05715c50c` |
| 62 | `def` | [mOfFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/moffn.md) | 390 | `declaration-track:72aeebe2c378c57651948820c172e1a85c73b4de06087652801ca5f62246f3db` |
| 63 | `theorem` | [mOfFn_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/moffn-pure.md) | 397 | `result-track:75e45816dada1ecba03588661fcb79ed896704f9b713c0df8a5b5f00280a9c7b` |
| 64 | `def` | [mmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/mmap.md) | 406 | `declaration-track:87bf892adca9ce15b448406e77e4074bd8cc024edc05e7687ffe61101abd0a82` |
| 65 | `theorem` | [mmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/mmap-nil.md) | 414 | `result-track:e04a2d20309b19b1f0b00e66482cd12524f1444c8a75e3430be94c96feda327e` |
| 66 | `theorem` | [mmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/mmap-cons.md) | 418 | `result-track:20c5c6a7c3521116d1f9735c9df566b5c04499240cc47481f9ee7a50bd7de0b9` |
| 67 | `def` | [inductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/inductionon-source-edition-3.md) | 435 | `declaration-track:ec8b57f2f126ebf70a808a7f4a159d37289758250cfd033bf49c017254f3101b` |
| 68 | `theorem` | [inductionOn_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/inductionon-nil.md) | 445 | `result-track:1a13294b0fa3ac29bcf00a5eceb3081475d51051956736b09e6290c2ddfec2b0` |
| 69 | `theorem` | [inductionOn_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/inductionon-cons.md) | 451 | `result-track:10d6c115107383eb4c5bce72d2726a1d9d68f151347e42456cffe868abb1af57` |
| 70 | `def` | [inductionOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/inductionon.md) | 460 | `declaration-track:3496afbc7c3e4f2f85304ab28f87e90cfe1ab6d8f6f1f9a4981dfa73a1f3f2b8` |
| 71 | `def` | [inductionOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/inductionon-source-edition-2.md) | 478 | `declaration-track:c2ba3b823312ef3e22969bd2582afee349c87a014473c822a1f133310cec55e9` |
| 72 | `def` | [casesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/caseson-source-edition-2.md) | 499 | `declaration-track:bd884ce21d61a39cab511bb5cecc8deb07b14c07b7d880bed87727a6c35e187a` |
| 73 | `def` | [casesOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/caseson-source-edition-3.md) | 506 | `declaration-track:cae5910d708c7ef0aa7e97aa8115e7c7d7c0d7b0d6a352feb6a70a24e80227f4` |
| 74 | `def` | [casesOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/caseson.md) | 515 | `declaration-track:3e604c04f76bb1a05580882e7d9128c13f05b28f096c5cef2238d51a8d4d4059` |
| 75 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/toarray.md) | 523 | `declaration-track:3b19a116e9ab5f6c887e0c8396a616e1e956030e2ee0bff310ee3417875afe60` |
| 76 | `def` | [insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/insertidx.md) | 532 | `declaration-track:b482532db1d6a6fce2675990072acff6509d27c0013024a87d3f81d8f9d6f61c` |
| 77 | `theorem` | [insertIdx_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/insertidx-val.md) | 537 | `result-track:690168315e0197fba3706cf789347870805664f0989445a205238d09a24edc9c` |
| 78 | `theorem` | [eraseIdx_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/eraseidx-val.md) | 542 | `result-track:c5f6bb4e0498da5903858865e9a7fa6fc555202250b83c76d1d0a556d73774c2` |
| 79 | `theorem` | [eraseIdx_insertIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/eraseidx-insertidx-source-edition-2.md) | 545 | `result-track:22fe9db21e0aafac71dc7095c1840f19f69329220e2f06081c3d55ee830d6b08` |
| 80 | `theorem` | [eraseIdx_insertIdx'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/eraseidx-insertidx.md) | 550 | `result-track:0906dff3169f397257d76c167f435d951a5bf116581ee07d23552e97cfb56d76` |
| 81 | `theorem` | [insertIdx_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/insertidx-comm.md) | 570 | `result-track:44b3ccef0e5dee0bc903b3331f18191105dea121aa7d29605fbc4b79cb7f1b23` |
| 82 | `def` | [set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/set.md) | 586 | `declaration-track:b2fd7196558a501066a63bd08043bd2cf25b822036279f8086015d1fb5297bf4` |
| 83 | `theorem` | [toList_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/tolist-set.md) | 590 | `result-track:401f0e4697ad010982949741a7b0dc841969ae0c09b79b746dfc71dea330be90` |
| 84 | `theorem` | [get_set_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-set-same.md) | 595 | `result-track:6806d74c56ca31041347726bdb8eda22f337cb59b1b788c8c8e4d0e2a0b2c412` |
| 85 | `theorem` | [get_set_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-set-of-ne.md) | 598 | `result-track:5c4e2c282e877fdc6adbc0f8722668adbe3011c49f8b5fa02bc1987a5412520e` |
| 86 | `theorem` | [get_set_eq_if](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-set-eq-if.md) | 605 | `result-track:b6989ef15cafb0fdfe75e476ee075088cfbb54f199e15e17b5907314666d1969` |
| 87 | `theorem` | [prod_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/prod-set.md) | 610 | `result-track:505f34bb8d6500fa8e1a09f71d036de26766e3d9630dcb79ed8c432498bdbc96` |
| 88 | `theorem` | [prod_set'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/prod-set-source-edition-2.md) | 618 | `result-track:7bf30b7e972a2cf40509eeedc28f0b3021649326c5ecd552cdadd0bf9d3d9062` |
| 89 | `def` | [traverseAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/traverseaux.md) | 640 | `declaration-track:903722512e3425e90d7629a0f22106e0234f884df66287989bf82aebec5cfb2f` |
| 90 | `def` | [traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/traverse.md) | 645 | `declaration-track:0472c25d2da2551d347e32878eac7fc8d46c0a55bbac386a54558b5cfca8cb98` |
| 91 | `theorem` | [traverse_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/traverse-def.md) | 653 | `result-track:fa5c912dcce568c064f6ad4246215b3f49e5d0e27fc93a58c4eb308b5714ab44` |
| 92 | `theorem` | [id_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/id-traverse.md) | 657 | `result-track:34919d8df3d54f73f25ddfbe697914e5e74ad2800bfd281712c01f8476ae5367` |
| 93 | `theorem` | [comp_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/comp-traverse.md) | 672 | `result-track:9e93d4cbeb57202a9bf683e222348a75a4ab7b36de54c542419da999b4f60f66` |
| 94 | `theorem` | [traverse_eq_map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/traverse-eq-map-id.md) | 681 | `result-track:6837e8c473837f5e0dde2221f7ba32c984db876d6512a27f62192a143b5ceea9` |
| 95 | `theorem` | [naturality](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/naturality.md) | 687 | `result-track:1664fe438e303f2a96397e04827f504aeb822b5b988bec41d7f0821b1a9d5d9a` |
| 96 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/instance-source-edition-3.md) | 696 | `declaration-track:c5ddebdd15e76f32e466df63c60ae0ba6567104777e0f897afb6bae617d00fb8` |
| 97 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/instance-source-edition-2.md) | 700 | `declaration-track:5b5f6c3fbafa79306c3652af896fa73b3b81fdbabafafbd0df647ee31f107630` |
| 98 | `theorem` | [replicate_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/replicate-succ.md) | 732 | `result-track:8cae5ea304b0a8c43a29dbbbe1a7a98cbe27ecb62ae9cde40389af2c73f12db3` |
| 99 | `lemma` | [get_append_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-append-cons-zero.md) | 739 | `result-track:b9f571d57d56b6cb25afc8a112800f0036056ea7d17e94883314e9eb65fdffde` |
| 100 | `theorem` | [get_append_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-append-cons-succ.md) | 742 | `result-track:7dc58ecc1fd8fae4a725c6f1ccbf02c712895833611808e19406f3ca3f9488bf` |
| 101 | `theorem` | [append_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/append-nil.md) | 747 | `result-track:b7d0d2309c48ddc7dbb97d2ab052ce068dd1c2e4528ad0bf58b83c1318f6c51c` |
| 102 | `theorem` | [get_map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/get-map.md) | 755 | `result-track:ab1f71327e579beb8b67aa1e3eae91fbe1b4b72ad6141aee1085e640341e1228` |
| 103 | `theorem` | [mapAccumr_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/mapaccumr-cons.md) | 768 | `result-track:ceb1da8da0d39523c288d5d4ea0c1378c8d39fed5c8aad43167831527f6bac53` |
| 104 | `theorem` | [mapAccumr₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicNamespacedPmapCons.lean/declarations/mapaccumr-cons-source-edition-2.md) | 776 | `result-track:f452f5b1ed28f7292e12046d292513f8525b23971e0b32231f53726bdb418df9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cd362dfa63c9b42fdb8e896d1c15555a61fe7e5b8e99ad8ca64d48b605244da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant09ad68572ced5c47659b7d499c2adca759349b0c679d864f8ea54f4dbac9f84d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant09ad68572ced5c47659b7d499c2adca759349b0c679d864f8ea54f4dbac9f84d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
