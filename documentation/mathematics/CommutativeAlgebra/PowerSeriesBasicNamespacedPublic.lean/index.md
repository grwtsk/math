# Power Series Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**163 observed declarations and anonymous commands**, 142 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante0296d2fdcac5462655cc80f62e4b25c9e82ab269846f977b0a537c3e803859a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5830236ba346ccef22dd5cf2ebea5f57ce43962`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/PowerSeriesBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PowerSeries](declarations/powerseries.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [coeff](declarations/coeff.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [monomial](declarations/monomial.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coeff_def](declarations/coeff-def.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [coeff_coeToMvPowerSeries](declarations/coeff-coetomvpowerseries.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ext](declarations/ext.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [forall_coeff_eq_zero](declarations/forall-coeff-eq-zero.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mk](declarations/mk.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coeff_mk](declarations/coeff-mk.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coeff_monomial](declarations/coeff-monomial.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [monomial_eq_mk](declarations/monomial-eq-mk.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeff_monomial_same](declarations/coeff-monomial-same.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coeff_comp_monomial](declarations/coeff-comp-monomial.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [monomial_mul_monomial](declarations/monomial-mul-monomial.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [constantCoeff](declarations/constantcoeff.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [constantCoeff_eq](declarations/constantcoeff-eq.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [C](declarations/c.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [C_apply](declarations/c-apply.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [algebraMap_eq](declarations/algebramap-eq.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [X](declarations/x.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [X_apply](declarations/x-apply.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [commute_X](declarations/commute-x.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [X_mul](declarations/x-mul.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [commute_X_pow](declarations/commute-x-pow.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [X_pow_mul](declarations/x-pow-mul.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coeff_zero_eq_constantCoeff](declarations/coeff-zero-eq-constantcoeff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coeff_zero_eq_constantCoeff_apply](declarations/coeff-zero-eq-constantcoeff-apply.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [monomial_zero_eq_C](declarations/monomial-zero-eq-c.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [monomial_zero_eq_C_apply](declarations/monomial-zero-eq-c-apply.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeff_C](declarations/coeff-c.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coeff_zero_C](declarations/coeff-zero-c.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coeff_C_of_ne_zero](declarations/coeff-c-of-ne-zero.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coeff_succ_C](declarations/coeff-succ-c.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [C_injective](declarations/c-injective.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [subsingleton_iff](declarations/subsingleton-iff.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [X_eq](declarations/x-eq.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coeff_X](declarations/coeff-x.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coeff_zero_X](declarations/coeff-zero-x.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coeff_one_X](declarations/coeff-one-x.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [X_ne_zero](declarations/x-ne-zero.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [X_pow_eq](declarations/x-pow-eq.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coeff_X_pow](declarations/coeff-x-pow.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coeff_X_pow_self](declarations/coeff-x-pow-self.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coeff_one](declarations/coeff-one.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coeff_zero_one](declarations/coeff-zero-one.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coeff_mul](declarations/coeff-mul.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coeff_mul_C](declarations/coeff-mul-c.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coeff_C_mul](declarations/coeff-c-mul.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [coeff_mul_natCast](declarations/coeff-mul-natcast.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [coeff_natCast_mul](declarations/coeff-natcast-mul.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [coeff_mul_ofNat](declarations/coeff-mul-ofnat.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [coeff_ofNat_mul](declarations/coeff-ofnat-mul.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [coeff_mul_intCast](declarations/coeff-mul-intcast.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [coeff_intCast_mul](declarations/coeff-intcast-mul.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [constantCoeff_smul](declarations/constantcoeff-smul.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [smul_eq_C_mul](declarations/smul-eq-c-mul.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coeff_succ_mul_X](declarations/coeff-succ-mul-x.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coeff_succ_X_mul](declarations/coeff-succ-x-mul.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mul_X_cancel](declarations/mul-x-cancel.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mul_X_injective](declarations/mul-x-injective.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mul_X_inj](declarations/mul-x-inj.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [X_mul_cancel](declarations/x-mul-cancel.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [X_mul_injective](declarations/x-mul-injective.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [X_mul_inj](declarations/x-mul-inj.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [constantCoeff_C](declarations/constantcoeff-c.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [constantCoeff_comp_C](declarations/constantcoeff-comp-c.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [constantCoeff_zero](declarations/constantcoeff-zero.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [constantCoeff_one](declarations/constantcoeff-one.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [constantCoeff_X](declarations/constantcoeff-x.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [constantCoeff_mk](declarations/constantcoeff-mk.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [coeff_zero_mul_X](declarations/coeff-zero-mul-x.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coeff_zero_X_mul](declarations/coeff-zero-x-mul.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [constantCoeff_surj](declarations/constantcoeff-surj.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [coeff_C_mul_X_pow](declarations/coeff-c-mul-x-pow.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coeff_mul_X_pow](declarations/coeff-mul-x-pow-source-edition-2.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coeff_X_pow_mul](declarations/coeff-x-pow-mul-source-edition-2.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mul_X_pow_cancel](declarations/mul-x-pow-cancel.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [mul_X_pow_injective](declarations/mul-x-pow-injective.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mul_X_pow_inj](declarations/mul-x-pow-inj.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [X_pow_mul_cancel](declarations/x-pow-mul-cancel.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [X_pow_mul_injective](declarations/x-pow-mul-injective.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [X_pow_mul_inj](declarations/x-pow-mul-inj.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [coeff_mul_X_pow'](declarations/coeff-mul-x-pow.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [coeff_X_pow_mul'](declarations/coeff-x-pow-mul.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [isUnit_constantCoeff](declarations/isunit-constantcoeff.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [eq_shift_mul_X_add_const](declarations/eq-shift-mul-x-add-const.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [eq_X_mul_shift_add_const](declarations/eq-x-mul-shift-add-const.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [map](declarations/map.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [map_id](declarations/map-id.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [map_comp](declarations/map-comp.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coeff_map](declarations/coeff-map.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [map_C](declarations/map-c.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [map_X](declarations/map-x.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [map_surjective](declarations/map-surjective.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [map_injective](declarations/map-injective.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [map_eq_zero](declarations/map-eq-zero.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [X_pow_dvd_iff](declarations/x-pow-dvd-iff.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [X_dvd_iff](declarations/x-dvd-iff.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [toSubring](declarations/tosubring.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [coeff_toSubring](declarations/coeff-tosubring.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [constantCoeff_toSubring](declarations/constantcoeff-tosubring.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_toSubring](declarations/map-tosubring.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [rescale](declarations/rescale.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [coeff_rescale](declarations/coeff-rescale.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [rescale_zero](declarations/rescale-zero.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [rescale_zero_apply](declarations/rescale-zero-apply.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [rescale_one](declarations/rescale-one.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [rescale_mk](declarations/rescale-mk.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [rescale_rescale](declarations/rescale-rescale.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [rescale_mul](declarations/rescale-mul.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [rescale_map](declarations/rescale-map.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [rescale_algebraMap_map](declarations/rescale-algebramap-map.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [coeff_prod](declarations/coeff-prod.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [prod_monomial](declarations/prod-monomial.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [monomial_pow](declarations/monomial-pow.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [coeff_pow](declarations/coeff-pow.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [coeff_one_mul](declarations/coeff-one-mul.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [coeff_one_pow](declarations/coeff-one-pow.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [not_isField](declarations/not-isfield.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [rescale_X](declarations/rescale-x.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [rescale_neg_one_X](declarations/rescale-neg-one-x.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [evalNegHom](declarations/evalneghom.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [evalNegHom_X](declarations/evalneghom-x.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [C_eq_algebraMap](declarations/c-eq-algebramap.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [mapAlgHom](declarations/mapalghom.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [mapAlgHom_apply](declarations/mapalghom-apply.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [toPowerSeries](declarations/topowerseries.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [coeToPowerSeries](declarations/coetopowerseries.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [coe_def](declarations/coe-def.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [coeff_coe](declarations/coeff-coe.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [coe_monomial](declarations/coe-monomial.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [coe_zero](declarations/coe-zero.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [coe_one](declarations/coe-one.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [coe_add](declarations/coe-add.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [coe_mul](declarations/coe-mul.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [coe_smul](declarations/coe-smul.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [coe_C](declarations/coe-c.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [coe_X](declarations/coe-x.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [polynomial_map_coe](declarations/polynomial-map-coe.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [constantCoeff_coe](declarations/constantcoeff-coe.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [coe_injective](declarations/coe-injective.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [coe_inj](declarations/coe-inj.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [coe_eq_zero_iff](declarations/coe-eq-zero-iff.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [coe_eq_one_iff](declarations/coe-eq-one-iff.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [coeToPowerSeries.ringHom](declarations/coetopowerseries-ringhom.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [coeToPowerSeries.ringHom_apply](declarations/coetopowerseries-ringhom-apply.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [coe_pow](declarations/coe-pow.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [eval₂_C_X_eq_coe](declarations/eval-c-x-eq-coe.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [Power Series Basic Namespaced Public](declarations/tomvpowerseries-punitalgequiv.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [pUnitAlgEquiv_symm_toPowerSeries](declarations/punitalgequiv-symm-topowerseries.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [coeToPowerSeries.algHom](declarations/coetopowerseries-alghom.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [coeToPowerSeries.algHom_apply](declarations/coetopowerseries-alghom-apply.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `lemma` | [coe_neg](declarations/coe-neg.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `lemma` | [coe_sub](declarations/coe-sub.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `instance` | [algebraPolynomial](declarations/algebrapolynomial.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `instance` | [algebraPowerSeries](declarations/algebrapowerseries.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [algebraMap_apply'](declarations/algebramap-apply-source-edition-3.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [algebraMap_apply''](declarations/algebramap-apply-source-edition-2.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5845ab81359e25ab2b9f7eadb5f365979bf4cc1762d1a1baa84c92a98ce10806 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante0296d2fdcac5462655cc80f62e4b25c9e82ab269846f977b0a537c3e803859a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
