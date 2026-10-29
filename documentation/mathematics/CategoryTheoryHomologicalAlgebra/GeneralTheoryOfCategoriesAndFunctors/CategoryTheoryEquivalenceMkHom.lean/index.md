# Category Theory Equivalence Mk Hom

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**107 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d61a0fbe9732519fd0a9f6bf1ac240aaaf9a079`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEquivalenceMkHom.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Equivalence](declarations/equivalence.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [unit](declarations/unit.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [counit](declarations/counit.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [unitInv](declarations/unitinv.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [counitInv](declarations/counitinv.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mkHom](declarations/mkhom.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [asNatTrans](declarations/asnattrans.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [hom_ext](declarations/hom-ext.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mkHom_asNatTrans](declarations/mkhom-asnattrans.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [asNatTrans_mkHom](declarations/asnattrans-mkhom.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [id_asNatTrans](declarations/id-asnattrans.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [comp_asNatTrans](declarations/comp-asnattrans.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mkHom_id_functor](declarations/mkhom-id-functor.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mkHom_comp](declarations/mkhom-comp.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkIso](declarations/mkiso.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [functorFunctor](declarations/functorfunctor.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Equivalence_mk'_unit](declarations/equivalence-mk-unit.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Equivalence_mk'_counit](declarations/equivalence-mk-counit.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Equivalence_mk'_unitInv](declarations/equivalence-mk-unitinv.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Equivalence_mk'_counitInv](declarations/equivalence-mk-counitinv.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [counit_naturality](declarations/counit-naturality.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unit_naturality](declarations/unit-naturality.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [counitInv_naturality](declarations/counitinv-naturality.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unitInv_naturality](declarations/unitinv-naturality.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [functor_unit_comp](declarations/functor-unit-comp.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [counitInv_functor_comp](declarations/counitinv-functor-comp.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [counitInv_app_functor](declarations/counitinv-app-functor.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [counit_app_functor](declarations/counit-app-functor.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unit_inverse_comp](declarations/unit-inverse-comp.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inverse_counitInv_comp](declarations/inverse-counitinv-comp.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [unit_app_inverse](declarations/unit-app-inverse.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unitInv_app_inverse](declarations/unitinv-app-inverse.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fun_inv_map](declarations/fun-inv-map.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inv_fun_map](declarations/inv-fun-map.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [adjointifyη](declarations/adjointify.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [adjointify_η_ε](declarations/adjointify-source-edition-2.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [mk](declarations/mk-source-edition-2.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [refl](declarations/refl.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [symm](declarations/symm.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [mkHom_id_inverse](declarations/mkhom-id-inverse.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [trans](declarations/trans.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [funInvIdAssoc](declarations/funinvidassoc.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [funInvIdAssoc_hom_app](declarations/funinvidassoc-hom-app.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [funInvIdAssoc_inv_app](declarations/funinvidassoc-inv-app.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [invFunIdAssoc](declarations/invfunidassoc.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [invFunIdAssoc_hom_app](declarations/invfunidassoc-hom-app.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [invFunIdAssoc_inv_app](declarations/invfunidassoc-inv-app.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [congrLeft](declarations/congrleft.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [congrRight](declarations/congrright.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [congrRightFunctor](declarations/congrrightfunctor.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [cancel_unit_right](declarations/cancel-unit-right.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cancel_unitInv_right](declarations/cancel-unitinv-right.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [cancel_counit_right](declarations/cancel-counit-right.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [cancel_counitInv_right](declarations/cancel-counitinv-right.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [cancel_unit_right_assoc](declarations/cancel-unit-right-assoc-source-edition-2.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [cancel_counitInv_right_assoc](declarations/cancel-counitinv-right-assoc.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cancel_unit_right_assoc'](declarations/cancel-unit-right-assoc.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [cancel_counitInv_right_assoc'](declarations/cancel-counitinv-right-assoc-source-edition-2.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [powNat](declarations/pownat.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [pow](declarations/pow.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [pow_zero](declarations/pow-zero.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [pow_one](declarations/pow-one.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [pow_neg_one](declarations/pow-neg-one.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [essSurj_functor](declarations/esssurj-functor.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [essSurj_inverse](declarations/esssurj-inverse.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [fullyFaithfulFunctor](declarations/fullyfaithfulfunctor.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [fullyFaithfulInverse](declarations/fullyfaithfulinverse.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [faithful_functor](declarations/faithful-functor.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [faithful_inverse](declarations/faithful-inverse.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [full_functor](declarations/full-functor.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [full_inverse](declarations/full-inverse.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [changeFunctor](declarations/changefunctor.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [changeFunctor_refl](declarations/changefunctor-refl.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [changeFunctor_trans](declarations/changefunctor-trans.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [changeInverse](declarations/changeinverse.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `class` | [Functor.IsEquivalence](declarations/functor-isequivalence.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [Equivalence.isEquivalence_functor](declarations/equivalence-isequivalence-functor.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [Equivalence.isEquivalence_inverse](declarations/equivalence-isequivalence-inverse.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [mk'](declarations/mk.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [inv](declarations/inv.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [asEquivalence](declarations/asequivalence.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [isEquivalence_refl](declarations/isequivalence-refl.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [isEquivalence_inv](declarations/isequivalence-inv.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [isEquivalence_trans](declarations/isequivalence-trans.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [fun_inv_map](declarations/fun-inv-map-source-edition-2.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [inv_fun_map](declarations/inv-fun-map-source-edition-2.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [isEquivalence_of_iso](declarations/isequivalence-of-iso.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [isEquivalence_iff_of_iso](declarations/isequivalence-iff-of-iso.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [isEquivalence_of_comp_right](declarations/isequivalence-of-comp-right.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [isEquivalence_of_comp_left](declarations/isequivalence-of-comp-left.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [essSurjInducedFunctor](declarations/esssurjinducedfunctor.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [inducedFunctorOfEquiv](declarations/inducedfunctorofequiv.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [fullyFaithfulToEssImage](declarations/fullyfaithfultoessimage.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [ObjectProperty.fullSubcategoryCongr](declarations/objectproperty-fullsubcategorycongr.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [compInverseIso](declarations/compinverseiso.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [isoCompInverse](declarations/isocompinverse.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [inverseCompIso](declarations/inversecompiso.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [isoInverseComp](declarations/isoinversecomp.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [isoInverseOfIsoFunctor](declarations/isoinverseofisofunctor.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [isoFunctorOfIsoInverse](declarations/isofunctorofisoinverse.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [isoFunctorOfIsoInverse_isoInverseOfIsoFunctor](declarations/isofunctorofisoinverse-isoinverseofisofunctor.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [isoInverseOfIsoFunctor_isoFunctorOfIsoInverse](declarations/isoinverseofisofunctor-isofunctorofisoinverse.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=276b389cf1d03615889c9f1c4659726451ee073c97aee7aef9fae7ce3fafea8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
