# Coprime Basic Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**110 observed declarations and anonymous commands**, 109 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2efdace89745b6adeafbad57fa60c5236fcc3069`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CoprimeBasicSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsCoprime](declarations/iscoprime.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsCoprime.symm](declarations/iscoprime-symm.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isCoprime_comm](declarations/iscoprime-comm.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isCoprime_self](declarations/iscoprime-self.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isCoprime_zero_left](declarations/iscoprime-zero-left.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isCoprime_zero_right](declarations/iscoprime-zero-right.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [not_isCoprime_zero_zero](declarations/not-iscoprime-zero-zero.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsCoprime.intCast](declarations/iscoprime-intcast.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsCoprime.ne_zero](declarations/iscoprime-ne-zero.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsCoprime.ne_zero_or_ne_zero](declarations/iscoprime-ne-zero-or-ne-zero.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isCoprime_one_left](declarations/iscoprime-one-left.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isCoprime_one_right](declarations/iscoprime-one-right.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsCoprime.dvd_of_dvd_mul_right](declarations/iscoprime-dvd-of-dvd-mul-right.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsCoprime.dvd_of_dvd_mul_left](declarations/iscoprime-dvd-of-dvd-mul-left.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsCoprime.mul_left](declarations/iscoprime-mul-left.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsCoprime.mul_right](declarations/iscoprime-mul-right.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsCoprime.mul_dvd](declarations/iscoprime-mul-dvd.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsCoprime.of_mul_left_left](declarations/iscoprime-of-mul-left-left.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsCoprime.of_mul_left_right](declarations/iscoprime-of-mul-left-right.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsCoprime.of_mul_right_left](declarations/iscoprime-of-mul-right-left.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsCoprime.of_mul_right_right](declarations/iscoprime-of-mul-right-right.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsCoprime.mul_left_iff](declarations/iscoprime-mul-left-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsCoprime.mul_right_iff](declarations/iscoprime-mul-right-iff.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsCoprime.of_isCoprime_of_dvd_left](declarations/iscoprime-of-iscoprime-of-dvd-left.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsCoprime.of_isCoprime_of_dvd_right](declarations/iscoprime-of-iscoprime-of-dvd-right.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsCoprime.isUnit_of_dvd](declarations/iscoprime-isunit-of-dvd.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsCoprime.isUnit_of_dvd'](declarations/iscoprime-isunit-of-dvd-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsCoprime.isRelPrime](declarations/iscoprime-isrelprime.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsCoprime.map](declarations/iscoprime-map.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsCoprime.of_add_mul_left_left](declarations/iscoprime-of-add-mul-left-left.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsCoprime.of_add_mul_right_left](declarations/iscoprime-of-add-mul-right-left.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsCoprime.of_add_mul_left_right](declarations/iscoprime-of-add-mul-left-right.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsCoprime.of_add_mul_right_right](declarations/iscoprime-of-add-mul-right-right.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsCoprime.of_mul_add_left_left](declarations/iscoprime-of-mul-add-left-left.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsCoprime.of_mul_add_right_left](declarations/iscoprime-of-mul-add-right-left.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsCoprime.of_mul_add_left_right](declarations/iscoprime-of-mul-add-left-right.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsCoprime.of_mul_add_right_right](declarations/iscoprime-of-mul-add-right-right.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsRelPrime.of_add_mul_left_left](declarations/isrelprime-of-add-mul-left-left.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsRelPrime.of_add_mul_right_left](declarations/isrelprime-of-add-mul-right-left.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsRelPrime.of_add_mul_left_right](declarations/isrelprime-of-add-mul-left-right.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsRelPrime.of_add_mul_right_right](declarations/isrelprime-of-add-mul-right-right.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsRelPrime.of_mul_add_left_left](declarations/isrelprime-of-mul-add-left-left.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsRelPrime.of_mul_add_right_left](declarations/isrelprime-of-mul-add-right-left.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsRelPrime.of_mul_add_left_right](declarations/isrelprime-of-mul-add-left-right.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsRelPrime.of_mul_add_right_right](declarations/isrelprime-of-mul-add-right-right.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isCoprime_group_smul_left](declarations/iscoprime-group-smul-left.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isCoprime_group_smul_right](declarations/iscoprime-group-smul-right.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isCoprime_group_smul](declarations/iscoprime-group-smul.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isCoprime_mul_unit_left_left](declarations/iscoprime-mul-unit-left-left.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isCoprime_mul_unit_left_right](declarations/iscoprime-mul-unit-left-right.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isCoprime_mul_unit_right_left](declarations/iscoprime-mul-unit-right-left.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isCoprime_mul_unit_right_right](declarations/iscoprime-mul-unit-right-right.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isCoprime_mul_units_left](declarations/iscoprime-mul-units-left.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isCoprime_mul_units_right](declarations/iscoprime-mul-units-right.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isCoprime_mul_unit_left](declarations/iscoprime-mul-unit-left.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isCoprime_mul_unit_right](declarations/iscoprime-mul-unit-right.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [add_mul_left_left](declarations/add-mul-left-left.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [add_mul_right_left](declarations/add-mul-right-left.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [add_mul_left_right](declarations/add-mul-left-right.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [add_mul_right_right](declarations/add-mul-right-right-source-edition-2.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mul_add_left_left](declarations/mul-add-left-left-source-edition-2.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mul_add_right_left](declarations/mul-add-right-left.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mul_add_left_right](declarations/mul-add-left-right-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mul_add_right_right](declarations/mul-add-right-right.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [add_mul_left_left_iff](declarations/add-mul-left-left-iff-source-edition-2.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [add_mul_right_left_iff](declarations/add-mul-right-left-iff.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [add_mul_left_right_iff](declarations/add-mul-left-right-iff.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [add_mul_right_right_iff](declarations/add-mul-right-right-iff.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mul_add_left_left_iff](declarations/mul-add-left-left-iff-source-edition-2.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mul_add_right_left_iff](declarations/mul-add-right-left-iff-source-edition-2.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [mul_add_left_right_iff](declarations/mul-add-left-right-iff-source-edition-2.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mul_add_right_right_iff](declarations/mul-add-right-right-iff-source-edition-2.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [neg_left](declarations/neg-left-source-edition-2.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [neg_left_iff](declarations/neg-left-iff.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [neg_right](declarations/neg-right-source-edition-2.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [neg_right_iff](declarations/neg-right-iff.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [neg_neg](declarations/neg-neg-source-edition-2.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [neg_neg_iff](declarations/neg-neg-iff.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [abs_left_iff](declarations/abs-left-iff.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [abs_left](declarations/abs-left.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [abs_right_iff](declarations/abs-right-iff.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [abs_right](declarations/abs-right.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [abs_abs_iff](declarations/abs-abs-iff.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [abs_abs](declarations/abs-abs.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [sq_add_sq_ne_zero](declarations/sq-add-sq-ne-zero.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [Nat.isCoprime_iff](declarations/nat-iscoprime-iff.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [PNat.isCoprime_iff](declarations/pnat-iscoprime-iff.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [Semifield.isCoprime_iff](declarations/semifield-iscoprime-iff.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [add_mul_left_left](declarations/add-mul-left-left-source-edition-2.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [add_mul_right_left](declarations/add-mul-right-left-source-edition-2.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [add_mul_left_right](declarations/add-mul-left-right-source-edition-2.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [add_mul_right_right](declarations/add-mul-right-right.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mul_add_left_left](declarations/mul-add-left-left.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [mul_add_right_left](declarations/mul-add-right-left-source-edition-2.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mul_add_left_right](declarations/mul-add-left-right.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [mul_add_right_right](declarations/mul-add-right-right-source-edition-2.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [add_mul_left_left_iff](declarations/add-mul-left-left-iff.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [add_mul_right_left_iff](declarations/add-mul-right-left-iff-source-edition-2.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [add_mul_left_right_iff](declarations/add-mul-left-right-iff-source-edition-2.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [add_mul_right_right_iff](declarations/add-mul-right-right-iff-source-edition-2.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [mul_add_left_left_iff](declarations/mul-add-left-left-iff.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [mul_add_right_left_iff](declarations/mul-add-right-left-iff.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mul_add_left_right_iff](declarations/mul-add-left-right-iff.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mul_add_right_right_iff](declarations/mul-add-right-right-iff.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [neg_left](declarations/neg-left.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [neg_right](declarations/neg-right.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [neg_neg](declarations/neg-neg.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [neg_left_iff](declarations/neg-left-iff-source-edition-2.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [neg_right_iff](declarations/neg-right-iff-source-edition-2.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [neg_neg_iff](declarations/neg-neg-iff-source-edition-2.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cb27f501e39fe7faf6443ba64b50fdd0291abb59653f16a7319660ad093d19b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant05af81296e15d06f07e9bd849344d1a7ba04a1c3f699a131cdf64a5e33d718a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
