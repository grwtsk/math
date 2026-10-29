# Verification target: Lattice Epi Iff Mk Eq Top

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d5e107720ee5306d6234b9581591d8afa991389",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb42881f8da73bad7df0bdcba793625a7626d959710fc6c8698200b6d7ba18ad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d5e107720ee5306d6234b9581591d8afa991389`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb42881f8da73bad7df0bdcba793625a7626d959710fc6c8698200b6d7ba18ad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb42881f8da73bad7df0bdcba793625a7626d959710fc6c8698200b6d7ba18ad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Currying` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.FactorThru` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/instance-source-edition-4.md) | 34 | `declaration-track:71fdc24bcdbd8b46bf34f818dc4dfbef6e1163aeda6a057a1373c3761715661e` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/instance-source-edition-2.md) | 36 | `declaration-track:24450efcc9c3b41a243e5de9bdd7f08b5c9a4576364fc0eec1f81492d114fb3d` |
| 3 | `def` | [leTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/letop.md) | 40 | `declaration-track:14cea97124ca3f352e23dfcef4db7b1186d4a1562afc387f351878e02ef6836e` |
| 4 | `theorem` | [top_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/top-left.md) | 44 | `result-track:b40588d848c5c53047090c6fe1c5a38d9a05573e961db8bcae48645a0d8f7a0a` |
| 5 | `theorem` | [top_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/top-arrow.md) | 48 | `result-track:1c4423482482cf1eb29e99c7a4be7cf5f60fd7a1508734015ffe26d3df3bb82f` |
| 6 | `def` | [mapTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/maptop.md) | 52 | `declaration-track:85b9e4289f2087cdd3ae3f91bbd98a0e3fe4ebfb6f7de4435965ef18ec60f83f` |
| 7 | `def` | [pullbackTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/pullbacktop.md) | 61 | `declaration-track:4baf70e0367b3b2f349f2bc266315cb44b203063ca69ede75ce2ac3f5f52af7c` |
| 8 | `def` | [topLEPullbackSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/toplepullbackself.md) | 67 | `declaration-track:d45aad2a8a7016ee7be719341b4d2048729ea2aca4f2cf21b349663c048755d4` |
| 9 | `def` | [pullbackSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/pullbackself.md) | 72 | `declaration-track:209df901cb0accdeaa67e600c9bd1976cc4b3c2066ded7802e4b7685909fcdd0` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/instance-source-edition-5.md) | 83 | `declaration-track:de90cefb605b423fa2128aaf5fdf61801cadb8a03913969426777d9e40a97ec5` |
| 11 | `theorem` | [bot_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/bot-left.md) | 86 | `result-track:cd7b1b994375d8e9e502661937ee2150586f7f04c6f5a186dd98dac20311a0b1` |
| 12 | `theorem` | [bot_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/bot-arrow-source-edition-2.md) | 90 | `result-track:dea0dc15a6219e702a537ed58f2ccc1f753e3b6946088ec7c9f3fab5f380704d` |
| 13 | `def` | [botLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/botle.md) | 94 | `declaration-track:c8ddbd1edd7d6ab23e6c0051d403ad067acb047ba73d85b0a6f5f62972ebb820` |
| 14 | `def` | [mapBot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/mapbot.md) | 98 | `declaration-track:2fb71787c643e4680dacbd7f5ba5c73171479c9f4abd80c10d082c9aecd04bdc` |
| 15 | `def` | [botCoeIsoZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/botcoeisozero-source-edition-2.md) | 110 | `declaration-track:c92a69da4b1dd911a67dc49810aecc5e2972ad8f8f3af6aead48d1c6f24ee65d` |
| 16 | `theorem` | [bot_arrow_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/bot-arrow-eq-zero.md) | 114 | `result-track:d0352551ffed78bbb3d404b603c9a8b1007f2b8c0b973c63743e113866b7d3ae` |
| 17 | `def` | [inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf.md) | 130 | `declaration-track:1131373f7327f639d1fe936c6cdecb9848b92f1e483c680d9a30fdaa1332e110` |
| 18 | `def` | [infLELeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/infleleft.md) | 141 | `declaration-track:465bd857eb6e6286fa749e33cf5c86546813c114e215481c04a6949a8846c4ea` |
| 19 | `def` | [infLERight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/infleright.md) | 145 | `declaration-track:e6cc0affd9fb75be3d30088578569529b5f1fb0c5ee1649d190b68a4922a10f7` |
| 20 | `def` | [leInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/leinf.md) | 149 | `declaration-track:635005026dc4e51ef7af928ba8946849889461be67c4eb2c6e5e1042f2f2a4ff` |
| 21 | `def` | [sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/sup-source-edition-2.md) | 164 | `declaration-track:f47925df353f6314fd693751d62a5d26f1011c98b7d04fbf3ddab58be695bf2a` |
| 22 | `def` | [leSupLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/lesupleft.md) | 168 | `declaration-track:32d7a353d18ada34f8c3d8c7e82d9e5928b5b1c9e86f5ec2b533095f10921ead` |
| 23 | `def` | [leSupRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/lesupright.md) | 174 | `declaration-track:a2831757981ecc9eab55e07c968b2220179579312207c80b721dafb43c9fa715` |
| 24 | `def` | [supLe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/suple.md) | 180 | `declaration-track:bf408121471ef96dc30e63fd2f57a9ab1c56eaad2a7ca32c8bd5c26bbfc5638a` |
| 25 | `instance` | [orderTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/ordertop.md) | 197 | `declaration-track:533f227cecaa213602f28b0ac751fe60bbbe22987469640aadf85e42997537dd` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/instance-source-edition-3.md) | 203 | `declaration-track:707f8ed252a3b190357fa0a49f071284aed725c619c7177e26f45cfa1936ba7b` |
| 27 | `theorem` | [top_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/top-eq-id.md) | 206 | `result-track:2de98d8a0717a4cd394609afa9f5fcfe57d79571b824967f6f7cc607f0d48ce5` |
| 28 | `theorem` | [underlyingIso_top_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/underlyingiso-top-hom.md) | 209 | `result-track:0703c50fb3652fd6113f6fd0b51d7782df445904762e2e7f6e9aac39ee185f03` |
| 29 | `instance` | [top_arrow_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/top-arrow-isiso.md) | 213 | `declaration-track:fd0548083d567c4724a1b350c07ff0ca10a1a0c04d6e7dcb9f33788cf270edb0` |
| 30 | `theorem` | [underlyingIso_inv_top_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/underlyingiso-inv-top-arrow.md) | 218 | `result-track:0e455506940c8e9f3cc513e6dfeb6c8b86222d8de44db36043a5c94253c9052c` |
| 31 | `theorem` | [map_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/map-top.md) | 223 | `result-track:7ee983117c0968418403c281d776b6b401291ea278d0bd2eb9d43054a137d36b` |
| 32 | `theorem` | [top_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/top-factors.md) | 226 | `result-track:eeb80094d3bc3785909edb56ba5e3149a8c04d1a9af2203fbd443d6825f7eec4` |
| 33 | `theorem` | [isIso_iff_mk_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/isiso-iff-mk-eq-top.md) | 229 | `result-track:53f8f3f3886c21b1c34262f16c85b31c0faf56e19f7c1826286e88988d744449` |
| 34 | `theorem` | [isIso_arrow_iff_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/isiso-arrow-iff-eq-top.md) | 234 | `result-track:69c38c5ad10f747b3c9236b2f6684b142252258eb2f3a99b1c58c161606d2f00` |
| 35 | `instance` | [isIso_top_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/isiso-top-arrow.md) | 237 | `declaration-track:47b4271a4fcf79d25963a4ca616d0a43013e513c70bf9e64e003b7159b873fff` |
| 36 | `theorem` | [mk_eq_top_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/mk-eq-top-of-isiso.md) | 239 | `result-track:d11b2f8cd572d2a2914cf35b22d8044a1f61c625862dc107912c73c30c8e1cc8` |
| 37 | `theorem` | [eq_top_of_isIso_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/eq-top-of-isiso-arrow.md) | 242 | `result-track:02c0ed7dd0c94a0e2baf8e3f4e385df5ab4d8c6afb96c845211fba203bd6543d` |
| 38 | `lemma` | [epi_iff_mk_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/epi-iff-mk-eq-top.md) | 245 | `result-track:2856e0eb465b507c82f19b128ad999000639c85ceb110a7f02a98312328b584f` |
| 39 | `theorem` | [pullback_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/pullback-top.md) | 254 | `result-track:c0f0bfcde5478fe932d89774310f87f15f229d8c27a26a83c23df85199fb820c` |
| 40 | `theorem` | [pullback_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/pullback-self.md) | 257 | `result-track:87af7f45ecd011641ddbf1f0f67a9481b1e0c3126872d073f897e21f559fade0` |
| 41 | `instance` | [orderBot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/orderbot.md) | 268 | `declaration-track:be0c7b711ec16205a4aeb9dd3728862ebdde7510565a6d55acd248972f21d3d8` |
| 42 | `theorem` | [bot_eq_initial_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/bot-eq-initial-to.md) | 274 | `result-track:b39c708a0fb4357d0f223ee47fe89d69bc9023e2b586150db3db37410cb3144b` |
| 43 | `def` | [botCoeIsoInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/botcoeisoinitial.md) | 278 | `declaration-track:328ba8706b0fd5cbcc9dc8e5c92dfdd1dfe35be3c4d00048b97ba83a4380bdda` |
| 44 | `theorem` | [map_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/map-bot.md) | 281 | `result-track:dda0948efee3f90b0ca16eeb4d539b4b57964c5b91a4a64201ed81aa552cf353` |
| 45 | `def` | [botCoeIsoZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/botcoeisozero.md) | 293 | `declaration-track:0fb2826c04e246c3cb15cc1d7d91b460f53c75606be4afb677b66b5fd721623a` |
| 46 | `theorem` | [bot_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/bot-eq-zero.md) | 298 | `result-track:b0342b2af9c5bceda4b5fa7b6443d83407661f8ea0ce4f2f4f5668ad185f0339` |
| 47 | `theorem` | [bot_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/bot-arrow.md) | 303 | `result-track:459df3135f420923f2fe3bd95adf1f7e1c5404268c3a1ef24c046508c37c5478` |
| 48 | `theorem` | [bot_factors_iff_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/bot-factors-iff-zero.md) | 306 | `result-track:990c62525bc34a62527a94c3a928e1189fb348536aa5b327e46d2f579f546ebb` |
| 49 | `theorem` | [mk_eq_bot_iff_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/mk-eq-bot-iff-zero.md) | 315 | `result-track:ea8d65f7f2bdcb1b71f8b27a9748b0cfb723196e5867a708787108e7f516f06b` |
| 50 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/functor.md) | 327 | `declaration-track:46d93f2988a502b7eab9b14b526595b7d9f208c33768324bc65debbac63fc4ff` |
| 51 | `def` | [inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-source-edition-2.md) | 340 | `declaration-track:7540beb3eac9d87e8fa34e7ea45696ffce2924a523b30adbc38c38e30674a892` |
| 52 | `theorem` | [inf_le_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-le-left.md) | 343 | `result-track:3b718dae2f9609901dcc4d0ec28e8e3efdb090159746dd99ba1bbd21dc8e62bf` |
| 53 | `theorem` | [inf_le_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-le-right.md) | 346 | `result-track:8e9fa14d14b7e61c708ad9595be4410e0d4e30c672f0947321493b011ac458cf` |
| 54 | `theorem` | [le_inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/le-inf.md) | 349 | `result-track:6e07cc131559cd5a540690cc2072c7eee798e75bd078884c3ca0b9413910cdd4` |
| 55 | `instance` | [semilatticeInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/semilatticeinf.md) | 355 | `declaration-track:0bd3e7ce91277a28ab4d029b0882575cbd1bc634dcc7d8fede83f5cfe7406f65` |
| 56 | `theorem` | [factors_left_of_inf_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/factors-left-of-inf-factors.md) | 361 | `result-track:fe2b344f998dcfce33661287b89555f688561b245c3952ae7367704ca05f5d3a` |
| 57 | `theorem` | [factors_right_of_inf_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/factors-right-of-inf-factors.md) | 365 | `result-track:67185bf9788c1b87b89c05bf9bb7ae3e11226df526a694bd08c47f4238a02ddc` |
| 58 | `theorem` | [inf_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-factors.md) | 370 | `result-track:c9ef838de2f7f462bd5e606c5d55188abbc17049b4817eb87d6dfe4e08060b99` |
| 59 | `theorem` | [inf_arrow_factors_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-arrow-factors-left.md) | 378 | `result-track:13c4b00d0250e690509f6b7d47853cfe909137f830ae7902335d8f7ad09f91b9` |
| 60 | `theorem` | [inf_arrow_factors_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-arrow-factors-right.md) | 381 | `result-track:ff815b8780f43a14063abef659a366472076c8149549fc89e1d90003a540a71a` |
| 61 | `theorem` | [finset_inf_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/finset-inf-factors.md) | 385 | `result-track:620adece4db1a648a0100a379212832a51e3dc7b9c72c2da114d2f701155be76` |
| 62 | `theorem` | [finset_inf_arrow_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/finset-inf-arrow-factors.md) | 393 | `result-track:7705914726bafec06e63dea00628e9729eef0fcdc33d09ab1d626979f0f22cdb` |
| 63 | `theorem` | [inf_eq_map_pullback'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-eq-map-pullback-source-edition-2.md) | 410 | `result-track:86a2904af7f910bd6615901bda402edd00945c459a8d4cc609e4e288e7ef3e2f` |
| 64 | `theorem` | [inf_eq_map_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-eq-map-pullback.md) | 416 | `result-track:389a053bba72c1689cf0dacf9b1b6320ec3d9034e54c1abab2ce2b458be06cf3` |
| 65 | `theorem` | [prod_eq_inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/prod-eq-inf.md) | 420 | `result-track:980f872d3aaae210074bf83dcc0441cc000aaa8ec8bf3c51d9754430c22aa95c` |
| 66 | `theorem` | [inf_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-def.md) | 427 | `result-track:7590d05d336b05f688f53c90defaac0754eae6d08b4c1083af28717538dc394e` |
| 67 | `theorem` | [inf_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-pullback.md) | 431 | `result-track:af2c877f0ce7baae4f241f6893b17421b5a259483241c1e9e9fb8d95e39cee3f` |
| 68 | `theorem` | [inf_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/inf-map.md) | 442 | `result-track:3b7f69ee78639577fa6b9fadc0d2c98fac2fbfb352e856b34dc14b88be737f2d` |
| 69 | `def` | [sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/sup.md) | 458 | `declaration-track:ae2f613b7bbc8ef07c836c92b6ca3a10494aa26684c2f41146371594f14a6bd6` |
| 70 | `instance` | [semilatticeSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/semilatticesup.md) | 461 | `declaration-track:fc7263e738aca5e8342a54f6857a5110c7f3edfce35ed7e044ac85d3697875a4` |
| 71 | `theorem` | [sup_factors_of_factors_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/sup-factors-of-factors-left.md) | 468 | `result-track:3edc1d3a0e4fe01d3b38e004c9e6e16801c1a084cb9908b2f90819a836b385f4` |
| 72 | `theorem` | [sup_factors_of_factors_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/sup-factors-of-factors-right.md) | 472 | `result-track:ad66cd1533c38618360eb09992fa8489d60061363b8c83d583fef9edd125b5d5` |
| 73 | `theorem` | [finset_sup_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/finset-sup-factors.md) | 478 | `result-track:8644d52d60403949f2e8b1901c4ecd3d13fa44dd6f5614b8e1b2c0cec95d9803` |
| 74 | `instance` | [boundedOrder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/boundedorder.md) | 496 | `declaration-track:d2b554f6adbb815da8b94e72352e5a6fa35d52afc00d7d603c32cbc3881491b6` |
| 75 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/instance-source-edition-6.md) | 501 | `declaration-track:ef51d9801e270916ac39eb0866d50870a1df941821ef67e57fc57433ecb3eae8` |
| 76 | `def` | [wideCospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/widecospan.md) | 514 | `declaration-track:ae5a5eb6d458d0a62b6a5f7d81aa5b7c1bbea08b506e2aad8cae42cbd2a7acfe` |
| 77 | `theorem` | [wideCospan_map_term](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/widecospan-map-term.md) | 520 | `result-track:4eabf15cf67ee46527ca422d13b061fc69b04980f48fbdf2d7af35cf0af2e111` |
| 78 | `def` | [leInfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/leinfcone.md) | 526 | `declaration-track:eee3671375f37b2dc1bd7c83d7d00e368149ef3ceb9c10e37c69b21d775dfe9b` |
| 79 | `theorem` | [leInfCone_π_app_none](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/leinfcone-app-none.md) | 539 | `result-track:76fd2db1494e3529d893bd54c4168a49fe0ea88680a34d2f1093bc03c16dc8b7` |
| 80 | `def` | [widePullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/widepullback.md) | 547 | `declaration-track:dfe5c47195015f758fe568c00e908c6dd4781cf0417ac831432072ab705bad0d` |
| 81 | `def` | [widePullbackι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/widepullback-source-edition-2.md) | 552 | `declaration-track:fa80dda95f2c372caea390fca013b191573691d9fa9bf43a45ee1a54afe30901` |
| 82 | `instance` | [widePullbackι_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/widepullback-mono.md) | 555 | `declaration-track:2fe97d12b127fdb99f96ee8f10c64af7952bb2addcc8cfc4760d154c0dc81c9c` |
| 83 | `def` | [sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/sinf.md) | 567 | `declaration-track:5163f94bb889c3285498df26c04a9c7802d7ede88de659963d90a866b525f541` |
| 84 | `theorem` | [sInf_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/sinf-le.md) | 570 | `result-track:4b6e447c37bbbd44e773df77feaa82f0b09ce32a330d7fce874e632c4d484bc0` |
| 85 | `theorem` | [le_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/le-sinf.md) | 583 | `result-track:3e7c9ccc7ac4d04da8edbd34d63611025d5000cce9de3a8cb0b06affef96edc2` |
| 86 | `instance` | [completeSemilatticeInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/completesemilatticeinf.md) | 590 | `declaration-track:daa20c9d81bd10b9a687f27c623235b246a11ffed30f3639177cb23085d85b8f` |
| 87 | `def` | [smallCoproductDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/smallcoproductdesc.md) | 604 | `declaration-track:77cf36fb101db0300adbcb2de50838acb0819abde7a5056c97f12be5e4be75c4` |
| 88 | `def` | [sSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/ssup.md) | 611 | `declaration-track:b0471dbc3520487cef531ff801f767fb26e9bf52680f5c18d69f0c9772a77b66` |
| 89 | `theorem` | [le_sSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/le-ssup.md) | 614 | `result-track:55faf2b349c1481b091814dd415a3a559d1a3e97668eea7b9e3bcd71bce09af7` |
| 90 | `theorem` | [symm_apply_mem_iff_mem_image](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/symm-apply-mem-iff-mem-image.md) | 621 | `result-track:7a3bd65577d1215703b62ef9c4fdebcdc0e4058d53c5664ead897862b725f4be` |
| 91 | `theorem` | [sSup_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/ssup-le.md) | 627 | `result-track:134725db17cde4a9edeceb8af944aa92c838bedf873b91b84931a2148f292503` |
| 92 | `instance` | [completeSemilatticeSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/completesemilatticesup.md) | 641 | `declaration-track:9bb40bf4657a58ecc66f40230fa0957da66749257ab2cebbdb558393a7870232` |
| 93 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/instance.md) | 655 | `declaration-track:047cd1802f688bc7abfc7fc8985a46990975dd68b364141024307d710433f52d` |
| 94 | `lemma` | [subsingleton_of_isInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/subsingleton-of-isinitial.md) | 661 | `result-track:b9a60a7896db462f3cf4f2a87921ffaa33ce5b92d08fbe0cc324bbf5d49088db` |
| 95 | `lemma` | [subsingleton_of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/subsingleton-of-iszero.md) | 673 | `result-track:3ba8ed0f758f14e61c1bb1b61813dc015ddd33c0d92cf872dcd7cc731eb4b0ae` |
| 96 | `theorem` | [nontrivial_of_not_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/nontrivial-of-not-iszero.md) | 683 | `result-track:8e793768fa4c3ad550ff88701efbcc77028940769a001426f69918d5c3ef1670` |
| 97 | `def` | [subobjectOrderIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeEpiIffMkEqTop.lean/declarations/subobjectorderiso.md) | 691 | `declaration-track:dbd84ff1d75bebe5c19118c1e779c93e515582cc8d190c1045d449927db62b4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8934ae42582fe4013c3aef32d07cf4845ea3756d7e13ece8f3ee7feef507ed11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb42881f8da73bad7df0bdcba793625a7626d959710fc6c8698200b6d7ba18ad1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb42881f8da73bad7df0bdcba793625a7626d959710fc6c8698200b6d7ba18ad1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
