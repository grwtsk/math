# Theta

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8d54a0e8b85bc17385d0f1a34e5c28de0bd437f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/Theta.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [logPrimeUB](declarations/logprimeub.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [logPrimeLB](declarations/logprimelb.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [thetaUB](declarations/thetaub.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [thetaLB](declarations/thetalb.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [log_prime_le_logPrimeUB](declarations/log-prime-le-logprimeub.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [logPrimeLB_le_log_prime](declarations/logprimelb-le-log-prime.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [theta_eq_ite_sum](declarations/theta-eq-ite-sum.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [theta_le_thetaUB](declarations/theta-le-thetaub.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [thetaLB_le_theta](declarations/thetalb-le-theta.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [theta_le_of_thetaUB_le](declarations/theta-le-of-thetaub-le.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [checkThetaLeMulWith](declarations/checkthetalemulwith.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [theta_le_of_checkThetaLeMulWith](declarations/theta-le-of-checkthetalemulwith.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [checkThetaAbsError](declarations/checkthetaabserror.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [abs_theta_sub_le_of_checkThetaAbsError](declarations/abs-theta-sub-le-of-checkthetaabserror.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [thetaUBPrefix](declarations/thetaubprefix.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [thetaUB_succ](declarations/thetaub-succ.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [thetaUB_eq_acc](declarations/thetaub-eq-acc.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [checkAllThetaLeMulWith](declarations/checkallthetalemulwith.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [go_true_implies_checkThetaLeMulWith](declarations/go-true-implies-checkthetalemulwith.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [checkAllThetaLeMulWith_implies_checkThetaLeMulWith](declarations/checkallthetalemulwith-implies-checkthetalemulwith.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [thetaLB_succ](declarations/thetalb-succ.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [thetaLB_eq_acc](declarations/thetalb-eq-acc.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [checkAllThetaAbsError](declarations/checkallthetaabserror.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [go_true_implies_checkThetaAbsError](declarations/go-true-implies-checkthetaabserror.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [checkAllThetaAbsError_implies_checkThetaAbsError](declarations/checkallthetaabserror-implies-checkthetaabserror.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [checkThetaRelError](declarations/checkthetarelerror.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [abs_theta_sub_le_mul_of_checkThetaRelError](declarations/abs-theta-sub-le-mul-of-checkthetarelerror.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [checkAllThetaRelError](declarations/checkallthetarelerror.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [go_true_implies_checkThetaRelError](declarations/go-true-implies-checkthetarelerror.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [checkAllThetaRelError_implies_checkThetaRelError](declarations/checkallthetarelerror-implies-checkthetarelerror.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [checkThetaRelErrorReal](declarations/checkthetarelerrorreal.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [abs_theta_sub_le_mul_of_checkThetaRelErrorReal](declarations/abs-theta-sub-le-mul-of-checkthetarelerrorreal.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [checkAllThetaRelErrorReal](declarations/checkallthetarelerrorreal.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [go_true_implies_checkAllThetaRelErrorReal](declarations/go-true-implies-checkallthetarelerrorreal.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [checkAllThetaRelErrorReal_implies](declarations/checkallthetarelerrorreal-implies.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9c37eddc1bf5d3f316bbc9855e195ec34e103b9f0feb2ae09c416d30687975d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Theta/Variant24687acc45e2d2433508fc7e9393eb576f557383f955c6ef19d189970a4d1b8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
