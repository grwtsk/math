# Padic Norm Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant8589f823d9853d3c62f82ebf8a574c62a5c239209632af2ab2975130292b9bd2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af3aebef1ba82d7fbc7ff188892320ccb4b73947`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNormPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [padicNorm](declarations/padicnorm.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [eq_zpow_of_nonzero](declarations/eq-zpow-of-nonzero.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [nonneg](declarations/nonneg.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zero](declarations/zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [one](declarations/one.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [padicNorm_p](declarations/padicnorm-p.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [padicNorm_p_of_prime](declarations/padicnorm-p-of-prime.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [padicNorm_of_prime_of_ne](declarations/padicnorm-of-prime-of-ne.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [padicNorm_p_lt_one](declarations/padicnorm-p-lt-one.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [padicNorm_p_lt_one_of_prime](declarations/padicnorm-p-lt-one-of-prime.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [values_discrete](declarations/values-discrete.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [neg](declarations/neg.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nonzero](declarations/nonzero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [zero_of_padicNorm_eq_zero](declarations/zero-of-padicnorm-eq-zero.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul](declarations/mul.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [div](declarations/div.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [of_int](declarations/of-int.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nonarchimedean_aux](declarations/nonarchimedean-aux.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nonarchimedean](declarations/nonarchimedean.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [triangle_ineq](declarations/triangle-ineq.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sub](declarations/sub.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [add_eq_max_of_ne](declarations/add-eq-max-of-ne.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dvd_iff_norm_le](declarations/dvd-iff-norm-le.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [int_eq_one_iff](declarations/int-eq-one-iff.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [int_lt_one_iff](declarations/int-lt-one-iff.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [of_nat](declarations/of-nat.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nat_eq_one_iff](declarations/nat-eq-one-iff.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [nat_lt_one_iff](declarations/nat-lt-one-iff.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_int_of_not_padic_int](declarations/not-int-of-not-padic-int.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_lt](declarations/sum-lt.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sum_le](declarations/sum-le-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sum_lt'](declarations/sum-lt-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sum_le'](declarations/sum-le.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=641be49aefe971a4d0eed7a9b50650df1b1f7a92b6e9264992148aadc1ee6fd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variant8589f823d9853d3c62f82ebf8a574c62a5c239209632af2ab2975130292b9bd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
