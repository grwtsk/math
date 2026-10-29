# Verification target: Prod Basic Namespaced Prod Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e2407e4eb6d0c89b355cd0da74ed88aacd445de",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc36142f9c0ab62402a38c70dc0adde28b568103279e8e2e487965e4b761d37f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e2407e4eb6d0c89b355cd0da74ed88aacd445de`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc36142f9c0ab62402a38c70dc0adde28b568103279e8e2e487965e4b761d37f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc36142f9c0ab62402a38c70dc0adde28b568103279e8e2e487965e4b761d37f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Function` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/prod-map.md) | 33 | `result-track:bfcbbe92f3dfa1a06b71afffc065fd1cf34b93b0f563a69da25dd65f8799964a` |
| 2 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/forall-source-edition-2.md) | 40 | `result-track:9f00b66427538c6248a5b60d38672a27295a0dac84c2d2c3df36a40254707252` |
| 3 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/exists-source-edition-2.md) | 45 | `result-track:d432ace570650456c0ef5800e5bcc5e752df3b07fb723c6b72eff7386554721e` |
| 4 | `theorem` | [forall'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/forall.md) | 49 | `result-track:67b8d1c47f0033b8c159b1a819e21e3e100ff3c69954c32015d5e8060cc9ce18` |
| 5 | `theorem` | [exists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/exists.md) | 53 | `result-track:7c2472b393fdb1c4bf0921bcb6250a8e5ee29c3096a789a4ea29741a6b525a4d` |
| 6 | `theorem` | [snd_comp_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/snd-comp-mk.md) | 58 | `result-track:a4752874147d66864334bc2f4f9de974f0abcd3164cc144b06bfa21567fbfbbf` |
| 7 | `theorem` | [fst_comp_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/fst-comp-mk.md) | 63 | `result-track:977b327f8175ec2f0ec637fe27eb09a7fd9ff979ebae97cdecd12ad8de7650ce` |
| 8 | `theorem` | [map_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-mk.md) | 68 | `result-track:b42cb5586303c6471a5f4a7800cb89cf2a648e323efbf77c26ff7c1fbbbfcf2a` |
| 9 | `theorem` | [map_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-fst-source-edition-2.md) | 72 | `result-track:e7129a80d63f6eae2ff5dd6a7f46b95d88717cea9653a8df9365ae2285c9adf2` |
| 10 | `theorem` | [map_snd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-snd-source-edition-2.md) | 76 | `result-track:cf42b846647988bd62c0c9f1349057769581443dfc00e7a27780d5aa88e2118e` |
| 11 | `theorem` | [map_fst'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-fst.md) | 80 | `result-track:28fe71d937221c200b3efbd1955cf99a63b855da610d8bc72321c981d52482aa` |
| 12 | `theorem` | [map_snd'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-snd.md) | 84 | `result-track:1c0eea829652195070a2fa1f9b74eed32b0dca651a3c54ad1725c0acff66cf45` |
| 13 | `theorem` | [map_comp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-comp-map.md) | 91 | `result-track:5c2c0138f9b5759e29b66683a6d203289182b9d7531f199b03511f9cf4767b02` |
| 14 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-map.md) | 99 | `result-track:be382443dbeaad2756fb024dad4fdf43bc161ef1fa21c060eb7aac26587178ca` |
| 15 | `theorem` | [mk.inj_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/mk-inj-iff.md) | 107 | `result-track:5ef218416aa0627015066c8cdf0a8f3f7970c74fdbb5c32275685b72e55d1cf2` |
| 16 | `theorem` | [mk.inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/mk-inj-left-source-edition-2.md) | 111 | `result-track:3aac3c0f21e343285c763e9660607aa7482c395c2f726ffa76edf637bd205843` |
| 17 | `theorem` | [mk.inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/mk-inj-right-source-edition-2.md) | 116 | `result-track:b6fe64554b6527e2fc4a4a094d5e0feb8f7f6c170c05fa83775c58a8e97636ff` |
| 18 | `lemma` | [mk_inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/mk-inj-left.md) | 122 | `result-track:39823d90d9920f9438963b2ff39e33babf2488087d25905e5c126f6f393fb576` |
| 19 | `lemma` | [mk_inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/mk-inj-right.md) | 125 | `result-track:a5dd43f73726392ff0c66fb8d77055a489635709f9681388860a17391454f971` |
| 20 | `theorem` | [ext_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/ext-iff.md) | 128 | `result-track:7222862aa39deddf32d252405ef729e26d34d14db28ffeb56d9cab9b7a8aac23` |
| 21 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/ext.md) | 133 | `result-track:0bc1bba74573fbd743ead36388aa776a334b02a088061b91d78b537b55e54979` |
| 22 | `theorem` | [map_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-def.md) | 137 | `result-track:8ca53bd04fb84bb8890e015a4d5f2c4fd6bbfec82436bd3a216e74c2156f6934` |
| 23 | `theorem` | [id_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/id-prod.md) | 141 | `result-track:e546ad7e7015e8abfeeb46bcbcfe5ee0ec0878b8dba71e3e59efd04f4228965e` |
| 24 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-id.md) | 146 | `result-track:7a027371393261becaa299b2301f120430606b410953e484a9d4bf519b2a4e03` |
| 25 | `theorem` | [fst_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/fst-surjective.md) | 150 | `result-track:41e2d964fd3786f61889adedd4e9c5ef29a11aa1f2a46d9a6493859ffd2dafdb` |
| 26 | `theorem` | [snd_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/snd-surjective.md) | 154 | `result-track:41ee50db0d24bc706299c312d367d64fe624190b52840b871aaca5d377d04495` |
| 27 | `theorem` | [fst_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/fst-injective.md) | 158 | `result-track:5c7d3811c97d3bf40f66a93c4c1528230ec65aa054dbfd2e442f0285234dfd55` |
| 28 | `theorem` | [snd_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/snd-injective.md) | 162 | `result-track:caf6222af9d6ed09ac9fb8d712ef07b9febfed8bebee88a35f5e1e8a4a781071` |
| 29 | `def` | [swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap.md) | 167 | `declaration-track:add7f5866a1b495405b511eb24ccbabf6c066ef22cb628fa6b26d192a36363de` |
| 30 | `theorem` | [swap_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap-swap.md) | 171 | `result-track:5c5c00690b1fa61653ae4981225f8d3a2ea164ec524cc2f4027cb669faaab730` |
| 31 | `theorem` | [fst_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/fst-swap.md) | 176 | `result-track:7670e65755c5c405e3fa34a05ac0c6567ca0ff0f1e500988b400e08a4a649e4e` |
| 32 | `theorem` | [snd_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/snd-swap.md) | 181 | `result-track:d29cb059b6a4fb5f3eb2dbdc2312ad56a72e847c6d0107c39eb24ca29bbea4ca` |
| 33 | `theorem` | [swap_prod_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap-prod-mk.md) | 186 | `result-track:50e582fd06cedd3662de6ac1fbf35f3930ce122cdb3e0742a571ca5ea11f7d1b` |
| 34 | `theorem` | [swap_swap_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap-swap-eq.md) | 191 | `result-track:728b5c7d2d25aca2ce519a5895ee661c93b6ac711bf670b77d79b8eefe3d9659` |
| 35 | `theorem` | [swap_leftInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap-leftinverse.md) | 196 | `result-track:03141f6c8b9248fc3706620862d4bbf4155a7a9d10dee57a179b1e42fc3be560` |
| 36 | `theorem` | [swap_rightInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap-rightinverse.md) | 201 | `result-track:6a2a822fd2e2ca4fdf8b36089aec4bcab3c0ed262131e7c70995ad8bf82ff6ec` |
| 37 | `theorem` | [swap_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap-injective.md) | 205 | `result-track:f1181999465e910911f5e46f9a3cb7d2976f4b42bec1f90ef906194184b1f582` |
| 38 | `theorem` | [swap_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap-surjective.md) | 209 | `result-track:68dcbae01389bb88c1737143d860bc79cdfc785159e45996b92ac24630b85957` |
| 39 | `theorem` | [swap_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap-bijective.md) | 213 | `result-track:50b7e5adec9f22939ee3c492793d8b5a1bc8c7a14429cff975d3e8ca21277b36` |
| 40 | `theorem` | [swap_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/swap-inj.md) | 218 | `result-track:5ad2647f0e8e0b1c3025264dfd457634447b595350ba227f9bc399163ffaf1f7` |
| 41 | `theorem` | [eq_iff_fst_eq_snd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/eq-iff-fst-eq-snd-eq.md) | 222 | `result-track:5171c1a30fa7534bf1e154e5f292f4085c33850c9cf2ae27db8acb7e72920da2` |
| 42 | `theorem` | [fst_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/fst-eq-iff.md) | 226 | `result-track:bd196cd6d9a42c02b5563459549b96725db9f94a09cf9df7e559e66b8f6437bd` |
| 43 | `theorem` | [snd_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/snd-eq-iff.md) | 230 | `result-track:fb8c8674907d98a420369e26c310c41844d9f6a5047db4666589214127c5cba1` |
| 44 | `theorem` | [lex_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/lex-def.md) | 236 | `result-track:b9fa4f84d152a334904b103d0665092983905b2004c3445c728640c5dea8fa5d` |
| 45 | `lemma` | [lex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/lex-iff.md) | 244 | `result-track:12551c82c9e067bb4ac218fcca732064910d376a19ac5dd70529a43d21890021` |
| 46 | `instance` | [Lex.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/lex-decidable.md) | 247 | `declaration-track:23fc4e399a4afe8a1a1ae44154a8a114f93d0f2a3cd4afa234b773fb98c2bc85` |
| 47 | `theorem` | [Lex.refl_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/lex-refl-left.md) | 253 | `result-track:dcf35414113044e79cfa8280517019bb75322dec40f049daf7f8fd4349d3de18` |
| 48 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/instance-source-edition-4.md) | 257 | `declaration-track:6674065b74f09c2de52814405a40ad3f3160214396e6a92fff5783c4a7c816e6` |
| 49 | `theorem` | [Lex.refl_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/lex-refl-right.md) | 261 | `result-track:2021333f0a2bcc4397c0cd8db8b36e275511eaca7cb227cb1ac928f90d2d918e` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/instance-source-edition-3.md) | 265 | `declaration-track:571e92ac7845167ad28db5058dd63d5274e9ac7264d6e4294c5c98ef280159d9` |
| 51 | `instance` | [isIrrefl](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/isirrefl.md) | 268 | `declaration-track:5e648577f3512710dff10746db5882137dc9a7021aba1675125aa04a5547da92` |
| 52 | `theorem` | [Lex.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/lex-trans.md) | 272 | `result-track:815b77b52e790a3b77b43e410f91b84bd1f55282b2bf2d21725b25d14f3b1bab` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/instance-source-edition-2.md) | 280 | `declaration-track:16caf926c1978863120ea342af83871a8cf63ef6118a47a2cfd85d50e5efc861` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/instance.md) | 284 | `declaration-track:0ac28a78cfcd0112d4441756cc5d46fc002b2387941f9410a949cd5bf45f93e4` |
| 55 | `instance` | [isTotal_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/istotal-left.md) | 293 | `declaration-track:31191ba39bfbd5541ac7eb28bf1add7acf768d04fa7f1b640aaede6416c9066c` |
| 56 | `instance` | [isTotal_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/istotal-right.md) | 298 | `declaration-track:cde8e1d6b6b4586a9c698e06e305d93ef927cf03c274677c642f8b007b635645` |
| 57 | `instance` | [IsTrichotomous](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/istrichotomous.md) | 307 | `declaration-track:11cdbc8247201eb28b3b4600f110243e880c04a83dc16a1b84c3558a0227adf7` |
| 58 | `theorem` | [Injective.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/injective-prod-map.md) | 323 | `result-track:c829ae629bc4b2c42b62558ab80d26f3a54aaaa5b90d3454ce83b025c8e049f3` |
| 59 | `theorem` | [Surjective.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/surjective-prod-map.md) | 327 | `result-track:43c709b54f33c6f29426cf43f1d80193f2cf1df9991ab080ea914539da2b95cc` |
| 60 | `theorem` | [Bijective.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/bijective-prod-map.md) | 334 | `result-track:4c42f6f83ac4f8a447d366442324ecc1b743963a0328fd87a6da5cd78556532b` |
| 61 | `theorem` | [LeftInverse.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/leftinverse-prod-map.md) | 338 | `result-track:0205419bf515014433797f047ea186e823f65fd0dfc4a90666ef1bb827c4f4c1` |
| 62 | `theorem` | [RightInverse.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/rightinverse-prod-map.md) | 343 | `result-track:67e43dc56b544167a1fa8eb6455d2123767446e4d4bb046f480fb1c9cc1af5d4` |
| 63 | `theorem` | [Involutive.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/involutive-prod-map.md) | 348 | `result-track:295bfa1f76a772b4f3bb4b16d9d363ed9a8ad0bf606a3cc6b0ab647b8438b4c9` |
| 64 | `theorem` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-injective.md) | 360 | `result-track:96507dba6a0a1b913bbcbc7d4c57e9a3f7d4a0abde043fadb9b9a4bede16fedf` |
| 65 | `theorem` | [map_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-surjective.md) | 374 | `result-track:ed50df03b415ac99502d0c5916d37db8632696ebe49c01b85877ed3dad55e126` |
| 66 | `theorem` | [map_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-bijective.md) | 389 | `result-track:954e48a60e0d575fa10272a5f03f236114a37d68379c973f0a9c8f2deeff2ea9` |
| 67 | `theorem` | [map_leftInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-leftinverse.md) | 397 | `result-track:72556ecc233191adf73e1f94f05a3ad19b663c05c12893fd17998d0ed14e7ff7` |
| 68 | `theorem` | [map_rightInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-rightinverse.md) | 410 | `result-track:936b7a2d3fa2926c96db2d3f135596169925e245375abb927c405082415ecc7b` |
| 69 | `theorem` | [map_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicNamespacedProdMap.lean/declarations/map-involutive.md) | 416 | `result-track:afbe63a0540072595d7b0d684c0df8d197995921c4c89b3e9f8a3443129bba6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9b5c07075aeee14907c3f27b0627cacec99c43b8535f1e6dae36f490911db51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc36142f9c0ab62402a38c70dc0adde28b568103279e8e2e487965e4b761d37f3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc36142f9c0ab62402a38c70dc0adde28b568103279e8e2e487965e4b761d37f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
