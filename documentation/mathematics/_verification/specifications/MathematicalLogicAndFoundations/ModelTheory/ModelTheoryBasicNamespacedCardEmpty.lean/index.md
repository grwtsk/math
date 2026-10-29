# Verification target: Model Theory Basic Namespaced Card Empty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55546d4687ce9ebefab41cecd85c2d5df87b49f2",
  "lexical_observation_count": 142,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant4adbececde97f3f7f1cc441c4eedaf6663ac4522b928a9c6083124c3b7447990.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55546d4687ce9ebefab41cecd85c2d5df87b49f2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant4adbececde97f3f7f1cc441c4eedaf6663ac4522b928a9c6083124c3b7447990.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant4adbececde97f3f7f1cc441c4eedaf6663ac4522b928a9c6083124c3b7447990.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Language](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/language.md) | 63 | `declaration-track:8cfb3f0978545505c54b47ada0d2a7795b03ce8f2cd1e3a5b04dd45f6e1ef940` |
| 2 | `abbrev` | [IsRelational](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/isrelational.md) | 74 | `declaration-track:30b63050a8e38ba999dab7e633b794728e33c5bd01f8c5fa1e0daa8f0b7a10fd` |
| 3 | `abbrev` | [IsAlgebraic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/isalgebraic.md) | 77 | `declaration-track:c2ed862773ed17004efc6acb29384fb9cabf1fdb6551e973a2ca4e7eb97c6a22` |
| 4 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/empty.md) | 80 | `declaration-track:0b57a3abba89250aa41ca58687e7a789290ac742a2d76ab103134008377df738` |
| 5 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-2.md) | 84 | `declaration-track:1c65ac8fca033dbef4901f3e01919f470c4092f6df99a74e247ba89c1c10b91c` |
| 6 | `def` | [sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/sum.md) | 88 | `declaration-track:1e0f2896d01f751f5ae1b9a3e03c8c4cdbabd453bf29402042f3a067e8310fc6` |
| 7 | `abbrev` | [Constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/constants.md) | 92 | `declaration-track:67136ea47d9e269af58196e580adfb1c8e8ffd3d51c7c61ff3c40cc79a9ddae6` |
| 8 | `abbrev` | [Symbols](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/symbols.md) | 96 | `declaration-track:31c0b8f951d69064f05b14c1330e180a624cc828ba3d84f3af5d5009e7db62d1` |
| 9 | `def` | [card](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/card.md) | 100 | `declaration-track:4b219e4f59c2f5b9e846bc68cf77e28a179a1319002bec96eedcaed1a1edf06b` |
| 10 | `theorem` | [card_eq_card_functions_add_card_relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/card-eq-card-functions-add-card-relations.md) | 105 | `result-track:f816bd94cd5ab3e89ab7fd837aa69274ab6b2ea42ed6cf34ad9c070e346b8a68` |
| 11 | `instance` | [isRelational_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/isrelational-sum.md) | 111 | `declaration-track:3185e47975150ed8a1c51f5ff7e406ebe01dbc8f2d209a7f03bb8a357238e709` |
| 12 | `instance` | [isAlgebraic_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/isalgebraic-sum.md) | 114 | `declaration-track:6a19595519f2e9ac4ff82a204e6cb47cfecd3c286af99a4a9fc19e2e715d69d7` |
| 13 | `theorem` | [card_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/card-empty.md) | 118 | `result-track:2e260a3a483622165d51b9e318ac47043db0773cbfa654393ef97b7c8637b30d` |
| 14 | `instance` | [isEmpty_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/isempty-empty.md) | 123 | `declaration-track:e53382812ea64d0fc4a75cd038cab794fe64ed7b9c80b26825d045a4c65c74eb` |
| 15 | `instance` | [Countable.countable_functions](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/countable-countable-functions.md) | 127 | `declaration-track:e914014e8f61de01459ae1ccb86305f39631f67cfd9f0fa45ed2bfeb52d29df5` |
| 16 | `theorem` | [card_functions_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/card-functions-sum.md) | 131 | `result-track:d188b8c259fe716540214b4277cb5ea4119f2e866f550bc60cf34a835278be4a` |
| 17 | `theorem` | [card_relations_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/card-relations-sum.md) | 137 | `result-track:d8d25b90bbd1d3b7542a16575ddc5ad67d9c60acd64a9e497ec8e474b3d6ebb5` |
| 18 | `theorem` | [card_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/card-sum.md) | 142 | `result-track:bf22e41201bbc9d51dce742f7548f6a246dc877cd2be5775a7a26d4d93eac51e` |
| 19 | `instance` | [instDecidableEqFunctions](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instdecidableeqfunctions.md) | 151 | `declaration-track:b1631c3c6d14cb14a6b9bc87c38dd4124760718e8b2d74a3e3743eabf61b5b6f` |
| 20 | `instance` | [instDecidableEqRelations](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instdecidableeqrelations.md) | 157 | `declaration-track:d895875e510687495c98183aae1111400d6af9d78d57d3dd414c9aaf2290a648` |
| 21 | `class` | [Structure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/structure.md) | 167 | `declaration-track:5993795a4e27df42d992749993f16d184799bf1daa147a27ea4d57b63ce7461e` |
| 22 | `def` | [Inhabited.trivialStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/inhabited-trivialstructure.md) | 180 | `declaration-track:3fb60360c4a559e7a354f6e4c38fe3248f092c9c7d3ddccc012c16e79741e5d5` |
| 23 | `structure` | [Hom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/hom.md) | 189 | `declaration-track:33219a8cbe5acbab78eafff183545b74276e6755daea18a0c3af4a672d775dcf` |
| 24 | `structure` | [Embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/embedding.md) | 210 | `declaration-track:1d6b0cb1e9ee59a3e54ef05f36666f8cf12d9b9f82652dfa0cfb8d7f5b1baa74` |
| 25 | `structure` | [Equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/equiv.md) | 223 | `declaration-track:6179eacf3471a6684cf3b8c36fae4d9274c33360c2cea72f5501dd8e77adea34` |
| 26 | `def` | [constantMap](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/constantmap.md) | 238 | `declaration-track:cbf2fe1b5cedf3e345003ed99e61ca6381b8c2c31a81883473e060ff3f6626a2` |
| 27 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance.md) | 240 | `declaration-track:147cb670d5befa4d8ea68be33816c061bfd38438ea6ab4d0e8649f3fb18f2b69` |
| 28 | `theorem` | [funMap_eq_coe_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/funmap-eq-coe-constants.md) | 243 | `result-track:268c67d1890becc07475ea69a1a3f5f408a4306fb8765c3b464f1a1c27dc8f5c` |
| 29 | `theorem` | [nonempty_of_nonempty_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/nonempty-of-nonempty-constants.md) | 248 | `result-track:98af01bc41358ecd0f9c4389f6b16e6a4cdedd86a41c3fb13dd422fbfee0b8b3` |
| 30 | `class` | [HomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/homclass.md) | 253 | `declaration-track:4d3616e511b09d46c334d6f3620f31d8fa9a9ac30ab31786dcccb73700223cfa` |
| 31 | `class` | [StrongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/stronghomclass.md) | 260 | `declaration-track:0fa87101508ae3741dfece93556dd862fd93689881b202d2b493da5273cabce9` |
| 32 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-9.md) | 265 | `declaration-track:d43a6e42bb6c2c05534837e10dfb386f15c81995ad05d94df31c5b98dd49ea41` |
| 33 | `theorem` | [HomClass.strongHomClassOfIsAlgebraic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/homclass-stronghomclassofisalgebraic.md) | 271 | `result-track:15d9c52391442df23700537f531a581a9bd7b63c7bc7fd04751472f78b2ffd4a` |
| 34 | `theorem` | [HomClass.map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/homclass-map-constants.md) | 276 | `result-track:52c7466e2fd99a639080d00014ec6eebc69293cdab892d8d94d1a410b9ae484a` |
| 35 | `instance` | [instFunLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instfunlike.md) | 290 | `declaration-track:c4b4e55e4aabe06a3cfed1ceb60f4fbfb1644cb0b75b3762b8673a0a87a3b56d` |
| 36 | `instance` | [homClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/homclass-source-edition-2.md) | 294 | `declaration-track:d6a6afc6cf48dc4bc3063cf8002f464c07b1c8bcb775a3956392b49b43e89da0` |
| 37 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-4.md) | 298 | `declaration-track:6bb738bf0b4cc353c7bdb606ff65a46e4f76cb1548f365151e7d462eaa33164f` |
| 38 | `theorem` | [toFun_eq_coe](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/tofun-eq-coe.md) | 302 | `result-track:58def83137b567d75bad8e8e4bcfea982192db7b66d5aaf74ceb784bef63076b` |
| 39 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/ext-source-edition-2.md) | 306 | `result-track:39ad26cc24e8fcee537dbaf799abb058f49188691974f662c9ebc9507efe4b99` |
| 40 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/map-fun-source-edition-3.md) | 310 | `result-track:b2ee2a6ff9c4268f5ce02834dcac242872b567be001dcd62f139e40400064b8a` |
| 41 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/map-constants.md) | 315 | `result-track:6f01498195e55ffc21b4c572770e1b687e1db291e59b1b8cacdf360f080d56aa` |
| 42 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/map-rel-source-edition-3.md) | 319 | `result-track:5fb24a5e2cb968d6c76a631dc392c8e45d82789b91cdd3cbe6b9922a5e4e5e96` |
| 43 | `def` | [id](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/id.md) | 327 | `declaration-track:96899d2992f0305fe41ca3f8f46787ad0fed543514808234ec7871754f974fda` |
| 44 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-7.md) | 332 | `declaration-track:a9732a6afb60dce9a551c9b9d2e7c241f703a8c688309e6bcae8d4030f5fe407` |
| 45 | `theorem` | [id_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/id-apply.md) | 336 | `result-track:271161151cde3de0b1c2840632841ff668aa427b72f6ac5e2031ed95ae3f255d` |
| 46 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-source-edition-2.md) | 341 | `declaration-track:d966684c0cd35f093893b562f4bc3af5ef7b5a925322d9b2c6348427ba37a50e` |
| 47 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-apply-source-edition-3.md) | 349 | `result-track:f0dbfe2bce7d2e0f5d437c6397e70494bde08841302c8bf60363ea445d176701` |
| 48 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-assoc.md) | 353 | `result-track:0b68506b70bbeffe9e0e2287f3eeeb89d7745faf0e9f39761df94917d90e427a` |
| 49 | `theorem` | [comp_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-id.md) | 358 | `result-track:910cd94862cd1e5a229c4920d9ac2db5cfe95ae82941b89fb1bf4b7fd7266ff1` |
| 50 | `theorem` | [id_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/id-comp.md) | 362 | `result-track:ff32f012f05109c4dff5702c09d9544bf7330b1c08e599c1d4aadfb7e9c93e0d` |
| 51 | `def` | [HomClass.toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/homclass-tohom.md) | 368 | `declaration-track:fb02cffa1ce43d5c2d202f2fca2bcfe6da553856931bb9985ffe57c811008309` |
| 52 | `instance` | [funLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/funlike.md) | 374 | `declaration-track:225d016428750f8c46a953ddc4592ba5177228b3f9a52edba78ea23a60822f9d` |
| 53 | `instance` | [embeddingLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/embeddinglike.md) | 383 | `declaration-track:2486d7ce68067e1c806f194d9f4687d69d429073e589887d0ab5f0d77ffae72d` |
| 54 | `instance` | [strongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/stronghomclass-source-edition-2.md) | 386 | `declaration-track:d76d1382e473729a93874a9c4e0df25afbf16da0de2668c8a7e6797ea66c3049` |
| 55 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/map-fun-source-edition-2.md) | 391 | `result-track:0a1445b590815ef53dcca4f970036cdcc3463e660f2b4e2a39706285f6b69672` |
| 56 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/map-constants-source-edition-3.md) | 396 | `result-track:f77af876c3ff9e7a64ca66ca6204e80a55e638f0f75b0c55a3c6367380b53e7b` |
| 57 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/map-rel.md) | 400 | `result-track:50717be77aed185cbdfe864542f284c74172dc88aadf9171c8dae6b2aff10b76` |
| 58 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/tohom-source-edition-2.md) | 405 | `declaration-track:c6d0e2fd81fd83395db036eef7f82c2aa07fff9c7848e0ad06c53178f5cabad7` |
| 59 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/coe-tohom-source-edition-2.md) | 409 | `result-track:539fa85922418d2570666771fd8c3a07fb7eb23d14954bdbd0443563a3b8e301` |
| 60 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/coe-injective.md) | 412 | `result-track:469e881175414234db30bdc9ffb1205dc083c1651c9608090816bfdc0087bbe0` |
| 61 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/ext-source-edition-3.md) | 421 | `result-track:ce8dccd9256c0b5eff1d4bc85340e4e5dd7dc388f6b933f512a9cdf74cc4228c` |
| 62 | `theorem` | [toHom_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/tohom-injective.md) | 424 | `result-track:3ed7157b1974be9cbd4baa4e5ee6b9b5f091560ce8af980474ce5a6aeed69867` |
| 63 | `theorem` | [toHom_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/tohom-inj.md) | 430 | `result-track:f47f47fb1a88d032a8addf81da13b68e9d163768bfc3b1fd68628115de3a58d1` |
| 64 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/injective.md) | 433 | `result-track:28cd6a973704639e8718dd2525f3eb84a86437ef0b1579b2a1f2d586e11834dc` |
| 65 | `def` | [ofInjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/ofinjective.md) | 438 | `declaration-track:17d84fd127b067d5b2b8817c86e94745f81dac3793f1d524a719a14e24ccb7d0` |
| 66 | `theorem` | [coeFn_ofInjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/coefn-ofinjective.md) | 444 | `result-track:5d4f5b2efd511a35cb2bc97e0057d80fcdf3bf823f62ae749b6be0affb904aa2` |
| 67 | `theorem` | [ofInjective_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/ofinjective-tohom.md) | 449 | `result-track:5c5293173b39032b73447541ca3b0d1675e28e285c973d07c4c65c058ceabbeb` |
| 68 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/refl.md) | 457 | `declaration-track:62391f95dcde472e2040013f925ac4625db981876fbcee0b7ed8e435ddc63d22` |
| 69 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-5.md) | 461 | `declaration-track:73e5dd4a7d02a4d5d572e66975af75e9129e18ae399911441ae4b1b63455b708` |
| 70 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/refl-apply-source-edition-2.md) | 465 | `result-track:e13c9ef79663d1d538c3a8a4d324e9f42745da808d16b69ed92ba5054ef6c679` |
| 71 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp.md) | 470 | `declaration-track:76e3a45178015d621dfda0317a4a89fd38457f5352e546ecda7bf75c36048793` |
| 72 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-apply.md) | 479 | `result-track:2ddd834bb594c58848b77dd58df0ba1e3a4d01e9acd35a0576a2a83740050fad` |
| 73 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-assoc-source-edition-2.md) | 483 | `result-track:1b18fcb705e45eb134061c65efaa9b0e55ece80ccf390dab18bac146985f0bbb` |
| 74 | `theorem` | [comp_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-injective.md) | 487 | `result-track:aeee0ca13ba35ea9347ac3637b6a3f506facbbb7f3b3047d9c89aa6f41ecdeab` |
| 75 | `theorem` | [comp_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-inj.md) | 493 | `result-track:572d1ad2440603bf679c28c77068c50a5ad98ba57e698d40c5beaa537e7c962f` |
| 76 | `theorem` | [toHom_comp_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/tohom-comp-injective.md) | 496 | `result-track:508fd88a00bf1d6773ed5aa52a8e13da50e41f6e00d55f33a01499735c45ba9b` |
| 77 | `theorem` | [toHom_comp_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/tohom-comp-inj.md) | 502 | `result-track:7d4aed7a98e2b074ffd8e705352b570979d3384db630f0f118e162e106e75080` |
| 78 | `theorem` | [comp_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-tohom.md) | 506 | `result-track:6f1641040a2353393a644f97b9a6fb6661af891f589a05aaaa7d6a91758e2b9e` |
| 79 | `theorem` | [comp_refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-refl-source-edition-2.md) | 511 | `result-track:a3b2e22d70243dd5e0c5f3ee13fa99e4c6a7929597ea4b16ed5f0d343cde84d2` |
| 80 | `theorem` | [refl_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/refl-comp.md) | 514 | `result-track:87c2d4c15300402e46078bba4a440462dc71b1d3d27438d48e72dca964c4b1a7` |
| 81 | `theorem` | [refl_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/refl-tohom.md) | 517 | `result-track:0557fbe8f25f71c0803c241ef4ede5eab973402fa5888d9da35719564f530015` |
| 82 | `def` | [StrongHomClass.toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/stronghomclass-toembedding.md) | 523 | `declaration-track:bf2c759afbcd89606adbdc135164bf6767a3d57655f8bd0ac0755f5144214fb5` |
| 83 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-8.md) | 529 | `declaration-track:b5aa9e2a514bf0766343b1d3df1d443f8be4746218282a354e0884049053466c` |
| 84 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-3.md) | 541 | `declaration-track:65645d9a56c6e8829efd7757971b6b6cd7895842d5ffd3d9ea9b21676ea1a8ea` |
| 85 | `def` | [symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/symm.md) | 547 | `declaration-track:119ce2591ea89e2e1f9c9ec64a484334f79bb461015eae589c5b07ae4845a4a2` |
| 86 | `theorem` | [symm_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/symm-symm.md) | 560 | `result-track:3d3b5eb236f94778ec7752cbb7b0d6d57d5e0757949eb3e8bace7cfd75c3b2f9` |
| 87 | `theorem` | [symm_bijective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/symm-bijective.md) | 564 | `result-track:3afdb4f82968f079cf928cf905ba76400382f081f76f378017254c3b73dd735b` |
| 88 | `theorem` | [apply_symm_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/apply-symm-apply.md) | 568 | `result-track:c35887d440eacd7a2c3fe43c3796559a49cb96da60e6df4c5e5640fb85c2e5e8` |
| 89 | `theorem` | [symm_apply_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/symm-apply-apply.md) | 572 | `result-track:d4ef9e2affb86c78995f6aaf7288914d8818106ca8c50c49a86cd77772ddf763` |
| 90 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/map-fun.md) | 576 | `result-track:0681db3ecf626058fdf5324b2af75b033a526012993362e3eb54bdc09a088de5` |
| 91 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/map-constants-source-edition-2.md) | 581 | `result-track:acac4ca6df573a7204dd04d5a889a869e965117c5db9be1589f7ff34eab0a142` |
| 92 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/map-rel-source-edition-2.md) | 585 | `result-track:586d1a85fca0e41f8267eec9593a099ed65fbdd60a52aa979b57c58a5135bc6a` |
| 93 | `def` | [toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/toembedding.md) | 590 | `declaration-track:b396f836bcfba081ec201a531503cf89c0e12c6763999ecb289f9160e29a536d` |
| 94 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/tohom.md) | 594 | `declaration-track:6c45c20ad18ef15320b73851d851257c97892c8eabd0df85f1fbb2ad294a074f` |
| 95 | `theorem` | [toEmbedding_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/toembedding-tohom.md) | 598 | `result-track:7743a86109c561d1c8272f62f9c454b522db1f3a57897f914e0c3f884e704a34` |
| 96 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/coe-tohom.md) | 602 | `result-track:049bcb4f7b597056b1331ce636a95524b7f6d608b19e7b3da9ad27145ad152b9` |
| 97 | `theorem` | [coe_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/coe-toembedding.md) | 606 | `result-track:f6ae414bbd23ea7e011d4d6a90f7b4308599faf56c8daecb97dd720e1860779c` |
| 98 | `theorem` | [injective_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/injective-toembedding.md) | 609 | `result-track:0489589778c484f927ebd252090e96110b2778ea7ee37db89f0eb3e61c36471b` |
| 99 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/coe-injective-source-edition-2.md) | 612 | `result-track:cec7ce0bd86257f7902e5b3996d3dca02f6bd542331fc2eb448665de975686fe` |
| 100 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/ext.md) | 616 | `result-track:17d871eff7037a843da70d9f742589df0663f5b053e56f651093a9cb540e680b` |
| 101 | `theorem` | [bijective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/bijective.md) | 619 | `result-track:b3887b0c4302a1d7f0cfad23916522e5305bd57b98720353d56508378dababd0` |
| 102 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/injective-source-edition-2.md) | 622 | `result-track:982fba8e5c514ca856fef5a0c967978431e03e7a33371b5a01932ae8622f1d77` |
| 103 | `theorem` | [surjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/surjective.md) | 625 | `result-track:7903bd62be4b1cdfefbe618e7f60669ee9ea71c823169210dd7f9ebcb17cd68f` |
| 104 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/refl-source-edition-2.md) | 632 | `declaration-track:f795e870a30a828fcca8049e417143dd2bc1f1a1ba3dfca351a3952cf7f36df7` |
| 105 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-11.md) | 636 | `declaration-track:e4531a884423d058e7bb3b2fff9f486fead47d606bc8efaed85ca88db18c513d` |
| 106 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/refl-apply.md) | 640 | `result-track:cec8b69405baab122d4c95852a339bed56d7bf3170851b0a8fb80b076fb1bd19` |
| 107 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-source-edition-3.md) | 644 | `declaration-track:fe5dcf18207660686a43797de27a3fc58684387128a35f1d4b3c3b790579aeb9` |
| 108 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-apply-source-edition-2.md) | 653 | `result-track:4d204c39fad99e9ceb64a2c0fb4ab0a4f848dcacae3a2b877d7b0f1fc402bfd3` |
| 109 | `theorem` | [comp_refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-refl.md) | 657 | `result-track:7421109884c08d4b0bdc3633ba1360c8f135931b3e31e7afc6027e41370ea98d` |
| 110 | `theorem` | [refl_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/refl-comp-source-edition-2.md) | 661 | `result-track:ce06872125cec1c77b08891448e9b1c7de9c96dbb2aa53c90f139625b6604ca4` |
| 111 | `theorem` | [refl_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/refl-toembedding.md) | 665 | `result-track:90aead6d8e06529da825220fcfe24c233ebade68429cf29419d274ce51ef5963` |
| 112 | `theorem` | [refl_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/refl-tohom-source-edition-2.md) | 669 | `result-track:a40d68346d58be85a80d7ca0eb528c1b92e2b3e3d0225ca7b833ba58aa0f5622` |
| 113 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-assoc-source-edition-3.md) | 673 | `result-track:a8bf951212437d5b35379ced1db1062f1570ae9dfd30026e9e165becad453b18` |
| 114 | `theorem` | [injective_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/injective-comp.md) | 677 | `result-track:69d1a813f7114a2f4be6794236a3d02331e539fcde5ec592abe8a395f09c7000` |
| 115 | `theorem` | [comp_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-tohom-source-edition-2.md) | 683 | `result-track:a4b90479c45e5d07f6cbd5931e4ea1982ffbddc5fc1022182cadd7a6def326a1` |
| 116 | `theorem` | [comp_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-toembedding.md) | 688 | `result-track:722bc0876eb749de9dcc120eb19b7672fb142a87cc460a57b2bc1bc1556697e7` |
| 117 | `theorem` | [self_comp_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/self-comp-symm.md) | 693 | `result-track:af64df4c15fca0769420df7a5d2e08a6eb30caa5310d2923e310586f4a99c62f` |
| 118 | `theorem` | [symm_comp_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/symm-comp-self.md) | 697 | `result-track:6f329c39242b6da90b37a82e83e553034ca610b50475a30d033e4984c0116e37` |
| 119 | `theorem` | [symm_comp_self_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/symm-comp-self-toembedding.md) | 701 | `result-track:434c21887418ce80ff6c8f6a9bec7618889283044a25b13d111badd217c97dcb` |
| 120 | `theorem` | [self_comp_symm_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/self-comp-symm-toembedding.md) | 706 | `result-track:908886f85d7ae024d8f4cf34d0bc5150bf88888120f22da8c4ecad7c08e8e992` |
| 121 | `theorem` | [symm_comp_self_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/symm-comp-self-tohom.md) | 711 | `result-track:77f3cbb5bce12d46a736192e20f65af31d6ee087a231a4f7de391bf2dcf24459` |
| 122 | `theorem` | [self_comp_symm_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/self-comp-symm-tohom.md) | 716 | `result-track:5ebe3d3aa58cd121d5f7e5d97f93f2c239e4559d5ae9ff8ee2606acf06dc5167` |
| 123 | `theorem` | [comp_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-symm.md) | 721 | `result-track:f1c8e8f94a49ffa96aa520387fb455088ba501241cd1c52711632dbc67aad1ae` |
| 124 | `theorem` | [comp_right_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-right-injective.md) | 724 | `result-track:1d475d542356f7e75cdfe99ddee8c0f1a9db97c6d23434f12029242b19bed32d` |
| 125 | `theorem` | [comp_right_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/comp-right-inj.md) | 731 | `result-track:77bb3956c0e591a5ab6c5f975f6874b5e299334dea3cb3ec92817d617c7243e0` |
| 126 | `def` | [StrongHomClass.toEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/stronghomclass-toequiv.md) | 737 | `declaration-track:0d19448d1c6a799c6bbefcdcb452bc4ce235896c6ee0c2845a72e30a3d798229` |
| 127 | `instance` | [sumStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/sumstructure.md) | 746 | `declaration-track:ffdf03c747dc1a483331ba594f421d2cf211d4f9555d52eeb65b46c98209fb8d` |
| 128 | `theorem` | [funMap_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/funmap-suminl.md) | 753 | `result-track:8f477baa1d6e244141581f6900444b24ec700257f5b5d88e6c5aa6a8afb90058` |
| 129 | `theorem` | [funMap_sumInr](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/funmap-suminr.md) | 758 | `result-track:18bfd35a7b7b6c679f831fb5d71756498e781b2715b1bf1e41da30b7a47a1694` |
| 130 | `theorem` | [relMap_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/relmap-suminl.md) | 763 | `result-track:37899b8f623ededa0fc9445269bafaeceb4366bf397b934f7206b0377280c89d` |
| 131 | `theorem` | [relMap_sumInr](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/relmap-suminr.md) | 768 | `result-track:7e3585dcbb456093462f728f5d94efb7efe898ff5119e84b4e7fa45fc868a545` |
| 132 | `def` | [emptyStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/emptystructure.md) | 783 | `declaration-track:8e679e2e9aee45394b94c195ca95c308e3730c64c046ed6264e0422a9903f1fa` |
| 133 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-6.md) | 785 | `declaration-track:7f7779d1fa3ac4f9a1c2b347dacf4e9b43b2d67ecb860afe4788c77bf49bcb9e` |
| 134 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/instance-source-edition-10.md) | 791 | `declaration-track:d92b134db855d202fea398ed7b819f1f32800e5830e6dc6b62d7f8936cb6c8fb` |
| 135 | `theorem` | [empty.nonempty_embedding_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/empty-nonempty-embedding-iff.md) | 796 | `result-track:fbd9fa80457fe8b570a9d0bd8b7d474cdd8f021c798b6d177a8e38f73c4642cf` |
| 136 | `theorem` | [empty.nonempty_equiv_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/empty-nonempty-equiv-iff.md) | 802 | `result-track:97d53b0870a1b7ea7c9ffff88e4dc4eb8184b743a49ce5c3342fdc9f8880f5b0` |
| 137 | `def` | [Model Theory Basic Namespaced Card Empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/emptyhom.md) | 811 | `declaration-track:3b080315a34cfb3d4204094c013cad41e4dae1e89f6142af246c033ab69b3def` |
| 138 | `def` | [inducedStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/inducedstructure.md) | 829 | `declaration-track:794a1423b36a62de19ccc1e3a3a19b8de5a0e24af4033953c0277af9af7052a4` |
| 139 | `def` | [inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/inducedstructureequiv.md) | 833 | `declaration-track:62b8b4dd7d201fc4cf9b4d9de427ab526adbb1ec9558a9d94a9e642b365f637b` |
| 140 | `theorem` | [toEquiv_inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/toequiv-inducedstructureequiv.md) | 841 | `result-track:eed60532cc9b0e6c128b1f40593cc5a79dbc5368bd67a60898dcdca0ad31f437` |
| 141 | `theorem` | [toFun_inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/tofun-inducedstructureequiv.md) | 846 | `result-track:3b0738150d9671e2e7cd447595d4691ea97b0d32c59d68cb921029e2e46e0f40` |
| 142 | `theorem` | [toFun_inducedStructureEquiv_Symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedCardEmpty.lean/declarations/tofun-inducedstructureequiv-symm.md) | 851 | `result-track:57b7358ebc07740b230f459e9f696abc05aa5d309d80f877ebabef4632ee6fb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfd0bd1abece58b40326e6061ed3b3d12d71fc612dc8f9ca14e661f72c9b1622 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant4adbececde97f3f7f1cc441c4eedaf6663ac4522b928a9c6083124c3b7447990.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant4adbececde97f3f7f1cc441c4eedaf6663ac4522b928a9c6083124c3b7447990.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
