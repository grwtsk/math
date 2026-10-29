# Multiplication

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**100 observed declarations and anonymous commands**, 63 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d8d7b1e9e2b43ba261d8f44e77a7b8bf69d90c9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/Multiplication.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coeff_one](declarations/coeff-one.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [single_zero_one](declarations/single-zero-one.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [support_one](declarations/support-one.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [orderTop_one](declarations/ordertop-one.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [order_one](declarations/order-one.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [leadingCoeff_one](declarations/leadingcoeff-one.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [map_one](declarations/map-one.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [HahnModule](declarations/hahnmodule.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [of](declarations/of.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [rec](declarations/rec.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext](declarations/ext.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instBaseSMul](declarations/instbasesmul.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [of_zero](declarations/of-zero.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [of_add](declarations/of-add.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [of_symm_zero](declarations/of-symm-zero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [of_symm_add](declarations/of-symm-add.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instSMul](declarations/instsmul.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instBaseSMulZeroClass](declarations/instbasesmulzeroclass.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [of_smul](declarations/of-smul.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [of_symm_smul](declarations/of-symm-smul.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instSMulZeroClass](declarations/instsmulzeroclass.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coeff_smul_right](declarations/coeff-smul-right.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coeff_smul_left](declarations/coeff-smul-left.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_add](declarations/smul-add.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instDistribSMul](declarations/instdistribsmul.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [add_smul](declarations/add-smul.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coeff_single_smul_vadd](declarations/coeff-single-smul-vadd.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeff_single_zero_smul](declarations/coeff-single-zero-smul.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [single_zero_smul_eq_smul](declarations/single-zero-smul-eq-smul.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [zero_smul'](declarations/zero-smul.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [one_smul'](declarations/one-smul.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [support_smul_subset_vadd_support'](declarations/support-smul-subset-vadd-support-source-edition-2.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [support_smul_subset_vadd_support](declarations/support-smul-subset-vadd-support.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [orderTop_vAdd_le_orderTop_smul](declarations/ordertop-vadd-le-ordertop-smul.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coeff_smul_order_add_order](declarations/coeff-smul-order-add-order.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [of_symm_smul_of_eq_mul](declarations/of-symm-smul-of-eq-mul.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coeff_mul](declarations/coeff-mul.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [map_mul](declarations/map-mul.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coeff_mul_left'](declarations/coeff-mul-left.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coeff_mul_right'](declarations/coeff-mul-right.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coeff_single_mul_add](declarations/coeff-single-mul-add.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coeff_mul_single_add](declarations/coeff-mul-single-add.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coeff_mul_single_zero](declarations/coeff-mul-single-zero.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coeff_single_zero_mul](declarations/coeff-single-zero-mul.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [single_zero_mul_eq_smul](declarations/single-zero-mul-eq-smul.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [support_mul_subset_add_support](declarations/support-mul-subset-add-support.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coeff_mul_order_add_order](declarations/coeff-mul-order-add-order.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [orderTop_add_le_mul](declarations/ordertop-add-le-mul.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [order_mul_of_nonzero](declarations/order-mul-of-nonzero.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [order_single_mul_of_isRegular](declarations/order-single-mul-of-isregular.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mul_assoc'](declarations/mul-assoc.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [orderTop_nsmul_le_orderTop_pow](declarations/ordertop-nsmul-le-ordertop-pow.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mul_smul'](declarations/mul-smul.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [instBaseModule](declarations/instbasemodule.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [instModule](declarations/instmodule.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [SMulCommClass](declarations/smulcommclass.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instNoZeroSMulDivisors](declarations/instnozerosmuldivisors.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [orderTop_add_orderTop_le_orderTop_mul](declarations/ordertop-add-ordertop-le-ordertop-mul.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [order_mul](declarations/order-mul.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [order_pow](declarations/order-pow.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [single_mul_single](declarations/single-mul-single.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [single_pow](declarations/single-pow.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [C](declarations/c.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [C_zero](declarations/c-zero.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [C_one](declarations/c-one.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [map_C](declarations/map-c.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [C_injective](declarations/c-injective.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [C_ne_zero](declarations/c-ne-zero.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [order_C](declarations/order-c.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [C_mul_eq_smul](declarations/c-mul-eq-smul.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [embDomain_mul](declarations/embdomain-mul.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [embDomain_one](declarations/embdomain-one.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [embDomainRingHom](declarations/embdomainringhom.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [embDomainRingHom_C](declarations/embdomainringhom-c.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [C_eq_algebraMap](declarations/c-eq-algebramap.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [embDomainAlgHom](declarations/embdomainalghom.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=386710bbcc514d7b9b88bac43ab8f53149867d5865be0cee506708eb819966a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Multiplication/Variante9a4f50a238184cfc1fa1efe83623ed6e974c29154251ab0ba7ab4555a2e3883.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
