# Verification target: Span Rank Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "712209238faaaa1f7a4e5a77cc3ef70b9cf2d6f9",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `712209238faaaa1f7a4e5a77cc3ef70b9cf2d6f9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean.json)

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
| 1 | `def` | [spanRank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank.md) | 71 | `declaration-track:0c46ed5ddc3523c78372813d051f0d7b0ef1c1448dce45710aaab0bd61d35327` |
| 2 | `def` | [spanFinrank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank.md) | 75 | `declaration-track:177506c7cd0d595c87975731d442b063fb3be9002597d474dc3840ed2ec544c8` |
| 3 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/instance.md) | 77 | `declaration-track:68bd1f19278bc69a7ac478f98a939cc034047f14d93220da82f6017e4800c345` |
| 4 | `lemma` | [spanRank_toENat_eq_iInf_encard](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-toenat-eq-iinf-encard.md) | 79 | `result-track:3f393f212130758839329d36266b60e34eb974a445bb3184cecc5c2609ed26a1` |
| 5 | `lemma` | [spanRank_toENat_eq_iInf_finset_card](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-toenat-eq-iinf-finset-card.md) | 95 | `result-track:59c9f163c56077649a4d5da67734ca814bd4109af8ddc1fa8b317bb4bf81e7c8` |
| 6 | `lemma` | [spanFinrank_eq_iInf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-eq-iinf.md) | 110 | `result-track:d2ea4095f98f5e564a18339c30e0f55072616965c999eee0a69378d819e99c0e` |
| 7 | `lemma` | [spanRank_finite_iff_fg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-finite-iff-fg.md) | 116 | `result-track:2292ad3e6e893f7ea19d59fdea8a10d77537aa3e61e3cef720ad35c4aa315c17` |
| 8 | `lemma` | [spanFinrank_of_not_fg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-of-not-fg.md) | 127 | `result-track:0caf4e155cc0cbcfbe59a5db7c9c4277f8e4d65302745a7937b8b751c89b24ef` |
| 9 | `lemma` | [fg_iff_spanRank_eq_spanFinrank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-iff-spanrank-eq-spanfinrank.md) | 135 | `result-track:ac295008cbc7f2d48041780a9fb2b7a35a8e6b7fbd28da0a0e38a7191045f2ee` |
| 10 | `lemma` | [FG.spanRank_eq_spanFinrank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-spanrank-eq-spanfinrank.md) | 139 | `result-track:d0f252b1bf08f7af9c1bf2a2bde3b0ba48945975d59a1ef9f5b5860ef5e638ae` |
| 11 | `lemma` | [FG.spanRank_le_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-spanrank-le-iff.md) | 142 | `result-track:4703c2c1af9defe115d7857a512dbb435b9c13fc61dbf2e613b15a33653313cd` |
| 12 | `lemma` | [FG.spanRank_eq_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-spanrank-eq-iff.md) | 146 | `result-track:cae01497bbf579a2b56a41e45710fb3ffb1d7b0b80dd71c843d6f38035e15cdb` |
| 13 | `lemma` | [spanRank_span_le_card](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-span-le-card.md) | 150 | `result-track:c3ea36c6ebdd330d304ae7127b72a61a5608e4a283c74543d427343b6fd4f7ed` |
| 14 | `lemma` | [spanRank_span_range_of_linearIndependent](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-span-range-of-linearindependent.md) | 155 | `result-track:9a15a6bbfeacd97228c97cd0b867e0659ec15124332ffb7f1d6d048c20aee97f` |
| 15 | `lemma` | [spanRank_span_of_linearIndepOn](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-span-of-linearindepon.md) | 168 | `result-track:5247688e6f1ddb8317f43e1920134d2c77a6c139d762b590f546e2fbf24078ea` |
| 16 | `lemma` | [spanFinrank_span_le_encard](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-span-le-encard.md) | 172 | `result-track:31e452b9a31fdfc54ba6f1ca2bd40e2a36695b54af01eb1945a6ecdb78b78932` |
| 17 | `lemma` | [spanFinrank_span_le_ncard_of_finite](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-span-le-ncard-of-finite.md) | 176 | `result-track:073f6089cab299cf3cc39905c63ec8b2e87fbf31ed3664e90d869a2854e5f0ea` |
| 18 | `theorem` | [exists_span_set_card_eq_spanRank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/exists-span-set-card-eq-spanrank.md) | 182 | `result-track:cd4d41e97b4068e77392f914625c24517497a0bef9ca02f654dc52cf33658921` |
| 19 | `theorem` | [FG.exists_span_set_encard_eq_spanFinrank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-exists-span-set-encard-eq-spanfinrank.md) | 191 | `result-track:b01f30486e47e3f305eb5641950a4c83986e118f9ca045f6c5f4db6ce2ff9d82` |
| 20 | `theorem` | [FG.exists_span_finset_card_eq_spanFinrank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-exists-span-finset-card-eq-spanfinrank.md) | 201 | `result-track:77779992c1ce8211ca860b0a7f78386835e25dacc9823dbf75afc9ba201d5bcf` |
| 21 | `lemma` | [lift_spanRank_le_iff_exists_span_set_card_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/lift-spanrank-le-iff-exists-span-set-card-le.md) | 208 | `result-track:c6dcd3c2755b1bb4bff76c9b1e0d3dc081ea4faf38b52edd39fde6ca9dc48763` |
| 22 | `lemma` | [FG.spanRank_le_iff_exists_span_set_card_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-spanrank-le-iff-exists-span-set-card-le.md) | 218 | `result-track:de93f984adac325ba60046c221eda755e97ddc0d7494db54a45fb0992b0a9e05` |
| 23 | `lemma` | [spanRank_eq_zero_iff_eq_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-eq-zero-iff-eq-bot.md) | 223 | `result-track:c769528fa87e88d6ea263856882ce177d28cb8d119f96d89e46a584501940221` |
| 24 | `lemma` | [spanRank_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-bot.md) | 234 | `result-track:729ed941e382fffa495fb9bf2cecdaf1824c88010df9ecc5bfb82036609ce4ae` |
| 25 | `lemma` | [spanFinrank_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-bot.md) | 237 | `result-track:08f076366029d0a9ee1dbd48e291b17d9a884c6565947493e43cb51cc751d8cb` |
| 26 | `lemma` | [spanRank_subsingleton](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-subsingleton.md) | 240 | `result-track:a0c00afaf2dc8bbfe6bf13b4c10400584d01dd1d262863698273a5e025ad913c` |
| 27 | `lemma` | [spanFinrank_subsingleton](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-subsingleton.md) | 244 | `result-track:12ef9ad066ced85fddc25be2178540ba1b42d364921d3e3ab2cbd1d52ed4baef` |
| 28 | `def` | [generators](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/generators.md) | 249 | `declaration-track:55ac05387481863f4db6164a66232e8b06cf1aa54514a6d64b9fb64c0870d738` |
| 29 | `lemma` | [generators_card](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/generators-card.md) | 252 | `result-track:8ef1b1e5eda65c6ad773fa19308eed7f5e1e9b1a4de8a1096ec5abaa4649d373` |
| 30 | `lemma` | [FG.generators_ncard](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-generators-ncard.md) | 255 | `result-track:1e8f9f92b96136009660d022bf09a039b89b8ec57efe44ccc6a7a66214891748` |
| 31 | `lemma` | [FG.finite_generators](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-finite-generators.md) | 261 | `result-track:d64f495579685442b46bf15cf20f9452da621e9694a782d6eab30efd29a2d02a` |
| 32 | `lemma` | [span_generators](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/span-generators.md) | 267 | `result-track:a3824a0f7789624a2c5122a98cfc7f259f4f8142576b6f12f78ad016b35001b5` |
| 33 | `lemma` | [FG.generators_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/fg-generators-mem.md) | 271 | `result-track:9b5da613c934ba5c39075c786848de63ce325031c077eca69c863b8c71ebdfcc` |
| 34 | `lemma` | [spanRank_sup_le_sum_spanRank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-sup-le-sum-spanrank.md) | 275 | `result-track:196c7386e40b0d201bc4d1c02e3474b09e0f6b27f982bc0118be676c612a7b15` |
| 35 | `lemma` | [spanFinrank_eq_zero_iff_eq_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-eq-zero-iff-eq-bot.md) | 282 | `result-track:de7611948002caf6cc26fd812738d0bb05bc2d594f80d7f4f0c4f205118e162e` |
| 36 | `lemma` | [spanFinrank_singleton](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-singleton.md) | 288 | `result-track:40fe177e2d205357978f4026a6d5f0db32f8be32cb7b53f977cf0be2652486a8` |
| 37 | `lemma` | [spanFinrank_eq_one_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-eq-one-iff.md) | 294 | `result-track:7ad56ab859119a4dadbf4d6dd81c8b5feee4583c219cc5b3c44ac4e34e77ea39` |
| 38 | `lemma` | [lift_spanRank_map_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/lift-spanrank-map-le.md) | 316 | `result-track:7e761e75b7a94247ee4dbf439769fe9ab47dd3c2454ee67f9cf0dd5354d95225` |
| 39 | `lemma` | [spanRank_map_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-map-le.md) | 322 | `result-track:5b5931170fc326bbae7c1424fac2641a52e89d071f91955bf454e7bf8d75a82f` |
| 40 | `lemma` | [spanFinrank_map_le_of_fg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-map-le-of-fg.md) | 326 | `result-track:2dce4de6116f03ec008fdc21716680f303e9efb511079e335859c394518aeaef` |
| 41 | `lemma` | [lift_spanRank_map_eq_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/lift-spanrank-map-eq-of-injective.md) | 332 | `result-track:0097ecddcf2794b0684ea9fae5a1cebb623b8e61fdaba11de0289d1b668a7483` |
| 42 | `lemma` | [spanRank_map_eq_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-map-eq-of-injective.md) | 342 | `result-track:6e11a6ff2fb8380eca083ff2678525a326fc13444b0249227bd9fb9cd2cb55bf` |
| 43 | `lemma` | [spanFinrank_map_eq_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-map-eq-of-injective.md) | 346 | `result-track:d0904e87eb8dba0244190d74c14f3d6da74d170159909fb58f7f2f6207eac78b` |
| 44 | `lemma` | [spanRank_range_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-range-le.md) | 352 | `result-track:6ee8076222eb3f71c3db117af509578207a339efc45fc5408bd36ec8e295b171` |
| 45 | `lemma` | [spanRank_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-top.md) | 357 | `result-track:569f9c8f048b1ac86248854e314f02646a5a4b58e4cd9c00a36c3942b1ded099` |
| 46 | `lemma` | [spanFinrank_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanfinrank-top.md) | 360 | `result-track:6b03aea639618233cf854177ec41590c49f32f57267a4a75b224de37747fdbb4` |
| 47 | `lemma` | [spanRank_eq_of_equiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-eq-of-equiv.md) | 363 | `result-track:1410de63800fefaa578f114c840ba8191906d85aee5bbef55e10608ca770c97a` |
| 48 | `lemma` | [le_spanRank_restrictScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/le-spanrank-restrictscalars.md) | 375 | `result-track:325bf2e2cd50996576ac2f292b3a87bfe6f9795fb3b043675d919e90fc2d87b9` |
| 49 | `lemma` | [spanRank_restrictScalars_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/spanrank-restrictscalars-eq.md) | 382 | `result-track:bf65224e5ebffcbb00e3a450f520b715f1ef84047d078811a0aa06d104225b32` |
| 50 | `lemma` | [Ideal.lift_spanRank_map_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/ideal-lift-spanrank-map-le.md) | 397 | `result-track:399fddb16f9e6e6b41d903fcf642688a977778d95c3de2819286fc64a7eb7158` |
| 51 | `lemma` | [Ideal.lift_spanRank_map_eq_of_ringEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/ideal-lift-spanrank-map-eq-of-ringequiv.md) | 407 | `result-track:48d383dc8e40b32aa437be7f98bf2f7e231c53cfe8f2edb509e23a05671e5699` |
| 52 | `lemma` | [Ideal.spanRank_map_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/ideal-spanrank-map-le.md) | 413 | `result-track:c310998c4479c5bc6cd12ea72c1a0f4fe146c0488deac4f17b537e5915449211` |
| 53 | `lemma` | [Ideal.spanRank_map_eq_of_ringEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/ideal-spanrank-map-eq-of-ringequiv.md) | 417 | `result-track:f3c2939cd078710bc6c04dbb3025195680fc98ce84f9866c6a7d5fb00a75d964` |
| 54 | `lemma` | [Ideal.spanFinrank_map_le_of_fg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/ideal-spanfinrank-map-le-of-fg.md) | 421 | `result-track:ea2ef58a7f8d3eab46b049d61b29e5dd228c35451753608706b1c8768dee2757` |
| 55 | `lemma` | [Ideal.spanFinrank_map_eq_of_ringEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/ideal-spanfinrank-map-eq-of-ringequiv.md) | 428 | `result-track:d69438a6e271f8130fd2d10021467ada500832ee00547e8e44474bb00d4ba400` |
| 56 | `lemma` | [Module.Basis.mk_eq_spanRank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/module-basis-mk-eq-spanrank.md) | 443 | `result-track:ed0126f6d0d11480b77badd27c53c994a611c65e041ca2a97febe4a3af592e09` |
| 57 | `theorem` | [Submodule.rank_eq_spanRank_of_free](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/submodule-rank-eq-spanrank-of-free.md) | 448 | `result-track:95840e60130f008766dcd24c9f06c8527be3bfb7c2b473e691886a1beb27d298` |
| 58 | `lemma` | [Module.finrank_eq_spanFinrank_of_free](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/module-finrank-eq-spanfinrank-of-free.md) | 455 | `result-track:cee8ec5b26abf7a3d0bed050969d45040419fd71c1177259a4d1361f0ccf4cc7` |
| 59 | `theorem` | [Submodule.rank_le_spanRank](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/declarations/submodule-rank-le-spanrank.md) | 459 | `result-track:3db9578c360e7285fdb43993a627643f8ee1212b9f6d47d9cc6e9916edb13e1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=781d62fd9965113a7ecb61f54e605f5d20a83d0627bccdef3d354a7f6fa906d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
