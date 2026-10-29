# Coprime Lemmas Namespaced Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc422fe7de776d67e9726c70734ad1420ecb1750`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CoprimeLemmasNamespacedSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.isCoprime_iff_gcd_eq_one](declarations/int-iscoprime-iff-gcd-eq-one.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Nat.isCoprime_iff_coprime](declarations/nat-iscoprime-iff-coprime.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Nat.Coprime.cast](declarations/nat-coprime-cast.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ne_zero_or_ne_zero_of_nat_coprime](declarations/ne-zero-or-ne-zero-of-nat-coprime.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsCoprime.prod_left](declarations/iscoprime-prod-left.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsCoprime.prod_right](declarations/iscoprime-prod-right.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsCoprime.prod_left_iff](declarations/iscoprime-prod-left-iff.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsCoprime.prod_right_iff](declarations/iscoprime-prod-right-iff.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsCoprime.of_prod_left](declarations/iscoprime-of-prod-left.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsCoprime.of_prod_right](declarations/iscoprime-of-prod-right.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Finset.prod_dvd_of_coprime](declarations/finset-prod-dvd-of-coprime.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Fintype.prod_dvd_of_coprime](declarations/fintype-prod-dvd-of-coprime.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime](declarations/exists-sum-eq-one-iff-pairwise-coprime.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime'](declarations/exists-sum-eq-one-iff-pairwise-coprime-source-edition-2.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pairwise_coprime_iff_coprime_prod](declarations/pairwise-coprime-iff-coprime-prod.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsCoprime.pow_left](declarations/iscoprime-pow-left.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsCoprime.pow_right](declarations/iscoprime-pow-right.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsCoprime.pow](declarations/iscoprime-pow.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsCoprime.pow_left_iff](declarations/iscoprime-pow-left-iff.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsCoprime.pow_right_iff](declarations/iscoprime-pow-right-iff.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsCoprime.pow_iff](declarations/iscoprime-pow-iff.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsRelPrime.prod_left](declarations/isrelprime-prod-left.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsRelPrime.prod_right](declarations/isrelprime-prod-right.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsRelPrime.prod_left_iff](declarations/isrelprime-prod-left-iff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsRelPrime.prod_right_iff](declarations/isrelprime-prod-right-iff.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsRelPrime.of_prod_left](declarations/isrelprime-of-prod-left.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsRelPrime.of_prod_right](declarations/isrelprime-of-prod-right.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Finset.prod_dvd_of_isRelPrime](declarations/finset-prod-dvd-of-isrelprime.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Fintype.prod_dvd_of_isRelPrime](declarations/fintype-prod-dvd-of-isrelprime.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pairwise_isRelPrime_iff_isRelPrime_prod](declarations/pairwise-isrelprime-iff-isrelprime-prod.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pow_left](declarations/pow-left.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pow_right](declarations/pow-right.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pow](declarations/pow.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pow_left_iff](declarations/pow-left-iff.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [pow_right_iff](declarations/pow-right-iff.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pow_iff](declarations/pow-iff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9192f0749745ce52072456f49f86d7cb32eb448c6b8188b3088c3aecf9035fac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
