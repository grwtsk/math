# Expr Namespaced Real

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 66 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbbeabf31f259c64b9edcd689d9547d1922b82a6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/ExprNamespacedReal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Real.atanh](declarations/real-atanh.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Real.atanh_arg_pos](declarations/real-atanh-arg-pos.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Real.atanh_zero](declarations/real-atanh-zero.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Real.atanh_neg](declarations/real-atanh-neg.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Real.atanh_strictMonoOn](declarations/real-atanh-strictmonoon.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Real.atanh_mono](declarations/real-atanh-mono.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Real.erf](declarations/real-erf.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exp_neg_sq_pos](declarations/exp-neg-sq-pos.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [intervalIntegrable_exp_neg_sq](declarations/intervalintegrable-exp-neg-sq.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [integral_exp_neg_sq_le_half_gaussian](declarations/integral-exp-neg-sq-le-half-gaussian-source-edition-2.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [integral_exp_neg_sq_nonneg](declarations/integral-exp-neg-sq-nonneg.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Real.erf_le_one](declarations/real-erf-le-one.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [integral_exp_neg_sq_le_half_gaussian'](declarations/integral-exp-neg-sq-le-half-gaussian.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Real.neg_one_le_erf](declarations/real-neg-one-le-erf.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [MathConst](declarations/mathconst.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [MathConst.toReal](declarations/mathconst-toreal.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [MathConst.toFloat](declarations/mathconst-tofloat.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [MathConst.toRatApprox](declarations/mathconst-toratapprox.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `inductive` | [Expr](declarations/expr.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sub](declarations/sub.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [div](declarations/div.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [pow](declarations/pow.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [abs](declarations/abs.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [eval](declarations/eval.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [updateVar](declarations/updatevar.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [updateVar_same](declarations/updatevar-same.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [updateVar_other](declarations/updatevar-other.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [updateVar_self](declarations/updatevar-self.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `abbrev` | [evalAlong](declarations/evalalong.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [freeVars](declarations/freevars.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [isClosed](declarations/isclosed.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eval_const](declarations/eval-const.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [eval_var](declarations/eval-var.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [eval_add](declarations/eval-add.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eval_mul](declarations/eval-mul.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eval_neg](declarations/eval-neg.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [eval_inv](declarations/eval-inv.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [eval_exp](declarations/eval-exp.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [eval_sin](declarations/eval-sin.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [eval_cos](declarations/eval-cos.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eval_log](declarations/eval-log.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eval_atan](declarations/eval-atan.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [eval_arsinh](declarations/eval-arsinh.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [eval_atanh](declarations/eval-atanh.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [eval_sinc](declarations/eval-sinc.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [eval_erf](declarations/eval-erf.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [eval_sinh](declarations/eval-sinh.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eval_cosh](declarations/eval-cosh.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eval_tanh](declarations/eval-tanh.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [eval_sqrt](declarations/eval-sqrt.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [eval_namedConst](declarations/eval-namedconst.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [eval_pi](declarations/eval-pi.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [eval_eulerMascheroni](declarations/eval-eulermascheroni.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [eval_sub](declarations/eval-sub.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [eval_div](declarations/eval-div.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [eval_pow](declarations/eval-pow.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [eval_abs](declarations/eval-abs.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [eval_sqrt_sq_of_pos](declarations/eval-sqrt-sq-of-pos.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [eval_abs_of_pos](declarations/eval-abs-of-pos.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [eval_abs_of_neg](declarations/eval-abs-of-neg.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [evalAlong_eq](declarations/evalalong-eq.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [evalAlong_at_ρ](declarations/evalalong-at.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [evalAlong_const'](declarations/evalalong-const.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [evalAlong_var_active](declarations/evalalong-var-active.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [evalAlong_var_passive](declarations/evalalong-var-passive.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [evalAlong_add](declarations/evalalong-add.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [evalAlong_add_pi](declarations/evalalong-add-pi.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [evalAlong_mul](declarations/evalalong-mul.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [evalAlong_mul_pi](declarations/evalalong-mul-pi.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [evalAlong_neg](declarations/evalalong-neg.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [evalAlong_neg_pi](declarations/evalalong-neg-pi.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [evalAlong_sin](declarations/evalalong-sin.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [evalAlong_cos](declarations/evalalong-cos.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [evalAlong_exp](declarations/evalalong-exp.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [evalAlong_inv](declarations/evalalong-inv.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [evalAlong_log](declarations/evalalong-log.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [evalAlong_atan](declarations/evalalong-atan.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [evalAlong_arsinh](declarations/evalalong-arsinh.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [evalAlong_atanh](declarations/evalalong-atanh.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [usesOnlyVar0](declarations/usesonlyvar0.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [eval_usesOnlyVar0_eq](declarations/eval-usesonlyvar0-eq.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [eval_1d_equiv](declarations/eval-1d-equiv.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [eval_box1d_eq_eval1d](declarations/eval-box1d-eq-eval1d.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2842114ea0801f7df874d0787eaf16fdb2b6975bbf0bfb38a9fd50a4e0e54f96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
