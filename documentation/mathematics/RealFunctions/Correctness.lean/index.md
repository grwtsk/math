# Correctness

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6758f0dac2c2058bc3b222cc1575703c166ec55b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/Correctness.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [evalDual_val_correct](declarations/evaldual-val-correct.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [evalFunc1](declarations/evalfunc1.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [evalFunc1_differentiable](declarations/evalfunc1-differentiable.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cos_mem_cosInterval_of_any](declarations/cos-mem-cosinterval-of-any.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sin_mem_sinInterval_of_any](declarations/sin-mem-sininterval-of-any.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [neg_sin_mem_neg_sinInterval](declarations/neg-sin-mem-neg-sininterval.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [updateVar_mem_mkDualEnv_val](declarations/updatevar-mem-mkdualenv-val.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [evalFunc1_add](declarations/evalfunc1-add.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evalFunc1_add_pi](declarations/evalfunc1-add-pi.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evalFunc1_mul](declarations/evalfunc1-mul.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evalFunc1_mul_pi](declarations/evalfunc1-mul-pi.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFunc1_neg](declarations/evalfunc1-neg.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evalFunc1_neg_pi](declarations/evalfunc1-neg-pi.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evalFunc1_sin](declarations/evalfunc1-sin.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evalFunc1_cos](declarations/evalfunc1-cos.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [evalFunc1_exp](declarations/evalfunc1-exp.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evalFunc1_log](declarations/evalfunc1-log.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [evalFunc1_atan](declarations/evalfunc1-atan.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [evalFunc1_arsinh](declarations/evalfunc1-arsinh.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [evalFunc1_atanh](declarations/evalfunc1-atanh.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [evalFunc1_sinc](declarations/evalfunc1-sinc.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [evalFunc1_erf](declarations/evalfunc1-erf.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [evalFunc1_sqrt](declarations/evalfunc1-sqrt.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [evalFunc1_const](declarations/evalfunc1-const.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [evalFunc1_var](declarations/evalfunc1-var.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [evalFunc1_namedConst](declarations/evalfunc1-namedconst.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [evalFunc1_pi](declarations/evalfunc1-pi.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [evalFunc1_eulerMascheroni](declarations/evalfunc1-eulermascheroni.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [deriv_mem_dualDer](declarations/deriv-mem-dualder.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [evalDual_der_correct](declarations/evaldual-der-correct.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [evalAlong_differentiable](declarations/evalalong-differentiable.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [evalDual_der_correct_idx](declarations/evaldual-der-correct-idx.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [derivInterval_correct_idx](declarations/derivinterval-correct-idx.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [UsesOnlyVar0](declarations/usesonlyvar0.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [evalDual_congr_at_0](declarations/evaldual-congr-at-0.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mkDualEnv_at_0](declarations/mkdualenv-at-0.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [derivInterval_eq_evalWithDeriv1_of_UsesOnlyVar0](declarations/derivinterval-eq-evalwithderiv1-of-usesonlyvar0.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [evalWithDeriv1_correct](declarations/evalwithderiv1-correct.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2419e2f9ecdf4ccebb6501ec7b4a8405c9581418038264d99b15460c2f08854 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant43fc315f7da277e1bfb0796c4afb7a61c6e2c69e8b67ce60040cd87c55ffa38c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
