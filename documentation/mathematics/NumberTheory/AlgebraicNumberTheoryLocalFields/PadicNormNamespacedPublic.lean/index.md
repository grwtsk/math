# Padic Norm Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `661a116f59683d742401f1e72183d1b17d231adf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [padicNorm](declarations/padicnorm.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [eq_zpow_of_nonzero](declarations/eq-zpow-of-nonzero.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [nonneg](declarations/nonneg.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zero](declarations/zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [one](declarations/one.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [padicNorm_p](declarations/padicnorm-p.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [padicNorm_p_of_prime](declarations/padicnorm-p-of-prime.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [padicNorm_of_prime_of_ne](declarations/padicnorm-of-prime-of-ne.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [padicNorm_p_lt_one](declarations/padicnorm-p-lt-one.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [padicNorm_p_lt_one_of_prime](declarations/padicnorm-p-lt-one-of-prime.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [values_discrete](declarations/values-discrete.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [neg](declarations/neg.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nonzero](declarations/nonzero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [zero_of_padicNorm_eq_zero](declarations/zero-of-padicnorm-eq-zero.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul](declarations/mul.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [div](declarations/div.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [of_int](declarations/of-int.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nonarchimedean_aux](declarations/nonarchimedean-aux.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nonarchimedean](declarations/nonarchimedean.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [triangle_ineq](declarations/triangle-ineq.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sub](declarations/sub.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [add_eq_max_of_ne](declarations/add-eq-max-of-ne.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dvd_iff_norm_le](declarations/dvd-iff-norm-le.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [int_eq_one_iff](declarations/int-eq-one-iff.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [int_lt_one_iff](declarations/int-lt-one-iff.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [of_nat](declarations/of-nat.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nat_eq_one_iff](declarations/nat-eq-one-iff.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [nat_lt_one_iff](declarations/nat-lt-one-iff.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_int_of_not_padic_int](declarations/not-int-of-not-padic-int.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_lt](declarations/sum-lt.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sum_le](declarations/sum-le-source-edition-2.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sum_lt'](declarations/sum-lt-source-edition-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sum_le'](declarations/sum-le.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=853d49066d38c840614801d419a077067597a514e890fdedc6576170e5019fa0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
