# Verification target: Index Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddcb9b542e107b94004982f6c42d84629baae43c",
  "lexical_observation_count": 149,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddcb9b542e107b94004982f6c42d84629baae43c`.

Source path: `GRWTSK/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean.json)

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
| 1 | `def` | [index](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index.md) | 65 | `declaration-track:e099c14b368a4128507cdec5a856515a086812a2d8f0494391f1cdef7bb2363b` |
| 2 | `def` | [relIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex.md) | 72 | `declaration-track:e63b6802417201a8173e528847449999b670493f5105102584308e889c7befc5` |
| 3 | `theorem` | [index_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-comap-of-surjective.md) | 76 | `result-track:2429620cafba34cfd498a58cf8e4fd8e73874878732a8df574f41af5cff92c22` |
| 4 | `theorem` | [index_comap](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-comap.md) | 92 | `result-track:da807ecdef456a43e624c046f4a4fc701b359dca830722ccaf0fe2e4895f93c7` |
| 5 | `theorem` | [relIndex_comap](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-comap.md) | 98 | `result-track:526b7eab96ddbcccb918480d06801065c48e5514eed458811cd56fda1b39322d` |
| 6 | `theorem` | [relIndex_map_map_of_injective](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-map-map-of-injective.md) | 103 | `result-track:8bc9656b98373f2071a4425a56e091313fc95a25dcb38e23a97cebfc65783252` |
| 7 | `theorem` | [relIndex_map_map](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-map-map.md) | 108 | `result-track:6044f67840429f2eeb322e5faf4aea17eaefbb97fd6343dc85a4504975df6e75` |
| 8 | `theorem` | [relIndex_mul_index](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-mul-index.md) | 115 | `result-track:6a7d199c28527d9f0e8ad78e57765f1beb9ecce01fdd5ab402143cee645021a5` |
| 9 | `theorem` | [index_dvd_of_le](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-dvd-of-le.md) | 120 | `result-track:14b273142e19a7c02df1a865874fd2f056aff92c4ee8b42f1a2246206d4a746a` |
| 10 | `theorem` | [relIndex_dvd_index_of_le](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-dvd-index-of-le.md) | 124 | `result-track:6419a81a0b0b2117b4b49d520dd0bbcf5a04c0164c604d678004db3b18cada16` |
| 11 | `theorem` | [relIndex_subgroupOf](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-subgroupof.md) | 128 | `result-track:8024474abf0fc51127c9159b624a9fec2d0e9fb2b92ffdeaf6a0109df2da9c63` |
| 12 | `theorem` | [relIndex_mul_relIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-mul-relindex.md) | 135 | `result-track:d696169efaf71a263ddc84743616c4a4d859f7bf801d00d4bcb71b3dc16bb373` |
| 13 | `theorem` | [inf_relIndex_right](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/inf-relindex-right.md) | 141 | `result-track:6d8e32fdb0caa79183d570c372959efac0552c5d6fb924415a532b1d1fdcd8e5` |
| 14 | `theorem` | [inf_relIndex_left](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/inf-relindex-left.md) | 145 | `result-track:0728e22fe0c803d1abcdda10bc1cd37d56bec45175921cdff0cddc26d1e14362` |
| 15 | `theorem` | [relIndex_inf_mul_relIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-inf-mul-relindex.md) | 149 | `result-track:3e7bd2730e82cc5d87f880e6821e253ba8eec12c792061ea8ccfe9b7387825d4` |
| 16 | `theorem` | [relIndex_sup_right](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-sup-right.md) | 154 | `result-track:a691754669d61d2d66b780e4c33a83caec8c7afca419489d53dd1d44a4cf9990` |
| 17 | `theorem` | [relIndex_sup_left](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-sup-left.md) | 158 | `result-track:196d061a05fe37fe1f7de700c0c026dc681134d69dfc6d1248b2388bde94cfb5` |
| 18 | `theorem` | [relIndex_dvd_index_of_normal](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-dvd-index-of-normal.md) | 162 | `result-track:dcf123e4760c8ca1d9d4ebc7e521607ed65668751fbaa6d3530d507f7a2b1538` |
| 19 | `theorem` | [relIndex_dvd_of_le_left](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-dvd-of-le-left.md) | 168 | `result-track:8939b1e64e592fe650d265162c4f90c0125bc7e468418c6bef6c1e47d3ced238` |
| 20 | `theorem` | [index_eq_two_iff](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-eq-two-iff-source-edition-2.md) | 175 | `result-track:5f0872eff12125b115c2f0f17206cfc9f642c73dec3e377c6fe1a6a0c2f12ef2` |
| 21 | `theorem` | [index_eq_two_iff'](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-eq-two-iff.md) | 191 | `result-track:1c0e74f01e25c55c5ca5995cd5516dbfab08202d2014e7af860c25794ea42c8f` |
| 22 | `lemma` | [index_eq_two_iff_exists_notMem_and](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-eq-two-iff-exists-notmem-and.md) | 200 | `result-track:2002dbec8a941881827558d54027e61cfb9d43fb2637b523ab2da5e8de569fbc` |
| 23 | `lemma` | [index_eq_two_iff_exists_notMem_and'](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-eq-two-iff-exists-notmem-and-source-edition-2.md) | 210 | `result-track:9b488053ef61b926ff0b78152d422b526ef11e55f07f63159d9d0a3ddcb7e15a` |
| 24 | `theorem` | [relIndex_eq_two_iff](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-eq-two-iff.md) | 218 | `result-track:284b079b490bdd26af5386a362f25f6aba0ad3fe49bb5ef178df24282b3dcfc6` |
| 25 | `theorem` | [relIindex_eq_two_iff'](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/reliindex-eq-two-iff.md) | 223 | `result-track:b6e4723bbfac5575bd86797878b27f37c1a30add5dc1c1e8d9005fb46ce34367` |
| 26 | `lemma` | [relIndex_eq_two_iff_exists_notMem_and](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-eq-two-iff-exists-notmem-and-source-edition-2.md) | 228 | `result-track:8f03f2d4066814ada73d9a5ddce6427e2fd263632a3754def955610f9a995ae1` |
| 27 | `lemma` | [relIndex_eq_two_iff_exists_notMem_and'](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-eq-two-iff-exists-notmem-and.md) | 237 | `result-track:115e576386238bfaa0efcbecdacea4cecbf421fd6f41d66bbf9f40910f222f15` |
| 28 | `theorem` | [mul_mem_iff_of_index_two](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/mul-mem-iff-of-index-two.md) | 245 | `result-track:0218d8b4ab7b89cedda2be7f7eeb5522dc9f8fe138e8212f5295a072538deb23` |
| 29 | `theorem` | [mul_self_mem_of_index_two](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/mul-self-mem-of-index-two.md) | 254 | `result-track:4dab0ac84ecaa939589a7e28c26dc6372efdad10170774f55618bcc5e8427212` |
| 30 | `theorem` | [sq_mem_of_index_two](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/sq-mem-of-index-two.md) | 258 | `result-track:9c82c4b50d861703c3c88c0805b36a4e0e6b3469f939b093c5a8e1a1c0a335eb` |
| 31 | `theorem` | [index_top](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-top.md) | 264 | `result-track:c2ca353a84f5ea398913daae3a5fb89e9faf9d4e23623388b50ee6c60f39e0fb` |
| 32 | `theorem` | [index_bot](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-bot.md) | 268 | `result-track:2e998677579814701a1cbff64f5a409def11f3e90c846ac89eea655929181bb5` |
| 33 | `theorem` | [relIndex_top_left](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-top-left.md) | 272 | `result-track:cff170351791aa6e7f5f6088607c22c7596600791ab488d8027a451591baa188` |
| 34 | `theorem` | [relIndex_top_right](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-top-right.md) | 276 | `result-track:e90ab1cebcafc4c5985178458256c5aca211849aa46dbda08402fc13805dfb78` |
| 35 | `theorem` | [relIndex_bot_left](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-bot-left.md) | 280 | `result-track:f53225575e336ca81dd30e2a0748376757483a485cb5a62ec61bf34765474414` |
| 36 | `theorem` | [relIndex_bot_right](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-bot-right.md) | 284 | `result-track:6bba8387fee7eac808c3647bb1c07c56c4b7ecef92b9e233ee4167c17763ac8f` |
| 37 | `theorem` | [relIndex_self](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-self.md) | 287 | `result-track:6f088ec20134f39eed6ec4f8489a59f2bd2be6d0c2d94b34af0556d83cfec61a` |
| 38 | `theorem` | [index_ker](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-ker.md) | 290 | `result-track:d4d2ed8821ab65d8e43b84014253ea9bc8726a96446ded78fc126f7a4de47926` |
| 39 | `theorem` | [relIndex_ker](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-ker.md) | 294 | `result-track:b74dc525bc582151ff535f49ab829aa62b3c2e000d7e342695162a8a052bc74c` |
| 40 | `theorem` | [card_mul_index](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/card-mul-index.md) | 298 | `result-track:57eb9880790934f3b39f095c2c53f44bfddd7e7872192cd692584e2ec25f1b7e` |
| 41 | `theorem` | [card_dvd_of_surjective](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/card-dvd-of-surjective.md) | 303 | `result-track:c328b37a5d73f8e0a67703b1337a16c7b52326489ff1e09bcaf152169ccfe860` |
| 42 | `theorem` | [card_range_dvd](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/card-range-dvd.md) | 309 | `result-track:85629963c326bf82533d1f3388a9aade92ea1c9e8d3617931094f5aed2dc77d1` |
| 43 | `theorem` | [card_map_dvd](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/card-map-dvd.md) | 313 | `result-track:62a1e2323d41a0bbe4fa9395685ada2568037bc5350b78364631439845b72b38` |
| 44 | `theorem` | [index_map](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-map.md) | 317 | `result-track:7d20851aeb1b8e76f96e54c2083680f8fdbb2e22147d66f4e3d8239fb189e8f5` |
| 45 | `theorem` | [index_map_dvd](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-map-dvd.md) | 322 | `result-track:42f1e67c4650d44a7fba99f234d65462a69f0717452f7b05767e6d5687688c1f` |
| 46 | `theorem` | [dvd_index_map](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/dvd-index-map.md) | 328 | `result-track:3f1687f499b98addebec4bcbc7f9f0f9bd2ff9569a55151a127a8c2c6e1b589a` |
| 47 | `theorem` | [index_map_eq](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-map-eq.md) | 334 | `result-track:efa38244bcf948a564bb54af662cc814415a22ffc4310e0c5752fb9ae284f4ca` |
| 48 | `lemma` | [index_map_of_bijective](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-map-of-bijective.md) | 338 | `result-track:85e2e2159080348a2777f25cd7fb6a1638c006353369a67a8726bbb3470062cc` |
| 49 | `theorem` | [index_map_equiv](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-map-equiv.md) | 342 | `result-track:e139c79fab4638821ed567794447cf30b287feaec0efbd41bbfd6675676779d7` |
| 50 | `theorem` | [index_map_of_injective](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-map-of-injective.md) | 346 | `result-track:336d05de903e90ada5a0f026762f432155a0383ef969f8716fac54f8d5e24df5` |
| 51 | `theorem` | [index_map_subtype](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-map-subtype.md) | 351 | `result-track:bac8b60b897944dc360e918d23ee54e95c2ac4787fee584156b5a7e3d802db09` |
| 52 | `theorem` | [index_eq_card](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-eq-card.md) | 356 | `result-track:0ace6e1c854f345ab11f280f967ea9e2cce5d99661f3f46d00583063241fc765` |
| 53 | `theorem` | [index_mul_card](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-mul-card.md) | 360 | `result-track:e5bd8871e9b531057dfcba655523d2c75afa6281b830b67cb0be236bd685ea6a` |
| 54 | `theorem` | [index_eq_card_div](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-eq-card-div.md) | 365 | `result-track:d40e68fb3a4520291539e8ae54426b1f8eb1493c65e64ddbe46411f177234b9a` |
| 55 | `theorem` | [index_dvd_card](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-dvd-card.md) | 369 | `result-track:0ef707915f2d14760ed2fdb0a7a9f3089a98d46383a8c49a7a3a61e11abaae13` |
| 56 | `theorem` | [relIndex_dvd_card](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-dvd-card.md) | 373 | `result-track:3e2a74519317f7f6dac68451245e96763553106f26d541049ca218229e754280` |
| 57 | `theorem` | [relIndex_eq_zero_of_le_left](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-eq-zero-of-le-left.md) | 379 | `result-track:165703b7bf5642f31dc4a34a29d97625d7d061dc43b9234191ba0beb9d4db4bc` |
| 58 | `theorem` | [relIndex_eq_zero_of_le_right](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-eq-zero-of-le-right.md) | 383 | `result-track:5bb4df0b6c7ea5bd869936ee30a9dda5eeb58ac5e69e47e405cddcf280062c7c` |
| 59 | `lemma` | [relIndex_comap_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-comap-ne-zero.md) | 389 | `result-track:8aba4903419c198eeac88997c484d8f3c8a8f4acc5061262ee35b26f45a6a8be` |
| 60 | `theorem` | [index_eq_zero_of_relIndex_eq_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-eq-zero-of-relindex-eq-zero.md) | 395 | `result-track:8426e6c0670c6f37570cf6da8c06d4fbc1ad202d0676f3ede1796f5b60956b9a` |
| 61 | `theorem` | [relIndex_le_of_le_left](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-le-of-le-left.md) | 399 | `result-track:6d939cd8371d1bf8c28c382ac7cfde1ea2113d1c1d78fd2466f252f165af1e87` |
| 62 | `theorem` | [relIndex_le_of_le_right](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-le-of-le-right.md) | 404 | `result-track:d19494f489f7d986d212eba38fbf7cd88ad3511c48e959d5311f9440725d62c9` |
| 63 | `theorem` | [relIndex_ne_zero_trans](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-ne-zero-trans.md) | 409 | `result-track:24ba1220200ff878750c5fea5cf176eb3f97d1bea48a6d462aec23ee309f9bb1` |
| 64 | `theorem` | [relIndex_inf_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-inf-ne-zero.md) | 415 | `result-track:92a61e0c9da7c797bb1f4f942ebed7df78b589e399a02f06cb7d84caf90a08c5` |
| 65 | `theorem` | [index_inf_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-inf-ne-zero.md) | 423 | `result-track:778a31d6f0abe8e105326f2be2c8fbf6b25f57ad06383a35ce6108e779891d82` |
| 66 | `lemma` | [relIndex_inter_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-inter-ne-zero.md) | 430 | `result-track:d51f014912e9100f374d40756977d2d4b8b1c3438a67353954be60d89112b52e` |
| 67 | `theorem` | [relIndex_inf_le](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-inf-le.md) | 437 | `result-track:1f4aaab20fdd0d911061aad3efe8a057d5a6f39c916bfddf0c7eaedf0fd58ad6` |
| 68 | `theorem` | [index_inf_le](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-inf-le.md) | 445 | `result-track:486091ca7d9ec169f70bdcd9e42ce57e87da0255944f0a06184c47519a63c86c` |
| 69 | `theorem` | [relIndex_iInf_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-iinf-ne-zero.md) | 449 | `result-track:0f74b7caf2870c2e899696906308e927172009730a57f9c9490a4fc43b835b2b` |
| 70 | `theorem` | [relIndex_iInf_le](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-iinf-le.md) | 457 | `result-track:40938fe84ba240b471006012387fc2867e8f16c6dbda6dd52618168fdf6540aa` |
| 71 | `theorem` | [index_iInf_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-iinf-ne-zero.md) | 466 | `result-track:6a200977cfe5a334d31c111aacfdb3493fb9ebbf7b90b5aa913ca180c472a603` |
| 72 | `theorem` | [index_iInf_le](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-iinf-le.md) | 472 | `result-track:797ce5b340eed0e3e9771c097f417f9fdc272e08a985d239a85729facac6e37d` |
| 73 | `theorem` | [index_eq_one](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-eq-one.md) | 476 | `result-track:af9224cc6662359e9467e2d1b9bde13e5ac3bb74ec63cc0d5eec67d3421b321d` |
| 74 | `theorem` | [relIndex_eq_one](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-eq-one.md) | 482 | `result-track:e454df00beab9fbef6907a5b9e8df6ea129bef4eca4dac7c036c2700f781020d` |
| 75 | `theorem` | [card_eq_one](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/card-eq-one.md) | 486 | `result-track:dd0661994da0c9483c2c7c4a49247cdcfb64159a0604cbf6648316f4bb5b0022` |
| 76 | `theorem` | [index_dvd_two_iff](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-dvd-two-iff-source-edition-2.md) | 493 | `result-track:f5622cf6d441332a19a44b21b4b31619930833c2913b1a8f6924af05524e0fd6` |
| 77 | `theorem` | [index_dvd_two_iff'](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-dvd-two-iff.md) | 516 | `result-track:56522232fb7c16a27eabd3be839cf2a1cacf8fd98db7ff18bfa54815863e967c` |
| 78 | `theorem` | [relIndex_dvd_two_iff](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-dvd-two-iff.md) | 523 | `result-track:4828653ae3c53ed2efb12cd7c60e7c5a86a506d1e007dc7e028beba64f06a3ac` |
| 79 | `theorem` | [relIindex_dvd_two_iff'](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/reliindex-dvd-two-iff.md) | 528 | `result-track:8b971bf25b75aa4153074822dd93fa5d8325833e67985db3687cd0d0b51a2598` |
| 80 | `lemma` | [disjoint_of_coprime_natCard](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/disjoint-of-coprime-natcard.md) | 532 | `result-track:4fdf3c74fef1a9c80d5235e04335473980778366b4ce96afdea4e6425076bf9e` |
| 81 | `lemma` | [inf_eq_bot_of_coprime](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/inf-eq-bot-of-coprime.md) | 537 | `result-track:d7e274ad22116295f3d27dbd80e879bd08d0bb3637636dcbc111f72b98b3dafc` |
| 82 | `theorem` | [index_ne_zero_of_finite](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-ne-zero-of-finite.md) | 541 | `result-track:7ae0e7f57c1774991ad907413024edaa9471e807fa4f322e8a914dba1da95adb` |
| 83 | `def` | [fintypeOfIndexNeZero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/fintypeofindexnezero.md) | 548 | `declaration-track:a2381acb644d48288d3cfd45fd1ad9418748324574796ae5a422c316eda471cf` |
| 84 | `lemma` | [index_eq_zero_iff_infinite](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-eq-zero-iff-infinite.md) | 552 | `result-track:2458baa39ff5d4d94b179c9a114c397324cebcb9734cc60cae79dbb4de79e903` |
| 85 | `lemma` | [index_ne_zero_iff_finite](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-ne-zero-iff-finite.md) | 556 | `result-track:68423ad15cb46ff0b925498ace680afddba90099eeb20c9eb410b3ba6eeafccd` |
| 86 | `theorem` | [one_lt_index_of_ne_top](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/one-lt-index-of-ne-top.md) | 560 | `result-track:74d00e78d566fe773291acbab66658acc4ff1b7a2b10d2936219d6468053c148` |
| 87 | `lemma` | [finite_quotient_of_finite_quotient_of_index_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finite-quotient-of-finite-quotient-of-index-ne-zero.md) | 564 | `result-track:4670ec3435b80819110fc632ca66fe5aa73ea39bc5e365dfd1c18f45432b1f23` |
| 88 | `lemma` | [finite_quotient_of_pretransitive_of_index_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finite-quotient-of-pretransitive-of-index-ne-zero.md) | 571 | `result-track:a21eb2b2e99c97a12deaa856c8644f09ea2bc37d76a3e14f858dbae0064f8ddc` |
| 89 | `lemma` | [exists_pow_mem_of_index_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/exists-pow-mem-of-index-ne-zero.md) | 579 | `result-track:4a1a5849c83fdadd90dd2a30f409e1cf0c01523567b5dc18d0a61884582381e6` |
| 90 | `lemma` | [exists_pow_mem_of_relIndex_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/exists-pow-mem-of-relindex-ne-zero.md) | 608 | `result-track:942a0c2a5c3b22140713afbfcc1b86f78cbc5ff7a42332021387028bdfad4366` |
| 91 | `lemma` | [pow_mem_of_index_ne_zero_of_dvd](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/pow-mem-of-index-ne-zero-of-dvd.md) | 615 | `result-track:dda82c91fac4d2b6070ec825181f5911aab5a216126e7525eaf8ef7f3f7e9cd9` |
| 92 | `lemma` | [pow_mem_of_relIndex_ne_zero_of_dvd](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/pow-mem-of-relindex-ne-zero-of-dvd.md) | 623 | `result-track:307552d43aae858b86559f9f506028fab24252626ae901e54bcef015854e430d` |
| 93 | `lemma` | [index_prod](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-prod.md) | 629 | `result-track:e2c1192114327955da77d939cfb228a633d5c90a966686eeb19351cadd241d6c` |
| 94 | `lemma` | [index_pi](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-pi.md) | 634 | `result-track:6050836276a7dcca36a99df6b636a75e759f8ca31d3fdd2ef5973494dd21e0d7` |
| 95 | `lemma` | [index_toAddSubgroup](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-toaddsubgroup.md) | 642 | `result-track:533bcfcf3d747683beb1b6e7e956d5b777c589394c440e96937f166610d7240a` |
| 96 | `lemma` | [Index Namespaced Public](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-tosubgroup.md) | 646 | `result-track:f8d1801c231fabc1c4189482fe78b7e587b2d02aaafc58684f20894c78c8cd00` |
| 97 | `lemma` | [relIndex_toAddSubgroup](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-toaddsubgroup.md) | 651 | `result-track:295e558b6f056fee1e8c2267dca90bb844ffdd3e69e21ff82822325497c10044` |
| 98 | `lemma` | [Index Namespaced Public](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-tosubgroup.md) | 656 | `result-track:d42267c4cdc5249b11870094668c19d5baa2d571288433b9d424237961dac870` |
| 99 | `class` | [Index Namespaced Public](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-source-line-663-occurrence-2.md) | 663 | `declaration-track:2cb48e60ecfccd2be2714846d17ff1f9e9eded45e331e541064167574d4c6043` |
| 100 | `class` | [FiniteIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex.md) | 670 | `declaration-track:2a3d436a9859c9fa5077bcc6a33d0fa11779fe2efe651db2da577cc47ebbb59c` |
| 101 | `class` | [Index Namespaced Public](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-source-line-676-occurrence-2.md) | 676 | `declaration-track:b767be53666ccb4b47d0ff416666284cf23136cf633e2d15cfc686866e6d9b3a` |
| 102 | `class` | [IsFiniteRelIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex.md) | 682 | `declaration-track:e63215b87880fed3072cfe8201123017a28442ac329901b202588d7677ecbdaa` |
| 103 | `lemma` | [relIndex_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/relindex-ne-zero.md) | 685 | `result-track:03ec55877de64aaa0b7a1dce8933ddccdfec1cbc188b154da91e43665d4490b7` |
| 104 | `instance` | [IsFiniteRelIndex.to_finiteIndex_subgroupOf](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-to-finiteindex-subgroupof.md) | 689 | `declaration-track:e9d3c95c316bd6d06a4b272a7d483eea64da0d713655a8e3d69f6b1f626726cf` |
| 105 | `lemma` | [isFiniteRelIndex_iff_relIndex_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-iff-relindex-ne-zero.md) | 694 | `result-track:8c0b44c47518dce74be14bcd3abc094c13de47b903d79ee1553870e19bc126b9` |
| 106 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 698 | `declaration-track:1d86f24a365f27a0b8c76e9fbae07f8256f91b450201dd90545605f6c24f8630` |
| 107 | `theorem` | [IsFiniteRelIndex.trans](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-trans.md) | 702 | `result-track:48cc54270a00c06b1b11b8dfc74619b561664f0d361cf492b7670aebd4222c5d` |
| 108 | `theorem` | [IsFiniteRelIndex.inf](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-inf.md) | 707 | `result-track:4eaa8b2935c1650917c44767da468dd1be56114f55c0e0c97b328542773bc14b` |
| 109 | `theorem` | [finiteIndex_iff](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-iff.md) | 712 | `result-track:a7c7d832108c023f43ce71a5c7b932a9568fd52e729f92655f272e96bb7d938b` |
| 110 | `lemma` | [isFiniteRelIndex_iff_finiteIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-iff-finiteindex.md) | 716 | `result-track:d5c04c51c2f6884a8607a09f6a47aa36d674623cbeaf3d0fa51bf62f15bdc369` |
| 111 | `theorem` | [not_finiteIndex_iff](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/not-finiteindex-iff.md) | 721 | `result-track:d348d31ff873eedb8413224f24656b7c29b214f303cd91820696ea96606e0d94` |
| 112 | `theorem` | [finiteIndex_toAddSubgroup_iff](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-toaddsubgroup-iff.md) | 725 | `result-track:1b6a3058897e03dd0c90ddf02c18e494b7bcfdd5bba617443e9bf798458d1eae` |
| 113 | `theorem` | [Index Namespaced Public](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-tosubgroup-iff.md) | 729 | `result-track:5debe59c51f014f9d9460223628bfda51f8661d8b1ada88a1161d4a406f6de1a` |
| 114 | `lemma` | [isFiniteRelIndex_top_iff](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-top-iff.md) | 734 | `result-track:c8494ca696eaea011329a98a54001011b30358794cd1ac39ccd2d3ff2cbf8924` |
| 115 | `def` | [fintypeQuotientOfFiniteIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/fintypequotientoffiniteindex.md) | 739 | `declaration-track:ebedd5bed7b31e20a57915b48f79429f7b3b6502a0a51c6ce5c2b45659fdba86` |
| 116 | `instance` | [finite_quotient_of_finiteIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finite-quotient-of-finiteindex.md) | 743 | `declaration-track:41e1c231278744b53214aa84c271a304e68b0fe0f03ac43b2b9ea230ab87f8b2` |
| 117 | `theorem` | [finiteIndex_of_finite_quotient](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-of-finite-quotient.md) | 747 | `result-track:a4b04f97f3cd531f365ae7584982add3652a33c6083a43323048c318224f5e64` |
| 118 | `theorem` | [finiteIndex_iff_finite_quotient](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-iff-finite-quotient.md) | 751 | `result-track:458f86db511a197aa3dae158b9ff4842bf4dae6329e8005c8db7d746a2878bc0` |
| 119 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/instance.md) | 755 | `declaration-track:04e3da12ef27c1c32d5cf768696d5a3624cf0f44b73bfa039649401b11639603` |
| 120 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 759 | `declaration-track:93b18ed23f6c32b2b1f0e54bec5f3b9dbca06c064e9f36fd1fc2b70b93381481` |
| 121 | `theorem` | [finite_iff_finite_and_finiteIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finite-iff-finite-and-finiteindex.md) | 764 | `result-track:4508f25743e8f868818cfeb04b86ca319d5ebde98f9c86b6680c39d3113542b1` |
| 122 | `theorem` | [Index Namespaced Public](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finite-iff-finite-ker-range.md) | 770 | `result-track:bd2ce183f3cce7ab24f89ef5ec9f9a2f9ba3d1fcedf45d4982965ed2674b45c9` |
| 123 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 776 | `declaration-track:17899841f683e5389524c407d4cd6d8b729a373ab6429550eb5522371b415d41` |
| 124 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 780 | `declaration-track:3bc83011a64ad1cca86ba254437c3e97ecb24f2f708a4fc985d31a8fb2ad61f9` |
| 125 | `theorem` | [finiteIndex_iInf](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-iinf-source-edition-2.md) | 784 | `result-track:36981b1fe09d67edae771bf7eba766b6293b287825ab0d8d6f28feb906902999` |
| 126 | `theorem` | [finiteIndex_iInf'](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-iinf.md) | 789 | `result-track:2892ff81b62b12807d3e1172b49abd125a370cf66b2ee7eb080b64c9b83b60ee` |
| 127 | `instance` | [instFiniteIndex_subgroupOf](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/instfiniteindex-subgroupof.md) | 796 | `declaration-track:d08e9317aa0d050d5fd8c6239101239f1540d2bd1a46863b17f9d12820ed9006` |
| 128 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 801 | `declaration-track:e048f0f37ec9022291226ba32d392837e556444025953f599021e2a1549dce0a` |
| 129 | `theorem` | [FiniteIndex.map_of_surjective](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-map-of-surjective.md) | 808 | `result-track:1222477315b4bf1eaa4ead6b393521a227da3559301a9ab64c8436a5de003c45` |
| 130 | `theorem` | [finiteIndex_of_le](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-of-le.md) | 813 | `result-track:724610ec9b4b8f36036b8cff3d3fab7471834feac8fa2fda46ea3a81ea1624b5` |
| 131 | `lemma` | [isFiniteRelIndex_of_le_left](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-of-le-left.md) | 817 | `result-track:3c78bc97d2a6160e0766f5531db91a76eaf17b777374d9a64050dded7882a954` |
| 132 | `lemma` | [isFiniteRelIndex_of_le_right](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-of-le-right.md) | 828 | `result-track:6ff209cd1a279fb8ba6f30def06f36fe9491d36340fabd87921f6f7645aa1430` |
| 133 | `theorem` | [isFiniteRelIndex_comap_iff](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-comap-iff.md) | 834 | `result-track:20319982c96eeebfe9808c605a6d201a4dfd8ae31aa582580236a3ceea4c6765` |
| 134 | `theorem` | [IsFiniteRelIndex.map](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-map.md) | 839 | `result-track:ffda7d962bc6b498ec4c675b80f5b1121137ef3c38d8a5a5c6f10841444a4fd6` |
| 135 | `theorem` | [IsFiniteRelIndex.comap](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-comap.md) | 845 | `result-track:8a9f0db2bb00700eda25aefed1bc25329aea7f3aaf1fb1c794e70e439f9b0e43` |
| 136 | `lemma` | [isFiniteRelIndex_of_finiteIndex](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/isfiniterelindex-of-finiteindex.md) | 851 | `result-track:874a4ea532fb7f403429b12ac12e66f0067017f3bc898b78e759961f65cdf508` |
| 137 | `lemma` | [index_antitone](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-antitone.md) | 856 | `result-track:d4308568cc5d4dfc8da9e89c7cc3fd7d3f4171031331b23cadbb3cabbbe8aef0` |
| 138 | `lemma` | [index_strictAnti](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-strictanti.md) | 860 | `result-track:60a0e3545fc77d5d7be03369d4d2911f04c947ab59e77415304a12eb6eaa4cf3` |
| 139 | `instance` | [finiteIndex_ker](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-ker.md) | 869 | `declaration-track:3f9b79b078ce7e3828168f6e556c4e77030bee8e67acfb035c1bc1df3ee28fee` |
| 140 | `instance` | [finiteIndex_normalCore](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-normalcore.md) | 874 | `declaration-track:ecb34c7b8d08eadf404d92d1e77b4e375692c8b4ac7cccd4177d1ad4f54ac933` |
| 141 | `instance` | [Index Namespaced Public](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/finiteindex-normalcore-source-line-878-occurrence-2.md) | 878 | `declaration-track:b0fa3b9a93c0b7ec401a689c4ddf3f39416b11cbc685e96a689a2147a062590e` |
| 142 | `theorem` | [index_range](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-range.md) | 886 | `result-track:9c70c98923f1317d562a0b8df2f020232cd5986a5f296029bb79efee20fa762d` |
| 143 | `lemma` | [Subgroup.relIndex_pointwise_smul](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/subgroup-relindex-pointwise-smul.md) | 904 | `result-track:bdefd660c5c338f458a2700f3f3001b1f13f1b245e497d618a53c1dae8fce59e` |
| 144 | `lemma` | [AddSubgroup.relIndex_pointwise_smul](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/addsubgroup-relindex-pointwise-smul.md) | 910 | `result-track:6b47c2bafa503a167ce33de7a299291b46244d1deb1b82a6139647244cc5d325` |
| 145 | `theorem` | [index_stabilizer](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-stabilizer.md) | 921 | `result-track:6f4659470d27062073ffa1fc6f06e55da34692b6b60d3a747ce3c08f9376c8eb` |
| 146 | `theorem` | [index_stabilizer_of_transitive](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-stabilizer-of-transitive.md) | 926 | `result-track:c40e077e1755464569226cfa3611de6743d09bb183cc8918fee4a889f848c9b7` |
| 147 | `lemma` | [surjective_of_card_ker_le_div](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/surjective-of-card-ker-le-div.md) | 935 | `result-track:57816a897535add4ba1ef9c381fc5ea2a175f080fd6bfd4317d6ae26f593c06e` |
| 148 | `lemma` | [card_fiber_eq_of_mem_range](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/card-fiber-eq-of-mem-range.md) | 948 | `result-track:558ad6216983d9d68eff105b9c43dd32fe003664cfa1e99f2be2071d64ae105f` |
| 149 | `lemma` | [index_smul](../../../../GroupTheoryAndGeneralizations/IndexNamespacedPublic.lean/declarations/index-smul.md) | 967 | `result-track:fff5a7f6a074cdcafdcb0e07eedd4816f16d3d7f9486ea407854c1caea60b11a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7823f4f98165b1e8cd46cb2d4900de3d5a1507b82d8fae8227092a791bed69a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Index/Variantc84bafb0b5e16bb332543cffbd65fd2181b7678b241422db6b86873a74751342.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
