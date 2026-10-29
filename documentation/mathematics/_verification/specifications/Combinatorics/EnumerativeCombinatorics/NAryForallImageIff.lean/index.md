# Verification target: NAry Forall Image Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5dbcb2abb70c16930ea234705c7d6160f13e86c",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NAry/Variantadfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5dbcb2abb70c16930ea234705c7d6160f13e86c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NAry/Variantadfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NAry/Variantadfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [image₂](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image.md) | 39 | `declaration-track:dd3400ddd7436f487b8879eaaeb690e079c4617174c3066ee15ccf8ea5c419d2` |
| 2 | `theorem` | [mem_image₂](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/mem-image.md) | 44 | `result-track:e126c622ab0fb76328e9fc7294d83e93b41197cf8fad0d4946dc618786f69b62` |
| 3 | `theorem` | [coe_image₂](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/coe-image.md) | 49 | `result-track:ff6f0d893aed5ea12a03a15f224a2052f2aa905cf29e4bc325489ddc93c138d2` |
| 4 | `theorem` | [card_image₂_le](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/card-image-le.md) | 54 | `result-track:8965d4a277bfd55e6a82b37d16ef90a831f38f5cd6671d30a26007cc98ad2f28` |
| 5 | `theorem` | [card_image₂_iff](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/card-image-iff.md) | 59 | `result-track:cbb2e6bc9c5f3c7564b95db10a8af5cfe5818d63d6877e422801fc31940eda63` |
| 6 | `theorem` | [card_image₂](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/card-image.md) | 65 | `result-track:910746532a289f50c68d0419fb03868d2f1fb630883be24beae830127b3dfaa0` |
| 7 | `theorem` | [mem_image₂_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/mem-image-of-mem.md) | 70 | `result-track:84d781c22d12847de79e294f8773d205d552c55bf2e73e5e4e72153ec4e54434` |
| 8 | `theorem` | [mem_image₂_iff](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/mem-image-iff.md) | 74 | `result-track:dfa50a017052d6859737de37a4b21c0277ed7fc24dad2c0e5f4db5ef419a510a` |
| 9 | `theorem` | [image₂_subset](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-subset.md) | 78 | `result-track:e9fe120ea7f4c4b1acd9395208c8a9bb0111ec8eabdda93615641fc86b3f8eed` |
| 10 | `theorem` | [image₂_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-subset-left.md) | 83 | `result-track:3319a0fb2ebc5b1196a26a790bf5f0bfca00bde7afa20062492bd52ae7e96d8f` |
| 11 | `theorem` | [image₂_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-subset-right.md) | 87 | `result-track:24d532dca997b9c443b5439ab9a99e7e22fd5af8a56013b0d877ffa6d572e504` |
| 12 | `theorem` | [image_subset_image₂_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-subset-image-left.md) | 91 | `result-track:36f64dbea56e54d303190ea4f045cb38209b3ccb486b0041a1ae94cee77bcabb` |
| 13 | `theorem` | [image_subset_image₂_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-subset-image-right.md) | 95 | `result-track:49282ec267fd0e0430b241bf7ca3b6ae9f5c476247ca477085c82a0ffb0e6122` |
| 14 | `theorem` | [forall_image₂_iff](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/forall-image-iff.md) | 99 | `result-track:49fb4d7c09fdc35df2deb16e2d62146356fde7b095a28c57bf7cdcfc213734cd` |
| 15 | `theorem` | [image₂_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-subset-iff.md) | 105 | `result-track:6fc006adc250dbf1b86258e0bdc07135e44dfedb8af4f07ac40d86ba8c685e77` |
| 16 | `theorem` | [image₂_subset_iff_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-subset-iff-left.md) | 109 | `result-track:85715640ff90efd2001e2b9ff43c97b820521d2ed519b9dc6b0f36b5bd36217d` |
| 17 | `theorem` | [image₂_subset_iff_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-subset-iff-right.md) | 113 | `result-track:3ef69d7da65d2fa1219e9ed57797cbe6245f5f260e26d8c2ba9f42740eeae113` |
| 18 | `theorem` | [image₂_nonempty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-nonempty-iff.md) | 118 | `result-track:85431f2bc14e7880c9ae24056751202985b5d2efd330044a66051adddcad89fb` |
| 19 | `theorem` | [Nonempty.image₂](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/nonempty-image.md) | 123 | `result-track:4631ac4188f6d79d97db865fdbcd41e885b57bf8712e6add766c5adc5835e4a2` |
| 20 | `theorem` | [Nonempty.of_image₂_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/nonempty-of-image-left.md) | 127 | `result-track:fcc4746d5b738955f1ae6b205670050a31cc12f426e1667c36ab2a581d27b402` |
| 21 | `theorem` | [Nonempty.of_image₂_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/nonempty-of-image-right.md) | 131 | `result-track:a5b9f4ace8155383bb95e78c8f7d64d2ef1cac41c0c72e9f985c899cc44f4868` |
| 22 | `theorem` | [image₂_empty_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-empty-left.md) | 136 | `result-track:8b62bd72f030bdee792207194acc1e514ec0dca7bf4267bf451ac0c5451ae87c` |
| 23 | `theorem` | [image₂_empty_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-empty-right.md) | 141 | `result-track:a1e865d8fa9257e2d94317421c7834bea712191bea967eb94eaa0bd718cdb35f` |
| 24 | `theorem` | [image₂_eq_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-eq-empty-iff.md) | 146 | `result-track:56751195ac46c262874585128c28dd8b3a2f0902f64545e56b274414b29914f4` |
| 25 | `theorem` | [image₂_singleton_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-singleton-left-source-edition-2.md) | 151 | `result-track:eb890dd2f0633f6c066a6c57840d2b40a6eca06de5dde1ea91f17503a380bac0` |
| 26 | `theorem` | [image₂_singleton_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-singleton-right.md) | 156 | `result-track:df410a0bd47b874ce65e632be3f700a96120ea0cc063b260d94f0e022c6a2cee` |
| 27 | `theorem` | [image₂_singleton_left'](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-singleton-left.md) | 160 | `result-track:213b014736368c09246d284585c6cf9a3a9b333e70c181bfc698430c37a6416a` |
| 28 | `theorem` | [image₂_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-singleton.md) | 164 | `result-track:bb1ebd3028d68f45b0a2c0bd142a9fa1c0952dc1c79228547cd50c6ed57848f4` |
| 29 | `theorem` | [image₂_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-union-left.md) | 167 | `result-track:0e593e8089c4ceb2441c4470eac0d5ece90521277d16d6800e9ffd0320a7be6d` |
| 30 | `theorem` | [image₂_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-union-right.md) | 173 | `result-track:e949f17abfec5566b87c4a9a6ba7aede80595176abc41e9c3298d602b339fcff` |
| 31 | `theorem` | [image₂_insert_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-insert-left.md) | 180 | `result-track:147856e9d8713f5dc883b87ff7e37f02464b152eefdd642aee0d2d3c92172397` |
| 32 | `theorem` | [image₂_insert_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-insert-right.md) | 188 | `result-track:8db9ab4fe8954ec21e9b536fa2c15fc6b3a45bbfde0650cac33695c9cb3eee6d` |
| 33 | `theorem` | [image₂_inter_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-inter-left.md) | 195 | `result-track:9f9e8615cdcc6baf3454c78fde6a60d519461095fbbbd6b84079deb89bfd278c` |
| 34 | `theorem` | [image₂_inter_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-inter-right.md) | 202 | `result-track:81daf0568140f329a9fa87c417615f8e9f4e2db5ee4634f61ba18241b082edfd` |
| 35 | `theorem` | [image₂_inter_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-inter-subset-left.md) | 209 | `result-track:5ea052c5d1ed7be02d6cdffcc04eafe21e1c36374a4298ba4607a1d1320ad96b` |
| 36 | `theorem` | [image₂_inter_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-inter-subset-right.md) | 216 | `result-track:ef93727c82744979022824a64c27b5059776492fe2199ab3d58615bb2478f0c4` |
| 37 | `theorem` | [image₂_congr](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-congr-source-edition-2.md) | 223 | `result-track:de98ce07d8b16bbe3df4cce7cdf89da1e1df73697ae42b9fd98ef2fe3ee8f8dc` |
| 38 | `theorem` | [image₂_congr'](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-congr.md) | 230 | `result-track:5abcf63ebd1d4a8f89f073250a1eeaac2fdf4eb50c531ab7ae6bab2529a801c2` |
| 39 | `theorem` | [subset_image₂](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/subset-image.md) | 234 | `result-track:d1f5b7f25951bf879864dc5b7f541c701c5ef7c615e3907997887885ca067ec5` |
| 40 | `theorem` | [card_image₂_singleton_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/card-image-singleton-left.md) | 254 | `result-track:4ae8b357e27119ef73146851a79139a627c781fb1f0d2cdb5ba0ba90a0ed0d32` |
| 41 | `theorem` | [card_image₂_singleton_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/card-image-singleton-right.md) | 258 | `result-track:4e661ac4353ccfed04039b63a1612c5e8a1b4493262ec9699a8b564ab33d6ad0` |
| 42 | `theorem` | [image₂_singleton_inter](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-singleton-inter.md) | 262 | `result-track:8f949c08c56ab8e1149fdc7eb2a34d40502c935b67d0eb4e4886e56105a71053` |
| 43 | `theorem` | [image₂_inter_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-inter-singleton.md) | 267 | `result-track:bad33d550f3fc8d7d53359dafd0d03b8941a277266e2a89625b0a340232b8c0d` |
| 44 | `theorem` | [card_le_card_image₂_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/card-le-card-image-left.md) | 272 | `result-track:bc9a98b676418f26f29c172d3ef676b9fa2a91a396bc97b4eaeb7a89a017e813` |
| 45 | `theorem` | [card_le_card_image₂_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/card-le-card-image-right.md) | 279 | `result-track:43485e49e9b881171338ae2e6c96e8dc8f967d110331825a3cd410bd817f76b9` |
| 46 | `theorem` | [biUnion_image_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/biunion-image-left.md) | 288 | `result-track:df309e23f4669645b073cce77a66003278ee93ab69c1892136f1cfa7b0668f2f` |
| 47 | `theorem` | [biUnion_image_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/biunion-image-right.md) | 294 | `result-track:54185a528ff4dc3e3a6922dfa29b9ffb3cdfb39b3f841b275d286ba256df4979` |
| 48 | `theorem` | [image_image₂](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image.md) | 310 | `result-track:441ebed360397a2b5de2cbd07fa0bedea76559a30c772336ea5cf750f54c3b53` |
| 49 | `theorem` | [image₂_image_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-left.md) | 317 | `result-track:b4527a2f800ed11f6350bec219efaa75e4facf5b400a21d5603061adeabc9c33` |
| 50 | `theorem` | [image₂_image_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-right.md) | 324 | `result-track:a28e32d91219e4f399e1eb14ca77513e074761d992d42ad9805a82becfb8a3cf` |
| 51 | `theorem` | [image₂_mk_eq_product](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-mk-eq-product.md) | 332 | `result-track:e1a1491d689bc3d65ba5d21e4405b21b5be002eed98eed87a56a23bd7cc59e1d` |
| 52 | `theorem` | [image₂_curry](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-curry.md) | 337 | `result-track:102f5d69250ddb550b408b94f0270cc4a7956799524cbebfe4a348da130e6f74` |
| 53 | `theorem` | [image_uncurry_product](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-uncurry-product.md) | 343 | `result-track:f59bd9335679860be03e8d9b249c28ef447015dd03ca3f8b1f87fd5d4f0ef649` |
| 54 | `theorem` | [image₂_swap](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-swap.md) | 347 | `result-track:1e56b1ac5e4d59921e61d401ffebc3d19470f1f63e860efe4b295f78b28767ad` |
| 55 | `theorem` | [image₂_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-left.md) | 355 | `result-track:26e7e75e44c3e4e50ceeabba5cc233809a2851e101c84ec72551f1b1068febc7` |
| 56 | `theorem` | [image₂_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-right.md) | 362 | `result-track:b464c3ec8413d8b7c935465bce4298f61074c5185695fce4ac1f0e1a6d91e643` |
| 57 | `theorem` | [image₂_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-assoc.md) | 368 | `result-track:a159e645d597c9f95eec798eb89d36eea17b3e52dccf8c9f0de377eb61738e43` |
| 58 | `theorem` | [image₂_comm](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-comm.md) | 376 | `result-track:ef78e7128502cf634d159bc790266db6def451cbbf556040c312a0a3917a112f` |
| 59 | `theorem` | [image₂_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-left-comm.md) | 380 | `result-track:6074cfb8ff1d717cac31980e723af6038707c33934ab697e8cfdf96c81c9bb2d` |
| 60 | `theorem` | [image₂_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-right-comm.md) | 388 | `result-track:0ae9e8be2fbbef42895827bdf6dcb0009207ddebd2e67fbaed2b9269eb15aed4` |
| 61 | `theorem` | [image₂_image₂_image₂_comm](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-image-comm.md) | 396 | `result-track:5a77eab9c6541b81e68c422d54b5d5cbd0c7cb581496577345b6d52ca9c706bf` |
| 62 | `theorem` | [image_image₂_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-distrib.md) | 406 | `result-track:5914493cc3db60e75633aeacda58d6d343eab6975fae6f5636844f2bf0917e6f` |
| 63 | `theorem` | [image_image₂_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-distrib-left.md) | 415 | `result-track:7fb71cbe10f138da40e0a2acec96c9ee5626302f0765e1d1992f5efdf78c0d9b` |
| 64 | `theorem` | [image_image₂_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-distrib-right.md) | 424 | `result-track:610004d351cdeb77b4cc60d66a3e34e04aee66af425ac75baf07c39ac10984ed` |
| 65 | `theorem` | [image₂_image_left_comm](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-left-comm.md) | 433 | `result-track:15315ac8b67d72f4065a816ed5ecc84119d1b878566ff3230771d0f7df6eb58d` |
| 66 | `theorem` | [image_image₂_right_comm](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-right-comm.md) | 440 | `result-track:4204d869023c1f718392f70a054081dc4a8880c11fa474c39d3775be0fea0a30` |
| 67 | `theorem` | [image₂_distrib_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-distrib-subset-left.md) | 447 | `result-track:39cfe76619126bb68a01cf91e8dc06e12796715aa72faad31eb6f38b685c6a95` |
| 68 | `theorem` | [image₂_distrib_subset_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-distrib-subset-right.md) | 457 | `result-track:aa7aa9e71fd64ff1e71d045b2aab4038dbec6ace82bf366b00896c973967ea9c` |
| 69 | `theorem` | [image_image₂_antidistrib](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-antidistrib.md) | 466 | `result-track:b4635fcccd863ec4f6aa70a593669850a62b4f2448757095e4312a64fb429602` |
| 70 | `theorem` | [image_image₂_antidistrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-antidistrib-left.md) | 474 | `result-track:7cb9626f1edf29cae4a4d8189e95c69869e2b2860057c2e4c769f074dc7fa901` |
| 71 | `theorem` | [image_image₂_antidistrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-antidistrib-right.md) | 483 | `result-track:797771d73ad951971a3a1138c6fb8fb27554438e48d3a2c9811ca1763989a809` |
| 72 | `theorem` | [image₂_image_left_anticomm](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-left-anticomm.md) | 492 | `result-track:7594c2418b85ac09ca2a9d4e5489bc88cbc77528d230818244b0aa898c70dd7e` |
| 73 | `theorem` | [image_image₂_right_anticomm](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-image-right-anticomm.md) | 499 | `result-track:9dec131b61509c2d0e3bd1c3082df7206d5a6429c28803741e1fc301ca400f08` |
| 74 | `theorem` | [image₂_left_identity](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-left-identity.md) | 507 | `result-track:98592a3279dfc18a4f9f9a6c49b140ad5a999f72bc0a90923674eef53c26fd24` |
| 75 | `theorem` | [image₂_right_identity](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-right-identity.md) | 514 | `result-track:4273045d02c54f274b915a96a07bc09deafdd1f11b5972224b92071c2f59d479` |
| 76 | `theorem` | [card_dvd_card_image₂_right](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/card-dvd-card-image-right.md) | 521 | `result-track:9f34e6caf9d85955d8e132d61847293e49b74e47552b61b454d2db74399b65d7` |
| 77 | `theorem` | [card_dvd_card_image₂_left](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/card-dvd-card-image-left.md) | 543 | `result-track:8d91bca5bc9401a4d09d0381c0871a9a8c3f3784b8b23aa58c526b19e4b7dd7d` |
| 78 | `theorem` | [image₂_inter_union_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-inter-union-subset-union.md) | 550 | `result-track:f3a7d44235d88b34233eddb3bfd7015de4ad0bfd55ba14378b2bdff1217fbde7` |
| 79 | `theorem` | [image₂_union_inter_subset_union](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-union-inter-subset-union.md) | 557 | `result-track:ef62bcf606c9e0ae1826c8c145bebfb19bb2c280877f80e3120a20152429b71d` |
| 80 | `theorem` | [image₂_inter_union_subset](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-inter-union-subset.md) | 564 | `result-track:61fffe8811fc7280029ad374f80ead161a73e08a9cee44f33c74821358c814c9` |
| 81 | `theorem` | [image₂_union_inter_subset](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/image-union-inter-subset.md) | 571 | `result-track:5bef9f7399bdb2aa3fdd3956d7e553632b554e5ba323098e4b5f8facc3d931f1` |
| 82 | `theorem` | [toFinset_image2](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/tofinset-image2.md) | 585 | `result-track:ceed78f729135ef92176f063465f7f1c066a9b03bf943c269de7d117b6332129` |
| 83 | `theorem` | [Finite.toFinset_image2](../../../../../Combinatorics/EnumerativeCombinatorics/NAryForallImageIff.lean/declarations/finite-tofinset-image2.md) | 590 | `result-track:cae26fd1d247d614c713e67fbd272f128bc45119c834fac567c688f8ca3d2cd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c25334063d2e16313bc630a194d2e66bde7aebe81a704da9b5c5b910b5c4615d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NAry/Variantadfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NAry/Variantadfe058c1a4d8a728703b6c7bd6ba06b1066e413bff898e7c8ee1e91ad33faa9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
