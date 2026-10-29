# GCDMonoid Basic Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**134 observed declarations and anonymous commands**, 110 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d4da1132cb4c4293d9b9a11b5c082de3e539316`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/GCDMonoidBasicSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NormalizationMonoid](declarations/normalizationmonoid.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [normUnit_one](declarations/normunit-one.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [normalize](declarations/normalize.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [associated_normalize](declarations/associated-normalize.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [normalize_associated](declarations/normalize-associated.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [associated_normalize_iff](declarations/associated-normalize-iff.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [normalize_associated_iff](declarations/normalize-associated-iff.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Associates.mk_normalize](declarations/associates-mk-normalize.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalize_apply](declarations/normalize-apply.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normalize_zero](declarations/normalize-zero.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalize_one](declarations/normalize-one.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normalize_coe_units](declarations/normalize-coe-units.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [normalize_eq_zero](declarations/normalize-eq-zero.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalize_eq_one](declarations/normalize-eq-one-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normUnit_mul_normUnit](declarations/normunit-mul-normunit.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [normalize_idem](declarations/normalize-idem.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalize_eq_normalize](declarations/normalize-eq-normalize.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalize_eq_normalize_iff](declarations/normalize-eq-normalize-iff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [dvd_antisymm_of_normalize_eq](declarations/dvd-antisymm-of-normalize-eq.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dvd_normalize_iff](declarations/dvd-normalize-iff.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [normalize_dvd_iff](declarations/normalize-dvd-iff.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [out](declarations/out.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [out_mk](declarations/out-mk.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [out_one](declarations/out-one.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [out_mul](declarations/out-mul.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dvd_out_iff](declarations/dvd-out-iff.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [out_dvd_iff](declarations/out-dvd-iff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [out_top](declarations/out-top.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [normalize_out](declarations/normalize-out.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mk_out](declarations/mk-out.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [out_injective](declarations/out-injective.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `class` | [GCDMonoid](declarations/gcdmonoid.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `class` | [NormalizedGCDMonoid](declarations/normalizedgcdmonoid.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [normalize_gcd](declarations/normalize-gcd.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_mul_lcm](declarations/gcd-mul-lcm.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [dvd_gcd_iff](declarations/dvd-gcd-iff.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [gcd_comm](declarations/gcd-comm-source-edition-2.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_comm'](declarations/gcd-comm.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [gcd_assoc](declarations/gcd-assoc-source-edition-2.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [gcd_assoc'](declarations/gcd-assoc.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [gcd_eq_normalize](declarations/gcd-eq-normalize.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [gcd_zero_left](declarations/gcd-zero-left-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_zero_left'](declarations/gcd-zero-left.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [gcd_zero_right](declarations/gcd-zero-right.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [gcd_zero_right'](declarations/gcd-zero-right-source-edition-2.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [gcd_eq_zero_iff](declarations/gcd-eq-zero-iff.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [gcd_one_left](declarations/gcd-one-left-source-edition-2.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [gcd_one_left'](declarations/gcd-one-left.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [gcd_one_right](declarations/gcd-one-right-source-edition-2.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [gcd_one_right'](declarations/gcd-one-right.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [gcd_dvd_gcd](declarations/gcd-dvd-gcd.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [gcd_same](declarations/gcd-same.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gcd_mul_left](declarations/gcd-mul-left.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [gcd_mul_left'](declarations/gcd-mul-left-source-edition-2.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [gcd_mul_right](declarations/gcd-mul-right.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [gcd_mul_right'](declarations/gcd-mul-right-source-edition-2.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [gcd_eq_left_iff](declarations/gcd-eq-left-iff.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [gcd_eq_right_iff](declarations/gcd-eq-right-iff.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [gcd_dvd_gcd_mul_left](declarations/gcd-dvd-gcd-mul-left.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [gcd_dvd_gcd_mul_right](declarations/gcd-dvd-gcd-mul-right.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [gcd_dvd_gcd_mul_left_right](declarations/gcd-dvd-gcd-mul-left-right.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [gcd_dvd_gcd_mul_right_right](declarations/gcd-dvd-gcd-mul-right-right.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Associated.gcd_eq_left](declarations/associated-gcd-eq-left.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Associated.gcd_eq_right](declarations/associated-gcd-eq-right.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [dvd_gcd_mul_of_dvd_mul](declarations/dvd-gcd-mul-of-dvd-mul.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [dvd_mul_gcd_of_dvd_mul](declarations/dvd-mul-gcd-of-dvd-mul.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [exists_dvd_and_dvd_of_dvd_mul](declarations/exists-dvd-and-dvd-of-dvd-mul.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [dvd_mul](declarations/dvd-mul.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [gcd_mul_dvd_mul_gcd](declarations/gcd-mul-dvd-mul-gcd.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [gcd_pow_right_dvd_pow_gcd](declarations/gcd-pow-right-dvd-pow-gcd.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [gcd_pow_left_dvd_pow_gcd](declarations/gcd-pow-left-dvd-pow-gcd.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [pow_dvd_of_mul_eq_pow](declarations/pow-dvd-of-mul-eq-pow.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [exists_associated_pow_of_mul_eq_pow](declarations/exists-associated-pow-of-mul-eq-pow.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [exists_eq_pow_of_mul_eq_pow](declarations/exists-eq-pow-of-mul-eq-pow.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [gcd_greatest](declarations/gcd-greatest.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [gcd_greatest_associated](declarations/gcd-greatest-associated.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [isUnit_gcd_of_eq_mul_gcd](declarations/isunit-gcd-of-eq-mul-gcd.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [extract_gcd](declarations/extract-gcd.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [lcm_dvd_iff](declarations/lcm-dvd-iff.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [dvd_lcm_left](declarations/dvd-lcm-left.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [dvd_lcm_right](declarations/dvd-lcm-right.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lcm_dvd](declarations/lcm-dvd.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lcm_eq_zero_iff](declarations/lcm-eq-zero-iff.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [normalize_lcm](declarations/normalize-lcm.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [lcm_comm](declarations/lcm-comm.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [lcm_comm'](declarations/lcm-comm-source-edition-2.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [lcm_assoc](declarations/lcm-assoc.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [lcm_assoc'](declarations/lcm-assoc-source-edition-2.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [lcm_eq_normalize](declarations/lcm-eq-normalize.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [lcm_dvd_lcm](declarations/lcm-dvd-lcm.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [lcm_units_coe_left](declarations/lcm-units-coe-left.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [lcm_units_coe_right](declarations/lcm-units-coe-right.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lcm_one_left](declarations/lcm-one-left.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lcm_one_right](declarations/lcm-one-right.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [lcm_same](declarations/lcm-same.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lcm_eq_one_iff](declarations/lcm-eq-one-iff.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [lcm_mul_left](declarations/lcm-mul-left.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [lcm_mul_right](declarations/lcm-mul-right.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [lcm_eq_left_iff](declarations/lcm-eq-left-iff.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [lcm_eq_right_iff](declarations/lcm-eq-right-iff.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [lcm_dvd_lcm_mul_left](declarations/lcm-dvd-lcm-mul-left.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [lcm_dvd_lcm_mul_right](declarations/lcm-dvd-lcm-mul-right.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lcm_dvd_lcm_mul_left_right](declarations/lcm-dvd-lcm-mul-left-right.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [lcm_dvd_lcm_mul_right_right](declarations/lcm-dvd-lcm-mul-right-right.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [lcm_eq_of_associated_left](declarations/lcm-eq-of-associated-left.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [lcm_eq_of_associated_right](declarations/lcm-eq-of-associated-right.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [prime_of_irreducible](declarations/prime-of-irreducible.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [irreducible_iff_prime](declarations/irreducible-iff-prime.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [(anonymous)](declarations/instance.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [uniqueNormalizationMonoidOfUniqueUnits](declarations/uniquenormalizationmonoidofuniqueunits.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [subsingleton_gcdMonoid_of_unique_units](declarations/subsingleton-gcdmonoid-of-unique-units.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [subsingleton_normalizedGCDMonoid_of_unique_units](declarations/subsingleton-normalizedgcdmonoid-of-unique-units.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [normUnit_eq_one](declarations/normunit-eq-one.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [normalize_eq](declarations/normalize-eq.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [associatesEquivOfUniqueUnits](declarations/associatesequivofuniqueunits.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [gcd_eq_of_dvd_sub_right](declarations/gcd-eq-of-dvd-sub-right.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [gcd_eq_of_dvd_sub_left](declarations/gcd-eq-of-dvd-sub-left.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [map_mk_unit_aux](declarations/map-mk-unit-aux.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [normalizationMonoidOfMonoidHomRightInverse](declarations/normalizationmonoidofmonoidhomrightinverse.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [gcdMonoidOfGCD](declarations/gcdmonoidofgcd.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [normalizedGCDMonoidOfGCD](declarations/normalizedgcdmonoidofgcd.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [gcdMonoidOfLCM](declarations/gcdmonoidoflcm.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [normalizedGCDMonoidOfLCM](declarations/normalizedgcdmonoidoflcm.md) | 1211 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [gcdMonoidOfExistsGCD](declarations/gcdmonoidofexistsgcd.md) | 1307 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [normalizedGCDMonoidOfExistsGCD](declarations/normalizedgcdmonoidofexistsgcd.md) | 1316 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [gcdMonoidOfExistsLCM](declarations/gcdmonoidofexistslcm.md) | 1328 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [normalizedGCDMonoidOfExistsLCM](declarations/normalizedgcdmonoidofexistslcm.md) | 1337 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1356 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [coe_normUnit](declarations/coe-normunit.md) | 1416 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [normalize_eq_one](declarations/normalize-eq-one.md) | 1419 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7531651d1587db9ee3f86196ef91256a7f5fe63056e4ae157c445f17f47cfe0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
