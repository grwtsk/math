# Data Mv Polynomial Variables

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**85 observed declarations and anonymous commands**, 81 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Variables/Variantc2c97a636948ac0861b7c0ee1f73218232feb316d47276dbcc0b35b3d747e095.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8d2bf97934cef49c8e2a3d9c27c7e63c940d2ca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DataMvPolynomialVariables.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [degrees](declarations/degrees.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [degrees_def](declarations/degrees-def.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [degrees_monomial](declarations/degrees-monomial.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [degrees_monomial_eq](declarations/degrees-monomial-eq.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [degrees_C](declarations/degrees-c.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [degrees_X'](declarations/degrees-x.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [degrees_X](declarations/degrees-x-source-edition-2.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [degrees_zero](declarations/degrees-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [degrees_one](declarations/degrees-one.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [degrees_add](declarations/degrees-add.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [degrees_sum](declarations/degrees-sum.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [degrees_mul](declarations/degrees-mul.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [degrees_prod](declarations/degrees-prod.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [degrees_pow](declarations/degrees-pow.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_degrees](declarations/mem-degrees.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [le_degrees_add](declarations/le-degrees-add.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [degrees_add_of_disjoint](declarations/degrees-add-of-disjoint.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [degrees_map](declarations/degrees-map.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [degrees_rename](declarations/degrees-rename.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [degrees_map_of_injective](declarations/degrees-map-of-injective.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [degrees_rename_of_injective](declarations/degrees-rename-of-injective.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [vars](declarations/vars.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [vars_def](declarations/vars-def.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [vars_0](declarations/vars-0.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vars_monomial](declarations/vars-monomial.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vars_C](declarations/vars-c.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [vars_X](declarations/vars-x.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_vars](declarations/mem-vars.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mem_support_not_mem_vars_zero](declarations/mem-support-not-mem-vars-zero.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [vars_add_subset](declarations/vars-add-subset.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [vars_add_of_disjoint](declarations/vars-add-of-disjoint.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [vars_mul](declarations/vars-mul.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [vars_one](declarations/vars-one.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [vars_pow](declarations/vars-pow.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [vars_prod](declarations/vars-prod.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [vars_C_mul](declarations/vars-c-mul.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [vars_sum_subset](declarations/vars-sum-subset.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [vars_sum_of_disjoint](declarations/vars-sum-of-disjoint.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [vars_map](declarations/vars-map.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [vars_map_of_injective](declarations/vars-map-of-injective.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [vars_monomial_single](declarations/vars-monomial-single.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [vars_eq_support_biUnion_support](declarations/vars-eq-support-biunion-support.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [degreeOf](declarations/degreeof.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [degreeOf_def](declarations/degreeof-def.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [degreeOf_eq_sup](declarations/degreeof-eq-sup.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [degreeOf_lt_iff](declarations/degreeof-lt-iff.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [degreeOf_zero](declarations/degreeof-zero.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [degreeOf_C](declarations/degreeof-c.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [degreeOf_X](declarations/degreeof-x.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [degreeOf_add_le](declarations/degreeof-add-le.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [monomial_le_degreeOf](declarations/monomial-le-degreeof.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [degreeOf_mul_le](declarations/degreeof-mul-le.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [degreeOf_mul_X_ne](declarations/degreeof-mul-x-ne.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [degreeOf_mul_X_eq](declarations/degreeof-mul-x-eq.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [degreeOf_rename_of_injective](declarations/degreeof-rename-of-injective.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [totalDegree](declarations/totaldegree.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [totalDegree_eq](declarations/totaldegree-eq.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [le_totalDegree](declarations/le-totaldegree.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [totalDegree_le_degrees_card](declarations/totaldegree-le-degrees-card.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [totalDegree_C](declarations/totaldegree-c.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [totalDegree_zero](declarations/totaldegree-zero.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [totalDegree_one](declarations/totaldegree-one.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [totalDegree_X](declarations/totaldegree-x.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [totalDegree_add](declarations/totaldegree-add.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [totalDegree_add_eq_left_of_totalDegree_lt](declarations/totaldegree-add-eq-left-of-totaldegree-lt.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [totalDegree_add_eq_right_of_totalDegree_lt](declarations/totaldegree-add-eq-right-of-totaldegree-lt.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [totalDegree_mul](declarations/totaldegree-mul.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [totalDegree_smul_le](declarations/totaldegree-smul-le.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [totalDegree_pow](declarations/totaldegree-pow.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [totalDegree_monomial](declarations/totaldegree-monomial.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [totalDegree_X_pow](declarations/totaldegree-x-pow.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [totalDegree_list_prod](declarations/totaldegree-list-prod.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [totalDegree_multiset_prod](declarations/totaldegree-multiset-prod.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [totalDegree_finset_prod](declarations/totaldegree-finset-prod.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [totalDegree_finset_sum](declarations/totaldegree-finset-sum.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [exists_degree_lt](declarations/exists-degree-lt.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coeff_eq_zero_of_totalDegree_lt](declarations/coeff-eq-zero-of-totaldegree-lt.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [totalDegree_rename_le](declarations/totaldegree-rename-le.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [eval₂Hom_eq_constantCoeff_of_vars](declarations/eval-hom-eq-constantcoeff-of-vars.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [aeval_eq_constantCoeff_of_vars](declarations/aeval-eq-constantcoeff-of-vars.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [eval₂Hom_congr'](declarations/eval-hom-congr.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [hom_congr_vars](declarations/hom-congr-vars.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [exists_rename_eq_of_vars_subset_range](declarations/exists-rename-eq-of-vars-subset-range.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [vars_rename](declarations/vars-rename.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [mem_vars_rename](declarations/mem-vars-rename.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41b2a5035cf45cf417d133bba0ffe65a82d9892b24ec0602ea0c413bf8e73dd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Variables/Variantc2c97a636948ac0861b7c0ee1f73218232feb316d47276dbcc0b35b3d747e095.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
