# Calculus Taylor Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `088700ed9f2d0b74a86d1238b938bb0070c7f297`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/CalculusTaylorPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [taylorCoeffWithin](declarations/taylorcoeffwithin.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [taylorWithin](declarations/taylorwithin.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [taylorWithinEval](declarations/taylorwithineval.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [taylorWithin_succ](declarations/taylorwithin-succ.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [taylorWithinEval_succ](declarations/taylorwithineval-succ.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [taylor_within_zero_eval](declarations/taylor-within-zero-eval.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [taylorWithinEval_self](declarations/taylorwithineval-self.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [taylor_within_apply](declarations/taylor-within-apply.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [continuousOn_taylorWithinEval](declarations/continuouson-taylorwithineval.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [monomial_has_deriv_aux](declarations/monomial-has-deriv-aux.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hasDerivWithinAt_taylor_coeff_within](declarations/hasderivwithinat-taylor-coeff-within.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [hasDerivWithinAt_taylorWithinEval](declarations/hasderivwithinat-taylorwithineval.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [taylorWithinEval_hasDerivAt_Ioo](declarations/taylorwithineval-hasderivat-ioo.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasDerivWithinAt_taylorWithinEval_at_Icc](declarations/hasderivwithinat-taylorwithineval-at-icc.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasDerivAt_taylorWithinEval_succ](declarations/hasderivat-taylorwithineval-succ.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [taylor_isLittleO](declarations/taylor-islittleo.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [taylor_isLittleO_univ](declarations/taylor-islittleo-univ.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [taylor_tendsto](declarations/taylor-tendsto.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Real.taylor_tendsto](declarations/real-taylor-tendsto.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [taylor_mean_remainder](declarations/taylor-mean-remainder.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [taylor_mean_remainder_lagrange](declarations/taylor-mean-remainder-lagrange.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [taylor_mean_remainder_lagrange_iteratedDeriv](declarations/taylor-mean-remainder-lagrange-iteratedderiv.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [taylor_mean_remainder_cauchy](declarations/taylor-mean-remainder-cauchy.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [taylor_mean_remainder_bound](declarations/taylor-mean-remainder-bound.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [exists_taylor_mean_remainder_bound](declarations/exists-taylor-mean-remainder-bound.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [taylor_integral_remainder_aux](declarations/taylor-integral-remainder-aux.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [taylor_integral_remainder_of_absolutelyContinuous](declarations/taylor-integral-remainder-of-absolutelycontinuous.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [taylor_integral_remainder](declarations/taylor-integral-remainder.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76741fa0670a4bfc832e6f282980a684e80b025c20e828b61d7ae4f82be3041c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variantfba037b49e06e1fe416f04f9682bfe924601cfaf0aa137ec54331a288c995160.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
