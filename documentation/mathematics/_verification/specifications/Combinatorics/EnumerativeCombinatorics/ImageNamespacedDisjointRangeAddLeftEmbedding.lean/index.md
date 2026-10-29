# Verification target: Image Namespaced Disjoint Range Add Left Embedding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afa5c6c1770d50e9ed5fbc757f64ba337bac65cf",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afa5c6c1770d50e9ed5fbc757f64ba337bac65cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Embedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map.md) | 57 | `declaration-track:c556012b95cbc1ec5db3c2d8c75b50c50052fb88e1d61462bbe1f30dfd6c9343` |
| 2 | `theorem` | [map_val](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-val.md) | 62 | `result-track:133121403461bc71c99e95865d0c2e2fd5dd9dd0c904af4d0c5bccf9fe4a7887` |
| 3 | `theorem` | [map_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-empty.md) | 67 | `result-track:10c0a01ca30357ecbf23ad30d3e0e8c41e997c0c017fcf8d41f96819507e5fb7` |
| 4 | `theorem` | [mem_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-map.md) | 74 | `result-track:6fe17bfac508d09763091a49766d1e550ec93acc4e4e4c4ad22fe7d67c91184d` |
| 5 | `theorem` | [mem_map_equiv](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-map-equiv.md) | 80 | `result-track:fac1d1036a56f216cafb36c6d48c2d40bbcd4ae58c9915772d001836d89fc35e` |
| 6 | `theorem` | [mem_map'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-map-source-edition-2.md) | 92 | `result-track:e3176e57c5966e3827d775c5235496c8d7c75cf57308010d9c793b5ef6de66dc` |
| 7 | `theorem` | [mem_map_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-map-of-mem.md) | 96 | `result-track:c8d9e01168e83e478fa8c43d71f473da4d44d5d4c83f97339fb57c03455d941f` |
| 8 | `theorem` | [forall_mem_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/forall-mem-map.md) | 100 | `result-track:c4375d11d4f9555a480da2ea469a53a9c3181829df6da9d7053cd0a61ce8ff02` |
| 9 | `theorem` | [apply_coe_mem_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/apply-coe-mem-map.md) | 108 | `result-track:42acab7d6678562da76c5534ed31add9f7f906df69b2beac3af9593e30bc6875` |
| 10 | `theorem` | [coe_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/coe-map.md) | 113 | `result-track:6d5f5d273098fc6b08c41bbe9516a326a7e7b416f2d2c2d7747fa3406137004f` |
| 11 | `theorem` | [coe_map_subset_range](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/coe-map-subset-range.md) | 117 | `result-track:813d9f35f2a8d9784be59385b96885d2c5a40a80ef3931931bec48dc00f27fe9` |
| 12 | `theorem` | [map_perm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-perm.md) | 125 | `result-track:6366ff6d56b474a444e44db252cf8e6db8944e84425cc8629b96c05c7fea7d11` |
| 13 | `theorem` | [map_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-tofinset.md) | 129 | `result-track:edfa53307c5eab246ecb766c47f3a5a702d2afd4ecbd759481a326269af42f1d` |
| 14 | `theorem` | [map_refl](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-refl.md) | 135 | `result-track:558d1aaf02c1e3f3d343003ba047335a2c4d53bdad3e6d75b7649bc10d2c2677` |
| 15 | `theorem` | [map_cast_heq](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-cast-heq.md) | 140 | `result-track:c2073e396cf8cdd592110021f43b0b98bff892859999819d51902ac9c23f9dfe` |
| 16 | `theorem` | [map_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-map.md) | 146 | `result-track:0f74a56452e3277d171aa2a477d60748602cab822e54bdd646831065041fcf9a` |
| 17 | `theorem` | [map_comm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-comm.md) | 150 | `result-track:2634e641ebc9a03a3883e2b83990265f5acd69a00d46c2ffa34846306b50aa3e` |
| 18 | `theorem` | [Image Namespaced Disjoint Range Add Left Embedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finset-map-source-line-155-occurrence-2.md) | 155 | `result-track:7f5edaefbb3ab3eac548f65880c37a19df20485c0bfc227ee33810ed21ddedf9` |
| 19 | `theorem` | [Image Namespaced Disjoint Range Add Left Embedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finset-map.md) | 160 | `result-track:30edfdc582e0feca4357463fd79fe4afbc852f374fe9c2a4d659989a1af421cc` |
| 20 | `theorem` | [map_subset_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-subset-map.md) | 166 | `result-track:49f93ded8b17827477930654791d398fd42f898f59402d3c83d372a2c295acb4` |
| 21 | `def` | [mapEmbedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mapembedding.md) | 173 | `declaration-track:461da6dc6af9900abbb4da7f1cf6d6356bd9f5f87e63e26d11123a42e779c5a0` |
| 22 | `theorem` | [map_inj](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-inj.md) | 178 | `result-track:a0b20f1d2b5d344750fa4bd7ff00fb98bd9c36850020ef319a35dc2a5bdbaaac` |
| 23 | `theorem` | [map_injective](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-injective.md) | 182 | `result-track:d9d3c500d8f408ec9fecc69381823186a12c30b0b7ae699783b391dd48db68ee` |
| 24 | `theorem` | [mapEmbedding_apply](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mapembedding-apply.md) | 187 | `result-track:4391b29101de451263cb2b227d235df7c34cb1fa7844838ae375791bfac7ba72` |
| 25 | `theorem` | [filter_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/filter-map.md) | 191 | `result-track:526a0efb1c9ff8169c2e630d1d6da0b6c7016b59bc4e385318643d39e91c67be` |
| 26 | `theorem` | [map_filter](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-filter.md) | 196 | `result-track:aeceb50f209b0c61a0a38c74af909c453e94d03eeb990a7a70437da61a7f2a32` |
| 27 | `theorem` | [disjoint_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/disjoint-map.md) | 202 | `result-track:deedc4638c37a975cb5d0ffefa050eeda7473ac2bf9040bc790eecfb084e584e` |
| 28 | `theorem` | [map_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-disjunion-source-edition-2.md) | 210 | `result-track:c75d1418412a27fbaf07484f9fce283e7b87c2c17106543f4de5edb1d7a34ac6` |
| 29 | `theorem` | [map_disjUnion'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-disjunion.md) | 216 | `result-track:8b13ddabfaa33e6d7aab74748d66ea7935a5b83cadff0679aa24791e539707cd` |
| 30 | `theorem` | [map_union](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-union.md) | 221 | `result-track:b42b7dd6e8757fa8bdf7975b0fe9b40dcb69f4fdd820efd0120c77205b9f3351` |
| 31 | `theorem` | [map_inter](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-inter.md) | 226 | `result-track:bdd60278968e653fa25048fdb2bd22b5553197a0f4ff1320e5f3bfffe70fff90` |
| 32 | `theorem` | [map_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-singleton.md) | 232 | `result-track:a894513643d9708ff66b60514aeb53f7e30259c6d750740ee47449563f5a2d35` |
| 33 | `theorem` | [map_insert](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-insert.md) | 237 | `result-track:f4c58c3af43ea65c2445cce00f3fb3a13d196ef8adaaf5626751f61d531b8f63` |
| 34 | `theorem` | [map_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-cons.md) | 243 | `result-track:c2fa97fc738749297c4ea53e2455d3098a2ff91e90a54f118a5a9b785699460d` |
| 35 | `theorem` | [map_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-eq-empty.md) | 249 | `result-track:b6be02a8427da1d9f6a1bc48d333876e8f0db62f5982ac39bfd485fb083a0798` |
| 36 | `theorem` | [map_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-nonempty.md) | 255 | `result-track:3551e15f67960798b181f18a8a2ec995caf2804a19f468027d9e6494d66b1120` |
| 37 | `theorem` | [attach_map_val](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/attach-map-val.md) | 262 | `result-track:fad784a6bf789405f3ea38f4c760f1217ea20db30c2d115d259acd07bb9df8ce` |
| 38 | `theorem` | [disjoint_range_addLeftEmbedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/disjoint-range-addleftembedding.md) | 266 | `result-track:9f03d7b108a5db8499b74f9532b35d87545f51e5ca209916795eb8e27e86d4b7` |
| 39 | `theorem` | [disjoint_range_addRightEmbedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/disjoint-range-addrightembedding.md) | 276 | `result-track:305bf14248dbea74d77c452448afcf5635333a84a83cd09412aa142879abe401` |
| 40 | `theorem` | [map_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-disjiunion.md) | 286 | `result-track:9297d4efd8c8257380ffd1c5cec7ff90447dcb5c51b830b12bbd312a57a2fabb` |
| 41 | `theorem` | [disjiUnion_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/disjiunion-map.md) | 293 | `result-track:077b9485bab74f0565509ce011caf36e0b9704c042eeaa98674067d38e9aa3cd` |
| 42 | `theorem` | [range_add_one'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/range-add-one.md) | 306 | `result-track:9d4e2ec8fc8a9cbaf42a09e74960ea2b34bc2c99677f02be4f1d67d157a7b05f` |
| 43 | `def` | [image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image.md) | 319 | `declaration-track:fc3da911f43602c66a2f8c0d7dea49f19f201eb5ca0efe02192d8dc446ced5dd` |
| 44 | `theorem` | [image_val](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-val.md) | 324 | `result-track:f891976eae4d8fbea46f0256f5178632fd85460e1765b214f18b267340b2251f` |
| 45 | `theorem` | [image_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-empty.md) | 329 | `result-track:cf7c0f05a497d21278f30a57539be8dc4066baa4f9f4de3bb98fd5178e86a14a` |
| 46 | `theorem` | [mem_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-image.md) | 336 | `result-track:95bf9a7b906aaa436e24232371f53fa3dd81e972ea52911d76168c07757f1314` |
| 47 | `theorem` | [mem_image_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-image-of-mem.md) | 340 | `result-track:0d4cbc3487e18940e39afc1f63e025fd2a9bc4a9ab08e151d827ffaf53eba7f9` |
| 48 | `theorem` | [forall_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/forall-image.md) | 344 | `result-track:e68315fa988eab46e3eea4ff85715d4f33d3a6bbfe4224fe53ccadf37fba57ce` |
| 49 | `theorem` | [mem_image_const](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-image-const.md) | 349 | `result-track:d2798801af843d4ff1b643b7b354e990c9ce99d54075625fdb8a2f06cee31e38` |
| 50 | `theorem` | [mem_image_const_self](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-image-const-self.md) | 355 | `result-track:3ef8476f4df80d89eccd974ee1f01d8d6e2067bc28a279984215a51de65d57c6` |
| 51 | `instance` | [canLift](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/canlift.md) | 359 | `declaration-track:6c1decd4fc51cbad885b7224b46f484d836088bdae2ade341a031494dad566f5` |
| 52 | `theorem` | [image_congr](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-congr.md) | 367 | `result-track:db9bd5d5d624df5696b32b6b6d057b8ec9532336c9efca6e43fd8673c8c2fd53` |
| 53 | `theorem` | [Image Namespaced Disjoint Range Add Left Embedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-finset-image.md) | 373 | `result-track:34471f380e22ead5a3108907b26b06d771879bd1912ded98c193cde710c43b40` |
| 54 | `theorem` | [filter_mem_image_eq_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/filter-mem-image-eq-image.md) | 380 | `result-track:4efd6e60449a6c5b4a2b9f6f32a7ef6291b9a761fac3d4aba86417c119aaf29c` |
| 55 | `theorem` | [fiber_nonempty_iff_mem_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/fiber-nonempty-iff-mem-image.md) | 389 | `result-track:9ca9012a463e0c51b80a2d8b9b042f3633d8d2d7c2cf129513ef206135e06823` |
| 56 | `theorem` | [coe_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/coe-image.md) | 394 | `result-track:028acd23b18b2c76830b7aac872de8248a4c06a4c53a461e917091856d99dde9` |
| 57 | `theorem` | [Nonempty.image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/nonempty-image.md) | 398 | `result-track:17d8c68c7b97807139fb7c82d7f8b1e0d3d019b6a4504f04a30e9ae2f2fc049c` |
| 58 | `theorem` | [Nonempty.image_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/nonempty-image-iff.md) | 404 | `result-track:7bd64c1449d5dc78417ae542594b23bc2f48e2cabbf9be4a51cc5e2b11214e58` |
| 59 | `theorem` | [image_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-tofinset.md) | 411 | `result-track:5e2256c8115183d0574ad9f547069c36a63a89ca75aa567c2aa6963f91b2a43b` |
| 60 | `theorem` | [image_val_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-val-of-injon.md) | 416 | `result-track:38d7e9ce8f819f31ec2151b436c09dbec2a80869811eae79414e2e43850009f6` |
| 61 | `theorem` | [image_id](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-id-source-edition-2.md) | 421 | `result-track:8a6b69c1bde17183e2ab5ef703047723d048341f2d316a00ad0d2810e9f7cd09` |
| 62 | `theorem` | [image_id'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-id.md) | 426 | `result-track:5f0391be80ab63452a7dc89adc5b9d79dd2b8c304d75579bf4ab5208cad4624a` |
| 63 | `theorem` | [image_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-image.md) | 430 | `result-track:643e07f855bac3ac85bff1f5286abb5a95295aef1d85361f29eacc4b41fa667a` |
| 64 | `theorem` | [image_comm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-comm.md) | 434 | `result-track:d6e66c45f6bdb00be234b98b8e6b47f0381ea99c5073c0cfd97b3cb4c6bce158` |
| 65 | `theorem` | [Image Namespaced Disjoint Range Add Left Embedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finset-image-source-line-439-occurrence-2.md) | 439 | `result-track:215fece0317d550c0b2c52477c0801e534bde46b995aceb3dff99754df22d5d5` |
| 66 | `theorem` | [Image Namespaced Disjoint Range Add Left Embedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finset-image.md) | 444 | `result-track:0999ec3e1f7ba954e7e89607e17d8bfd4a49de99b0daeb2c0ef32b7c09477a4e` |
| 67 | `theorem` | [image_subset_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-subset-image.md) | 449 | `result-track:a3e8d7b348456ddd52edcd6ab9f5849c2618af9eeeb2a15d2136ebe8f2d14af7` |
| 68 | `theorem` | [image_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-subset-iff.md) | 453 | `result-track:fb3fcb4361013a3696acb309cf5e044353ee96d69e206ecedda15086228b4f9a` |
| 69 | `theorem` | [image_mono](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-mono.md) | 459 | `result-track:ee48f1cbb08d1dfd488f404d3f80fbf2d9daf5ed1ff328c7c74e69182d80f5af` |
| 70 | `theorem` | [image_subset_image_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-subset-image-iff.md) | 462 | `result-track:1744c45aaa157a73ea3a00fc2079a8a2c0eecca982ab58ca3ad9d5322c8a2cf0` |
| 71 | `theorem` | [coe_image_subset_range](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/coe-image-subset-range.md) | 469 | `result-track:25a95400a08f17a242d3ac8cc18ba7683c185e9927d80ece3ea3b7b0fc5bda5f` |
| 72 | `theorem` | [image_filter](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-filter.md) | 475 | `result-track:671a1ebf43a348ede049c3b6052e0b3abf664de8352b1674d9e4fbc7755590d5` |
| 73 | `theorem` | [image_union](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-union.md) | 484 | `result-track:73fb7f500ed456b51806735db5f3d06bccc421fcf39ff2ac6c9ff343ba5186f8` |
| 74 | `theorem` | [image_inter_subset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-inter-subset.md) | 489 | `result-track:126ebc34ee25e220609982e6435701bec02873d92c195df3ba8b04527b552ab3` |
| 75 | `theorem` | [image_inter_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-inter-of-injon.md) | 495 | `result-track:a9bc192bd3fca9b68857d7de3b780af69a1f9ea3fdab27038eb64d6b43e3d8fd` |
| 76 | `theorem` | [image_inter](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-inter.md) | 502 | `result-track:d1d5d4e3f8745bb616337fecdef5eb1cf7868a4b7b450065de1357afc728be3a` |
| 77 | `theorem` | [image_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-singleton.md) | 508 | `result-track:03dedbb03812ddfdc4c2a7ffc2362e175625362045642fc4adc59a39ce54acc9` |
| 78 | `theorem` | [image_insert](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-insert.md) | 513 | `result-track:ec0b5111ff85d3c87156011bdf5e063c72d4f42abda79f02b045c2ecfca00964` |
| 79 | `theorem` | [erase_image_subset_image_erase](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/erase-image-subset-image-erase.md) | 518 | `result-track:ba4474f15c9a3da355bfe8efb9b5b296b084b6b62855cf57dc916c062515cb67` |
| 80 | `theorem` | [image_erase](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-erase.md) | 526 | `result-track:e79d6a6b012b9c6dd4e10b7ed1aa7a1983fe472cf61a1d5476fb232fa1824ed9` |
| 81 | `theorem` | [image_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-eq-empty.md) | 535 | `result-track:8556da6aee22ac3ba4223541316020b53b5b1390435dae083e5cbb74322ee8fd` |
| 82 | `theorem` | [image_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-sdiff.md) | 540 | `result-track:d9863b52dd9695213528654e4d2574e6a183992ddc733b0d0423eca95fc5e8e2` |
| 83 | `theorem` | [image_symmDiff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-symmdiff.md) | 547 | `result-track:566491ace5f2881035f3d9aa300b8eee22f3ad9cd0ea259a3a78fb8dbae8e457` |
| 84 | `theorem` | [Image Namespaced Disjoint Range Add Left Embedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/of-image-finset.md) | 555 | `result-track:ec4bb81c302623d0e4576167b8e7ede44df22cad2e5d2bc3cfc88b37a7564037` |
| 85 | `theorem` | [mem_range_iff_mem_finset_range_of_mod_eq'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-range-iff-mem-finset-range-of-mod-eq-source-edition-2.md) | 561 | `result-track:a50814d0e4a2634fd984c07af36830a6e7118983145a876b6e6b14ecd9304d7f` |
| 86 | `theorem` | [mem_range_iff_mem_finset_range_of_mod_eq](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-range-iff-mem-finset-range-of-mod-eq.md) | 574 | `result-track:2e77ed84e0f6ce06b428baa651ad93bb9432c3f84e7d70cdf2168115ed675f7d` |
| 87 | `theorem` | [range_add](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/range-add.md) | 588 | `result-track:496d279bb12d35aeb5c9a9e4bd282bf88b76de465ca87a24c50bf97d23494a43` |
| 88 | `theorem` | [attach_image_val](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/attach-image-val.md) | 594 | `result-track:807aa615452ec39fcf454fce86cfcbcaa91cafe16afb78e4f1aa5d370d1e97cd` |
| 89 | `theorem` | [attach_insert](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/attach-insert.md) | 600 | `result-track:521cc58ea0c71bbb5b3d67ec6366b28d7c472d77a558f8e3446f59d69e40f5b7` |
| 90 | `theorem` | [map_eq_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-eq-image.md) | 611 | `result-track:7d82235d04dab68dde61c5cf236a9981185490d303a9f53d4ed8c8745c12dfe4` |
| 91 | `theorem` | [disjoint_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/disjoint-image.md) | 616 | `result-track:76d36ac317ae3569041825c6013aa439c0b79e77a24a38d5c49bc2b9143b02ba` |
| 92 | `theorem` | [image_const](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-const.md) | 622 | `result-track:4afffc928cd8193affd6de8e94ec5d292e0da7ebb71571734bb7693f50906725` |
| 93 | `theorem` | [map_erase](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-erase.md) | 629 | `result-track:1e7a5610d03fdd09c5c3c48c172b5c9d13b9591909f67b82118ed5168a70a727` |
| 94 | `theorem` | [image_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-biunion.md) | 635 | `result-track:728e69ee4554fd98b70f5a4ead0a772f23c2e6dea80b0731d0e37901eabfc10e` |
| 95 | `theorem` | [biUnion_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/biunion-image.md) | 641 | `result-track:45162d399e8d6b8517ec059af943ea3ce400510a540e9788b921772635c32e23` |
| 96 | `theorem` | [image_biUnion_filter_eq](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/image-biunion-filter-eq.md) | 647 | `result-track:0cb128f2d37c4c5e40110b14ae17780c6947c9b4b6e15fd808e08e5ede31cbc9` |
| 97 | `theorem` | [biUnion_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/biunion-singleton.md) | 652 | `result-track:9fb0ec037f7d5f73f1f1343b016a4a724504865e6ed2ba5282d6974c2a38338c` |
| 98 | `def` | [subtype](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/subtype.md) | 665 | `declaration-track:02264ee8b7f9477db20059ca4d737f91ee67865b9b13db163ed0f36312d8330e` |
| 99 | `theorem` | [mem_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-subtype.md) | 672 | `result-track:4040de2682069a53c52f3f01800cc9658bc2d59b1a0c34be09f71d8b86c8d505` |
| 100 | `theorem` | [subtype_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/subtype-eq-empty.md) | 677 | `result-track:effadcaa1e5d9a7ca749689e7052b07eb0fb9cac184431363d66cfd50c57e950` |
| 101 | `theorem` | [subtype_mono](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/subtype-mono.md) | 682 | `result-track:826610f42444abbaacadfbf9d7e0ee85b8d3723b9516d71ac679f5e7960963f0` |
| 102 | `theorem` | [subtype_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/subtype-map.md) | 689 | `result-track:02143923686cdb69de1acdd629268f6140b52fc34032c6cae0f4b048fba40178` |
| 103 | `theorem` | [subtype_map_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/subtype-map-of-mem.md) | 697 | `result-track:33fc8d171d3c6b6cc0faaa3b8f99e35a1c9fec3d4c3fe97fc65eb0c5b59dd5ab` |
| 104 | `theorem` | [property_of_mem_map_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/property-of-mem-map-subtype.md) | 704 | `result-track:653099c75d0c5e452f92c18d3bca75fadf6f0eaa334c496605ef41982dd63d76` |
| 105 | `theorem` | [not_mem_map_subtype_of_not_property](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/not-mem-map-subtype-of-not-property.md) | 713 | `result-track:5e1505c10bd5f53007f75d0859444da24fad764f2559dd02edac617f4baeb7a6` |
| 106 | `theorem` | [map_subtype_subset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/map-subtype-subset.md) | 721 | `result-track:a553112ef00a9069da0f5112c02bed3ec062b11665c49fda1f24dea3eff5df49` |
| 107 | `def` | [fin](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/fin.md) | 735 | `declaration-track:e56e45d961c69c5bbb3cc8a17844c1fbfeb272565d215db4828f2808eb758368` |
| 108 | `theorem` | [mem_fin](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/mem-fin.md) | 740 | `result-track:4a8ac22a020c76527fb184ad66747cb74a8b3a054da1e2f742127ba6a0b18c8d` |
| 109 | `theorem` | [fin_mono](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/fin-mono.md) | 745 | `result-track:646c2b77c970a1fd74640833af9b8313dd2a36db381fd08822f6d3ae9fd37673` |
| 110 | `theorem` | [fin_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/fin-map.md) | 749 | `result-track:61f385ffd4c095b7e82a12002c61e8da7440a42aebf99018737d723c4251543c` |
| 111 | `theorem` | [subset_image_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/subset-image-iff.md) | 753 | `result-track:3dd46d9f530a0c0f5b536851a72a8c582713fd6da34722d47b4b6e32c10a7c79` |
| 112 | `theorem` | [range_sdiff_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/range-sdiff-zero.md) | 766 | `result-track:c4ef7219ced4ba16d9813a1b57ab44c82b6dd07c01fc5d8be994a055626016ee` |
| 113 | `theorem` | [Multiset.toFinset_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/multiset-tofinset-map.md) | 776 | `result-track:85c534299d76d2682ad859c087a5ae1cb05c7e8d171396195a3036e53782b498` |
| 114 | `def` | [finsetCongr](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finsetcongr.md) | 784 | `declaration-track:fe8ca4d440e16c5dc1d3b4b369a625ffd3dbad72ba15627bd11aa5e7e80e9d2c` |
| 115 | `theorem` | [finsetCongr_apply](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finsetcongr-apply.md) | 792 | `result-track:48380662acfcc5e8b6428a3d44e009e564743c1c8e1e082c3a2540c44bd680de` |
| 116 | `theorem` | [finsetCongr_refl](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finsetcongr-refl.md) | 797 | `result-track:a0099581e0a91d6123ffc2cd9610667d65eee5c08712061852cbe6b3d26966ca` |
| 117 | `theorem` | [finsetCongr_symm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finsetcongr-symm.md) | 803 | `result-track:c9d932cd09d7994ecadc3ae083f9b5b247b7b67eeba8802b28546869c9b91e3b` |
| 118 | `theorem` | [finsetCongr_trans](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finsetcongr-trans.md) | 808 | `result-track:bb46bfe0122230c960a3ed24ef25be8e8ee29da75bf2b5168a91562d37c85891` |
| 119 | `theorem` | [finsetCongr_toEmbedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageNamespacedDisjointRangeAddLeftEmbedding.lean/declarations/finsetcongr-toembedding.md) | 814 | `result-track:f2158911eedd3916b632ae620c948510b5eef6ee23ab872b2bdcb34a17f42eae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=639adc175624abd2061db070517e474ffd76d5fc2c7c8e14fabf7379a6f2d463 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
