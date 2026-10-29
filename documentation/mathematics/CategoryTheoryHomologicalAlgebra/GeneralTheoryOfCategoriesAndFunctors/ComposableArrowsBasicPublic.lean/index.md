# Composable Arrows Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**167 observed declarations and anonymous commands**, 100 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c26ad360015de270edede2cfd2eef795a656462e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComposableArrowsBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComposableArrows](declarations/composablearrows.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `macro` | [(anonymous)](declarations/macro.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [obj'](declarations/obj-source-edition-4.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [map'](declarations/map-source-edition-3.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [map'_self](declarations/map-self.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [map'_comp](declarations/map-comp-source-edition-2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [left](declarations/left.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [right](declarations/right.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [hom](declarations/hom.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [app'](declarations/app.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [naturality'](declarations/naturality.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mk₀](declarations/mk-source-edition-6.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [obj](declarations/obj-source-edition-6.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [map](declarations/map-source-edition-8.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [map_id](declarations/map-id.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [map_comp](declarations/map-comp-source-edition-3.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mk₁](declarations/mk-source-edition-2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [homMk](declarations/hommk.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isoMk](declarations/isomk-source-edition-7.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [ext](declarations/ext-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [homMk₀](declarations/hommk-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [hom_ext₀](declarations/hom-ext-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [isoMk₀](declarations/isomk-source-edition-2.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isIso_iff₀](declarations/isiso-iff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [ext₀](declarations/ext-source-edition-3.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mk₀_surjective](declarations/mk-surjective-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [homMk₁](declarations/hommk-source-edition-3.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [hom_ext₁](declarations/hom-ext-source-edition-6.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [isoMk₁](declarations/isomk-source-edition-4.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [map'_eq_hom₁](declarations/map-eq-hom.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isIso_iff₁](declarations/isiso-iff-source-edition-3.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [ext₁](declarations/ext.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mk₁_surjective](declarations/mk-surjective.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [mk₁_eqToHom_comp](declarations/mk-eqtohom-comp.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [mk₁_comp_eqToHom](declarations/mk-comp-eqtohom.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mk₁_hom](declarations/mk-hom.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [arrowEquiv](declarations/arrowequiv.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [obj](declarations/obj-source-edition-10.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [obj_zero](declarations/obj-zero.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [obj_one](declarations/obj-one.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [obj_succ](declarations/obj-succ.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [map](declarations/map-source-edition-5.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [map_zero_zero](declarations/map-zero-zero.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [map_one_one](declarations/map-one-one.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [map_zero_one](declarations/map-zero-one.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [map_zero_one'](declarations/map-zero-one-source-edition-2.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [map_zero_succ_succ](declarations/map-zero-succ-succ.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [map_succ_succ](declarations/map-succ-succ.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [map_one_succ](declarations/map-one-succ.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [map_id](declarations/map-id-source-edition-2.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [map_comp](declarations/map-comp.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [obj₁₂](declarations/obj-source-edition-7.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [obj₂₂](declarations/obj-source-edition-2.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [obj₂₃](declarations/obj-source-edition-3.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [obj₃₂](declarations/obj-source-edition-8.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [obj₃₃](declarations/obj-source-edition-12.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [obj₃₄](declarations/obj-source-edition-13.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [obj₄₂](declarations/obj-source-edition-11.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [obj₄₃](declarations/obj.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [obj₄₄](declarations/obj-source-edition-5.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [obj₄₅](declarations/obj-source-edition-9.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [map₁₁₂](declarations/map-source-edition-10.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [map₂₁₂](declarations/map-source-edition-6.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [map₂₂₃](declarations/map-source-edition-9.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [map₃₁₂](declarations/map-source-edition-12.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [map₃₂₃](declarations/map-source-edition-7.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [map₃₃₄](declarations/map-source-edition-4.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [map₄₁₂](declarations/map-source-edition-11.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [map₄₂₃](declarations/map.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [map₄₃₄](declarations/map-source-edition-2.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [map₄₄₅](declarations/map-source-edition-13.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [precomp](declarations/precomp.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `abbrev` | [mk₂](declarations/mk-source-edition-5.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [mk₃](declarations/mk-source-edition-3.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `abbrev` | [mk₄](declarations/mk.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `abbrev` | [mk₅](declarations/mk-source-edition-4.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `example` | [(anonymous)](declarations/example-source-edition-9.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `example` | [(anonymous)](declarations/example.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `example` | [(anonymous)](declarations/example-source-edition-12.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `example` | [(anonymous)](declarations/example-source-edition-14.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `example` | [(anonymous)](declarations/example-source-edition-8.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `example` | [(anonymous)](declarations/example-source-edition-5.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `example` | [(anonymous)](declarations/example-source-edition-13.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `example` | [(anonymous)](declarations/example-source-edition-6.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `example` | [(anonymous)](declarations/example-source-edition-11.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `example` | [(anonymous)](declarations/example-source-edition-7.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `example` | [(anonymous)](declarations/example-source-edition-10.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `example` | [(anonymous)](declarations/example-source-edition-4.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [whiskerLeft](declarations/whiskerleft.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [whiskerLeftFunctor](declarations/whiskerleftfunctor.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [_root_.Fin.succFunctor](declarations/root-fin-succfunctor.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [_root_.Fin.natAddLEFunctor](declarations/root-fin-nataddlefunctor.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [natAddLEFunctor](declarations/nataddlefunctor.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [natAddLEFunctor_obj'](declarations/nataddlefunctor-obj.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [natAddLEFunctor_app'](declarations/nataddlefunctor-app.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [δ₀Functor](declarations/functor.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `abbrev` | [δ₀](declarations/anonymous.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [precomp_δ₀](declarations/precomp-source-edition-2.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [_root_.Fin.castSuccFunctor](declarations/root-fin-castsuccfunctor.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [δlastFunctor](declarations/lastfunctor.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `abbrev` | [δlast](declarations/last.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [homMkSucc](declarations/hommksucc.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [homMkSucc_app_zero](declarations/hommksucc-app-zero.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [homMkSucc_app_succ](declarations/hommksucc-app-succ.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [hom_ext_succ](declarations/hom-ext-succ.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [isoMkSucc](declarations/isomksucc.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [ext_succ](declarations/ext-succ.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [precomp_surjective](declarations/precomp-surjective.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [homMk₂](declarations/hommk-source-edition-5.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [homMk₂_app_zero](declarations/hommk-app-zero-source-edition-4.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [homMk₂_app_one](declarations/hommk-app-one-source-edition-2.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [homMk₂_app_two](declarations/hommk-app-two.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [homMk₂_app_two'](declarations/hommk-app-two-source-edition-3.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [hom_ext₂](declarations/hom-ext-source-edition-4.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [isoMk₂](declarations/isomk.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [isIso_iff₂](declarations/isiso-iff-source-edition-2.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [ext₂](declarations/ext-source-edition-5.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [mk₂_surjective](declarations/mk-surjective-source-edition-5.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [ext₂_of_arrow](declarations/ext-of-arrow.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [homMk₃](declarations/hommk-source-edition-6.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [homMk₃_app_zero](declarations/hommk-app-zero-source-edition-3.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [homMk₃_app_one](declarations/hommk-app-one-source-edition-4.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [homMk₃_app_two](declarations/hommk-app-two-source-edition-2.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [homMk₃_app_three](declarations/hommk-app-three-source-edition-4.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [hom_ext₃](declarations/hom-ext.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [isoMk₃](declarations/isomk-source-edition-3.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `lemma` | [ext₃](declarations/ext-source-edition-6.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `lemma` | [mk₃_surjective](declarations/mk-surjective-source-edition-4.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [homMk₄](declarations/hommk-source-edition-7.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [homMk₄_app_zero](declarations/hommk-app-zero.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [homMk₄_app_one](declarations/hommk-app-one-source-edition-3.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [homMk₄_app_two](declarations/hommk-app-two-source-edition-5.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [homMk₄_app_three](declarations/hommk-app-three-source-edition-3.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [homMk₄_app_four](declarations/hommk-app-four-source-edition-2.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [hom_ext₄](declarations/hom-ext-source-edition-5.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [map'_inv_eq_inv_map'](declarations/map-inv-eq-inv-map.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [isoMk₄](declarations/isomk-source-edition-6.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [ext₄](declarations/ext-source-edition-7.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [mk₄_surjective](declarations/mk-surjective-source-edition-3.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [homMk₅](declarations/hommk-source-edition-4.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [homMk₅_app_zero](declarations/hommk-app-zero-source-edition-2.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [homMk₅_app_one](declarations/hommk-app-one.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [homMk₅_app_two](declarations/hommk-app-two-source-edition-6.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `lemma` | [homMk₅_app_three](declarations/hommk-app-three.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [homMk₅_app_four](declarations/hommk-app-four-source-edition-3.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [homMk₅_app_five](declarations/hommk-app-five.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [homMk₅_app_two'](declarations/hommk-app-two-source-edition-4.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [homMk₅_app_three'](declarations/hommk-app-three-source-edition-2.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [homMk₅_app_four'](declarations/hommk-app-four.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [homMk₅_app_five'](declarations/hommk-app-five-source-edition-2.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [hom_ext₅](declarations/hom-ext-source-edition-3.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [isoMk₅](declarations/isomk-source-edition-5.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `lemma` | [ext₅](declarations/ext-source-edition-4.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `lemma` | [mk₅_surjective](declarations/mk-surjective-source-edition-6.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [arrow](declarations/arrow.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `lemma` | [mkOfObjOfMapSucc_exists](declarations/mkofobjofmapsucc-exists.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [mkOfObjOfMapSucc](declarations/mkofobjofmapsucc.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `lemma` | [mkOfObjOfMapSucc_obj](declarations/mkofobjofmapsucc-obj.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `lemma` | [mkOfObjOfMapSucc_map_succ](declarations/mkofobjofmapsucc-map-succ.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `lemma` | [mkOfObjOfMapSucc_arrow](declarations/mkofobjofmapsucc-arrow.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [opEquivalence](declarations/opequivalence.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `def` | [Functor.mapComposableArrows](declarations/functor-mapcomposablearrows.md) | 1066 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [Functor.mapComposableArrowsObjMk₁Iso](declarations/functor-mapcomposablearrowsobjmk-iso-source-edition-2.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [Functor.mapComposableArrowsObjMk₂Iso](declarations/functor-mapcomposablearrowsobjmk-iso.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [Functor.mapComposableArrowsOpIso](declarations/functor-mapcomposablearrowsopiso.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c133fe55dbd3ec3f131d1b5f8705e20b61a37b1bbf09f0960482264b4f46f73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9531b24ab3ca625bb55fd17cd7987c84b14595e15c813fa3e471bfb3859a3020.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
