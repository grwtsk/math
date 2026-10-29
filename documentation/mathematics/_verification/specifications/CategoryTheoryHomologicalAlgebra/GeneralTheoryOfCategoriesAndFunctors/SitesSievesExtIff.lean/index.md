# Verification target: Sites Sieves Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7dc5e3c0897e7ee76be9ae983e41930623c8bf0",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantfa8527313917d17d1f64f20772b3e2257e796ddcc61124e47778d2026ed753ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7dc5e3c0897e7ee76be9ae983e41930623c8bf0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantfa8527313917d17d1f64f20772b3e2257e796ddcc61124e47778d2026ed753ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantfa8527313917d17d1f64f20772b3e2257e796ddcc61124e47778d2026ed753ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Over` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Presieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/presieve.md) | 41 | `declaration-track:c3ab671f8a0d673ed58770b96c8b7598b897a95f07b85e27d360ab124c7b784d` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/instance.md) | 45 | `declaration-track:906d4972014201948105ddb2f874e21cce0e9aaf4272cd8b97df6c72d554b872` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:953248aa2d260d45eb7d1037d12c607947b77e915eb9857d06cd8865d9ec6ef9` |
| 4 | `abbrev` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/diagram.md) | 57 | `declaration-track:8710f20c55829acbc7493145ca1bb7ecd1dd093d6b46006a958ede4fbdfbc5d8` |
| 5 | `abbrev` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/cocone.md) | 63 | `declaration-track:688086c3723336f74ea15cd85d0b361008cacf7f7c513a19ca9e25f9d4f976d9` |
| 6 | `def` | [bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/bind.md) | 71 | `declaration-track:30410e1243ad9fe39ff87c6a3fcdd95159122bb9a244a5f8f1114fafda5c5098` |
| 7 | `theorem` | [bind_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/bind-comp.md) | 76 | `result-track:b1b9ce57d88ab7d8dc968538487427460171bebb703dbc859bc086158ab072fa` |
| 8 | `inductive` | [singleton'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/singleton.md) | 85 | `declaration-track:892f4aaa95f0e3f0336fda7e824a722cd048b88b7b136d1d3cfa8e30a9a58087` |
| 9 | `def` | [singleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/singleton-source-edition-2.md) | 89 | `declaration-track:f677996d6c41b1f1ad50fd6cc52baf21902cfc600d75b4b397c90da52a871e58` |
| 10 | `lemma` | [singleton.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/singleton-mk.md) | 91 | `result-track:4cd02e2a646b3f6dd5e64910c9cc0a9245f7a19e4f67b3547e552d592a531675` |
| 11 | `theorem` | [singleton_eq_iff_domain](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/singleton-eq-iff-domain.md) | 96 | `result-track:717a351d2769c73915cebbb0b067d1fad28ded9775995ccfd7e341ee2af657f8` |
| 12 | `theorem` | [singleton_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/singleton-self.md) | 104 | `result-track:dd3eb477c74598ef36c93e44d1f13219ba5518c0aa1c2b4b9b4933ae756cb4c5` |
| 13 | `inductive` | [pullbackArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullbackarrows.md) | 113 | `declaration-track:6ce92fefe2ff396a56086f7f4ca8101073e00d2000a1b223008922bcdba418b2` |
| 14 | `theorem` | [pullback_singleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback-singleton.md) | 117 | `result-track:2bff35e0f46030df9a3527780121c3b7bbe4cee2fc3556c3318771a5c007cf25` |
| 15 | `inductive` | [ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/ofarrows.md) | 129 | `declaration-track:75667fdf1ab88ce9476a4c18112e26b7a42870660d00984b6ec6d7b7c591fe4b` |
| 16 | `theorem` | [ofArrows_pUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/ofarrows-punit.md) | 133 | `result-track:cc5dfe62d8090c4b9b9e6858d8aef0e26ada58443ba4af9e441c04f96383d854` |
| 17 | `theorem` | [ofArrows_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/ofarrows-pullback.md) | 143 | `result-track:3d9486e4275718cee48fe8e33ac78d31973d8bcc2b5097a0eb5ad13c032dfe3d` |
| 18 | `theorem` | [ofArrows_bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/ofarrows-bind.md) | 156 | `result-track:5acdde0a81ab58bd788937fa3b53c2fafcd118d84c6cf406fee72a6b6dead1fb` |
| 19 | `def` | [functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback.md) | 172 | `declaration-track:5c113af69ed502a39edc428d6d83e37002707e9c1da4ffe84b296e9ec94e17dc` |
| 20 | `theorem` | [functorPullback_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-mem.md) | 176 | `result-track:a3a39a87d393e9930c3f7ee9799a40cf91d277f16693b03e933b6bf833b0e637` |
| 21 | `theorem` | [functorPullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-id-source-edition-2.md) | 182 | `result-track:c275e5c7f737496b3d802800e35ca32a59e5ffa494376808471e58077689e6b6` |
| 22 | `class` | [hasPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/haspullbacks.md) | 188 | `declaration-track:3da7957fb94f3197f79dba21c21bf44e76607f3c3bb26a776cc9a351a21677cd` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/instance-source-edition-5.md) | 192 | `declaration-track:d6c78d4039e444d86e22146428935efff75df0f629acfa632ea7318a6ee44e8b` |
| 24 | `def` | [functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward.md) | 201 | `declaration-track:8f918046cca49806e8133bd43b6f2bbbb98599297d2f6acb9c7abad6d2f969ef` |
| 25 | `structure` | [FunctorPushforwardStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforwardstructure.md) | 208 | `declaration-track:89b777d45e8f427b13dcaec3bc9687b2588eadbcbbab7137a8b974126df4cf1c` |
| 26 | `def` | [getFunctorPushforwardStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/getfunctorpushforwardstructure.md) | 222 | `declaration-track:b586ade7d1004715e9af43713ef648b7230a598ead2980a4202820dd16f252b7` |
| 27 | `theorem` | [functorPushforward_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward-comp-source-edition-2.md) | 228 | `result-track:87361dc4e32905eb9def08321d5b2eb38e9ef81ac6fb597cd77439dd7d619ee0` |
| 28 | `theorem` | [image_mem_functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/image-mem-functorpushforward-source-edition-2.md) | 239 | `result-track:42358a6ba37b2d45df6dd633d6fa5fdc8693ceb04cb65e76679cd64f428dac60` |
| 29 | `structure` | [Sieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/sieve.md) | 252 | `declaration-track:3be4f1e5dd99f8aca586fe65d3616377cc3f7feb2a8b3506946f5aceb657622f` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/instance-source-edition-3.md) | 263 | `declaration-track:a301ec62583430b002a312572c8f260dbc5424266d761489db6600511df86b7d` |
| 31 | `theorem` | [arrows_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/arrows-ext.md) | 272 | `result-track:f86885a7416c3a6263b3deae2d1f2934eff1ea9a85bf60a0250e336c2f073e4d` |
| 32 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/ext.md) | 278 | `result-track:3763aa80bf4c8a6db45c29967bfbed7e69c06184d004e129eb1e72c44b387228` |
| 33 | `theorem` | [ext_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/ext-iff.md) | 282 | `result-track:50fbf89e421808ce0600a82044fd2c25915a427d8155ff2c86677befd53d568d` |
| 34 | `def` | [sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/sup.md) | 289 | `declaration-track:1ab8bec09d0968b67804d8a8b658cc735452065729fcc4bf7b97612cee1c1378` |
| 35 | `def` | [inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/inf.md) | 298 | `declaration-track:aeb6d650dd0ac9a1f8577de4d58472a60a3e1d9a7f1ce647ff3f2210de6c6216` |
| 36 | `def` | [union](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/union.md) | 305 | `declaration-track:974ac1522155b001241a862de06458a6d29e95643bd9824a560003f21be5cef3` |
| 37 | `def` | [inter](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/inter.md) | 312 | `declaration-track:749f514fccce31fd9022c50450171ca3e48aab6c87cf5a98013a1ad2b8d062f5` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/instance-source-edition-4.md) | 323 | `declaration-track:d3fa32f7d502b490b578283734fbea7b8ca53cb1021cb2ebddb2ae6509c8a6f6` |
| 39 | `instance` | [sieveInhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/sieveinhabited.md) | 356 | `declaration-track:19a7152d479f0239aae99fd4b2c3508671930666304dff265470dbd2c49e9e6d` |
| 40 | `theorem` | [sInf_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/sinf-apply.md) | 361 | `result-track:62556268ab6372c53000fd7c74d544d4ffa691d950d5908f144e46ca4b7947ec` |
| 41 | `theorem` | [sSup_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/ssup-apply.md) | 367 | `result-track:df4c6dc818768b958a9b464952e139681727681f754928b3ec8d9daec8659e95` |
| 42 | `theorem` | [inter_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/inter-apply.md) | 373 | `result-track:b35a9e024f533b6ccfdd6d03a9da04f554d4086d4fdece56ffcae9f01d83e27b` |
| 43 | `theorem` | [union_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/union-apply.md) | 378 | `result-track:abd891a0b0fb81199b0fc16073d46cd39258215996c1736983c26e3c7cfddf58` |
| 44 | `theorem` | [top_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/top-apply.md) | 383 | `result-track:7c10d23702c520ef38948d1a7a18bbdd7754d8eb9cadc0db43948e5e38420425` |
| 45 | `def` | [generate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/generate.md) | 389 | `declaration-track:ef7d032728e9306ddd0b7a5afbfec7b7667bcfe60b47bb62f4b90f46fcdd0a30` |
| 46 | `def` | [bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/bind-source-edition-2.md) | 401 | `declaration-track:ed8fec74c44bd306a5107ab5666424cd3d87d4275aa8ebf99ea5e9bc86a3561f` |
| 47 | `theorem` | [sets_iff_generate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/sets-iff-generate.md) | 411 | `result-track:a665aee906f3abee19d20779d1c391295e37fb80b4fbea1fc1e968e7bc37fa44` |
| 48 | `def` | [giGenerate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/gigenerate.md) | 418 | `declaration-track:190547fe34e204c7e542caa624dd665b2d0378eddb6855ff8cdc5d1cfd2fb3ca` |
| 49 | `theorem` | [le_generate](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/le-generate.md) | 426 | `result-track:9a85e6042a765eb5823c674bda928d1cf42490805a633738c9fdeb4bfeb1e245` |
| 50 | `theorem` | [generate_sieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/generate-sieve.md) | 431 | `result-track:ff8de572a53c3bd7ab661730069dee679604f78a930e2bd94e3703f591420c32` |
| 51 | `theorem` | [id_mem_iff_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/id-mem-iff-eq-top.md) | 436 | `result-track:f4674d0be734ec035f37e3e07b2629844dafe43d188650cb5671b4002c7b924d` |
| 52 | `theorem` | [generate_of_contains_isSplitEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/generate-of-contains-issplitepi.md) | 441 | `result-track:bc086327381fade8eea6cce0881097f934f88019b915d71f2172981a58fe946f` |
| 53 | `theorem` | [generate_of_singleton_isSplitEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/generate-of-singleton-issplitepi.md) | 448 | `result-track:06739e9e1fdc8d5a7ecf9c78b6015e1f2774e38a1c2f0d33ab90e2e8d3cce1db` |
| 54 | `theorem` | [generate_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/generate-top.md) | 454 | `result-track:0b79a1c49809fcafad976532c72700c19a6de7997d498de0f995d721efdd6579` |
| 55 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback.md) | 462 | `declaration-track:1f790057354abe08cb7b7c41dcb565b69eb8deb948ae2fb123a266de8eecb646` |
| 56 | `theorem` | [pullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback-id.md) | 469 | `result-track:fd4727e8661151fb0b9687b356e302493a58dd90121f4e79080da54aa397dbae` |
| 57 | `theorem` | [pullback_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback-top.md) | 473 | `result-track:26e689b4d13ea1452749d17d930c68f69cf998257532eaedd383e6b617d7d47b` |
| 58 | `theorem` | [pullback_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback-comp.md) | 477 | `result-track:f7ab3cc57da8fdaed5a18aa06f68064921b67bb82c51e3c3210623ac4e955a48` |
| 59 | `theorem` | [pullback_inter](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback-inter.md) | 482 | `result-track:bdc28c82b5a408136af955ff249ee0c3bb653aaee4c43f3be54dc272f6374250` |
| 60 | `theorem` | [pullback_eq_top_iff_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback-eq-top-iff-mem.md) | 486 | `result-track:0dc5e01a8eeb00289d405baeff8994e17de9f5fafb2f32e706ee8044c94e52a8` |
| 61 | `theorem` | [pullback_eq_top_of_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback-eq-top-of-mem.md) | 490 | `result-track:be01e4e1b7ce9d828df1d9ab452f169e1aad8bc1e81328656b39032ce4c32f13` |
| 62 | `def` | [pushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pushforward.md) | 498 | `declaration-track:f3655f35da14f0fcb1252127cbd8780c7f762d02c9101156060b9adc951dd2d7` |
| 63 | `theorem` | [pushforward_apply_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pushforward-apply-comp.md) | 504 | `result-track:f579ee29f13af6718e3eb74ef1d29fbb67eb8dd9107b88b965628370d63ec9ff` |
| 64 | `theorem` | [pushforward_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pushforward-comp.md) | 509 | `result-track:ec4f91aff719b1140ceff81c6bab2f7767dc602551fbaa944b5499f2081a696b` |
| 65 | `theorem` | [galoisConnection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/galoisconnection.md) | 516 | `result-track:de5a21d933e3f643a9b2c6040e8383e9f8eb36d8483ab6367daa82e56d4aa09b` |
| 66 | `theorem` | [pullback_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback-monotone.md) | 520 | `result-track:00c2cb58d01676ffb02c65f6943dfc8fc82b2e74976b3a0ba85dd13a4d34cd91` |
| 67 | `theorem` | [pushforward_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pushforward-monotone.md) | 524 | `result-track:625f5ac59102a3308ade0f8a10e9a676945290940ca48b0c538ab9a82e940a86` |
| 68 | `theorem` | [le_pushforward_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/le-pushforward-pullback.md) | 528 | `result-track:6c0f444b069525ae9e4b00192e5afff2cad04cefad9f03c2c72799565adc2839` |
| 69 | `theorem` | [pullback_pushforward_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullback-pushforward-le.md) | 532 | `result-track:ca930d8fb348946433b896489da3179dd50368ced93eab446be1429b693d76f8` |
| 70 | `theorem` | [pushforward_union](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pushforward-union.md) | 536 | `result-track:e67eaf784b2996a7f4ce95a07cc3819e851b2d21b2b5718abf9b920e272106a2` |
| 71 | `theorem` | [pushforward_le_bind_of_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pushforward-le-bind-of-mem.md) | 541 | `result-track:21ef3baa9ea8b4fb8871d6a17f9f4c2587590c3864eed96bf81eb95a1d328fa7` |
| 72 | `theorem` | [le_pullback_bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/le-pullback-bind.md) | 547 | `result-track:f49295ca40e73f2185370501633f1c20517cfcd0135d6594a3d188bfe65c7aab` |
| 73 | `def` | [galoisCoinsertionOfMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/galoiscoinsertionofmono.md) | 554 | `declaration-track:1cedc323247af1583742acbe140dc62e9cb36b6632f6b2aaa5127456c9666cd3` |
| 74 | `def` | [galoisInsertionOfIsSplitEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/galoisinsertionofissplitepi.md) | 563 | `declaration-track:ffb90cd9253be5160b37a82b249d7ede4c11684f3eb999a85d5d71a3a82609e8` |
| 75 | `theorem` | [pullbackArrows_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/pullbackarrows-comm.md) | 570 | `result-track:08585818d6569fe4554893332d31954b6ee88c7a140c699510f2ca74ac4180cd` |
| 76 | `def` | [functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-source-edition-2.md) | 591 | `declaration-track:c6ec67cfb6ade861c3b37233a6ddd03a852057f13bb8189031d1095c43f42c17` |
| 77 | `theorem` | [functorPullback_arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-arrows.md) | 602 | `result-track:98d6885c0a0830fbe1930a19cb9967770c8cba1adce31c60d3ffff9e3d947fc4` |
| 78 | `theorem` | [functorPullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-id.md) | 608 | `result-track:b84950010dea59e823b4163dca6560cde89b448cbb198e16da6a8f063b54e71f` |
| 79 | `theorem` | [functorPullback_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-comp.md) | 613 | `result-track:51f4854ecd9701d4ba21f304da81f3f57f7fddb83ec303f0ed76dda9327ee275` |
| 80 | `theorem` | [functorPushforward_extend_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward-extend-eq.md) | 619 | `result-track:55efd0e6c33c5952ff30c9c192398fcf4aa9b328cd69787f369b9abdd3ff51a5` |
| 81 | `def` | [functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward-source-edition-2.md) | 632 | `declaration-track:d6b3bed70ab9b2d218b38b026d6d6c14c02e7d2ece137746c20e7cfb97072d0c` |
| 82 | `theorem` | [functorPushforward_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward-id.md) | 642 | `result-track:2fef89bb6730a4f439d9f3e912f2eadc71b5b063a9f54f553b3dc81bcdf233de` |
| 83 | `theorem` | [functorPushforward_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward-comp.md) | 652 | `result-track:8439d2846fbad789805ff81094f9157cb1d9b8dd26df02f2df399de59178d899` |
| 84 | `theorem` | [functor_galoisConnection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functor-galoisconnection.md) | 658 | `result-track:5d7e484e886233380290bd3a1c4a95422fea6b0564eb60c57b52152bef3ee34a` |
| 85 | `theorem` | [functorPullback_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-monotone.md) | 672 | `result-track:f86d39659e4c63aa7d181c30d09c29c043dcb13e1e3a423d186e1cd9207a3008` |
| 86 | `theorem` | [functorPushforward_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward-monotone.md) | 677 | `result-track:0b8d04356190e0108508918d481313dddab39b618ab82e23fb2139125b8c2057` |
| 87 | `theorem` | [le_functorPushforward_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/le-functorpushforward-pullback.md) | 682 | `result-track:f50d4d825e0de01f70e15d3887b9ba6fe998143516687a3c0a330456ac5535fb` |
| 88 | `theorem` | [functorPullback_pushforward_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-pushforward-le.md) | 687 | `result-track:6654d9f4f973d96e6003aae1c0c1f27a0929a087590efdd113c2e68cc1e71c6a` |
| 89 | `theorem` | [functorPushforward_union](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward-union.md) | 692 | `result-track:fad62b428bd9fc897f0e0187b0a1fc8c0c23555d48aa71a855bf6ed86b1e4c30` |
| 90 | `theorem` | [functorPullback_union](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-union.md) | 697 | `result-track:912bcec1b870b0a71ce7c92aab8b2e3497ac47678c9d9b98c0ddad906d575b53` |
| 91 | `theorem` | [functorPullback_inter](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-inter.md) | 702 | `result-track:48d9ff3ca2fd68495dffb76ffafa269522a27b51ee79fab4923dd4da01a2235d` |
| 92 | `theorem` | [functorPushforward_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward-bot.md) | 708 | `result-track:491eecc31c08c7c696c610d18db91128d698ebf5b28de98ea1ac1278b56cafc4` |
| 93 | `theorem` | [functorPushforward_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpushforward-top.md) | 713 | `result-track:ced95d295e91a49740804bafdb5b5290b0b85aba417fdfc28b13a132587c8beb` |
| 94 | `theorem` | [functorPullback_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-bot.md) | 720 | `result-track:3cea035efbc75dd556e11154d1f51e4f43fdb4ad869b68c1c591c835984d4b70` |
| 95 | `theorem` | [functorPullback_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorpullback-top.md) | 725 | `result-track:f0c5b427c3cd28b49f325fde0e08e47ad33ca2ab5d08a81925629602e4f214fc` |
| 96 | `theorem` | [image_mem_functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/image-mem-functorpushforward.md) | 729 | `result-track:0b08812d63e6ea4ebdc338d4abfa078d9f3e83780a559797e25aab1273917566` |
| 97 | `def` | [essSurjFullFunctorGaloisInsertion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/esssurjfullfunctorgaloisinsertion.md) | 735 | `declaration-track:82f9514855578a027a42bab3bdd554b64ed32b0971e9fc3a32e99b112ea2b1e7` |
| 98 | `def` | [fullyFaithfulFunctorGaloisCoinsertion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/fullyfaithfulfunctorgaloiscoinsertion.md) | 745 | `declaration-track:70b765e210f83a1aa024fec9be1fd1e9f536b345781857b463d29ef614c169d0` |
| 99 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functor.md) | 759 | `declaration-track:d0f9c816fa15f0d36f0f960bf9c85e45f949d12762f997065a599cc596cfe4cb` |
| 100 | `def` | [natTransOfLe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/nattransofle.md) | 769 | `declaration-track:7a0d0b04268e7ec9b3dfcc5dee8968d7d244371161aabd33a6e0470cfb0bf700` |
| 101 | `def` | [functorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorinclusion.md) | 774 | `declaration-track:b05f74a518f992af06a23b20bad7c53fd1491d744ebef50cd958d1173453c5fb` |
| 102 | `theorem` | [natTransOfLe_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/nattransofle-comm.md) | 777 | `result-track:c1771edf2ef3d410365a41ffadbeedacd904beca65b91aa4cd723faf5a5a9bf6` |
| 103 | `instance` | [functorInclusion_is_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorinclusion-is-mono.md) | 783 | `declaration-track:3fbbe69848e234deb7b3e75dbbee94f5d6142975b2bfef3fea505b9d5f7d6513` |
| 104 | `def` | [sieveOfSubfunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/sieveofsubfunctor.md) | 794 | `declaration-track:83da56a4af7d150112317786e28bdeb51d938d1f5fe2e7f929188c9bc98a4ac7` |
| 105 | `theorem` | [sieveOfSubfunctor_functorInclusion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/sieveofsubfunctor-functorinclusion.md) | 804 | `result-track:3ad6608b7f794934b85dbe187eba69c5f757398526c0d1f92f2d765febc9255f` |
| 106 | `instance` | [functorInclusion_top_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesSievesExtIff.lean/declarations/functorinclusion-top-isiso.md) | 814 | `declaration-track:a66d0f52888b2a03264c81f108a64b2a7abaa1ab57cb84687429f51becd5d874` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6743dfab18b45f6f95ff577ea9da6cbb3f227ed42420c8a9acc6242f005ffcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantfa8527313917d17d1f64f20772b3e2257e796ddcc61124e47778d2026ed753ea.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantfa8527313917d17d1f64f20772b3e2257e796ddcc61124e47778d2026ed753ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
