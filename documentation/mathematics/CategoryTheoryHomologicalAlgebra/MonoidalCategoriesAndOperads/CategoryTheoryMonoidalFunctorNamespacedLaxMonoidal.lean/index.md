# Category Theory Monoidal Functor Namespaced Lax Monoidal

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**156 observed declarations and anonymous commands**, 99 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `325f831955e2363795da5118687fe393a9d77e63`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CategoryTheoryMonoidalFunctorNamespacedLaxMonoidal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [LaxMonoidal](declarations/laxmonoidal.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ε](declarations/anonymous.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [μ](declarations/anonymous-source-edition-4.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [μ_natural_left](declarations/natural-left.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [μ_natural_right](declarations/natural-right-source-edition-2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [associativity](declarations/associativity.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [left_unitality](declarations/left-unitality.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [right_unitality](declarations/right-unitality.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [μ_natural](declarations/natural-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [left_unitality_inv](declarations/left-unitality-inv.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [right_unitality_inv](declarations/right-unitality-inv.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [associativity_inv](declarations/associativity-inv-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ofTensorHom](declarations/oftensorhom.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [ofTensorHom_ε](declarations/oftensorhom-source-edition-3.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [ofTensorHom_μ](declarations/oftensorhom-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [id](declarations/id-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [id_ε](declarations/id.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [id_μ](declarations/id-source-edition-6.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [comp](declarations/comp-source-edition-5.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [comp_ε](declarations/comp-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [comp_μ](declarations/comp-source-edition-3.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `class` | [OplaxMonoidal](declarations/oplaxmonoidal.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [η](declarations/anonymous-source-edition-3.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [δ](declarations/anonymous-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [δ_natural_left](declarations/natural-left-source-edition-2.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [δ_natural_right](declarations/natural-right.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [associativity](declarations/associativity-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [left_unitality](declarations/left-unitality-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [right_unitality](declarations/right-unitality-source-edition-2.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [δ_natural](declarations/natural.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [left_unitality_hom](declarations/left-unitality-hom.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [right_unitality_hom](declarations/right-unitality-hom.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [associativity_inv](declarations/associativity-inv.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [id](declarations/id-source-edition-4.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [id_η](declarations/id-source-edition-3.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [id_δ](declarations/id-source-edition-5.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [comp](declarations/comp-source-edition-6.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [comp_η](declarations/comp.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [comp_δ](declarations/comp-source-edition-4.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `class` | [Monoidal](declarations/monoidal.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [εIso](declarations/iso-source-edition-2.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [μIso](declarations/iso.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [map_ε_η](declarations/map.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [map_η_ε](declarations/map-source-edition-4.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [map_μ_δ](declarations/map-source-edition-3.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [map_δ_μ](declarations/map-source-edition-2.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [whiskerRight_ε_η](declarations/whiskerright-source-edition-2.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [whiskerRight_η_ε](declarations/whiskerright-source-edition-4.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [whiskerRight_μ_δ](declarations/whiskerright-source-edition-3.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [whiskerRight_δ_μ](declarations/whiskerright.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [whiskerLeft_ε_η](declarations/whiskerleft-source-edition-2.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [whiskerLeft_η_ε](declarations/whiskerleft-source-edition-3.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [whiskerLeft_μ_δ](declarations/whiskerleft.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [whiskerLeft_δ_μ](declarations/whiskerleft-source-edition-4.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [map_tensor](declarations/map-tensor.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [map_whiskerLeft](declarations/map-whiskerleft.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_whiskerRight](declarations/map-whiskerright.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [map_associator](declarations/map-associator.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [map_associator_inv](declarations/map-associator-inv.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_leftUnitor](declarations/map-leftunitor.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [map_leftUnitor_inv](declarations/map-leftunitor-inv.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_rightUnitor](declarations/map-rightunitor.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_rightUnitor_inv](declarations/map-rightunitor-inv.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [μNatIso](declarations/natiso.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [commTensorLeft](declarations/commtensorleft.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [commTensorRight](declarations/commtensorright.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [toLaxMonoidal_injective](declarations/tolaxmonoidal-injective.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [toOplaxMonoidal_injective](declarations/tooplaxmonoidal-injective.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `structure` | [CoreMonoidal](declarations/coremonoidal.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [toLaxMonoidal](declarations/tolaxmonoidal-source-edition-3.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [toLaxMonoidal_ε](declarations/tolaxmonoidal.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [toLaxMonoidal_μ](declarations/tolaxmonoidal-source-edition-2.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [toOplaxMonoidal](declarations/tooplaxmonoidal-source-edition-3.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [toOplaxMonoidal_η](declarations/tooplaxmonoidal-source-edition-2.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [toOplaxMonoidal_δ](declarations/tooplaxmonoidal.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [toMonoidal](declarations/tomonoidal.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [ofLaxMonoidal](declarations/oflaxmonoidal.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [ofOplaxMonoidal](declarations/ofoplaxmonoidal.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [Monoidal.ofLaxMonoidal](declarations/monoidal-oflaxmonoidal.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [Monoidal.ofOplaxMonoidal](declarations/monoidal-ofoplaxmonoidal.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [prod_ε_fst](declarations/prod-fst-source-edition-6.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [prod_ε_snd](declarations/prod-snd.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [prod_μ_fst](declarations/prod-fst-source-edition-8.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [prod_μ_snd](declarations/prod-snd-source-edition-8.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [prod_η_fst](declarations/prod-fst-source-edition-3.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [prod_η_snd](declarations/prod-snd-source-edition-5.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [prod_δ_fst](declarations/prod-fst-source-edition-4.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [prod_δ_snd](declarations/prod-snd-source-edition-4.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [diag_ε](declarations/diag-source-edition-3.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [diag_η](declarations/diag.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [diag_μ](declarations/diag-source-edition-4.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [diag_δ](declarations/diag-source-edition-2.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [LaxMonoidal.prod'](declarations/laxmonoidal-prod.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [prod'_ε_fst](declarations/prod-fst-source-edition-5.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [prod'_ε_snd](declarations/prod-snd-source-edition-6.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [prod'_μ_fst](declarations/prod-fst.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [prod'_μ_snd](declarations/prod-snd-source-edition-3.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [OplaxMonoidal.prod'](declarations/oplaxmonoidal-prod.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [prod'_η_fst](declarations/prod-fst-source-edition-2.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [prod'_η_snd](declarations/prod-snd-source-edition-2.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [prod'_δ_fst](declarations/prod-fst-source-edition-7.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [prod'_δ_snd](declarations/prod-snd-source-edition-7.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [prod_comp_fst](declarations/prod-comp-fst.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [prod_comp_snd](declarations/prod-comp-snd.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [Monoidal.prod'](declarations/monoidal-prod.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [rightAdjointLaxMonoidal](declarations/rightadjointlaxmonoidal.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [rightAdjointLaxMonoidal_ε](declarations/rightadjointlaxmonoidal-source-edition-2.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [rightAdjointLaxMonoidal_μ](declarations/rightadjointlaxmonoidal-source-edition-3.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `class` | [IsMonoidal](declarations/ismonoidal.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [unit_app_unit_comp_map_η](declarations/unit-app-unit-comp-map.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [unit_app_tensor_comp_map_δ](declarations/unit-app-tensor-comp-map.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [map_ε_comp_counit_app_unit](declarations/map-comp-counit-app-unit.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [map_μ_comp_counit_app_tensor](declarations/map-comp-counit-app-tensor.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [isMonoidal_comp](declarations/ismonoidal-comp.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [ε_comp_map_ε](declarations/comp-map-source-edition-2.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [map_η_comp_η](declarations/map-comp.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [inverseMonoidal](declarations/inversemonoidal.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `abbrev` | [IsMonoidal](declarations/ismonoidal-source-edition-2.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `example` | [(anonymous)](declarations/example.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [unitIso_hom_app_comp_inverse_map_η_functor](declarations/unitiso-hom-app-comp-inverse-map-functor.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [unitIso_hom_app_tensor_comp_inverse_map_δ_functor](declarations/unitiso-hom-app-tensor-comp-inverse-map-functor.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [functor_map_ε_inverse_comp_counitIso_hom_app](declarations/functor-map-inverse-comp-counitiso-hom-app.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [functor_map_μ_inverse_comp_counitIso_hom_app_tensor](declarations/functor-map-inverse-comp-counitiso-hom-app-tensor.md) | 1079 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [counitIso_inv_app_comp_functor_map_η_inverse](declarations/counitiso-inv-app-comp-functor-map-inverse.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [counitIso_inv_app_tensor_comp_functor_map_δ_inverse](declarations/counitiso-inv-app-tensor-comp-functor-map-inverse.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [unit_app_comp_inverse_map_η_functor](declarations/unit-app-comp-inverse-map-functor.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [unit_app_tensor_comp_inverse_map_δ_functor](declarations/unit-app-tensor-comp-inverse-map-functor.md) | 1106 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [functor_map_ε_inverse_comp_counit_app](declarations/functor-map-inverse-comp-counit-app.md) | 1112 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [functor_map_μ_inverse_comp_counit_app_tensor](declarations/functor-map-inverse-comp-counit-app-tensor.md) | 1117 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [counitInv_app_comp_functor_map_η_inverse](declarations/counitinv-app-comp-functor-map-inverse.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [counitInv_app_tensor_comp_functor_map_δ_inverse](declarations/counitinv-app-tensor-comp-functor-map-inverse.md) | 1129 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `lemma` | [ε_comp_map_ε](declarations/comp-map.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [map_η_comp_η](declarations/map-comp-source-edition-2.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 1146 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 1147 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `instance` | [isMonoidal_refl](declarations/ismonoidal-refl.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `instance` | [isMonoidal_symm](declarations/ismonoidal-symm.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `instance` | [isMonoidal_trans](declarations/ismonoidal-trans.md) | 1179 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `structure` | [LaxMonoidalFunctor](declarations/laxmonoidalfunctor.md) | 1193 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [of](declarations/of.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4e6a4227c6c8bd9ebf20e1d0a1f3dcf6dd6a132c96b8d1c65bef274de1df64e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
