# Verification target: List Sort Sorted Cons Cons

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6898e14de5800e2809aa857baf7f0377fef6f5e7",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6898e14de5800e2809aa857baf7f0377fef6f5e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Perm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.OfFn` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TakeWhile` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted.md) | 37 | `declaration-track:5ee8f4b94ac2557202caa92228be904521367ccc5eb8130319cde0b308c6fd0e` |
| 2 | `instance` | [decidableSorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/decidablesorted.md) | 40 | `declaration-track:affd3487b52edad1b855cfb6c1f5f44428a8a5e705f08978d19f79a5ef84abd5` |
| 3 | `theorem` | [Sorted.le_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-le-of-lt.md) | 43 | `result-track:a7e0f7b887f1ef9fd63d029f48a34efc2d252f5e67cee991b022b943218d337a` |
| 4 | `theorem` | [Sorted.lt_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-lt-of-le.md) | 47 | `result-track:cf1ffbcfddf05aaf857d487fd6b92c5c81485a7d458a5c74e59ff51cfe2fd61a` |
| 5 | `theorem` | [Sorted.ge_of_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-ge-of-gt.md) | 51 | `result-track:77919011579035d1ccfc5866ca4d8a1b718333611a7f42c9c1536c54f1af446e` |
| 6 | `theorem` | [Sorted.gt_of_ge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-gt-of-ge.md) | 55 | `result-track:bed293d11c8c9ee40b685a258ce9a48dac1d7fb63266324c7e67a8f2569e724d` |
| 7 | `theorem` | [sorted_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-nil.md) | 60 | `result-track:82b61b1fde5c3fae2ace4d02f37578d5a848eaf28fb579b2af71cfc6ce6e6d67` |
| 8 | `theorem` | [Sorted.of_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-of-cons.md) | 63 | `result-track:37711d4e29fb53b12dbfbcef2c5463ce6b7740d8e9fcf1452c4591bc0db9a9f2` |
| 9 | `theorem` | [Sorted.tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-tail.md) | 66 | `result-track:d677f7d49e338abefb2747747ac28a6532477657e782415d0b932b36ebd9baf2` |
| 10 | `theorem` | [rel_of_sorted_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/rel-of-sorted-cons.md) | 69 | `result-track:e34c2e3bf5e6ef5cf3d55bd8de818cec5c0b01dad9e362649e01436b68d7655a` |
| 11 | `theorem` | [Sorted.cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-cons-source-edition-2.md) | 72 | `result-track:bce045846edeb145e3b65bc2649ad3260b945294e7dddfff881b43259b837737` |
| 12 | `theorem` | [sorted_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-cons-cons.md) | 76 | `result-track:58a41825e93b1f4ece5863970e5be469219b4150cd81d9dfed02597fabaa2a41` |
| 13 | `theorem` | [Sorted.head!_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-head-le.md) | 84 | `result-track:21e0621787297f248ae681ca970921c82a5a61af5360eb56567964cc3539aff2` |
| 14 | `theorem` | [Sorted.le_head!](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-le-head.md) | 91 | `result-track:825b851df74b62896741c3efd23286b2bb79aa3d0d55754d1240803a61c8b2d2` |
| 15 | `theorem` | [sorted_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-cons.md) | 99 | `result-track:a3c76ff2371ad9c0273c46856d9aaf4571f1c6bdf9958d41a15025ebd616e824` |
| 16 | `theorem` | [Sorted.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-nodup.md) | 102 | `result-track:cc710f1107ec8708a285435d7a9b1091e78cea98837fba4103e14e2e4480103d` |
| 17 | `theorem` | [Sorted.filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-filter.md) | 106 | `result-track:930d70e2eb05eb5acc63d51058d6d8e89f459af8dc61de9ecda0679500921bb9` |
| 18 | `theorem` | [eq_of_perm_of_sorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/eq-of-perm-of-sorted.md) | 110 | `result-track:8015bb301a3d918474c14a61ed64848f22a633008ddd0f156627de149e7508a8` |
| 19 | `theorem` | [Sorted.eq_of_mem_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-eq-of-mem-iff.md) | 129 | `result-track:c4ba676efc3e3464c4729289803e3425df81c6ea5c37eaec56a9ad8e82365fba` |
| 20 | `theorem` | [sublist_of_subperm_of_sorted](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sublist-of-subperm-of-sorted.md) | 133 | `result-track:53674df2c5959a31eb13348eb849c0a0aad8c83a22fc98d2d45a7817e5bdcc7f` |
| 21 | `theorem` | [sorted_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-singleton.md) | 139 | `result-track:d84be8115a5137b940d801e6c49ccda1b0a63059c6a3de8538d15cd1b4e42cc9` |
| 22 | `theorem` | [sorted_lt_range](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-lt-range.md) | 142 | `result-track:baf4fd520dadcc5597105b32a9817a121c749c74358949fac55e39ac19aabc98` |
| 23 | `theorem` | [sorted_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-replicate.md) | 146 | `result-track:9a2aea2ff46b7bd498d7fa14ceec4d681ca9052d1393a653988841fff6bc0282` |
| 24 | `theorem` | [sorted_le_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-le-replicate.md) | 149 | `result-track:08a097b58daf048fcef0da4b48198e2249a8784951ce528043e61a1392a6155b` |
| 25 | `theorem` | [sorted_le_range](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-le-range.md) | 152 | `result-track:3cd68ea57526afd14e362ebf8253b05c4c2c1641887ed09545fb694a97129960` |
| 26 | `lemma` | [sorted_lt_range'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-lt-range-source-edition-2.md) | 155 | `result-track:f13a503869a6fa9ac012e98b519bd7777dd541caa3f92b43499e6443813350f2` |
| 27 | `lemma` | [sorted_le_range'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-le-range-source-edition-2.md) | 165 | `result-track:f16eaa05d5c37ec1d2a9657d4f0ceed1ca0d4b3d5f93b94912defb729c81c8e6` |
| 28 | `theorem` | [Sorted.rel_get_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-rel-get-of-lt.md) | 172 | `result-track:6092cc80c7b320e5b8a3d99fa079d73e952887a49d76d022d4d4b475a52ba2b1` |
| 29 | `theorem` | [Sorted.rel_get_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-rel-get-of-le.md) | 176 | `result-track:20f087b063b0f12edd1ed381c265be513d5ebc518b9ef0898c8837069441a257` |
| 30 | `theorem` | [Sorted.rel_of_mem_take_of_mem_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-rel-of-mem-take-of-mem-drop.md) | 180 | `result-track:bd2db2918a13f03cf83c90906452ca928915505e55f1d1abdb13b64555756329` |
| 31 | `theorem` | [Sorted.decide](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-decide.md) | 192 | `result-track:09afc810198cee077a262dd480f6c70a8c97e8abc31f74219d9e08a03ca55526` |
| 32 | `theorem` | [sorted_ofFn_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-offn-iff.md) | 203 | `result-track:2e7a666ae19bdada5040e60fdc577d4fb63e18354120df907a2bfb55e8d1e801` |
| 33 | `theorem` | [sorted_lt_ofFn_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-lt-offn-iff.md) | 211 | `result-track:104fbcc5fbf8d83d3bcd0c3aaf9f4e8794e7e11f2783bdce1929f3208e2f4c10` |
| 34 | `theorem` | [sorted_gt_ofFn_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-gt-offn-iff.md) | 215 | `result-track:6f11b8dddb758fd06d858d2702899dd239022ee991f5d0d86ad777dec5e660b6` |
| 35 | `theorem` | [sorted_le_ofFn_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-le-offn-iff.md) | 218 | `result-track:c04f8b1046544710dd2d88b089cce53625fd4fb1124ca8a49d74fa84614f297a` |
| 36 | `theorem` | [sorted_ge_ofFn_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-ge-offn-iff.md) | 225 | `result-track:759a51f670313128895a41e66f715bec385910f5d4d68d3dc37e9dea1c467f37` |
| 37 | `lemma` | [Sorted.filterMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-filtermap.md) | 233 | `result-track:035a05033bf1149f83b406e00326c905c574c945acd839b6e8a5038d442215ff` |
| 38 | `theorem` | [sorted_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-listmap-source-edition-2.md) | 259 | `result-track:7371d5e4904e2b7c85980cfb0c1959d0460c53e20311a71d67532a0404ce3da2` |
| 39 | `theorem` | [sorted_swap_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-swap-listmap.md) | 263 | `result-track:030a85e9c533f1704e66e8e621d2a96c62ab35b76be15db7328c074ea327f20e` |
| 40 | `theorem` | [sorted_lt_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-lt-listmap-source-edition-4.md) | 274 | `result-track:adbc7975e5252fe569a1cf3b80196709e9288812f8574da1972fb259d8eb3dd3` |
| 41 | `theorem` | [sorted_gt_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-gt-listmap-source-edition-3.md) | 279 | `result-track:cf69b9cf5e17e014f5256412fc11fbfaf98e91f6e448fd6761efb6c1befb06be` |
| 42 | `theorem` | [sorted_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-listmap.md) | 290 | `result-track:72d096a73d86019faa787529ddf958a46742712639455d3fc4210453fd3c6d57` |
| 43 | `theorem` | [sorted_swap_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-swap-listmap-source-edition-2.md) | 294 | `result-track:a2bd92bdb9555d280d8e6b1fe7b0779c0a334a60f927a6defc753c3794c2fc62` |
| 44 | `theorem` | [sorted_lt_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-lt-listmap-source-edition-3.md) | 305 | `result-track:77df533883bdffdf7c878468a13854754d1bbc9d6e00af9e5c4398022b7e49c7` |
| 45 | `theorem` | [sorted_gt_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-gt-listmap-source-edition-4.md) | 310 | `result-track:e1ed70ebcffa5a02ea99c1e051c841652c4403a6c6bbd55a1ea556295732773a` |
| 46 | `theorem` | [sorted_le_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-le-listmap-source-edition-2.md) | 320 | `result-track:c6f4bb319ef8a846d06bb23a872cc46ea342109b52b460d9610255c32ea5921c` |
| 47 | `theorem` | [sorted_ge_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-ge-listmap.md) | 324 | `result-track:5597e21418fa32c6e5fce1cb1c1af8af92d62565320dbff73420c7a58a4bf758` |
| 48 | `theorem` | [sorted_lt_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-lt-listmap.md) | 328 | `result-track:29559273a8e5b807642da4503e4af9801e501f296ec3792251c3c669e7a7c1b6` |
| 49 | `theorem` | [sorted_gt_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-gt-listmap-source-edition-2.md) | 332 | `result-track:ae08544f23e493e06583b23634a4b7d495bc6c30535d92d17b2a2daf3e52e082` |
| 50 | `theorem` | [sorted_le_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-le-listmap.md) | 342 | `result-track:90d9d9982437fa59182dff835c30e086c1f89fe7f02c533b729a19e8daa0f83c` |
| 51 | `theorem` | [sorted_ge_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-ge-listmap-source-edition-2.md) | 346 | `result-track:c97a50994ae6739ef5a904cd183f57e0f6f381ea984539b46527a69ace1ab54f` |
| 52 | `theorem` | [sorted_lt_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-lt-listmap-source-edition-2.md) | 350 | `result-track:6056fee59b520cd849ab7e2a034d8ec6a9552c2126ec1f22e4b875e11b66b09f` |
| 53 | `theorem` | [sorted_gt_listMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-gt-listmap.md) | 354 | `result-track:12bb2f4350ae4ca918b1d7ec33131ea2064fbe94fa8ca5650895152a926d53cf` |
| 54 | `def` | [orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/orderedinsert.md) | 378 | `declaration-track:8f01c3ae0b3f813ea83306837fc51e388dc5eac13d5296cd8bf6740e13d7f247` |
| 55 | `theorem` | [orderedInsert_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/orderedinsert-of-le.md) | 382 | `result-track:9e556abe53ccd17bd7dae3be0f63556b2ccd987c5ce659763d04437a738e894a` |
| 56 | `def` | [insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/insertionsort.md) | 388 | `declaration-track:cc33587f95bef6a60146a45d40f3034d22a243252ad051406b5aad050a12df78` |
| 57 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/example.md) | 393 | `declaration-track:47c77c40cfeb6968941a191d20fc2c053d669c12dba8b77e063758ed48e89fe2` |
| 58 | `theorem` | [orderedInsert_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/orderedinsert-nil.md) | 398 | `result-track:eafd2864e3dc7640d22876f3a3911dc2e1e13ce8292daf786c3d7a471bc53833` |
| 59 | `theorem` | [orderedInsert_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/orderedinsert-length.md) | 401 | `result-track:55ea30ac85552702f2c87b564d6980855494b96ca4c0b40fc7f28d47f13c9fe6` |
| 60 | `theorem` | [orderedInsert_eq_take_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/orderedinsert-eq-take-drop.md) | 408 | `result-track:23815fdb597878fa56bc1889da1862d1f599cef45f3658b419db1919c22230f8` |
| 61 | `theorem` | [insertionSort_cons_eq_take_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/insertionsort-cons-eq-take-drop.md) | 416 | `result-track:6a53c7b1b871844999e7f8d279dab137215e882ca77e99ba521e2aa5e1c58db0` |
| 62 | `theorem` | [mem_orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/mem-orderedinsert.md) | 423 | `result-track:bf86dc0e952791b5a9279eb6a721b7de538e126fce21b204e290574fbd18bfcd` |
| 63 | `theorem` | [map_orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/map-orderedinsert.md) | 433 | `result-track:27312c9165d5304f6875a1d2ca9389aceee55acbaabcbfdc41b8bddd9f38488d` |
| 64 | `theorem` | [perm_orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/perm-orderedinsert.md) | 449 | `result-track:c8500ddfc9c1e073a8a2961ef8cac4f88b0a8c054358c6e38e94fb86e05652fc` |
| 65 | `theorem` | [orderedInsert_count](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/orderedinsert-count.md) | 456 | `result-track:8427c380f1a939799f8b2e9766a40a9b685e42942b3c20d5776f64157d57b9a3` |
| 66 | `theorem` | [perm_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/perm-insertionsort.md) | 461 | `result-track:1978d686bd2e0a6b9a7e4338f79f08e5ffdcca15e020f151df53243d597d77d7` |
| 67 | `theorem` | [mem_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/mem-insertionsort.md) | 467 | `result-track:450db68fe6f56146ec03218ce0603aa439ce150ce05884cc4e35912f55a139bc` |
| 68 | `theorem` | [length_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/length-insertionsort.md) | 471 | `result-track:3ef0cacde69856316e02398f40c6be915f56a9a5474d156462ca1aee7d35ec4d` |
| 69 | `theorem` | [insertionSort_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/insertionsort-cons.md) | 474 | `result-track:f33cb730856eacfab95529f87aee5c16278711a494d4b56257d39a3b468e9234` |
| 70 | `theorem` | [map_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/map-insertionsort.md) | 485 | `result-track:e9c3706442972f32b05d44313cf02442eb958992f716e2dcbdc3b1438065d269` |
| 71 | `theorem` | [Sorted.insertionSort_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-insertionsort-eq.md) | 500 | `result-track:503c93e3e47f0d275d445ed38443440bb6a23eaa49f66cab4f333c22d4a57e7b` |
| 72 | `theorem` | [erase_orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/erase-orderedinsert.md) | 508 | `result-track:44fbc567f388baacb6375aa03353e8ef66abdac00cefef2939e058d4401dfdd1` |
| 73 | `theorem` | [erase_orderedInsert_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/erase-orderedinsert-of-notmem.md) | 517 | `result-track:ed00f2e1cf5bd8f4098f256661da462cabffb0deb1c96449ccbdaeddf20d4633` |
| 74 | `theorem` | [orderedInsert_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/orderedinsert-erase.md) | 528 | `result-track:071e5619f9817447909aaa2ed9e5543473d6fbbd87b177ba54a49dee963fbf9f` |
| 75 | `theorem` | [sublist_orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sublist-orderedinsert.md) | 547 | `result-track:2ab499321c91b69797c45158f9e1b9ad0965332697b7cb8f2dc5273632b00e9b` |
| 76 | `theorem` | [cons_sublist_orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/cons-sublist-orderedinsert.md) | 552 | `result-track:dc44bcdda71e5db8bc159426ef2f1d1bd47ea1cd9e53f474d9822a8e5d47c220` |
| 77 | `theorem` | [Sublist.orderedInsert_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sublist-orderedinsert-sublist.md) | 564 | `result-track:c7dce544442cdcb8d9e3d2d1d8c04e0da1430c7f8cf4f500435fc7a4c3ecd9e4` |
| 78 | `theorem` | [Sorted.orderedInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-orderedinsert.md) | 590 | `result-track:7c3609cd4d238794563946c709546f0bd52a2a64eaa17d4d67244e55ef6d308c` |
| 79 | `theorem` | [sorted_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-insertionsort.md) | 606 | `result-track:a2b100f4fbfa06c63d5b68168eb065754e405ff160aa50399c73aaf2ba215636` |
| 80 | `theorem` | [sublist_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sublist-insertionsort.md) | 615 | `result-track:22616392ca23c8635766375b0a864ec31460967e2dc885ea96e58b518deb6259` |
| 81 | `theorem` | [pair_sublist_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/pair-sublist-insertionsort-source-edition-2.md) | 631 | `result-track:c90f2d6b00f175f3c422135621ad5f9bb4226b44e3d59d98e4e24369b4822214` |
| 82 | `theorem` | [sublist_insertionSort'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sublist-insertionsort-source-edition-2.md) | 641 | `result-track:3d5dec573712c83e41dc91222cd8d43aea2caa253fcd0daf6f52c876e16cccca` |
| 83 | `theorem` | [pair_sublist_insertionSort'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/pair-sublist-insertionsort.md) | 661 | `result-track:7c74ce84714a76169f26d1e7c3753f66b1e0d5c293c0fe9e232bdeb9f8090c8a` |
| 84 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/example-source-edition-2.md) | 676 | `declaration-track:cd67f2986bdbd0f85ae657b17d4d740d4c0306425245a200d61c23b44dc05aa3` |
| 85 | `theorem` | [Sorted.merge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-merge.md) | 688 | `result-track:3b06437dc8a82abf2cc8a126b78b011355a26be24dae5cfd605a8377143cc551` |
| 86 | `theorem` | [sorted_mergeSort'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/sorted-mergesort.md) | 698 | `result-track:c818ade7c21524ace0b8732d5c4b4b09b16aa7dd2d7a721425e6581548e7bc56` |
| 87 | `theorem` | [mergeSort_eq_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/mergesort-eq-self.md) | 706 | `result-track:a86052be5e5188e35d5c1e18069b2eabccb32265e40585cdad78d5ed61a4be38` |
| 88 | `theorem` | [mergeSort_eq_insertionSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSortSortedConsCons.lean/declarations/mergesort-eq-insertionsort.md) | 709 | `result-track:3ea20792af4a1a98b2798f236f12bbca900591d8111ff44577f48d718896e4fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3172a599eca13c1c717d8ff83e1860797611ed4e140013e39031fa6b71f89430 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant20540e3843ec63712f922953a5a9c51aea3eca2f7823521966d8613ddbfaf49f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
