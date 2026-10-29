# Ideal Quotient Operations Quotient Operations

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**110 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e37043b08ba29f8c19d8a890d3e3667ce700414a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/IdealQuotientOperationsQuotientOperations.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kerLift](declarations/kerlift.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [kerLift_mk](declarations/kerlift-mk.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [kerLift_injective](declarations/kerlift-injective.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lift_injective_of_ker_le_ideal](declarations/lift-injective-of-ker-le-ideal.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [quotientKerEquivOfRightInverse](declarations/quotientkerequivofrightinverse.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [quotientKerEquivOfRightInverse.apply](declarations/quotientkerequivofrightinverse-apply.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [quotientKerEquivOfRightInverse.Symm.apply](declarations/quotientkerequivofrightinverse-symm-apply.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [quotientKerEquivOfSurjective](declarations/quotientkerequivofsurjective.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_quotient_self](declarations/map-quotient-self.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mk_ker](declarations/mk-ker.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_mk_eq_bot_of_le](declarations/map-mk-eq-bot-of-le.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ker_quotient_lift](declarations/ker-quotient-lift.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bot_quotient_isMaximal_iff](declarations/bot-quotient-ismaximal-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_quotient_iff_mem_sup](declarations/mem-quotient-iff-mem-sup.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_quotient_iff_mem](declarations/mem-quotient-iff-mem.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [Quotient.algebra](declarations/quotient-algebra.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [Quotient.isScalarTower](declarations/quotient-isscalartower.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Quotient.mkₐ](declarations/quotient-mk.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Quotient.algHom_ext](declarations/quotient-alghom-ext.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Quotient.alg_map_eq](declarations/quotient-alg-map-eq.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Quotient.mkₐ_toRingHom](declarations/quotient-mk-toringhom.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Quotient.mkₐ_eq_mk](declarations/quotient-mk-eq-mk.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Quotient.algebraMap_eq](declarations/quotient-algebramap-eq.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Quotient.mk_comp_algebraMap](declarations/quotient-mk-comp-algebramap.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Quotient.mk_algebraMap](declarations/quotient-mk-algebramap.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Quotient.mkₐ_surjective](declarations/quotient-mk-surjective.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Quotient.mkₐ_ker](declarations/quotient-mk-ker.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Quotient.liftₐ](declarations/quotient-lift.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Quotient.liftₐ_apply](declarations/quotient-lift-apply.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Quotient.liftₐ_comp](declarations/quotient-lift-comp.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [KerLift.map_smul](declarations/kerlift-map-smul.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [kerLiftAlg](declarations/kerliftalg.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [kerLiftAlg_mk](declarations/kerliftalg-mk.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [kerLiftAlg_toRingHom](declarations/kerliftalg-toringhom.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [kerLiftAlg_injective](declarations/kerliftalg-injective.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [quotientKerAlgEquivOfRightInverse](declarations/quotientkeralgequivofrightinverse.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [quotientKerAlgEquivOfRightInverse.apply](declarations/quotientkeralgequivofrightinverse-apply.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [QuotientKerAlgEquivOfRightInverseSymm.apply](declarations/quotientkeralgequivofrightinversesymm-apply.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [quotientKerAlgEquivOfSurjective](declarations/quotientkeralgequivofsurjective.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [quotientMap](declarations/quotientmap.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [quotientMap_mk](declarations/quotientmap-mk.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [quotientMap_algebraMap](declarations/quotientmap-algebramap.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [quotientMap_comp_mk](declarations/quotientmap-comp-mk.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [quotientEquiv](declarations/quotientequiv.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [quotientEquiv_mk](declarations/quotientequiv-mk.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [quotientEquiv_symm_mk](declarations/quotientequiv-symm-mk.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [quotientMap_injective'](declarations/quotientmap-injective.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [quotientMap_injective](declarations/quotientmap-injective-source-edition-2.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [quotientMap_surjective](declarations/quotientmap-surjective.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [comp_quotientMap_eq_of_comp_eq](declarations/comp-quotientmap-eq-of-comp-eq.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [quotientMapₐ](declarations/quotientmap-source-edition-2.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [quotient_map_mkₐ](declarations/quotient-map-mk.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [quotient_map_comp_mkₐ](declarations/quotient-map-comp-mk.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [quotientEquivAlg](declarations/quotientequivalg.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [algebraMap_quotient_injective](declarations/algebramap-quotient-injective.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [quotientEquivAlgOfEq](declarations/quotientequivalgofeq.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [quotientEquivAlgOfEq_mk](declarations/quotientequivalgofeq-mk.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [quotientEquivAlgOfEq_symm](declarations/quotientequivalgofeq-symm.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [comap_map_mk](declarations/comap-map-mk.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [quotLeftToQuotSup](declarations/quotlefttoquotsup-source-edition-2.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ker_quotLeftToQuotSup](declarations/ker-quotlefttoquotsup.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [quotQuotToQuotSup](declarations/quotquottoquotsup.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [quotQuotMk](declarations/quotquotmk-source-edition-2.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ker_quotQuotMk](declarations/ker-quotquotmk.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [liftSupQuotQuotMk](declarations/liftsupquotquotmk.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [quotQuotEquivQuotSup](declarations/quotquotequivquotsup.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [quotQuotEquivQuotSup_quotQuotMk](declarations/quotquotequivquotsup-quotquotmk.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [quotQuotEquivQuotSup_symm_quotQuotMk](declarations/quotquotequivquotsup-symm-quotquotmk.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [quotQuotEquivComm](declarations/quotquotequivcomm.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [quotQuotEquivComm_quotQuotMk](declarations/quotquotequivcomm-quotquotmk.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [quotQuotEquivComm_comp_quotQuotMk](declarations/quotquotequivcomm-comp-quotquotmk.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [quotQuotEquivComm_symm](declarations/quotquotequivcomm-symm.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [quotQuotEquivQuotOfLE](declarations/quotquotequivquotofle-source-edition-2.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [quotQuotEquivQuotOfLE_quotQuotMk](declarations/quotquotequivquotofle-quotquotmk.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [quotQuotEquivQuotOfLE_symm_mk](declarations/quotquotequivquotofle-symm-mk.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [quotQuotEquivQuotOfLE_comp_quotQuotMk](declarations/quotquotequivquotofle-comp-quotquotmk-source-edition-2.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [quotQuotEquivQuotOfLE_symm_comp_mk](declarations/quotquotequivquotofle-symm-comp-mk.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [quotQuotEquivComm_mk_mk](declarations/quotquotequivcomm-mk-mk.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [quotQuotEquivQuotSup_quot_quot_algebraMap](declarations/quotquotequivquotsup-quot-quot-algebramap.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [quotQuotEquivComm_algebraMap](declarations/quotquotequivcomm-algebramap.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [quotLeftToQuotSupₐ](declarations/quotlefttoquotsup.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [quotLeftToQuotSupₐ_toRingHom](declarations/quotlefttoquotsup-toringhom.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coe_quotLeftToQuotSupₐ](declarations/coe-quotlefttoquotsup.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [quotQuotToQuotSupₐ](declarations/quotquottoquotsup-source-edition-2.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [quotQuotToQuotSupₐ_toRingHom](declarations/quotquottoquotsup-toringhom.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [coe_quotQuotToQuotSupₐ](declarations/coe-quotquottoquotsup.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [quotQuotMkₐ](declarations/quotquotmk.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [quotQuotMkₐ_toRingHom](declarations/quotquotmk-toringhom.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coe_quotQuotMkₐ](declarations/coe-quotquotmk.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [liftSupQuotQuotMkₐ](declarations/liftsupquotquotmk-source-edition-2.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [liftSupQuotQuotMkₐ_toRingHom](declarations/liftsupquotquotmk-toringhom.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coe_liftSupQuotQuotMkₐ](declarations/coe-liftsupquotquotmk.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [quotQuotEquivQuotSupₐ](declarations/quotquotequivquotsup-source-edition-2.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [quotQuotEquivQuotSupₐ_toRingEquiv](declarations/quotquotequivquotsup-toringequiv.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [coe_quotQuotEquivQuotSupₐ](declarations/coe-quotquotequivquotsup.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [quotQuotEquivQuotSupₐ_symm_toRingEquiv](declarations/quotquotequivquotsup-symm-toringequiv.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coe_quotQuotEquivQuotSupₐ_symm](declarations/coe-quotquotequivquotsup-symm.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [quotQuotEquivCommₐ](declarations/quotquotequivcomm-source-edition-2.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [quotQuotEquivCommₐ_toRingEquiv](declarations/quotquotequivcomm-toringequiv.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [coe_quotQuotEquivCommₐ](declarations/coe-quotquotequivcomm.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [quotQuotEquivComm_symmₐ](declarations/quotquotequivcomm-symm-source-edition-2.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [quotQuotEquivComm_comp_quotQuotMkₐ](declarations/quotquotequivcomm-comp-quotquotmk-source-edition-2.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [quotQuotEquivQuotOfLEₐ](declarations/quotquotequivquotofle.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [quotQuotEquivQuotOfLEₐ_toRingEquiv](declarations/quotquotequivquotofle-toringequiv.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [coe_quotQuotEquivQuotOfLEₐ](declarations/coe-quotquotequivquotofle.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [quotQuotEquivQuotOfLEₐ_symm_toRingEquiv](declarations/quotquotequivquotofle-symm-toringequiv.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [coe_quotQuotEquivQuotOfLEₐ_symm](declarations/coe-quotquotequivquotofle-symm.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [quotQuotEquivQuotOfLE_comp_quotQuotMkₐ](declarations/quotquotequivquotofle-comp-quotquotmk.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [quotQuotEquivQuotOfLE_symm_comp_mkₐ](declarations/quotquotequivquotofle-symm-comp-mk-source-edition-2.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35c5ed32100abd773f0fd2b3a4542aa7cc6a9ff83f0c8ef5e70e1ded95f4a2a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuotientOperations/Variant581a9264aa71b3bc5bc2646ea944eeba268aa723c70ec5ed8a5cd52a8d0d363a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
