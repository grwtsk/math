# Graded Monoid Namespaced Smul Mk

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**87 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variantbd6898fa855c22e98ccbc38e6aacedb763e181089ff65de0233052445841e1f1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `334aaf1c85d8c6f3aafd4c60445797d8a3747e94`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoidNamespacedSmulMk.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [GradedMonoid](declarations/gradedmonoid.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mk](declarations/mk.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [fst_smul](declarations/fst-smul.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [snd_smul](declarations/snd-smul.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [smul_mk](declarations/smul-mk.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `class` | [GOne](declarations/gone.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [GOne.toOne](declarations/gone-toone.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fst_one](declarations/fst-one.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [snd_one](declarations/snd-one.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [GMul](declarations/gmul.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [GMul.toMul](declarations/gmul-tomul.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fst_mul](declarations/fst-mul.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [snd_mul](declarations/snd-mul.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mk_mul_mk](declarations/mk-mul-mk.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [gnpowRec](declarations/gnpowrec.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [gnpowRec_zero](declarations/gnpowrec-zero.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gnpowRec_succ](declarations/gnpowrec-succ.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `macro` | [(anonymous)](declarations/macro.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `class` | [GMonoid](declarations/gmonoid.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [GMonoid.toMonoid](declarations/gmonoid-tomonoid.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fst_pow](declarations/fst-pow.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [snd_pow](declarations/snd-pow.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mk_pow](declarations/mk-pow.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `class` | [GCommMonoid](declarations/gcommmonoid.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [GCommMonoid.toCommMonoid](declarations/gcommmonoid-tocommmonoid.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [GradeZero.one](declarations/gradezero-one.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [GradeZero.smul](declarations/gradezero-smul.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [GradeZero.mul](declarations/gradezero-mul.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mk_zero_smul](declarations/mk-zero-smul.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [GradeZero.smul_eq_mul](declarations/gradezero-smul-eq-mul.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mk_zero_pow](declarations/mk-zero-pow.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [GradeZero.monoid](declarations/gradezero-monoid.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [GradeZero.commMonoid](declarations/gradezero-commmonoid.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [mkZeroMonoidHom](declarations/mkzeromonoidhom.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [GradeZero.mulAction](declarations/gradezero-mulaction.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [List.dProdIndex](declarations/list-dprodindex.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [List.dProdIndex_nil](declarations/list-dprodindex-nil.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [List.dProdIndex_cons](declarations/list-dprodindex-cons.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [List.dProdIndex_eq_map_sum](declarations/list-dprodindex-eq-map-sum.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [List.dProd](declarations/list-dprod.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [List.dProd_nil](declarations/list-dprod-nil.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [List.dProd_cons](declarations/list-dprod-cons.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [GradedMonoid.mk_list_dProd](declarations/gradedmonoid-mk-list-dprod.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [GradedMonoid.list_prod_map_eq_dProd](declarations/gradedmonoid-list-prod-map-eq-dprod.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [GradedMonoid.list_prod_ofFn_eq_dProd](declarations/gradedmonoid-list-prod-offn-eq-dprod.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [One.gOne](declarations/one-gone.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [Mul.gMul](declarations/mul-gmul.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [Monoid.gMonoid](declarations/monoid-gmonoid.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [CommMonoid.gCommMonoid](declarations/commmonoid-gcommmonoid.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [List.dProd_monoid](declarations/list-dprod-monoid.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `class` | [SetLike.GradedOne](declarations/setlike-gradedone.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [SetLike.one_mem_graded](declarations/setlike-one-mem-graded.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [SetLike.gOne](declarations/setlike-gone.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [SetLike.coe_gOne](declarations/setlike-coe-gone.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `class` | [SetLike.GradedMul](declarations/setlike-gradedmul.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [SetLike.mul_mem_graded](declarations/setlike-mul-mem-graded.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [SetLike.gMul](declarations/setlike-gmul.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [SetLike.coe_gMul](declarations/setlike-coe-gmul.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `class` | [SetLike.GradedMonoid](declarations/setlike-gradedmonoid.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [submonoid](declarations/submonoid.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [instMonoid](declarations/instmonoid.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [instCommMonoid](declarations/instcommmonoid.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [coe_one](declarations/coe-one.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_mul](declarations/coe-mul.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coe_pow](declarations/coe-pow.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [pow_mem_graded](declarations/pow-mem-graded.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [list_prod_map_mem_graded](declarations/list-prod-map-mem-graded.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [list_prod_ofFn_mem_graded](declarations/list-prod-offn-mem-graded.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [SetLike.gMonoid](declarations/setlike-gmonoid.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [SetLike.coe_gnpow](declarations/setlike-coe-gnpow.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [SetLike.gCommMonoid](declarations/setlike-gcommmonoid.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [SetLike.coe_list_dProd](declarations/setlike-coe-list-dprod.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [SetLike.list_dProd_eq](declarations/setlike-list-dprod-eq.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [SetLike.IsHomogeneousElem](declarations/setlike-ishomogeneouselem.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [SetLike.isHomogeneousElem_coe](declarations/setlike-ishomogeneouselem-coe.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [SetLike.isHomogeneousElem_one](declarations/setlike-ishomogeneouselem-one.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [SetLike.IsHomogeneousElem.mul](declarations/setlike-ishomogeneouselem-mul.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [SetLike.homogeneousSubmonoid](declarations/setlike-homogeneoussubmonoid.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [prod_mem_graded](declarations/prod-mem-graded.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [prod_pow_mem_graded](declarations/prod-pow-mem-graded.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=705c602795724e0d8995a1e8c30d1aafed67eb28ceb81990cb0b341a2f905cdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variantbd6898fa855c22e98ccbc38e6aacedb763e181089ff65de0233052445841e1f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
