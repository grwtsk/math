# Graded Monoid

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6a6a531f464a5d7c9d0e0bebeec478d0d7dd556`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/GradedMonoid.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [GradedMonoid](declarations/gradedmonoid.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mk](declarations/mk.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [GOne](declarations/gone.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [GOne.toOne](declarations/gone-toone.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [GMul](declarations/gmul.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [GMul.toMul](declarations/gmul-tomul.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mk_mul_mk](declarations/mk-mul-mk.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [gnpowRec](declarations/gnpowrec.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gnpowRec_zero](declarations/gnpowrec-zero.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [gnpowRec_succ](declarations/gnpowrec-succ.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `macro` | [(anonymous)](declarations/macro.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `class` | [GMonoid](declarations/gmonoid.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [GMonoid.toMonoid](declarations/gmonoid-tomonoid.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mk_pow](declarations/mk-pow.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `class` | [GCommMonoid](declarations/gcommmonoid.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [GCommMonoid.toCommMonoid](declarations/gcommmonoid-tocommmonoid.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [GradeZero.one](declarations/gradezero-one.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [GradeZero.smul](declarations/gradezero-smul.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [GradeZero.mul](declarations/gradezero-mul.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mk_zero_smul](declarations/mk-zero-smul.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [GradeZero.smul_eq_mul](declarations/gradezero-smul-eq-mul.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mk_zero_pow](declarations/mk-zero-pow.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [GradeZero.monoid](declarations/gradezero-monoid.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [GradeZero.commMonoid](declarations/gradezero-commmonoid.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mkZeroMonoidHom](declarations/mkzeromonoidhom.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [GradeZero.mulAction](declarations/gradezero-mulaction.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [List.dProdIndex](declarations/list-dprodindex.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [List.dProdIndex_nil](declarations/list-dprodindex-nil.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [List.dProdIndex_cons](declarations/list-dprodindex-cons.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [List.dProdIndex_eq_map_sum](declarations/list-dprodindex-eq-map-sum.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [List.dProd](declarations/list-dprod.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [List.dProd_nil](declarations/list-dprod-nil.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [List.dProd_cons](declarations/list-dprod-cons.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [GradedMonoid.mk_list_dProd](declarations/gradedmonoid-mk-list-dprod.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [GradedMonoid.list_prod_map_eq_dProd](declarations/gradedmonoid-list-prod-map-eq-dprod.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [GradedMonoid.list_prod_ofFn_eq_dProd](declarations/gradedmonoid-list-prod-offn-eq-dprod.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [One.gOne](declarations/one-gone.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [Mul.gMul](declarations/mul-gmul.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [Monoid.gMonoid](declarations/monoid-gmonoid.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [CommMonoid.gCommMonoid](declarations/commmonoid-gcommmonoid.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [List.dProd_monoid](declarations/list-dprod-monoid.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `class` | [SetLike.GradedOne](declarations/setlike-gradedone.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [SetLike.one_mem_graded](declarations/setlike-one-mem-graded.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [SetLike.gOne](declarations/setlike-gone.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [SetLike.coe_gOne](declarations/setlike-coe-gone.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `class` | [SetLike.GradedMul](declarations/setlike-gradedmul.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [SetLike.mul_mem_graded](declarations/setlike-mul-mem-graded.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [SetLike.gMul](declarations/setlike-gmul.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [SetLike.coe_gMul](declarations/setlike-coe-gmul.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `class` | [SetLike.GradedMonoid](declarations/setlike-gradedmonoid.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [pow_mem_graded](declarations/pow-mem-graded.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [list_prod_map_mem_graded](declarations/list-prod-map-mem-graded.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [list_prod_ofFn_mem_graded](declarations/list-prod-offn-mem-graded.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [SetLike.gMonoid](declarations/setlike-gmonoid.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [SetLike.coe_gnpow](declarations/setlike-coe-gnpow.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [SetLike.gCommMonoid](declarations/setlike-gcommmonoid.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [SetLike.coe_list_dProd](declarations/setlike-coe-list-dprod.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [SetLike.list_dProd_eq](declarations/setlike-list-dprod-eq.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [SetLike.Homogeneous](declarations/setlike-homogeneous.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [SetLike.homogeneous_coe](declarations/setlike-homogeneous-coe.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [SetLike.homogeneous_one](declarations/setlike-homogeneous-one.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [SetLike.homogeneous_mul](declarations/setlike-homogeneous-mul.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [SetLike.homogeneousSubmonoid](declarations/setlike-homogeneoussubmonoid.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34f7a045a2316b1434b0d0f0d6d0f3281bfcc95ba1ac414963fcceb05e6e1daa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
