# Skew Monoid Algebra Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 67 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a4bbb7d8a4ab54c383f20a829bfd74d07c9a712`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/SkewMonoidAlgebraBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SkewMonoidAlgebra](declarations/skewmonoidalgebra.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [eta](declarations/eta.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [add](declarations/add.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [smul](declarations/smul.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instZero](declarations/instzero.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instAdd](declarations/instadd.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instSMulZeroClass](declarations/instsmulzeroclass.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ofFinsupp_zero](declarations/offinsupp-zero.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ofFinsupp_add](declarations/offinsupp-add.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ofFinsupp_smul](declarations/offinsupp-smul.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toFinsupp_zero](declarations/tofinsupp-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toFinsupp_add](declarations/tofinsupp-add.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toFinsupp_smul](declarations/tofinsupp-smul.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [_root_.IsSMulRegular.skewMonoidAlgebra](declarations/root-issmulregular-skewmonoidalgebra.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toFinsupp_injective](declarations/tofinsupp-injective.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toFinsupp_inj](declarations/tofinsupp-inj.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ofFinsupp_injective](declarations/offinsupp-injective.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ofFinsupp_inj](declarations/offinsupp-inj.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toFinsupp_eq_zero](declarations/tofinsupp-eq-zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ofFinsupp_eq_zero](declarations/offinsupp-eq-zero.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instInhabited](declarations/instinhabited.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instNontrivial](declarations/instnontrivial.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [support](declarations/support.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [support_ofFinsupp](declarations/support-offinsupp.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [support_toFinsupp](declarations/support-tofinsupp.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [support_zero](declarations/support-zero.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [support_eq_empty](declarations/support-eq-empty.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [coeff](declarations/coeff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coeff_ofFinsupp](declarations/coeff-offinsupp.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeff_injective](declarations/coeff-injective.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coeff_inj](declarations/coeff-inj.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toFinsupp_apply](declarations/tofinsupp-apply.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coeff_zero](declarations/coeff-zero.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [notMem_support_iff](declarations/notmem-support-iff.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ext_iff](declarations/ext-iff.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ext](declarations/ext.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coeff_add](declarations/coeff-add.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [single](declarations/single.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toFinsupp_single](declarations/tofinsupp-single.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ofFinsupp_single](declarations/offinsupp-single.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coeff_single](declarations/coeff-single.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coeff_single_apply](declarations/coeff-single-apply.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [single_zero_right](declarations/single-zero-right.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [single_add](declarations/single-add.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [single_zero](declarations/single-zero.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [single_eq_zero](declarations/single-eq-zero.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [toFinsuppAddEquiv](declarations/tofinsuppaddequiv.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [smul_single](declarations/smul-single.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [single_injective](declarations/single-injective.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [_root_.IsSMulRegular.skewMonoidAlgebra_iff](declarations/root-issmulregular-skewmonoidalgebra-iff.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [instOne](declarations/instone.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ofFinsupp_one](declarations/offinsupp-one.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toFinsupp_one](declarations/tofinsupp-one.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toFinsupp_eq_single_one_one_iff](declarations/tofinsupp-eq-single-one-one-iff.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ofFinsupp_eq_one](declarations/offinsupp-eq-one.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [single_one_one](declarations/single-one-one.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [one_def](declarations/one-def.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [coeff_one_one](declarations/coeff-one-one.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coeff_one](declarations/coeff-one.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [sum](declarations/sum.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [sum_def](declarations/sum-def-source-edition-2.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [sum_def'](declarations/sum-def.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [sum_single_index](declarations/sum-single-index.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [map_sum](declarations/map-sum.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [toFinsupp_sum'](declarations/tofinsupp-sum.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [ofFinsupp_sum](declarations/offinsupp-sum.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [sum_single](declarations/sum-single.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [sum_add_index'](declarations/sum-add-index.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sum_add_index](declarations/sum-add-index-source-edition-2.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [sum_add](declarations/sum-add.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [sum_zero_index](declarations/sum-zero-index.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [sum_zero](declarations/sum-zero.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [sum_sum_index](declarations/sum-sum-index.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coeff_sum](declarations/coeff-sum.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [sum_mul](declarations/sum-mul.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [mul_sum](declarations/mul-sum.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [sum_ite_eq'](declarations/sum-ite-eq.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [smul_sum](declarations/smul-sum.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [sum_congr](declarations/sum-congr.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88c84c953eef71c188fbb241526ca6bc9e01bafa06204a2abbdd225894b8b00a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variantb97331754ffa152ec920edae510e7c5ed8c7b032f4880589177c093f1bb1dc2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
