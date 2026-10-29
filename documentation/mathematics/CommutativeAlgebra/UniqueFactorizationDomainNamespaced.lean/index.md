# Unique Factorization Domain Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**175 observed declarations and anonymous commands**, 150 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf401250dde34a934d25e304e587c93dabbe5bfd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/UniqueFactorizationDomainNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [WfDvdMonoid](declarations/wfdvdmonoid.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [of_wfDvdMonoid_associates](declarations/of-wfdvdmonoid-associates.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [wfDvdMonoid_associates](declarations/wfdvdmonoid-associates.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [wellFounded_associates](declarations/wellfounded-associates.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exists_irreducible_factor](declarations/exists-irreducible-factor.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [induction_on_irreducible](declarations/induction-on-irreducible.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exists_factors](declarations/exists-factors.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_unit_iff_exists_factors_eq](declarations/not-unit-iff-exists-factors-eq.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [WfDvdMonoid.of_wellFounded_associates](declarations/wfdvdmonoid-of-wellfounded-associates.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [WfDvdMonoid.iff_wellFounded_associates](declarations/wfdvdmonoid-iff-wellfounded-associates.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [UniqueFactorizationMonoid](declarations/uniquefactorizationmonoid.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ufm_of_gcd_of_wfDvdMonoid](declarations/ufm-of-gcd-of-wfdvdmonoid.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [Associates.ufm](declarations/associates-ufm.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_prime_factors](declarations/exists-prime-factors.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [induction_on_prime](declarations/induction-on-prime.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [prime_factors_unique](declarations/prime-factors-unique.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [factors_unique](declarations/factors-unique.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [prime_factors_irreducible](declarations/prime-factors-irreducible.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [WfDvdMonoid.of_exists_prime_factors](declarations/wfdvdmonoid-of-exists-prime-factors.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [irreducible_iff_prime_of_exists_prime_factors](declarations/irreducible-iff-prime-of-exists-prime-factors.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [UniqueFactorizationMonoid.of_exists_prime_factors](declarations/uniquefactorizationmonoid-of-exists-prime-factors.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [UniqueFactorizationMonoid.iff_exists_prime_factors](declarations/uniquefactorizationmonoid-iff-exists-prime-factors.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [MulEquiv.uniqueFactorizationMonoid](declarations/mulequiv-uniquefactorizationmonoid.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [MulEquiv.uniqueFactorizationMonoid_iff](declarations/mulequiv-uniquefactorizationmonoid-iff.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [irreducible_iff_prime_of_exists_unique_irreducible_factors](declarations/irreducible-iff-prime-of-exists-unique-irreducible-factors.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [UniqueFactorizationMonoid.of_exists_unique_irreducible_factors](declarations/uniquefactorizationmonoid-of-exists-unique-irreducible-factors.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [factors](declarations/factors.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [factors_prod](declarations/factors-prod.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ne_zero_of_mem_factors](declarations/ne-zero-of-mem-factors.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dvd_of_mem_factors](declarations/dvd-of-mem-factors-source-edition-2.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [prime_of_factor](declarations/prime-of-factor.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [irreducible_of_factor](declarations/irreducible-of-factor.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [factors_zero](declarations/factors-zero.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [factors_one](declarations/factors-one.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_mem_factors_of_dvd](declarations/exists-mem-factors-of-dvd.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [exists_mem_factors](declarations/exists-mem-factors.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [factors_mul](declarations/factors-mul.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [factors_pow](declarations/factors-pow.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [factors_pos](declarations/factors-pos.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [normalizedFactors](declarations/normalizedfactors.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [factors_eq_normalizedFactors](declarations/factors-eq-normalizedfactors.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [normalizedFactors_prod](declarations/normalizedfactors-prod.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [prime_of_normalized_factor](declarations/prime-of-normalized-factor.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [irreducible_of_normalized_factor](declarations/irreducible-of-normalized-factor.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [normalize_normalized_factor](declarations/normalize-normalized-factor.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [normalizedFactors_irreducible](declarations/normalizedfactors-irreducible.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [normalizedFactors_eq_of_dvd](declarations/normalizedfactors-eq-of-dvd.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [exists_mem_normalizedFactors_of_dvd](declarations/exists-mem-normalizedfactors-of-dvd.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [exists_mem_normalizedFactors](declarations/exists-mem-normalizedfactors.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [normalizedFactors_zero](declarations/normalizedfactors-zero.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [normalizedFactors_one](declarations/normalizedfactors-one.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [normalizedFactors_mul](declarations/normalizedfactors-mul.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [normalizedFactors_pow](declarations/normalizedfactors-pow.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Unique Factorization Domain Namespaced](declarations/normalizedfactors-pow-source-line-705-occurrence-2.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [normalizedFactors_prod_eq](declarations/normalizedfactors-prod-eq.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [dvd_iff_normalizedFactors_le_normalizedFactors](declarations/dvd-iff-normalizedfactors-le-normalizedfactors.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [associated_iff_normalizedFactors_eq_normalizedFactors](declarations/associated-iff-normalizedfactors-eq-normalizedfactors.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [normalizedFactors_of_irreducible_pow](declarations/normalizedfactors-of-irreducible-pow.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [zero_not_mem_normalizedFactors](declarations/zero-not-mem-normalizedfactors.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [dvd_of_mem_normalizedFactors](declarations/dvd-of-mem-normalizedfactors.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [exists_associated_prime_pow_of_unique_normalized_factor](declarations/exists-associated-prime-pow-of-unique-normalized-factor.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [normalizedFactors_prod_of_prime](declarations/normalizedfactors-prod-of-prime.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mem_normalizedFactors_eq_of_associated](declarations/mem-normalizedfactors-eq-of-associated.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [normalizedFactors_pos](declarations/normalizedfactors-pos.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [dvdNotUnit_iff_normalizedFactors_lt_normalizedFactors](declarations/dvdnotunit-iff-normalizedfactors-lt-normalizedfactors.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [normalizationMonoid](declarations/normalizationmonoid.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [no_factors_of_no_prime_factors](declarations/no-factors-of-no-prime-factors.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [dvd_of_dvd_mul_left_of_no_prime_factors](declarations/dvd-of-dvd-mul-left-of-no-prime-factors.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [dvd_of_dvd_mul_right_of_no_prime_factors](declarations/dvd-of-dvd-mul-right-of-no-prime-factors.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [exists_reduced_factors](declarations/exists-reduced-factors.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [exists_reduced_factors'](declarations/exists-reduced-factors-source-edition-2.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [pow_right_injective](declarations/pow-right-injective.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [pow_eq_pow_iff](declarations/pow-eq-pow-iff.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [le_multiplicity_iff_replicate_le_normalizedFactors](declarations/le-multiplicity-iff-replicate-le-normalizedfactors.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [multiplicity_eq_count_normalizedFactors](declarations/multiplicity-eq-count-normalizedfactors.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [count_normalizedFactors_eq](declarations/count-normalizedfactors-eq-source-edition-2.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [count_normalizedFactors_eq'](declarations/count-normalizedfactors-eq.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [max_power_factor](declarations/max-power-factor.md) | 1032 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [prime_pow_coprime_prod_of_coprime_insert](declarations/prime-pow-coprime-prod-of-coprime-insert.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [induction_on_prime_power](declarations/induction-on-prime-power.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [induction_on_coprime](declarations/induction-on-coprime.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [multiplicative_prime_power](declarations/multiplicative-prime-power.md) | 1118 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [multiplicative_of_coprime](declarations/multiplicative-of-coprime.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [FactorSet.](declarations/factorset.md) | 1210 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [FactorSet.coe_add](declarations/factorset-coe-add.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [FactorSet.sup_add_inf_eq_add](declarations/factorset-sup-add-inf-eq-add.md) | 1220 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [FactorSet.prod](declarations/factorset-prod.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [prod_top](declarations/prod-top.md) | 1239 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [prod_coe](declarations/prod-coe.md) | 1244 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [prod_add](declarations/prod-add.md) | 1250 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [prod_mono](declarations/prod-mono.md) | 1259 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [FactorSet.prod_eq_zero_iff](declarations/factorset-prod-eq-zero-iff.md) | 1267 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [bcount](declarations/bcount.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [count](declarations/count.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [count_some](declarations/count-some.md) | 1292 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [count_zero](declarations/count-zero.md) | 1300 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [count_reducible](declarations/count-reducible.md) | 1307 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [BfactorSetMem](declarations/bfactorsetmem.md) | 1313 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [FactorSetMem](declarations/factorsetmem.md) | 1322 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1326 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [factorSetMem_eq_mem](declarations/factorsetmem-eq-mem.md) | 1330 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mem_factorSet_top](declarations/mem-factorset-top.md) | 1334 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mem_factorSet_some](declarations/mem-factorset-some.md) | 1338 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [reducible_not_mem_factorSet](declarations/reducible-not-mem-factorset.md) | 1344 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [unique'](declarations/unique.md) | 1351 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [FactorSet.unique](declarations/factorset-unique.md) | 1363 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [prod_le_prod_iff_le](declarations/prod-le-prod-iff-le.md) | 1376 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [factors'](declarations/factors-source-edition-2.md) | 1398 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [map_subtype_coe_factors'](declarations/map-subtype-coe-factors.md) | 1403 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [factors'_cong](declarations/factors-cong.md) | 1408 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [factors](declarations/factors-source-edition-3.md) | 1425 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [factors_0](declarations/factors-0.md) | 1436 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [factors_mk](declarations/factors-mk.md) | 1441 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [factors_prod](declarations/factors-prod-source-edition-2.md) | 1448 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [prod_factors](declarations/prod-factors.md) | 1457 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [factors_subsingleton](declarations/factors-subsingleton.md) | 1462 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [factors_eq_none_iff_zero](declarations/factors-eq-none-iff-zero.md) | 1466 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [factors_eq_some_iff_ne_zero](declarations/factors-eq-some-iff-ne-zero.md) | 1472 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [eq_of_factors_eq_factors](declarations/eq-of-factors-eq-factors.md) | 1478 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [eq_of_prod_eq_prod](declarations/eq-of-prod-eq-prod.md) | 1483 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [eq_factors_of_eq_counts](declarations/eq-factors-of-eq-counts.md) | 1489 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [eq_of_eq_counts](declarations/eq-of-eq-counts.md) | 1505 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [count_le_count_of_factors_le](declarations/count-le-count-of-factors-le.md) | 1510 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [factors_mul](declarations/factors-mul-source-edition-2.md) | 1522 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [factors_mono](declarations/factors-mono.md) | 1529 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [factors_le](declarations/factors-le.md) | 1533 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [count_le_count_of_le](declarations/count-le-count-of-le.md) | 1541 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [prod_le](declarations/prod-le.md) | 1546 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `instance` | [(anonymous)](declarations/instance.md) | 1556 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1559 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1562 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [sup_mul_inf](declarations/sup-mul-inf.md) | 1576 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [dvd_of_mem_factors](declarations/dvd-of-mem-factors.md) | 1583 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [dvd_of_mem_factors'](declarations/dvd-of-mem-factors-source-edition-3.md) | 1596 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [mem_factors'_of_dvd](declarations/mem-factors-of-dvd.md) | 1605 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [mem_factors'_iff_dvd](declarations/mem-factors-iff-dvd-source-edition-2.md) | 1612 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [mem_factors_of_dvd](declarations/mem-factors-of-dvd-source-edition-2.md) | 1621 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [mem_factors_iff_dvd](declarations/mem-factors-iff-dvd.md) | 1627 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [exists_prime_dvd_of_not_inf_one](declarations/exists-prime-dvd-of-not-inf-one.md) | 1636 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [coprime_iff_inf_one](declarations/coprime-iff-inf-one.md) | 1658 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [factors_self](declarations/factors-self.md) | 1671 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [factors_prime_pow](declarations/factors-prime-pow.md) | 1677 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [prime_pow_dvd_iff_le](declarations/prime-pow-dvd-iff-le.md) | 1685 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [le_of_count_ne_zero](declarations/le-of-count-ne-zero.md) | 1693 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [count_ne_zero_iff_dvd](declarations/count-ne-zero-iff-dvd.md) | 1703 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [count_self](declarations/count-self.md) | 1718 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [count_eq_zero_of_ne](declarations/count-eq-zero-of-ne.md) | 1722 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [count_mul](declarations/count-mul.md) | 1732 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [count_of_coprime](declarations/count-of-coprime.md) | 1741 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [count_mul_of_coprime](declarations/count-mul-of-coprime.md) | 1751 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [count_mul_of_coprime'](declarations/count-mul-of-coprime-source-edition-2.md) | 1761 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [dvd_count_of_dvd_count_mul](declarations/dvd-count-of-dvd-count-mul.md) | 1776 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [factors_one](declarations/factors-one-source-edition-2.md) | 1789 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [pow_factors](declarations/pow-factors.md) | 1796 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [count_pow](declarations/count-pow.md) | 1804 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [dvd_count_pow](declarations/dvd-count-pow.md) | 1812 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [is_pow_of_dvd_count](declarations/is-pow-of-dvd-count.md) | 1818 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [eq_pow_count_factors_of_dvd_pow](declarations/eq-pow-count-factors-of-dvd-pow.md) | 1837 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [count_factors_eq_find_of_dvd_pow](declarations/count-factors-eq-find-of-dvd-pow.md) | 1855 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [eq_pow_of_mul_eq_pow](declarations/eq-pow-of-mul-eq-pow.md) | 1870 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [eq_pow_find_of_dvd_irreducible_pow](declarations/eq-pow-find-of-dvd-irreducible-pow.md) | 1889 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [Associates.quot_out](declarations/associates-quot-out.md) | 1902 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [UniqueFactorizationMonoid.toGCDMonoid](declarations/uniquefactorizationmonoid-togcdmonoid.md) | 1907 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [UniqueFactorizationMonoid.toNormalizedGCDMonoid](declarations/uniquefactorizationmonoid-tonormalizedgcdmonoid.md) | 1938 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [fintypeSubtypeDvd](declarations/fintypesubtypedvd.md) | 1966 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `def` | [factorization](declarations/factorization.md) | 2007 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [factorization_eq_count](declarations/factorization-eq-count.md) | 2011 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [factorization_zero](declarations/factorization-zero.md) | 2016 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [factorization_one](declarations/factorization-one.md) | 2020 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [support_factorization](declarations/support-factorization.md) | 2025 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [factorization_mul](declarations/factorization-mul.md) | 2032 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [factorization_pow](declarations/factorization-pow.md) | 2038 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [associated_of_factorization_eq](declarations/associated-of-factorization-eq.md) | 2043 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f46f87a43fb4b545f77956d1851bf0c4fa6e255f29859b1df2c8b8166ac3db7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
