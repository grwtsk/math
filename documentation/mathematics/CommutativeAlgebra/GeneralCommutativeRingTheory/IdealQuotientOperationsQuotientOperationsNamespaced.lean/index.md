# Ideal Quotient Operations Quotient Operations Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**110 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/QuotientOperations/Variantb6aa5174a132243b725793f20a8e51a29e691c032b35dbee4d5cd88cf7768480.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84945924f5849d250bdbf17853c91aa507775d7c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientOperationsQuotientOperationsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kerLift](declarations/kerlift.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [kerLift_mk](declarations/kerlift-mk.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [kerLift_injective](declarations/kerlift-injective.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lift_injective_of_ker_le_ideal](declarations/lift-injective-of-ker-le-ideal.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [quotientKerEquivOfRightInverse](declarations/quotientkerequivofrightinverse.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [quotientKerEquivOfRightInverse.apply](declarations/quotientkerequivofrightinverse-apply.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [quotientKerEquivOfRightInverse.Symm.apply](declarations/quotientkerequivofrightinverse-symm-apply.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [quotientKerEquivOfSurjective](declarations/quotientkerequivofsurjective.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_quotient_self](declarations/map-quotient-self.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mk_ker](declarations/mk-ker.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_mk_eq_bot_of_le](declarations/map-mk-eq-bot-of-le.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ker_quotient_lift](declarations/ker-quotient-lift.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bot_quotient_isMaximal_iff](declarations/bot-quotient-ismaximal-iff.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_quotient_iff_mem_sup](declarations/mem-quotient-iff-mem-sup.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_quotient_iff_mem](declarations/mem-quotient-iff-mem.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [Quotient.algebra](declarations/quotient-algebra.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [Quotient.isScalarTower](declarations/quotient-isscalartower.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Quotient.mkₐ](declarations/quotient-mk.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Quotient.algHom_ext](declarations/quotient-alghom-ext.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Quotient.alg_map_eq](declarations/quotient-alg-map-eq.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Quotient.mkₐ_toRingHom](declarations/quotient-mk-toringhom.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Quotient.mkₐ_eq_mk](declarations/quotient-mk-eq-mk.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Quotient.algebraMap_eq](declarations/quotient-algebramap-eq.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Quotient.mk_comp_algebraMap](declarations/quotient-mk-comp-algebramap.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Quotient.mk_algebraMap](declarations/quotient-mk-algebramap.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Quotient.mkₐ_surjective](declarations/quotient-mk-surjective.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Quotient.mkₐ_ker](declarations/quotient-mk-ker.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Quotient.liftₐ](declarations/quotient-lift.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Quotient.liftₐ_apply](declarations/quotient-lift-apply.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Quotient.liftₐ_comp](declarations/quotient-lift-comp.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [KerLift.map_smul](declarations/kerlift-map-smul.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [kerLiftAlg](declarations/kerliftalg.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [kerLiftAlg_mk](declarations/kerliftalg-mk.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [kerLiftAlg_toRingHom](declarations/kerliftalg-toringhom.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [kerLiftAlg_injective](declarations/kerliftalg-injective.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [quotientKerAlgEquivOfRightInverse](declarations/quotientkeralgequivofrightinverse.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [quotientKerAlgEquivOfRightInverse.apply](declarations/quotientkeralgequivofrightinverse-apply.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [QuotientKerAlgEquivOfRightInverseSymm.apply](declarations/quotientkeralgequivofrightinversesymm-apply.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [quotientKerAlgEquivOfSurjective](declarations/quotientkeralgequivofsurjective.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [quotientMap](declarations/quotientmap-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [quotientMap_mk](declarations/quotientmap-mk.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [quotientMap_algebraMap](declarations/quotientmap-algebramap.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [quotientMap_comp_mk](declarations/quotientmap-comp-mk.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [quotientEquiv](declarations/quotientequiv.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [quotientEquiv_mk](declarations/quotientequiv-mk.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [quotientEquiv_symm_mk](declarations/quotientequiv-symm-mk.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [quotientMap_injective'](declarations/quotientmap-injective-source-edition-2.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [quotientMap_injective](declarations/quotientmap-injective.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [quotientMap_surjective](declarations/quotientmap-surjective.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [comp_quotientMap_eq_of_comp_eq](declarations/comp-quotientmap-eq-of-comp-eq.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [quotientMapₐ](declarations/quotientmap.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [quotient_map_mkₐ](declarations/quotient-map-mk.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [quotient_map_comp_mkₐ](declarations/quotient-map-comp-mk.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [quotientEquivAlg](declarations/quotientequivalg.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [algebraMap_quotient_injective](declarations/algebramap-quotient-injective.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [quotientEquivAlgOfEq](declarations/quotientequivalgofeq.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [quotientEquivAlgOfEq_mk](declarations/quotientequivalgofeq-mk.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [quotientEquivAlgOfEq_symm](declarations/quotientequivalgofeq-symm.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [comap_map_mk](declarations/comap-map-mk.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [quotLeftToQuotSup](declarations/quotlefttoquotsup-source-edition-2.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ker_quotLeftToQuotSup](declarations/ker-quotlefttoquotsup.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [quotQuotToQuotSup](declarations/quotquottoquotsup.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [quotQuotMk](declarations/quotquotmk-source-edition-2.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ker_quotQuotMk](declarations/ker-quotquotmk.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [liftSupQuotQuotMk](declarations/liftsupquotquotmk-source-edition-2.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [quotQuotEquivQuotSup](declarations/quotquotequivquotsup.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [quotQuotEquivQuotSup_quotQuotMk](declarations/quotquotequivquotsup-quotquotmk.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [quotQuotEquivQuotSup_symm_quotQuotMk](declarations/quotquotequivquotsup-symm-quotquotmk.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [quotQuotEquivComm](declarations/quotquotequivcomm.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [quotQuotEquivComm_quotQuotMk](declarations/quotquotequivcomm-quotquotmk.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [quotQuotEquivComm_comp_quotQuotMk](declarations/quotquotequivcomm-comp-quotquotmk.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [quotQuotEquivComm_symm](declarations/quotquotequivcomm-symm-source-edition-2.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [quotQuotEquivQuotOfLE](declarations/quotquotequivquotofle.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [quotQuotEquivQuotOfLE_quotQuotMk](declarations/quotquotequivquotofle-quotquotmk.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [quotQuotEquivQuotOfLE_symm_mk](declarations/quotquotequivquotofle-symm-mk.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [quotQuotEquivQuotOfLE_comp_quotQuotMk](declarations/quotquotequivquotofle-comp-quotquotmk-source-edition-2.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [quotQuotEquivQuotOfLE_symm_comp_mk](declarations/quotquotequivquotofle-symm-comp-mk-source-edition-2.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [quotQuotEquivComm_mk_mk](declarations/quotquotequivcomm-mk-mk.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [quotQuotEquivQuotSup_quot_quot_algebraMap](declarations/quotquotequivquotsup-quot-quot-algebramap.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [quotQuotEquivComm_algebraMap](declarations/quotquotequivcomm-algebramap.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [quotLeftToQuotSupₐ](declarations/quotlefttoquotsup.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [quotLeftToQuotSupₐ_toRingHom](declarations/quotlefttoquotsup-toringhom.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coe_quotLeftToQuotSupₐ](declarations/coe-quotlefttoquotsup.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [quotQuotToQuotSupₐ](declarations/quotquottoquotsup-source-edition-2.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [quotQuotToQuotSupₐ_toRingHom](declarations/quotquottoquotsup-toringhom.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [coe_quotQuotToQuotSupₐ](declarations/coe-quotquottoquotsup.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [quotQuotMkₐ](declarations/quotquotmk.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [quotQuotMkₐ_toRingHom](declarations/quotquotmk-toringhom.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coe_quotQuotMkₐ](declarations/coe-quotquotmk.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [liftSupQuotQuotMkₐ](declarations/liftsupquotquotmk.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [liftSupQuotQuotMkₐ_toRingHom](declarations/liftsupquotquotmk-toringhom.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coe_liftSupQuotQuotMkₐ](declarations/coe-liftsupquotquotmk.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [quotQuotEquivQuotSupₐ](declarations/quotquotequivquotsup-source-edition-2.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [quotQuotEquivQuotSupₐ_toRingEquiv](declarations/quotquotequivquotsup-toringequiv.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [coe_quotQuotEquivQuotSupₐ](declarations/coe-quotquotequivquotsup.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [quotQuotEquivQuotSupₐ_symm_toRingEquiv](declarations/quotquotequivquotsup-symm-toringequiv.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coe_quotQuotEquivQuotSupₐ_symm](declarations/coe-quotquotequivquotsup-symm.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [quotQuotEquivCommₐ](declarations/quotquotequivcomm-source-edition-2.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [quotQuotEquivCommₐ_toRingEquiv](declarations/quotquotequivcomm-toringequiv.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [coe_quotQuotEquivCommₐ](declarations/coe-quotquotequivcomm.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [quotQuotEquivComm_symmₐ](declarations/quotquotequivcomm-symm.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [quotQuotEquivComm_comp_quotQuotMkₐ](declarations/quotquotequivcomm-comp-quotquotmk-source-edition-2.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [quotQuotEquivQuotOfLEₐ](declarations/quotquotequivquotofle-source-edition-2.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [quotQuotEquivQuotOfLEₐ_toRingEquiv](declarations/quotquotequivquotofle-toringequiv.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [coe_quotQuotEquivQuotOfLEₐ](declarations/coe-quotquotequivquotofle.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [quotQuotEquivQuotOfLEₐ_symm_toRingEquiv](declarations/quotquotequivquotofle-symm-toringequiv.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [coe_quotQuotEquivQuotOfLEₐ_symm](declarations/coe-quotquotequivquotofle-symm.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [quotQuotEquivQuotOfLE_comp_quotQuotMkₐ](declarations/quotquotequivquotofle-comp-quotquotmk.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [quotQuotEquivQuotOfLE_symm_comp_mkₐ](declarations/quotquotequivquotofle-symm-comp-mk.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edebbfaf7b79ee7cf2c22eb336fccc1cb00777bad0ae1f7fd5b628b45d3c056e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuotientOperations/Variantb6aa5174a132243b725793f20a8e51a29e691c032b35dbee4d5cd88cf7768480.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
