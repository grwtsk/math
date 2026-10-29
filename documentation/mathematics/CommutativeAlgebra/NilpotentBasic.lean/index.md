# Nilpotent Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ee1ef32222097e8a6385676554066fd2d1a549f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/NilpotentBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsNilpotent.neg](declarations/isnilpotent-neg.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isNilpotent_neg_iff](declarations/isnilpotent-neg-iff.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsNilpotent.smul](declarations/isnilpotent-smul.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsNilpotent.isUnit_sub_one](declarations/isnilpotent-isunit-sub-one.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsNilpotent.isUnit_one_sub](declarations/isnilpotent-isunit-one-sub.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsNilpotent.isUnit_add_one](declarations/isnilpotent-isunit-add-one.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsNilpotent.isUnit_one_add](declarations/isnilpotent-isunit-one-add.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsNilpotent.isUnit_add_left_of_commute](declarations/isnilpotent-isunit-add-left-of-commute.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsNilpotent.isUnit_add_right_of_commute](declarations/isnilpotent-isunit-add-right-of-commute.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [IsUnit.not_isNilpotent](declarations/isunit-not-isnilpotent.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsNilpotent.not_isUnit](declarations/isnilpotent-not-isunit.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsIdempotentElem.eq_zero_of_isNilpotent](declarations/isidempotentelem-eq-zero-of-isnilpotent.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Prime.isRadical](declarations/prime-isradical.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [zero_isRadical_iff](declarations/zero-isradical-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isReduced_iff_pow_one_lt](declarations/isreduced-iff-pow-one-lt.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsRadical.of_dvd](declarations/isradical-of-dvd.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [add_pow_eq_zero_of_add_le_succ_of_pow_eq_zero](declarations/add-pow-eq-zero-of-add-le-succ-of-pow-eq-zero.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [add_pow_add_eq_zero_of_pow_eq_zero](declarations/add-pow-add-eq-zero-of-pow-eq-zero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isNilpotent_add](declarations/isnilpotent-add.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isNilpotent_sum](declarations/isnilpotent-sum-source-edition-2.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isNilpotent_finsum](declarations/isnilpotent-finsum-source-edition-2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isNilpotent_mul_left_iff](declarations/isnilpotent-mul-left-iff.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isNilpotent_mul_right_iff](declarations/isnilpotent-mul-right-iff.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isNilpotent_sub](declarations/isnilpotent-sub.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isNilpotent_sum](declarations/isnilpotent-sum.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isNilpotent_finsum](declarations/isnilpotent-finsum.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [NoZeroSMulDivisors.isReduced](declarations/nozerosmuldivisors-isreduced.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ff4183ab8afb386351ffe019511c98db2a6dc9c2f17e317b2af0bbd87922a6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
