# GCDMonoid Basic Namespaced Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**134 observed declarations and anonymous commands**, 110 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b15b0f65dc1f492d95ba656e345e1f0189d72f5a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicNamespacedSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NormalizationMonoid](declarations/normalizationmonoid.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [normUnit_one](declarations/normunit-one.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [normalize](declarations/normalize.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [associated_normalize](declarations/associated-normalize.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [normalize_associated](declarations/normalize-associated.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [associated_normalize_iff](declarations/associated-normalize-iff.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [normalize_associated_iff](declarations/normalize-associated-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Associates.mk_normalize](declarations/associates-mk-normalize.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalize_apply](declarations/normalize-apply.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normalize_zero](declarations/normalize-zero.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalize_one](declarations/normalize-one.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normalize_coe_units](declarations/normalize-coe-units.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [normalize_eq_zero](declarations/normalize-eq-zero.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalize_eq_one](declarations/normalize-eq-one.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normUnit_mul_normUnit](declarations/normunit-mul-normunit.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [normalize_idem](declarations/normalize-idem.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalize_eq_normalize](declarations/normalize-eq-normalize.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalize_eq_normalize_iff](declarations/normalize-eq-normalize-iff.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [dvd_antisymm_of_normalize_eq](declarations/dvd-antisymm-of-normalize-eq.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dvd_normalize_iff](declarations/dvd-normalize-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [normalize_dvd_iff](declarations/normalize-dvd-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [out](declarations/out.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [out_mk](declarations/out-mk.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [out_one](declarations/out-one.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [out_mul](declarations/out-mul.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dvd_out_iff](declarations/dvd-out-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [out_dvd_iff](declarations/out-dvd-iff.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [out_top](declarations/out-top.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [normalize_out](declarations/normalize-out.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mk_out](declarations/mk-out.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [out_injective](declarations/out-injective.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `class` | [GCDMonoid](declarations/gcdmonoid.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `class` | [NormalizedGCDMonoid](declarations/normalizedgcdmonoid.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [normalize_gcd](declarations/normalize-gcd.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_mul_lcm](declarations/gcd-mul-lcm.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [dvd_gcd_iff](declarations/dvd-gcd-iff.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [gcd_comm](declarations/gcd-comm-source-edition-2.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_comm'](declarations/gcd-comm.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [gcd_assoc](declarations/gcd-assoc.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [gcd_assoc'](declarations/gcd-assoc-source-edition-2.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [gcd_eq_normalize](declarations/gcd-eq-normalize.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [gcd_zero_left](declarations/gcd-zero-left.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_zero_left'](declarations/gcd-zero-left-source-edition-2.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [gcd_zero_right](declarations/gcd-zero-right.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [gcd_zero_right'](declarations/gcd-zero-right-source-edition-2.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [gcd_eq_zero_iff](declarations/gcd-eq-zero-iff.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [gcd_one_left](declarations/gcd-one-left.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [gcd_one_left'](declarations/gcd-one-left-source-edition-2.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [gcd_one_right](declarations/gcd-one-right.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [gcd_one_right'](declarations/gcd-one-right-source-edition-2.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [gcd_dvd_gcd](declarations/gcd-dvd-gcd.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [gcd_same](declarations/gcd-same.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gcd_mul_left](declarations/gcd-mul-left-source-edition-2.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [gcd_mul_left'](declarations/gcd-mul-left.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [gcd_mul_right](declarations/gcd-mul-right-source-edition-2.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [gcd_mul_right'](declarations/gcd-mul-right.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [gcd_eq_left_iff](declarations/gcd-eq-left-iff.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [gcd_eq_right_iff](declarations/gcd-eq-right-iff.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [gcd_dvd_gcd_mul_left](declarations/gcd-dvd-gcd-mul-left.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [gcd_dvd_gcd_mul_right](declarations/gcd-dvd-gcd-mul-right.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [gcd_dvd_gcd_mul_left_right](declarations/gcd-dvd-gcd-mul-left-right.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [gcd_dvd_gcd_mul_right_right](declarations/gcd-dvd-gcd-mul-right-right.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Associated.gcd_eq_left](declarations/associated-gcd-eq-left.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Associated.gcd_eq_right](declarations/associated-gcd-eq-right.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [dvd_gcd_mul_of_dvd_mul](declarations/dvd-gcd-mul-of-dvd-mul.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [dvd_mul_gcd_of_dvd_mul](declarations/dvd-mul-gcd-of-dvd-mul.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [exists_dvd_and_dvd_of_dvd_mul](declarations/exists-dvd-and-dvd-of-dvd-mul.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [dvd_mul](declarations/dvd-mul.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [gcd_mul_dvd_mul_gcd](declarations/gcd-mul-dvd-mul-gcd.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [gcd_pow_right_dvd_pow_gcd](declarations/gcd-pow-right-dvd-pow-gcd.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [gcd_pow_left_dvd_pow_gcd](declarations/gcd-pow-left-dvd-pow-gcd.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [pow_dvd_of_mul_eq_pow](declarations/pow-dvd-of-mul-eq-pow.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [exists_associated_pow_of_mul_eq_pow](declarations/exists-associated-pow-of-mul-eq-pow.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [exists_eq_pow_of_mul_eq_pow](declarations/exists-eq-pow-of-mul-eq-pow.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [gcd_greatest](declarations/gcd-greatest.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [gcd_greatest_associated](declarations/gcd-greatest-associated.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [isUnit_gcd_of_eq_mul_gcd](declarations/isunit-gcd-of-eq-mul-gcd.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [extract_gcd](declarations/extract-gcd.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [lcm_dvd_iff](declarations/lcm-dvd-iff.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [dvd_lcm_left](declarations/dvd-lcm-left.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [dvd_lcm_right](declarations/dvd-lcm-right.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lcm_dvd](declarations/lcm-dvd.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lcm_eq_zero_iff](declarations/lcm-eq-zero-iff.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [normalize_lcm](declarations/normalize-lcm.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [lcm_comm](declarations/lcm-comm.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [lcm_comm'](declarations/lcm-comm-source-edition-2.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [lcm_assoc](declarations/lcm-assoc-source-edition-2.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [lcm_assoc'](declarations/lcm-assoc.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [lcm_eq_normalize](declarations/lcm-eq-normalize.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [lcm_dvd_lcm](declarations/lcm-dvd-lcm.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [lcm_units_coe_left](declarations/lcm-units-coe-left.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [lcm_units_coe_right](declarations/lcm-units-coe-right.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lcm_one_left](declarations/lcm-one-left.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lcm_one_right](declarations/lcm-one-right.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [lcm_same](declarations/lcm-same.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lcm_eq_one_iff](declarations/lcm-eq-one-iff.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [lcm_mul_left](declarations/lcm-mul-left.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [lcm_mul_right](declarations/lcm-mul-right.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [lcm_eq_left_iff](declarations/lcm-eq-left-iff.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [lcm_eq_right_iff](declarations/lcm-eq-right-iff.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [lcm_dvd_lcm_mul_left](declarations/lcm-dvd-lcm-mul-left.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [lcm_dvd_lcm_mul_right](declarations/lcm-dvd-lcm-mul-right.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lcm_dvd_lcm_mul_left_right](declarations/lcm-dvd-lcm-mul-left-right.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [lcm_dvd_lcm_mul_right_right](declarations/lcm-dvd-lcm-mul-right-right.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [lcm_eq_of_associated_left](declarations/lcm-eq-of-associated-left.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [lcm_eq_of_associated_right](declarations/lcm-eq-of-associated-right.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [prime_of_irreducible](declarations/prime-of-irreducible.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [irreducible_iff_prime](declarations/irreducible-iff-prime.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [uniqueNormalizationMonoidOfUniqueUnits](declarations/uniquenormalizationmonoidofuniqueunits.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [subsingleton_gcdMonoid_of_unique_units](declarations/subsingleton-gcdmonoid-of-unique-units.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [subsingleton_normalizedGCDMonoid_of_unique_units](declarations/subsingleton-normalizedgcdmonoid-of-unique-units.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [normUnit_eq_one](declarations/normunit-eq-one.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [normalize_eq](declarations/normalize-eq.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [associatesEquivOfUniqueUnits](declarations/associatesequivofuniqueunits.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [gcd_eq_of_dvd_sub_right](declarations/gcd-eq-of-dvd-sub-right.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [gcd_eq_of_dvd_sub_left](declarations/gcd-eq-of-dvd-sub-left.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [map_mk_unit_aux](declarations/map-mk-unit-aux.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [normalizationMonoidOfMonoidHomRightInverse](declarations/normalizationmonoidofmonoidhomrightinverse.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [gcdMonoidOfGCD](declarations/gcdmonoidofgcd.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [normalizedGCDMonoidOfGCD](declarations/normalizedgcdmonoidofgcd.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [gcdMonoidOfLCM](declarations/gcdmonoidoflcm.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [normalizedGCDMonoidOfLCM](declarations/normalizedgcdmonoidoflcm.md) | 1219 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [gcdMonoidOfExistsGCD](declarations/gcdmonoidofexistsgcd.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [normalizedGCDMonoidOfExistsGCD](declarations/normalizedgcdmonoidofexistsgcd.md) | 1324 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [gcdMonoidOfExistsLCM](declarations/gcdmonoidofexistslcm.md) | 1336 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [normalizedGCDMonoidOfExistsLCM](declarations/normalizedgcdmonoidofexistslcm.md) | 1345 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1364 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [coe_normUnit](declarations/coe-normunit.md) | 1424 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [normalize_eq_one](declarations/normalize-eq-one-source-edition-2.md) | 1427 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b5d98c79f36e93d198bd5e2d3ac23cdd9395fc03f67a9cf67f355add9422d20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variante012a06d903be3a586b74e57ac2948761b3c2a7ebd3d3541989717fb776154f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
