# Module Torsion

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**115 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d35e8891b58df9ba9064872f734020449e518115`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleTorsion.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [torsionOf](declarations/torsionof.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [torsionOf_zero](declarations/torsionof-zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_torsionOf_iff](declarations/mem-torsionof-iff.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [torsionOf_eq_top_iff](declarations/torsionof-eq-top-iff.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [torsionOf_eq_bot_iff_of_noZeroSMulDivisors](declarations/torsionof-eq-bot-iff-of-nozerosmuldivisors.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [iSupIndep.linearIndependent'](declarations/isupindep-linearindependent.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [quotTorsionOfEquivSpanSingleton](declarations/quottorsionofequivspansingleton.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [quotTorsionOfEquivSpanSingleton_apply_mk](declarations/quottorsionofequivspansingleton-apply-mk.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [torsionBy](declarations/torsionby-source-edition-2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [torsionBySet](declarations/torsionbyset.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [torsion'](declarations/torsion.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [torsion](declarations/torsion-source-edition-2.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [IsTorsionBy](declarations/istorsionby.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [IsTorsionBySet](declarations/istorsionbyset.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [IsTorsion'](declarations/istorsion-source-edition-2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [IsTorsion](declarations/istorsion.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isTorsionBySet_annihilator](declarations/istorsionbyset-annihilator.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isTorsionBy_iff_mem_annihilator](declarations/istorsionby-iff-mem-annihilator.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isTorsionBySet_iff_subset_annihilator](declarations/istorsionbyset-iff-subset-annihilator.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [isSMulRegular_iff_torsionBy_eq_bot](declarations/issmulregular-iff-torsionby-eq-bot.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [smul_torsionBy](declarations/smul-torsionby.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [smul_coe_torsionBy](declarations/smul-coe-torsionby.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_torsionBy_iff](declarations/mem-torsionby-iff.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_torsionBySet_iff](declarations/mem-torsionbyset-iff.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [torsionBySet_singleton_eq](declarations/torsionbyset-singleton-eq.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [torsionBySet_le_torsionBySet_of_subset](declarations/torsionbyset-le-torsionbyset-of-subset.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [torsionBySet_eq_torsionBySet_span](declarations/torsionbyset-eq-torsionbyset-span.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [torsionBySet_span_singleton_eq](declarations/torsionbyset-span-singleton-eq.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [torsionBy_le_torsionBy_of_dvd](declarations/torsionby-le-torsionby-of-dvd.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [torsionBy_one](declarations/torsionby-one.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [torsionBySet_univ](declarations/torsionbyset-univ.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isTorsionBySet_of_subset](declarations/istorsionbyset-of-subset.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isTorsionBySet_singleton_iff](declarations/istorsionbyset-singleton-iff.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isTorsionBySet_iff_is_torsion_by_span](declarations/istorsionbyset-iff-is-torsion-by-span.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isTorsionBySet_span_singleton_iff](declarations/istorsionbyset-span-singleton-iff.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isTorsionBySet_iff_torsionBySet_eq_top](declarations/istorsionbyset-iff-torsionbyset-eq-top.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isTorsionBy_iff_torsionBy_eq_top](declarations/istorsionby-iff-torsionby-eq-top.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isTorsionBySet_iff_subseteq_ker_lsmul](declarations/istorsionbyset-iff-subseteq-ker-lsmul.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isTorsionBy_iff_mem_ker_lsmul](declarations/istorsionby-iff-mem-ker-lsmul.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [torsionBySet_isTorsionBySet](declarations/torsionbyset-istorsionbyset.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [torsionBy_isTorsionBy](declarations/torsionby-istorsionby.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [torsionBy_torsionBy_eq_top](declarations/torsionby-torsionby-eq-top.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [torsionBySet_torsionBySet_eq_top](declarations/torsionbyset-torsionbyset-eq-top.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [torsion_gc](declarations/torsion-gc.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [iSup_torsionBySet_ideal_eq_torsionBySet_iInf](declarations/isup-torsionbyset-ideal-eq-torsionbyset-iinf.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [supIndep_torsionBySet_ideal](declarations/supindep-torsionbyset-ideal.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [iSup_torsionBy_eq_torsionBy_prod](declarations/isup-torsionby-eq-torsionby-prod.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [supIndep_torsionBy](declarations/supindep-torsionby.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [torsionBySet_isInternal](declarations/torsionbyset-isinternal.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [torsionBy_isInternal](declarations/torsionby-isinternal.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [IsTorsionBySet.hasSMul](declarations/istorsionbyset-hassmul.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [IsTorsionBy.hasSMul](declarations/istorsionby-hassmul.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsTorsionBySet.mk_smul](declarations/istorsionbyset-mk-smul.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsTorsionBy.mk_smul](declarations/istorsionby-mk-smul.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [IsTorsionBySet.module](declarations/istorsionbyset-module.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [IsTorsionBySet.isScalarTower](declarations/istorsionbyset-isscalartower.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [IsTorsionBySet.semilinearMap](declarations/istorsionbyset-semilinearmap.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [IsTorsionBySet.isSemisimpleModule_iff](declarations/istorsionbyset-issemisimplemodule-iff.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [IsTorsionBy.module](declarations/istorsionby-module.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [quotientAnnihilator](declarations/quotientannihilator.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isTorsionBy_quotient_iff](declarations/istorsionby-quotient-iff.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsTorsionBy.quotient](declarations/istorsionby-quotient.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [isTorsionBySet_quotient_iff](declarations/istorsionbyset-quotient-iff.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsTorsionBySet.quotient](declarations/istorsionbyset-quotient.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [isTorsionBySet_quotient_set_smul](declarations/istorsionbyset-quotient-set-smul.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [isTorsionBySet_quotient_ideal_smul](declarations/istorsionbyset-quotient-ideal-smul.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [Quotient.mk_smul_mk](declarations/quotient-mk-smul-mk.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [isTorsionBy_quotient_element_smul](declarations/istorsionby-quotient-element-smul.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [torsionBySet.mk_smul](declarations/torsionbyset-mk-smul.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instModuleQuotientTorsionBy](declarations/instmodulequotienttorsionby.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [torsionBy.mk_ideal_smul](declarations/torsionby-mk-ideal-smul.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [torsionBy.mk_smul](declarations/torsionby-mk-smul.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [submodule_torsionBy_orderIso](declarations/submodule-torsionby-orderiso.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_torsion'_iff](declarations/mem-torsion-iff-source-edition-2.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [mem_torsion_iff](declarations/mem-torsion-iff.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [(anonymous)](declarations/instance.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [isTorsion'_iff_torsion'_eq_top](declarations/istorsion-iff-torsion-eq-top.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [torsion'_isTorsion'](declarations/torsion-istorsion-source-edition-2.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [torsion'_torsion'_eq_top](declarations/torsion-torsion-eq-top-source-edition-2.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [torsion_torsion_eq_top](declarations/torsion-torsion-eq-top.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [torsion_isTorsion](declarations/torsion-istorsion.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [_root_.Module.isTorsionBySet_annihilator_top](declarations/root-module-istorsionbyset-annihilator-top.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [_root_.Submodule.annihilator_top_inter_nonZeroDivisors](declarations/root-submodule-annihilator-top-inter-nonzerodivisors.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coe_torsion_eq_annihilator_ne_bot](declarations/coe-torsion-eq-annihilator-ne-bot.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [noZeroSMulDivisors_iff_torsion_eq_bot](declarations/nozerosmuldivisors-iff-torsion-eq-bot.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [torsion_int](declarations/torsion-int.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [torsion_eq_bot](declarations/torsion-eq-bot.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [noZeroSMulDivisors](declarations/nozerosmuldivisors.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [isTorsion'_powers_iff](declarations/istorsion-powers-iff.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [pOrder](declarations/porder.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [pow_pOrder_smul](declarations/pow-porder-smul.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [exists_isTorsionBy](declarations/exists-istorsionby.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [torsionBy_eq_span_singleton](declarations/torsionby-eq-span-singleton.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [isTorsion_iff_isTorsion_nat](declarations/istorsion-iff-istorsion-nat.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [isTorsion_iff_isTorsion_int](declarations/istorsion-iff-istorsion-int.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [torsionBy](declarations/torsionby.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [torsionByUnexpander](declarations/torsionbyunexpander.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [torsionBy.neg](declarations/torsionby-neg.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [torsionBy.nsmul](declarations/torsionby-nsmul.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [torsionBy.nsmul_iff](declarations/torsionby-nsmul-iff.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [torsionBy.mod_self_nsmul](declarations/torsionby-mod-self-nsmul-source-edition-2.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [torsionBy.mod_self_nsmul'](declarations/torsionby-mod-self-nsmul.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [torsionBy.zmodModule](declarations/torsionby-zmodmodule.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [infinite_range_add_smul_iff](declarations/infinite-range-add-smul-iff.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [infinite_range_add_nsmul_iff](declarations/infinite-range-add-nsmul-iff.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eee5c1d466300016210c5ac3c322eaa3153ce85096d8d7d2154f3180c2d3514f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
