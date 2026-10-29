# Verification target: Calculus Of Fractions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82f48f0932e52b11636563a6762ce19dac610edf",
  "lexical_observation_count": 98,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82f48f0932e52b11636563a6762ce19dac610edf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Opposite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftFraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfraction.md) | 39 | `declaration-track:817ec71dbc04d9436d9ac3d3b42a3185f0c47cbae9e387d76d71d1469403a147` |
| 2 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/ofhom-source-edition-2.md) | 55 | `declaration-track:e5eb0efd221f234429421cda5dee69f4c5cb7332b2c032eb16c365ebd744781e` |
| 3 | `def` | [ofInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/ofinv.md) | 62 | `declaration-track:c3fcc0b67f0e377097e86d445f24cc63d5c82c28654600583b8e141926423510` |
| 4 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map.md) | 67 | `declaration-track:5df46ae0a940cf48cf18f0b4fbf686c8c5e946a71f1452fc560fd99d24c92bff` |
| 5 | `lemma` | [map_comp_map_s](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-comp-map-s.md) | 73 | `result-track:62fca299e10c0147b623e44f47851f490dad993cc815c888921df4f24c56d380` |
| 6 | `lemma` | [map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-ofhom-source-edition-2.md) | 80 | `result-track:44fad83f1a4694ce5cee97ba4746971d49421314eb1386c8be1535e3bdbd9e2f` |
| 7 | `lemma` | [map_ofInv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-ofinv-hom-id-source-edition-2.md) | 85 | `result-track:ead360f737d854e44ae3cfd850e7717b122f5956f726db36d4d3f776e3158685` |
| 8 | `lemma` | [map_hom_ofInv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-hom-ofinv-id-source-edition-2.md) | 91 | `result-track:9bb3f1ac5115e26d2745acc21513a687c8c09fade0623c23593de092299c751d` |
| 9 | `lemma` | [cases](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/cases.md) | 98 | `result-track:6303e18c021ebcee565ed94e72909cbbad669faee566d6f8b6178f0e37672b9f` |
| 10 | `structure` | [RightFraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfraction.md) | 106 | `declaration-track:965462aa130100e057edde68227694099e03030c384e27f5d2a7f22cd4be9336` |
| 11 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/ofhom.md) | 123 | `declaration-track:dc81c3d91d1af64b9d160b989d4decfe4c7eb14c584ee3daf37907e2a54be7b8` |
| 12 | `def` | [ofInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/ofinv-source-edition-2.md) | 130 | `declaration-track:f2260f3826382cf6572942575cc8b0b26e7049e2532a17322190afbebac72f7c` |
| 13 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-source-edition-2.md) | 135 | `declaration-track:cb1a93c1b620f2a64a99956e0c3a5892bc59db405fe2be0e9ab8bfe9b360116a` |
| 14 | `lemma` | [map_s_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-s-comp-map.md) | 141 | `result-track:6e0304ed8e39567e89a08a411f592802a6c9ee957a7ba30dc1b4a30d215417f2` |
| 15 | `lemma` | [map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-ofhom.md) | 149 | `result-track:3cc248b96550175e351972ab11ec28696c559668187061814e910703bd3b37e8` |
| 16 | `lemma` | [map_ofInv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-ofinv-hom-id.md) | 154 | `result-track:6a07f54f06323a984870a6c468bb364586dddb00edcc8e23fc86c8cb23ee94b9` |
| 17 | `lemma` | [map_hom_ofInv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-hom-ofinv-id.md) | 160 | `result-track:6cb10fd11648a938c9820598833b57162ea429eb51f309604349c523980862ca` |
| 18 | `lemma` | [cases](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/cases-source-edition-2.md) | 167 | `result-track:b729826503cdb80ef5118199472e7e1e6916c5b4a835b4a9eb41b55020eb23aa` |
| 19 | `class` | [HasLeftCalculusOfFractions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hasleftcalculusoffractions.md) | 179 | `declaration-track:540a5b63ab4794910239693537b783c0e8ea6b0c291d82cf9cf1e2a60cb3aa48` |
| 20 | `class` | [HasRightCalculusOfFractions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hasrightcalculusoffractions.md) | 189 | `declaration-track:54c5929572ebca3413d5cbe774d6fb3769e11e160d32af7a6d1f59fd35956b44` |
| 21 | `lemma` | [RightFraction.exists_leftFraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfraction-exists-leftfraction.md) | 197 | `result-track:0774cb27b847e97999d56f0bd6aace8aeafb51df65c068ec83d6519879ce2c9b` |
| 22 | `def` | [RightFraction.leftFraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfraction-leftfraction.md) | 203 | `declaration-track:91fcf5d6e183ff532f54c919c2c321866c102f06068e2a0ace673b031260d720` |
| 23 | `lemma` | [RightFraction.leftFraction_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfraction-leftfraction-fac.md) | 208 | `result-track:c5e5a366372c74d3d5cc9a5becc7500deb40062216d83c903c1ec3fa2f5675db` |
| 24 | `lemma` | [LeftFraction.exists_rightFraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfraction-exists-rightfraction.md) | 212 | `result-track:cd1499aec191836b9f890a0a6b0d92fd72881e0161acfd3650fdaa3d2e2f100e` |
| 25 | `def` | [LeftFraction.rightFraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfraction-rightfraction.md) | 218 | `declaration-track:eb7da01ec60d9650fc67ffe8a645232840094cd68c157972ed0260faf95a9aad` |
| 26 | `lemma` | [LeftFraction.rightFraction_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfraction-rightfraction-fac.md) | 223 | `result-track:e1687cadc4a31f66b1bbaa1fa078956156cd7f0756961d11281fe4562f4196dc` |
| 27 | `def` | [LeftFractionRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfractionrel.md) | 228 | `declaration-track:1dd2382c190e139cc53a149e1609f066110e2d7037020f1a43c88dbf93b64fb7` |
| 28 | `lemma` | [refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/refl-source-edition-2.md) | 234 | `result-track:d09d16be917326513b036f372f362f3156011d3257880f861da64f4d0cda597a` |
| 29 | `lemma` | [symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/symm-source-edition-2.md) | 237 | `result-track:b79e5fec705303959fdac911b6839f23b82d9b36b7db4803b57617d6216bb86d` |
| 30 | `lemma` | [trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/trans-source-edition-2.md) | 242 | `result-track:a919aaf80aec8b2bcc8f8d52a0e41b8657071620b578fcaaaa13201309ef8d9a` |
| 31 | `lemma` | [equivalenceLeftFractionRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/equivalenceleftfractionrel.md) | 267 | `result-track:80a39d85f77da1ea8676b0c1bb8f6b88daa66ddedf7fcdbf243bacd2fb1e5e13` |
| 32 | `def` | [comp₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/comp-source-edition-2.md) | 281 | `declaration-track:748ab4d75f9cdebf36a26768640ae360bc4c0fe9b8e4de99847bdf955e222b31` |
| 33 | `lemma` | [comp₀_rel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/comp-rel.md) | 288 | `result-track:6ca00854cf2c40e9d6629e9755455ab11e67c216516fdbafd97b8b149f22c3cb` |
| 34 | `def` | [Localization.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/localization-hom.md) | 308 | `declaration-track:b6569ef5854bc6ac58bc7e9020749c8ef42c36b6005a37fd9e8144d88a94c504` |
| 35 | `def` | [Localization.Hom.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/localization-hom-mk.md) | 312 | `declaration-track:5243e0ed2a3270cf3f173f5fcca6eb62fe6e0a10160147908d330f30a552834e` |
| 36 | `lemma` | [Localization.Hom.mk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/localization-hom-mk-surjective.md) | 315 | `result-track:b62031539bf2010dc1af910b023629348f44d7dedb0a6c9fca16f6157fafe78b` |
| 37 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/comp.md) | 325 | `declaration-track:5f54be2fe280957dcf066240efaa1a19451da8fa1cf8708d88585162ab514b1b` |
| 38 | `lemma` | [comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/comp-eq.md) | 330 | `result-track:4f191c55b8d9db28fd3206d89aa0b384615fcd9af5202ae097dc0ab27d5219a4` |
| 39 | `def` | [Hom.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hom-comp.md) | 340 | `declaration-track:c734a7885953ca16d549af712c07346839652863bb043fae83c08f3b744c91ba` |
| 40 | `lemma` | [Hom.comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hom-comp-eq.md) | 419 | `result-track:0091ea538a8f66c44154d7849eeff6de274e6efe8cf1b7493a3b4636b1208a24` |
| 41 | `def` | [Localization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/localization.md) | 427 | `declaration-track:b286060980c161626d84c295e2a5021863348519749df7b0498c7d986d67d0c6` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/instance-source-edition-3.md) | 431 | `declaration-track:4f991950297d9b7e33aa6e2da052c00119147afd737d722a92d58a2f48bc1c65` |
| 43 | `def` | [Q](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/q.md) | 473 | `declaration-track:091c2839999cc54500c6e927b3f96d8ec0e4180f497c9ade523c1380d2668201` |
| 44 | `abbrev` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hommk.md) | 483 | `declaration-track:303d4d2ec058a9c9b5f3d64aeed3c8bfe77796df2d860cff7bc949680f1d2ddd` |
| 45 | `lemma` | [homMk_eq_hom_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hommk-eq-hom-mk.md) | 486 | `result-track:aa218a290e3fe9ff52966aad1c5c0440a34be631fcc2970ee3fb92e38e78a0ca` |
| 46 | `lemma` | [Q_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/q-map.md) | 490 | `result-track:54a277929809a4da506371519bd7cbe54b52ae18426fa99bf6f1c47c19d2d718` |
| 47 | `lemma` | [homMk_comp_homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hommk-comp-hommk.md) | 494 | `result-track:206d95170d7a211c5184268dcab7437bc4d103c9362cd346854adc4f0da58ba1` |
| 48 | `lemma` | [homMk_eq_of_leftFractionRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hommk-eq-of-leftfractionrel.md) | 500 | `result-track:e162afecca47f099e9376b1a8a6be8d617d6316a7243bc864f702610d314e8cc` |
| 49 | `lemma` | [homMk_eq_iff_leftFractionRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hommk-eq-iff-leftfractionrel.md) | 505 | `result-track:9708ce3fb5ba5a639256d9ec3fdd915722369af303a5da8584295c9c03b4fdc6` |
| 50 | `def` | [Qinv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/qinv.md) | 511 | `declaration-track:647b1374695deb2ea3774a0f8e0df2876ee35612d2bbe5201ccfff18fa552f0d` |
| 51 | `lemma` | [Q_map_comp_Qinv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/q-map-comp-qinv.md) | 514 | `result-track:ec7923dfe2c6b5a959de4838b943fdd0f57faf9be1b2756852cf4fb7e2331a94` |
| 52 | `def` | [Qiso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/qiso.md) | 522 | `declaration-track:eef346e42547d4c754856e6e3f45d2decdc5863b14b506f514375adb0f5a518e` |
| 53 | `lemma` | [Qiso_hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/qiso-hom-inv-id.md) | 536 | `result-track:6c8148e7d8fd7739469a32b01481a03929a6b0fc038bd37a63fd88415dde49a0` |
| 54 | `lemma` | [Qiso_inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/qiso-inv-hom-id.md) | 540 | `result-track:9beb184ad37dd5a1427fae0911f5b63551e1d791f07694b3923a1c5a1d308bae` |
| 55 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/instance-source-edition-6.md) | 543 | `declaration-track:cbcf40a94d9ad77a554e2352fac5be5cc44fdbbc5de8d78c75a742792c8fa4a1` |
| 56 | `def` | [Hom.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hom-map.md) | 551 | `declaration-track:985a495f292f73b0ade9e7325f7adea2ce0212a80e66b8f6dc5b92e58ebe5cc7` |
| 57 | `lemma` | [Hom.map_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hom-map-mk.md) | 562 | `result-track:1964a21c5af05c5f94e1ef3550d3ccb1ae1c5cd1be215bb8ec6ac767070a05aa` |
| 58 | `lemma` | [inverts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/inverts.md) | 570 | `result-track:5ac4dd9eae51c89fbdaf71564bc32f2abc5ba99d408ef1c11b523b288d227069` |
| 59 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/lift.md) | 577 | `declaration-track:1800efbfe195e1f21428cd4a7ca3d372ab2865f9566f244a4b2336024e1532aa` |
| 60 | `lemma` | [fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/fac.md) | 602 | `result-track:1940a95193d9e5fd28e56337b4f3e0d53107de2da0b3d61a344e57d78f110c8e` |
| 61 | `lemma` | [uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/uniq.md) | 607 | `result-track:f3edf1666bd292d5151599048fddfc480ec332caf00d58e6cae18f184c3382c2` |
| 62 | `def` | [strictUniversalPropertyFixedTarget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/strictuniversalpropertyfixedtarget.md) | 633 | `declaration-track:c67d45cd545c74535415acfe45388e97f944857a53ce3f4ea3657eceb23ee0a4` |
| 63 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/instance-source-edition-5.md) | 640 | `declaration-track:c4c5f857352a957487cca03382683da890f27e70633a5056d0217ed2f0b90d57` |
| 64 | `lemma` | [homMk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/hommk-eq.md) | 647 | `result-track:2b731d3acde8951cf9296984db08d705f17a78361edc0ee3af63fbdd00d53402` |
| 65 | `lemma` | [map_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-eq-iff.md) | 653 | `result-track:9f53b19c1d2596835d548a8001c833d9174372f775d79f87808b1d4bce3753a4` |
| 66 | `lemma` | [map_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-eq.md) | 670 | `result-track:e1682797d61a7a1e68a50aa07b2bb279869651db215193ab6a47cfe30bf09163` |
| 67 | `lemma` | [map_compatibility](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-compatibility.md) | 674 | `result-track:faaad84734125420fcb8879ede72e14ca35b0c1a016722106959cbc5ff6bf0ef` |
| 68 | `lemma` | [map_eq_of_map_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-eq-of-map-eq.md) | 687 | `result-track:fc5d40235cb57194a6b143e1c600898d9a8c37f5cbc12943399d93ab0011e9ec` |
| 69 | `lemma` | [map_comp_map_eq_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/map-comp-map-eq-map.md) | 695 | `result-track:775230f0e0878cb00f812ecc8d4278b52a8881cc13c66c451a615347de0526c1` |
| 70 | `lemma` | [Localization.exists_leftFraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/localization-exists-leftfraction.md) | 724 | `result-track:e9d11f5ac7f27426b3bf1c83efbdf0c9be8efb2179654d160bb09843001682fa` |
| 71 | `lemma` | [MorphismProperty.LeftFraction.map_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/morphismproperty-leftfraction-map-eq-iff.md) | 738 | `result-track:94e15b8017aa9f501f1df79e616b4854723615e6dc7a1372d035a64aae685f6f` |
| 72 | `lemma` | [MorphismProperty.map_eq_iff_postcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/morphismproperty-map-eq-iff-postcomp.md) | 751 | `result-track:08e3f9aabaeab857bd0f18fda68c3d4d0083ab87348ce527152204efab25993e` |
| 73 | `lemma` | [Localization.essSurj_mapArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/localization-esssurj-maparrow.md) | 767 | `result-track:3114fe8229bf0ecf18c194450e7dfa1b3c5fa4afa13adf8b04144bb4835d177e` |
| 74 | `def` | [LeftFraction.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfraction-op.md) | 791 | `declaration-track:2f40f5d2e04e69eb89d5fcddacec05ded054b4ce9f8f2ec5ae6fff25990c5655` |
| 75 | `def` | [RightFraction.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfraction-op.md) | 800 | `declaration-track:bbe7cf7acc244d3f2dd11903eaec9a4a3320cd98e5178aeb1db0610519f7669a` |
| 76 | `def` | [LeftFraction.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfraction-unop.md) | 809 | `declaration-track:2f4e9c3e760af6fb0eff4254a6d2d2068f85e97e6c179725a50e4107f2cf483f` |
| 77 | `def` | [RightFraction.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfraction-unop.md) | 819 | `declaration-track:dd5e68840b694a658ad53a1ef7fbd90fe4e75ac7004396b68e7b72768aa0bcf0` |
| 78 | `lemma` | [RightFraction.op_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfraction-op-map.md) | 827 | `result-track:59aaccf9d910a9c6f53be0b4ffe75dc7fd3a45b64575acb8db950ecb05885229` |
| 79 | `lemma` | [LeftFraction.op_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfraction-op-map.md) | 833 | `result-track:e223467a12a82debf734068db9562e02d7458b6a5dadff09a99235f95eb4c104` |
| 80 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/instance-source-edition-4.md) | 839 | `declaration-track:bb137cc51e86a11d2cf6cb6a95cb4adaf79dbf0493367b613c30e65841f74c0a` |
| 81 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/instance.md) | 847 | `declaration-track:2c396840fe115f1fb452c981bacbbe6cd641bd6e2a47a711f8f919d9ad9e7aea` |
| 82 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/instance-source-edition-7.md) | 855 | `declaration-track:fde19c59581daa40a7a778661dbc98f6972c6127c7cfbe0f1fb8098a54ed6bdb` |
| 83 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/instance-source-edition-2.md) | 864 | `declaration-track:3ed5474ac36c91e3ab215c63fc23bd18b8fd93e9a04e2b65fd15faf899648881` |
| 84 | `def` | [RightFractionRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfractionrel.md) | 874 | `declaration-track:b6b2773c101ebce1e909e6a88509268c12be789cb291db2eb4d80234bb9eb04f` |
| 85 | `lemma` | [RightFractionRel.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfractionrel-op.md) | 878 | `result-track:15df4dfc7ee1bae3e191bac4bdf7b793f1e5183d44289eafa51266ed299dc86b` |
| 86 | `lemma` | [RightFractionRel.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfractionrel-unop.md) | 884 | `result-track:4e0088f95b9bf0f694a5654157ddbffec90e29b123d9549c23da440d205796ae` |
| 87 | `lemma` | [LeftFractionRel.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfractionrel-op.md) | 891 | `result-track:707b7aa784c2b09bdb13f09bd6484080d7d2169bf1f18569249515310acc0db1` |
| 88 | `lemma` | [LeftFractionRel.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfractionrel-unop.md) | 897 | `result-track:fcdf5be04877c8b5dd57668156d60bb35885acd77d660ee1eed57e0c6abc55db` |
| 89 | `lemma` | [leftFractionRel_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/leftfractionrel-op-iff.md) | 904 | `result-track:fb765e02059acfa250d2a65d2707cf1809d8e52bc40d69abe6599782e6a0ce86` |
| 90 | `lemma` | [rightFractionRel_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/rightfractionrel-op-iff.md) | 909 | `result-track:8b755ae7c65ab0acd22c49421502b984cb71dcfe731fcb0d73be943aad059fe5` |
| 91 | `lemma` | [refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/refl.md) | 916 | `result-track:45d1653f59d24aa27ff1ad6947a4d4b802bbee75916d59977290a75afe529c01` |
| 92 | `lemma` | [symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/symm.md) | 919 | `result-track:6ffd416479fb7babd75c146d24fc67ccede66a0e18c8da00d06b61661d5dee69` |
| 93 | `lemma` | [trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/trans.md) | 923 | `result-track:1ef04128da02fdd0e9353d4c498f2a081a75a51887dbf868f83186cf797ffdbe` |
| 94 | `lemma` | [equivalenceRightFractionRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/equivalencerightfractionrel.md) | 931 | `result-track:9cac665b399efac67e3ff70130d1ad488c37b0446f6ab94bd6647d7673a6e738` |
| 95 | `lemma` | [Localization.exists_rightFraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/localization-exists-rightfraction.md) | 943 | `result-track:db132b91f3405fd84180a478100537826bae5ef42abc37c4461809d0f88d698c` |
| 96 | `lemma` | [MorphismProperty.RightFraction.map_eq_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/morphismproperty-rightfraction-map-eq-iff.md) | 950 | `result-track:9f18f7819afb525249f07390cf145398c1977780ab029cacf3dd045b33046a44` |
| 97 | `lemma` | [MorphismProperty.map_eq_iff_precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/morphismproperty-map-eq-iff-precomp.md) | 960 | `result-track:41cbef040a9aca7d1683d6f9304d8c2823acbb107466f9dc589b01fdb9005d03` |
| 98 | `lemma` | [Localization.essSurj_mapArrow_of_hasRightCalculusOfFractions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/declarations/localization-esssurj-maparrow-of-hasrightcalculusoffractions.md) | 976 | `result-track:12819ad28b4b75822429b4b73746554eca3890ca3d653d969d4186e882d5d5d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=455528f45350bab49975c489fa2d4afe2858847b8e429e85cfc16892df756c68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
