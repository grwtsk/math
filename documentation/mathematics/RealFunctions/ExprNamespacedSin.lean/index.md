# Expr Namespaced Sin

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf961c73085cd288d6c5efc32e854e4510fee259`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/ExprNamespacedSin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sin](declarations/sin.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [cos](declarations/cos.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [exp](declarations/exp.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sinh](declarations/sinh.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [cosh](declarations/cosh.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [tanh](declarations/tanh.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [atan](declarations/atan.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [atanh](declarations/atanh-source-edition-2.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [asinh](declarations/asinh.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [sinc](declarations/sinc.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [erf](declarations/erf.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [log?](declarations/log.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sqrt?](declarations/sqrt.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [atan?](declarations/atan-source-edition-2.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [erf?](declarations/erf-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [atanhSafe](declarations/atanhsafe.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [abs_le_interval_radius](declarations/abs-le-interval-radius.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [abs_lt_one_of_atanhSafe](declarations/abs-lt-one-of-atanhsafe.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [atanh?](declarations/atanh.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fromExpr](declarations/fromexpr-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [fromExpr?](declarations/fromexpr.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [fromExpr?_center](declarations/fromexpr-center.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [add_evalSet_correct](declarations/add-evalset-correct.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [neg_evalSet_correct](declarations/neg-evalset-correct.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sin_evalSet_correct](declarations/sin-evalset-correct.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cos_evalSet_correct](declarations/cos-evalset-correct.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exp_evalSet_correct](declarations/exp-evalset-correct.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sinh_evalSet_correct](declarations/sinh-evalset-correct.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cosh_evalSet_correct](declarations/cosh-evalset-correct.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [asinh_evalSet_correct](declarations/asinh-evalset-correct.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sinc_evalSet_correct](declarations/sinc-evalset-correct.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tanh_mem_Icc](declarations/tanh-mem-icc.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bound_contains_neg_one_one](declarations/bound-contains-neg-one-one.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [tanh_evalSet_correct](declarations/tanh-evalset-correct.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [atanh_evalSet_correct'](declarations/atanh-evalset-correct.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fromExpr?_domain](declarations/fromexpr-domain.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [fromExpr_evalSet_correct](declarations/fromexpr-evalset-correct.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fromExpr_correct](declarations/fromexpr-correct.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [expIntervalRefined](declarations/expintervalrefined.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_expIntervalRefined](declarations/mem-expintervalrefined.md) | 1286 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f1dcd75df975802fd5b8a5722fdc5f72832ef9c48afc75d8d1d86bc39dd42e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
