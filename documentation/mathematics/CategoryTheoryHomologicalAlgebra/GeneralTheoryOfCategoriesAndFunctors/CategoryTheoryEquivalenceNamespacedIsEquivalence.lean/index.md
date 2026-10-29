# Category Theory Equivalence Namespaced Is Equivalence

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**84 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e23128da1e56bec6bc18a60bcde57d813232f0c8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEquivalenceNamespacedIsEquivalence.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Equivalence](declarations/equivalence.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [unit](declarations/unit.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [counit](declarations/counit.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [unitInv](declarations/unitinv.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [counitInv](declarations/counitinv.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Equivalence_mk'_unit](declarations/equivalence-mk-unit.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Equivalence_mk'_counit](declarations/equivalence-mk-counit.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Equivalence_mk'_unitInv](declarations/equivalence-mk-unitinv.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Equivalence_mk'_counitInv](declarations/equivalence-mk-counitinv.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [functor_unit_comp](declarations/functor-unit-comp.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [counitInv_functor_comp](declarations/counitinv-functor-comp.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [counitInv_app_functor](declarations/counitinv-app-functor.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [counit_app_functor](declarations/counit-app-functor.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [unit_inverse_comp](declarations/unit-inverse-comp.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [inverse_counitInv_comp](declarations/inverse-counitinv-comp.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [unit_app_inverse](declarations/unit-app-inverse.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [unitInv_app_inverse](declarations/unitinv-app-inverse.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fun_inv_map](declarations/fun-inv-map.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inv_fun_map](declarations/inv-fun-map-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [adjointifyη](declarations/adjointify.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [adjointify_η_ε](declarations/adjointify-source-edition-2.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mk](declarations/mk.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [refl](declarations/refl.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [symm](declarations/symm.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [trans](declarations/trans.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [funInvIdAssoc](declarations/funinvidassoc.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [funInvIdAssoc_hom_app](declarations/funinvidassoc-hom-app.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [funInvIdAssoc_inv_app](declarations/funinvidassoc-inv-app.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [invFunIdAssoc](declarations/invfunidassoc.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [invFunIdAssoc_hom_app](declarations/invfunidassoc-hom-app.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [invFunIdAssoc_inv_app](declarations/invfunidassoc-inv-app.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [congrLeft](declarations/congrleft.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [congrRight](declarations/congrright.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [cancel_unit_right](declarations/cancel-unit-right.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [cancel_unitInv_right](declarations/cancel-unitinv-right.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [cancel_counit_right](declarations/cancel-counit-right.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [cancel_counitInv_right](declarations/cancel-counitinv-right.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cancel_unit_right_assoc](declarations/cancel-unit-right-assoc-source-edition-2.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cancel_counitInv_right_assoc](declarations/cancel-counitinv-right-assoc-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cancel_unit_right_assoc'](declarations/cancel-unit-right-assoc.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [cancel_counitInv_right_assoc'](declarations/cancel-counitinv-right-assoc.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [powNat](declarations/pownat.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [pow](declarations/pow.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [pow_zero](declarations/pow-zero.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [pow_one](declarations/pow-one.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [pow_neg_one](declarations/pow-neg-one.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `class` | [IsEquivalence](declarations/isequivalence.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [ofEquivalence](declarations/ofequivalence.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [ofEquivalenceInverse](declarations/ofequivalenceinverse.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [mk](declarations/mk-source-edition-2.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [asEquivalence](declarations/asequivalence.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [isEquivalenceRefl](declarations/isequivalencerefl.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [inv](declarations/inv.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [isEquivalenceInv](declarations/isequivalenceinv.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [asEquivalence_functor](declarations/asequivalence-functor.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [asEquivalence_inverse](declarations/asequivalence-inverse.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [asEquivalence_unit](declarations/asequivalence-unit.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [asEquivalence_counit](declarations/asequivalence-counit.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [inv_inv](declarations/inv-inv.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [isEquivalenceTrans](declarations/isequivalencetrans.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [functor_inv](declarations/functor-inv.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [inverse_inv](declarations/inverse-inv.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [functor_asEquivalence](declarations/functor-asequivalence.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [inverse_asEquivalence](declarations/inverse-asequivalence.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [fun_inv_map](declarations/fun-inv-map-source-edition-2.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [inv_fun_map](declarations/inv-fun-map.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [ofIso](declarations/ofiso.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [ofIso_trans](declarations/ofiso-trans.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [ofIso_refl](declarations/ofiso-refl.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [equivOfIso](declarations/equivofiso.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [cancelCompRight](declarations/cancelcompright.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [cancelCompLeft](declarations/cancelcompleft.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [essSurj_of_equivalence](declarations/esssurj-of-equivalence.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [equivalenceInverse](declarations/equivalenceinverse.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [ofFullyFaithfullyEssSurj](declarations/offullyfaithfullyesssurj.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [functor_map_inj_iff](declarations/functor-map-inj-iff.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [inverse_map_inj_iff](declarations/inverse-map-inj-iff.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [essSurjInducedFunctor](declarations/esssurjinducedfunctor.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [inducedFunctorOfEquiv](declarations/inducedfunctorofequiv.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [fullyFaithfulToEssImage](declarations/fullyfaithfultoessimage.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9096eeb472249d73554834f7263d4a1926612db736647cc04a618c638d7b1972 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant8f1a7ae444385a1bcceebc8149f3a714ab6ba7b0d173e46a23d465c34822ff26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
