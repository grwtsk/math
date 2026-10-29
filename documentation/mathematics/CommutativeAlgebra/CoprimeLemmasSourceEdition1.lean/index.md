# Coprime Lemmas Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e23e74c3f9d28748101db16932233993241892d7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CoprimeLemmasSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.isCoprime_iff_gcd_eq_one](declarations/int-iscoprime-iff-gcd-eq-one.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Nat.isCoprime_iff_coprime](declarations/nat-iscoprime-iff-coprime.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Nat.Coprime.cast](declarations/nat-coprime-cast.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ne_zero_or_ne_zero_of_nat_coprime](declarations/ne-zero-or-ne-zero-of-nat-coprime.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsCoprime.prod_left](declarations/iscoprime-prod-left.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsCoprime.prod_right](declarations/iscoprime-prod-right.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsCoprime.prod_left_iff](declarations/iscoprime-prod-left-iff.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsCoprime.prod_right_iff](declarations/iscoprime-prod-right-iff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsCoprime.of_prod_left](declarations/iscoprime-of-prod-left.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsCoprime.of_prod_right](declarations/iscoprime-of-prod-right.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Finset.prod_dvd_of_coprime](declarations/finset-prod-dvd-of-coprime.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Fintype.prod_dvd_of_coprime](declarations/fintype-prod-dvd-of-coprime.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime](declarations/exists-sum-eq-one-iff-pairwise-coprime.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime'](declarations/exists-sum-eq-one-iff-pairwise-coprime-source-edition-2.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pairwise_coprime_iff_coprime_prod](declarations/pairwise-coprime-iff-coprime-prod.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsCoprime.pow_left](declarations/iscoprime-pow-left.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsCoprime.pow_right](declarations/iscoprime-pow-right.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsCoprime.pow](declarations/iscoprime-pow.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsCoprime.pow_left_iff](declarations/iscoprime-pow-left-iff.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsCoprime.pow_right_iff](declarations/iscoprime-pow-right-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsCoprime.pow_iff](declarations/iscoprime-pow-iff.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsRelPrime.prod_left](declarations/isrelprime-prod-left.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsRelPrime.prod_right](declarations/isrelprime-prod-right.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsRelPrime.prod_left_iff](declarations/isrelprime-prod-left-iff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsRelPrime.prod_right_iff](declarations/isrelprime-prod-right-iff.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsRelPrime.of_prod_left](declarations/isrelprime-of-prod-left.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsRelPrime.of_prod_right](declarations/isrelprime-of-prod-right.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Finset.prod_dvd_of_isRelPrime](declarations/finset-prod-dvd-of-isrelprime.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Fintype.prod_dvd_of_isRelPrime](declarations/fintype-prod-dvd-of-isrelprime.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pairwise_isRelPrime_iff_isRelPrime_prod](declarations/pairwise-isrelprime-iff-isrelprime-prod.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pow_left](declarations/pow-left.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pow_right](declarations/pow-right.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pow](declarations/pow.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pow_left_iff](declarations/pow-left-iff.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [pow_right_iff](declarations/pow-right-iff.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pow_iff](declarations/pow-iff.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32c6db4296c9f1bd06ce8ef47cfd6f363f27b49684d74a23709a1b03c4c0fd3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
