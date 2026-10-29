# Verification target: Group Finset Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3b552527a22e70a3d2535dfa37841520dcba3b0",
  "lexical_observation_count": 150,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant273036de3d36eda43082685a3ebc998900735e96c3f4b18f1546b39a4f765af0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3b552527a22e70a3d2535dfa37841520dcba3b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant273036de3d36eda43082685a3ebc998900735e96c3f4b18f1546b39a4f765af0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant273036de3d36eda43082685a3ebc998900735e96c3f4b18f1546b39a4f765af0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_eq_fold](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-fold.md) | 35 | `result-track:a57fb1135b8a6941bc1ab983c7504a1647d877108a09c3a25b6e5702d017834d` |
| 2 | `theorem` | [prod_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-cons.md) | 38 | `result-track:124845aaef226edd81dd6e0ca3273536818265034b420a69a54bc717d6c05603` |
| 3 | `theorem` | [prod_cons'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-cons-source-edition-2.md) | 43 | `result-track:af5430d34dfef86000430f817c35d4bd4d348d249c0884f80a16f577d9bfc621` |
| 4 | `theorem` | [prod_insert](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-insert-source-edition-2.md) | 49 | `result-track:3d873332a1b2e0310fe00b9e488ddd713784b1a9c557003359f003cef4ce4012` |
| 5 | `theorem` | [prod_insert'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-insert.md) | 54 | `result-track:3a43f16e12dc6e83d70d785ba0e93b0e8c393a4c72879711db353cc0f2649ceb` |
| 6 | `theorem` | [prod_insert_of_eq_one_if_notMem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-insert-of-eq-one-if-notmem.md) | 63 | `result-track:1a81a341efe4b6930dc4436873856e4c74871241684e46f0a430af88c25fe59b` |
| 7 | `theorem` | [prod_insert_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-insert-one.md) | 71 | `result-track:a011d36a2614c4160c35ac788f3e46e807b15789b7d3d31dfc34292df7b8ce81` |
| 8 | `theorem` | [prod_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-singleton-source-edition-2.md) | 75 | `result-track:9b4399c8ef78fd1c11148d775c976e4fcec9f5bbe0feed2bdf7460ca4783d686` |
| 9 | `theorem` | [prod_singleton'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-singleton.md) | 80 | `result-track:3a76f1dc98dfc068276d1452a5d5519a89903662b549bdbf0541bd23a6335d41` |
| 10 | `theorem` | [prod_pair](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-pair.md) | 86 | `result-track:21eb960c22372a9c99844b36b505b873a0c6a12705ffa9788e8847ed2995c811` |
| 11 | `theorem` | [prod_image](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-image-source-edition-2.md) | 95 | `result-track:eda92e4152b17daa583e45d2618c0170097af84e5b3996ea35f4e684ef02ec34` |
| 12 | `lemma` | [prod_attach](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-attach.md) | 100 | `result-track:f8eb400cd9d0f79b5abcd02b24e1248d3798e18195d0fec9b96fe687de3c7506` |
| 13 | `theorem` | [prod_congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-congr.md) | 104 | `result-track:4d37b12677a9956ca912ae0391965b50b21dcfa2505d915fb231b2ce70668084` |
| 14 | `theorem` | [prod_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-one.md) | 108 | `result-track:fac861d8ca788e864e0d605d3b9e058b42d544706abe7635252943798bfcd480` |
| 15 | `lemma` | [prod_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-one-iff.md) | 115 | `result-track:0269606a04360b566ca6d1dc641d4c8fc5bc0c3410d4c11d2cf5cf57780730a1` |
| 16 | `theorem` | [prod_disjUnion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-disjunion.md) | 119 | `result-track:63800be6fc6c6c725784c25c023fdf5888f0bb8bec477770fe9c3f325ec558d1` |
| 17 | `theorem` | [prod_disjiUnion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-disjiunion.md) | 126 | `result-track:cfefecca977fdb3ae04103a94e048e9c13d4737064e2c5c91b1e011bbdb1f563` |
| 18 | `theorem` | [prod_union_inter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-union-inter.md) | 134 | `result-track:b22be6d8b9bc4c3ca6a6bfa6da5507e9267532f7c568b333eb87b21a67c42634` |
| 19 | `theorem` | [prod_union](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-union.md) | 139 | `result-track:9206ab3e0b50c55e79f312f4a36cfad36f0de46f7106895482ca7c41295fb94a` |
| 20 | `theorem` | [prod_filter_mul_prod_filter_not](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-filter-mul-prod-filter-not.md) | 144 | `result-track:58ad0ac720478cb7c575800f9b6606b5110ea4831330e7196f5c432aaba774b4` |
| 21 | `lemma` | [prod_filter_not_mul_prod_filter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-filter-not-mul-prod-filter.md) | 151 | `result-track:f4959912e80c277021b39ee90efe89f3945f60ce2a855011f85fb47bc3586e0d` |
| 22 | `lemma` | [prod_eq_of_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-of-subset.md) | 158 | `result-track:95774f717621f7f5f5716e69f4ac3d88ae0b3b62962ac9460ee6645cd0e07965` |
| 23 | `theorem` | [prod_filter_xor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-filter-xor.md) | 166 | `result-track:61f16f63124c25edffd228fa9430a599058f6b70e00510c09aaad3a7f815919c` |
| 24 | `theorem` | [_root_.IsCompl.prod_mul_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/root-iscompl-prod-mul-prod.md) | 173 | `result-track:c1bbc95ac8035de6fb375aaf85bdc6ea189693d88533c427ea4d80f8c7dfe51b` |
| 25 | `lemma` | [prod_mul_prod_compl](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-mul-prod-compl.md) | 182 | `result-track:1ed71270b48309172dbc47c9bf61c6f3fbe48655625164cc9fc0d44d76390a05` |
| 26 | `lemma` | [prod_compl_mul_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-compl-mul-prod.md) | 187 | `result-track:a098bcefe445fcd3a9a126f1525d5a53e9e4a1fbaabb8a7297aca0db7cd5b295` |
| 27 | `theorem` | [prod_sdiff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-sdiff.md) | 192 | `result-track:449d09dceedce46b29781e5bedad50f41c8d948b8d6675baf983dd1ade579e89` |
| 28 | `theorem` | [prod_subset_one_on_sdiff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-subset-one-on-sdiff.md) | 197 | `result-track:75fa442eff257f49ca8d5882add86673873b3d02b5dfee9ec39cfefcfe1748f8` |
| 29 | `theorem` | [prod_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-subset-source-edition-2.md) | 203 | `result-track:d5cc433c5639d78b132bf78853154692cf78feb5a028ad202b77ffe39d0ea227` |
| 30 | `theorem` | [prod_disjSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-disjsum.md) | 209 | `result-track:8e95abf07b0afda1d5d772f879accc250acdab28d00098261b942bf51bf439d2` |
| 31 | `lemma` | [prod_sum_eq_prod_toLeft_mul_prod_toRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-sum-eq-prod-toleft-mul-prod-toright.md) | 215 | `result-track:48e066cac76f370bc374064c7f9a65d9d49e6f7ed8ca49d3ed59036866df798d` |
| 32 | `theorem` | [prod_sumElim](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-sumelim.md) | 221 | `result-track:5ce16c65225f571759f1499a73b7239a91464e6bc757361227362ad45aefb881` |
| 33 | `theorem` | [prod_biUnion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-biunion.md) | 230 | `result-track:c9dd964cb1d794eca285542c2fe92ea7ac4fbe695bef0c614057d66161362514` |
| 34 | `lemma` | [prod_of_injOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-of-injon.md) | 238 | `result-track:5453f405aa9ef7327ef9168a81560dcd65b3881f16c0009220b4d53abf76135e` |
| 35 | `lemma` | [prod_fiberwise_eq_prod_filter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-fiberwise-eq-prod-filter.md) | 248 | `result-track:5e289c6a45aed9d1927be65b2d8d07dd19630b1832d84219e26e223399393b52` |
| 36 | `lemma` | [prod_fiberwise_eq_prod_filter'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-fiberwise-eq-prod-filter-source-edition-2.md) | 256 | `result-track:dce5ec46d64c8021e7a166edaa042ced575f245ffa1398fcdf6e398896c7959b` |
| 37 | `lemma` | [prod_fiberwise_of_maps_to](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-fiberwise-of-maps-to.md) | 264 | `result-track:035edee25531e49710006059140f93d0d91cbd1dc818d31e4b25783c0a2c13cb` |
| 38 | `lemma` | [prod_fiberwise_of_maps_to'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-fiberwise-of-maps-to-source-edition-2.md) | 272 | `result-track:8d987f97d3f9a2b7ea0f868a4a4208a1e9c269177a8a83160262254dafe8a48a` |
| 39 | `lemma` | [prod_fiberwise](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-fiberwise-source-edition-3.md) | 282 | `result-track:a0b72d3bb761affdf0092c3ba1c14bd516ac8cedef53e5c3e549753d419a85c9` |
| 40 | `lemma` | [prod_fiberwise'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-fiberwise-source-edition-2.md) | 287 | `result-track:855ad263b205365924e88c31e62ba2a310031c732e01c936b1d92a8a0b298ba0` |
| 41 | `lemma` | [prod_diag](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-diag.md) | 294 | `result-track:3140f1de6741a2befe0f6d1ce9384bcf34216f0ff5b0b202390a922a5d842e25` |
| 42 | `theorem` | [prod_image'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-image.md) | 299 | `result-track:559203b4ade4e8f9b7266040eafc33e30348a670ef26b4de8b4009a7b36eeb03` |
| 43 | `theorem` | [prod_mul_distrib](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-mul-distrib.md) | 310 | `result-track:fafc7a4ddeeb3607f807896cc594a9a01d1f45cfdf631fedc50562275762a5d6` |
| 44 | `lemma` | [prod_mul_prod_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-mul-prod-comm.md) | 314 | `result-track:fec0599a5ff44ab110ab9fd4b558870308cc87a83d0ab26b29952013602fbc54` |
| 45 | `theorem` | [prod_filter_of_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-filter-of-ne.md) | 319 | `result-track:146831eb6d30634ab1fbd35bedad4e35f75cb2d05bc2ff06f252994bdbb18f9c` |
| 46 | `theorem` | [prod_filter_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-filter-ne-one.md) | 328 | `result-track:4bbf2df260634fc7e95b887f20fb77c2ebf20d7ca2a2f7a0d87ca802e9a09152` |
| 47 | `theorem` | [prod_filter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-filter.md) | 333 | `result-track:3b9f49039835dc9cca68f0bf00229c57278ccab1b482015a58fdbe51a313e7ed` |
| 48 | `theorem` | [prod_eq_single_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-single-of-mem.md) | 344 | `result-track:74782c701ecebd07f8cc2a2d3d3705c38ac44a89bbbc2e4dfdc7aab3a8f0a752` |
| 49 | `theorem` | [prod_eq_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-single.md) | 355 | `result-track:52adf7e57b45c19ab7d54e090f0fb8504a3c48fb90d8b76e71d0b1ed74fca5ae` |
| 50 | `lemma` | [prod_ite_mem_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-ite-mem-eq.md) | 363 | `result-track:422d1bc4d8b43d103182bd7379de1865ad285e9cfc0d6c5d875f152bdbc19f58` |
| 51 | `lemma` | [prod_eq_ite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-ite.md) | 368 | `result-track:9384aec258aca249ba634837301c69cc1fce05ea61854dadce29f0abb130cd4d` |
| 52 | `lemma` | [prod_union_eq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-union-eq-left.md) | 377 | `result-track:28b6cdb77a4e8cc7826c9b34c8a50c79e3382784859924d1e5e06875e5b6485f` |
| 53 | `lemma` | [prod_union_eq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-union-eq-right.md) | 383 | `result-track:cce09dc4989453d34729ce558d50ff9af9194cee62285d4df69bfdf824c75f2a` |
| 54 | `lemma` | [prod_congr_of_eq_on_inter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-congr-of-eq-on-inter.md) | 392 | `result-track:2b244b18cbffe5a3f334a56d81ad267da6840799eb939ae8c5cbcbe1b32bcfc9` |
| 55 | `theorem` | [prod_eq_mul_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-mul-of-mem.md) | 402 | `result-track:6dc7ec1d3ee0f231c34bcfab0cc8445ee240525d8a913bd642e6b8c280b2e960` |
| 56 | `theorem` | [prod_eq_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-mul.md) | 411 | `result-track:740c63539645005da1a19bd97367797f0231196c5e3ba31f3f06c8dcd5de7b6b` |
| 57 | `theorem` | [prod_subtype_eq_prod_filter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-subtype-eq-prod-filter.md) | 432 | `result-track:b89df1b15763c09b2af77036210f6c17485e8e7f3c1dccef144a338c8a42ab80` |
| 58 | `theorem` | [prod_subtype_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-subtype-of-mem.md) | 441 | `result-track:9c13ea7d9a712b4305855b39b89f8d35c6a3c8eea3a9a2e48ff7438fb4bf489c` |
| 59 | `theorem` | [prod_subtype_map_embedding](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-subtype-map-embedding.md) | 452 | `result-track:a0afdf7186804baa561a7dbe9508a6c8cdb2d69c148d6647a58ff3a1ba015e5d` |
| 60 | `theorem` | [prod_coe_sort](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-coe-sort.md) | 461 | `result-track:664e8dc4216288091b509d14cb7536582cae4cd16490d5a9d3061c626b7554c2` |
| 61 | `theorem` | [prod_finset_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-finset-coe.md) | 464 | `result-track:ee7011feba607a3d0ec676fe26add3589b35bf0bd6d8538701b200b6d0ffe266` |
| 62 | `theorem` | [prod_subtype](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-subtype.md) | 470 | `result-track:dfc7d5115faaf0f8806e8d70e05d93d39010a0d9ac7719dc569f5c9f9c52a064` |
| 63 | `theorem` | [prod_set_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-set-coe.md) | 477 | `result-track:504dfec997384decd53e6301ee548afee0744f704a581d343a01e2b43a72571f` |
| 64 | `theorem` | [prod_congr_set](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-congr-set.md) | 486 | `result-track:14f2b893d880cc3c339bcb9f30196774f80ac47f165a09e9f4177e982fb27c46` |
| 65 | `theorem` | [prod_extend_by_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-extend-by-one.md) | 493 | `result-track:ef03072cba616611c6a8fabb1af9d885d8f871311d8fbcbb923c5fb58425a856` |
| 66 | `theorem` | [prod_eq_prod_extend](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-prod-extend.md) | 499 | `result-track:db702071f80e9ebc5da8f4241b5654af79168cca467c3faf4a1686ba38d95161` |
| 67 | `theorem` | [prod_bij_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-bij-ne-one.md) | 505 | `result-track:c9045bd34bbe1f591e350fdd1939bf55765eaed9f4b232141c79940db500643b` |
| 68 | `theorem` | [exists_ne_one_of_prod_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/exists-ne-one-of-prod-ne-one.md) | 526 | `result-track:176bbd1504fb6a9d87c81587bcbafa6e8028258ffac562ab7c33aa48050de1b6` |
| 69 | `theorem` | [prod_range_succ_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-range-succ-comm.md) | 531 | `result-track:6571b4be096aec259b3a42b8fb7fb50b8b0878e967bea7f46f63cfdcfe014489` |
| 70 | `theorem` | [prod_range_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-range-succ.md) | 536 | `result-track:20c2503b1931b2ef2004aa9349c684b92f2efdd2806e62a5030af3c5d6af9224` |
| 71 | `theorem` | [prod_range_succ'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-range-succ-source-edition-2.md) | 541 | `result-track:b09496e504a3066d3137590f2ed9404ae358f4dd9370d71f81aa7cd366f6a81d` |
| 72 | `theorem` | [eventually_constant_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/eventually-constant-prod.md) | 547 | `result-track:6c798bd4e6a25554513572f05d9e4444dcde8b36d5a1bd27c2a1fe729a9506d0` |
| 73 | `theorem` | [prod_range_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-range-add.md) | 556 | `result-track:002e3dbcbedb8bf669b1335c14126637f352dd95175c01a3ee07a9fd132f8c0f` |
| 74 | `theorem` | [prod_range_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-range-one.md) | 563 | `result-track:8a635ee964e682df27e60e2898239d40322088e2dafef077a6eddcc1abafd6f1` |
| 75 | `theorem` | [prod_list_map_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-list-map-count.md) | 569 | `result-track:74ab420523eff31319d1b04053c8f0fd1ebb21a08482ce3e40909ded62a0bad8` |
| 76 | `theorem` | [prod_list_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-list-count.md) | 585 | `result-track:cd05b2f079eb1b9712b8bb84a7ec1470c33d653ffbfc5fafef6cfd38d7659eb6` |
| 77 | `theorem` | [prod_list_count_of_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-list-count-of-subset.md) | 589 | `result-track:75e499f2318dc5b5c6a2802de78ef2d085d90af68f036a8a611fecabdbe284b7` |
| 78 | `theorem` | [prod_multiset_map_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-multiset-map-count.md) | 599 | `result-track:13eaecf8e9e6c736ef034897fb80ca0e708d71555eaae08ae633dc9b587cd909` |
| 79 | `theorem` | [prod_multiset_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-multiset-count.md) | 605 | `result-track:b77e61eb419abf80b957e831258ced10f5e6a7a8337ca6a27c1270d49ca52ec3` |
| 80 | `theorem` | [prod_multiset_count_of_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-multiset-count-of-subset.md) | 611 | `result-track:d9d506dcdc6adaa1417f807341b7c17898f8440ad9a29a14e674e3a02f36bb0f` |
| 81 | `theorem` | [prod_range_induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-range-induction.md) | 627 | `result-track:b2dabc4e7130303bf7f6f61c9a91adf0f656864df6904dafc30abbc9290ca3f1` |
| 82 | `theorem` | [prod_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-const.md) | 637 | `result-track:7f47453237f029b25e0182eca53185ba875b1397b29fe0dc53a7d78930cd1958` |
| 83 | `theorem` | [prod_eq_pow_card](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-eq-pow-card.md) | 641 | `result-track:8103c6e66eaf9391ffdc0ebdc4a21427d91ba4de9b34c0fa12c33ce9dbdca65d` |
| 84 | `theorem` | [pow_card_mul_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/pow-card-mul-prod.md) | 645 | `result-track:b87b43fa9998c6eadf9d88dcbc1cb74e71271cbe559a24f572d34f642a92259f` |
| 85 | `theorem` | [prod_mul_pow_card](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-mul-pow-card.md) | 649 | `result-track:588e2ed8af7106b47975bd0ffb9b682efa9d9a44d43792e22fcb6695b4565876` |
| 86 | `theorem` | [pow_eq_prod_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/pow-eq-prod-const.md) | 653 | `result-track:521f9ab4af31ea621a331a71cbf9db9fceef7010fc897e52b05f9873c97402fb` |
| 87 | `lemma` | [prod_pow_eq_pow_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-pow-eq-pow-sum.md) | 656 | `result-track:f68dd35ecc2493986e2d18056179c3eff78174c806dd93213356370c292ff875` |
| 88 | `theorem` | [prod_flip](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-flip.md) | 661 | `result-track:e19d55a878d6557066b49c18f7f0083043ac2fd630b99d633628b3a304f85066` |
| 89 | `lemma` | [prod_involution](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-involution.md) | 673 | `result-track:7a4c274b10d18f56ec7d87d9600abf9d6a13901673966c34d57185e4f6fd73aa` |
| 90 | `lemma` | [prod_ninvolution](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-ninvolution.md) | 696 | `result-track:b8927f1704b991c98e16b588b586c9e8d3213afc282d6bebeab48d87321c1610` |
| 91 | `theorem` | [prod_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-comp.md) | 706 | `result-track:bf790f653193f36a85ea8f5aee9f7a745938d29f926f99a18f92afc7966a2744` |
| 92 | `theorem` | [prod_partition](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-partition.md) | 712 | `result-track:0e4bdbf90912b9e43cead82affd754e4a00a52ebb23addf69c9cbb3b8087a6fa` |
| 93 | `theorem` | [prod_cancels_of_partition_cancels](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-cancels-of-partition-cancels.md) | 720 | `result-track:44bd092ec38a286368fd3500cdcf960fd05b418fad8c721c2d97579dd23aefb7` |
| 94 | `theorem` | [eq_of_card_le_one_of_prod_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/eq-of-card-le-one-of-prod-eq.md) | 732 | `result-track:d17348fc564d072ba0d0e23b2009a4d16c586f5f0d97dce53fae07d3683393b6` |
| 95 | `theorem` | [mul_prod_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/mul-prod-erase.md) | 749 | `result-track:c2f1179be5c23fe88d8f52b5b0f0796436595af488d342089a078c2b657b4efd` |
| 96 | `theorem` | [prod_erase_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-erase-mul.md) | 755 | `result-track:9618fe63066d6a87268ce6dac448d8ee390a3b199ee3cc5175f61e9b41d8b26f` |
| 97 | `theorem` | [prod_erase](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-erase.md) | 762 | `result-track:42e20894fb025bb4b317f323da3d68bd0730505de233053c9f64edfa7fdb07c7` |
| 98 | `theorem` | [prod_erase_lt_of_one_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-erase-lt-of-one-lt.md) | 769 | `result-track:06841ba8b9817cdd1f51ec9a482be48f2de613a971582902dd7c1541b9344954` |
| 99 | `theorem` | [eq_one_of_prod_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/eq-one-of-prod-eq-one.md) | 780 | `result-track:701949eefe493abc245943221c4089a9a0565200cc2b9a97c8fbff1e1b17e07e` |
| 100 | `lemma` | [prod_mul_eq_prod_mul_of_exists](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-mul-eq-prod-mul-of-exists.md) | 793 | `result-track:e52cd4e7bc963b2d33a2a3c8716c7df27c33731f7dbd39b8bb5ebaaf0fb7a6f4` |
| 101 | `theorem` | [prod_biUnion_of_pairwise_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-biunion-of-pairwise-eq-one.md) | 802 | `result-track:eb96320b508dfa5f70f469f75d66cf3cb8e3c1b2ee4e5f90f097a441c47b0ef6` |
| 102 | `lemma` | [prod_filter_of_pairwise_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-filter-of-pairwise-eq-one.md) | 818 | `result-track:25662551b1038fb91b17bb401583ace39847a84fe712c6a8206555b9e8c5547d` |
| 103 | `lemma` | [prod_image_of_pairwise_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-image-of-pairwise-eq-one.md) | 835 | `result-track:67513e06de36ceef1bcf4ecd6e6b4df49e706984ac70807e7150466e85902f2c` |
| 104 | `lemma` | [prod_image_of_disjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-image-of-disjoint.md) | 848 | `result-track:1fc044eece0a829dd51c0d40e16557effa753bc048007ef55d7e194f109484b9` |
| 105 | `theorem` | [prod_unique_nonempty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-unique-nonempty.md) | 856 | `result-track:d7cc8d5ded24c8725aac16a1214d6ef7fbe02274f0cccef1be7728cb58363b74` |
| 106 | `lemma` | [prod_dvd_prod_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-dvd-prod-of-dvd.md) | 860 | `result-track:f331bee9cddc0cd3ea03c2064fb80939d1a6fcb1baa937cc54b88182f69aa983` |
| 107 | `theorem` | [prod_map_equiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-map-equiv.md) | 865 | `result-track:26108435c79455c9644bc35db62620bb3d434524181fd1da743cd1fd3b1a3469` |
| 108 | `theorem` | [prod_comp_equiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-comp-equiv.md) | 868 | `result-track:1b6bc34dd7b7062aa92e1304233547e1c828e960096d7e0b9808aac1fe0c24a0` |
| 109 | `lemma` | [prod_sdiff_eq_prod_sdiff_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-sdiff-eq-prod-sdiff-iff.md) | 876 | `result-track:9739dde8a65079cd7a18fc0925b5ecd47da86c3b634d6808f31d7c0513fe888e` |
| 110 | `lemma` | [prod_sdiff_ne_prod_sdiff_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-sdiff-ne-prod-sdiff-iff.md) | 883 | `result-track:bc80293aab050cc85d9d958056503b81dead9e7383b57e06731b72b34a3813bb` |
| 111 | `lemma` | [prod_insert_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-insert-div.md) | 893 | `result-track:cb718d89d2767c3f738112c7ee57d774fe68987235546532f17388e0baa084aa` |
| 112 | `theorem` | [prod_erase_eq_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-erase-eq-div.md) | 897 | `result-track:d810e07369b1325947ca5211de9d2b89a4bbe3269065807d93ec588a7a74f2bc` |
| 113 | `lemma` | [prod_range_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-range-div-source-edition-2.md) | 904 | `result-track:3bd62a795fde2d56176104429fc08f1323ded969ea49db23e2bd8fe2148ee9f0` |
| 114 | `lemma` | [prod_range_div'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-range-div.md) | 911 | `result-track:31fe633caf55d60e6b65655c430214b369faf35f782a8b212eab246583a0d96d` |
| 115 | `lemma` | [eq_prod_range_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/eq-prod-range-div-source-edition-2.md) | 918 | `result-track:fcc1addddfdc33e8a802ca45aaa20ae4e67a6c2d058e6efb67d3e9c468fcbb0d` |
| 116 | `lemma` | [eq_prod_range_div'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/eq-prod-range-div.md) | 922 | `result-track:b6fcaa98a551e35d4d668e0cbb78ad2c85764d607769a0637b195a4389342b91` |
| 117 | `lemma` | [prod_range_add_div_prod_range](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-range-add-div-prod-range.md) | 928 | `result-track:c9569fa0cde75943a47be3a1e068f683296082f93ad71d964e2d24777058153f` |
| 118 | `lemma` | [prod_sdiff_eq_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-sdiff-eq-div.md) | 933 | `result-track:56f3083d9791671f1e0965460a5d457868f23d18a0a8d90955a27de142613165` |
| 119 | `theorem` | [prod_sdiff_div_prod_sdiff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-sdiff-div-prod-sdiff.md) | 937 | `result-track:03bb1c85099691743b25fbabaaa4bda28e4094e5835a9774c407cdc466d7d102` |
| 120 | `lemma` | [sum_range_tsub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/sum-range-tsub.md) | 949 | `result-track:a5266516517f9f9e467c63151b381c80b9bce8db66225deb62d010e928063645` |
| 121 | `lemma` | [sum_tsub_distrib](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/sum-tsub-distrib.md) | 959 | `result-track:741dfccc65b209d8baaa601a2c50ec3d702cacb8fe966027982b9e8e29c983bb` |
| 122 | `lemma` | [card_eq_sum_ones](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/card-eq-sum-ones.md) | 966 | `result-track:71646aed6871739e623914f70251309cd1cf09389a563a46dffccd5eb384759e` |
| 123 | `theorem` | [sum_const_nat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/sum-const-nat.md) | 968 | `result-track:c6ecf6ab39722389f7a1810d1ac3e6ae69a602d0262e1d25950b6cd68353adad` |
| 124 | `lemma` | [sum_card_fiberwise_eq_card_filter](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/sum-card-fiberwise-eq-card-filter.md) | 972 | `result-track:e16ee54eebbe26db4b70af66f6ac6e91d51a85ca5931395c9566a074b844fe61` |
| 125 | `theorem` | [card_disjiUnion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/card-disjiunion.md) | 977 | `result-track:9c7a4aa110086c291b62351da1774db3d8fafe29572cc210f454777f16dc7132` |
| 126 | `theorem` | [card_biUnion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/card-biunion.md) | 981 | `result-track:36a21c86fa3619b5fb0a7f368115406f9cdae9ffae8a6705d282a2cf9ca41722` |
| 127 | `theorem` | [card_biUnion_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/card-biunion-le.md) | 984 | `result-track:bd7db62630efee3731b0906a325f4dabedc3c1d0642b969b42e795d0f09dec9a` |
| 128 | `theorem` | [card_eq_sum_card_fiberwise](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/card-eq-sum-card-fiberwise.md) | 993 | `result-track:c18a4b207dde02e82b9e004b068a61593da5e1208ef3a0111be2cc92be837070` |
| 129 | `theorem` | [card_eq_sum_card_image](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/card-eq-sum-card-image.md) | 997 | `result-track:3674f55db127b6e338fde5d2414c044f9bb5345d319c79f9c7e5de415c47b699` |
| 130 | `lemma` | [prod_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-of-injective.md) | 1013 | `result-track:cce93b68535e186f1651974bf4ef7ceed20415ba93e9579e28018fa405423392` |
| 131 | `lemma` | [prod_fiberwise](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-fiberwise-source-edition-4.md) | 1018 | `result-track:c169eadd64c8013276dd2362d9cd0c4ef72671fdb3f4ed88d995f8b1b93352b1` |
| 132 | `lemma` | [prod_fiberwise'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-fiberwise.md) | 1025 | `result-track:66cedd4e54412431af4ae8589b4553486e526e29efbd81103405e3c36bdb2951` |
| 133 | `theorem` | [prod_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-unique.md) | 1032 | `result-track:097ddafd679b1ba59135e1d646f89dce9d74859d12cb2b15e17be3b9647bfd41` |
| 134 | `theorem` | [prod_subsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-subsingleton.md) | 1036 | `result-track:7c2a32862d2080f449cae4f9830e49ae8bf69255c996b3ffb06966e20350dabd` |
| 135 | `theorem` | [prod_Prop](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-prop.md) | 1040 | `result-track:a0d0b87a6d84e4b8af1c902113cd87bbaf80b23f8f4a882d1d7208792b590b5b` |
| 136 | `theorem` | [prod_subtype_mul_prod_subtype](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-subtype-mul-prod-subtype.md) | 1043 | `result-track:c86a220297339cf94f899af284cb870051978344ede13206676270a6f3a88a2e` |
| 137 | `lemma` | [prod_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-subset.md) | 1052 | `result-track:a23fae5eb10aae2124a409ff5db412c95e8c9411ffbbc30923c467038492695e` |
| 138 | `theorem` | [prod_toFinset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-tofinset.md) | 1062 | `result-track:11fd0f30281295dacb49fb5c20662e80bfce93bd27b9b86540ad059638e1762b` |
| 139 | `theorem` | [sum_toFinset_count_eq_length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/sum-tofinset-count-eq-length.md) | 1070 | `result-track:3e392bc52d8a49f3bac6d939757de6ebfb7b4aabbda58fb9bd70e2ddbfebde3e` |
| 140 | `lemma` | [mem_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/mem-sum.md) | 1079 | `result-track:504df12a97c257966f56fbc18fb7708924afdcce223e53671e043e5b50e6358f` |
| 141 | `lemma` | [prod_map_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-map-prod.md) | 1084 | `result-track:5aad01a262c82ef910ddfa2e6a7c7239e079162bee1c4a2207043da1182f2317` |
| 142 | `theorem` | [toFinset_sum_count_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/tofinset-sum-count-eq.md) | 1093 | `result-track:46cf2e7e6929d1a1520f117fd097e2168bf4e63677a42ab32a6694616ccd99f4` |
| 143 | `lemma` | [sum_count_eq_card](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/sum-count-eq-card.md) | 1096 | `result-track:a44658e04e888145c672a08ef10b74e3b72ff8179b456aa308342e60f2096175` |
| 144 | `theorem` | [toFinset_sum_count_nsmul_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/tofinset-sum-count-nsmul-eq.md) | 1103 | `result-track:73a5415f3d8112336aff8f11e2cc935ef068422d859858dafcafdeff55746532` |
| 145 | `theorem` | [exists_smul_of_dvd_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/exists-smul-of-dvd-count.md) | 1107 | `result-track:cba0e8b275a28dde5311ee492b2e3ee3c011dc1988d9bb01b37502bbf3ca49ad` |
| 146 | `theorem` | [prod_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/prod-sum.md) | 1119 | `result-track:cf3a08609c0e587b7e4a34e6a832c7f1e24fc327dde47844b5a5df51ebcae3f8` |
| 147 | `lemma` | [IsUnit.multisetProd_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/isunit-multisetprod-iff.md) | 1126 | `result-track:19b58a53afb7cb63732a25440afec16b79fa74354333721d4735bc7c90966a28` |
| 148 | `lemma` | [IsUnit.prod_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/isunit-prod-iff.md) | 1133 | `result-track:dc41da65162e6b93a5013874b13c09dbdf40aeb163757ce395614151ef02ea1d` |
| 149 | `lemma` | [IsUnit.prod_univ_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/isunit-prod-univ-iff.md) | 1138 | `result-track:c5fa904c6138a856d32d018914d63272993d1f2d959661952e99945886c32329` |
| 150 | `theorem` | [Int.natAbs_sum_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupFinsetBasicPublic.lean/declarations/int-natabs-sum-le.md) | 1141 | `result-track:44353065a4b248384a6dc4da462695747a3ab6238fca4032817af48f683fcf30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee8758831a5660bb260e412f7aee51e37a08afc62c33dbffe5269ce9f8af0f3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant273036de3d36eda43082685a3ebc998900735e96c3f4b18f1546b39a4f765af0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant273036de3d36eda43082685a3ebc998900735e96c3f4b18f1546b39a4f765af0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
