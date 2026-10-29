# Expr Sin

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bebe49a751e3b8bebc58fb10136b82b3825c65a4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/ExprSin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sin](declarations/sin.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [cos](declarations/cos.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [exp](declarations/exp.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sinh](declarations/sinh.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [cosh](declarations/cosh.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [tanh](declarations/tanh.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [atan](declarations/atan.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [atanh](declarations/atanh-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [asinh](declarations/asinh.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [sinc](declarations/sinc.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [erf](declarations/erf-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [log?](declarations/log.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sqrt?](declarations/sqrt.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [atan?](declarations/atan-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [erf?](declarations/erf.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [atanhSafe](declarations/atanhsafe.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [abs_le_interval_radius](declarations/abs-le-interval-radius.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [abs_lt_one_of_atanhSafe](declarations/abs-lt-one-of-atanhsafe.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [atanh?](declarations/atanh.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fromExpr](declarations/fromexpr.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [fromExpr?](declarations/fromexpr-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [fromExpr?_center](declarations/fromexpr-center.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [add_evalSet_correct](declarations/add-evalset-correct.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [neg_evalSet_correct](declarations/neg-evalset-correct.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sin_evalSet_correct](declarations/sin-evalset-correct.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cos_evalSet_correct](declarations/cos-evalset-correct.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exp_evalSet_correct](declarations/exp-evalset-correct.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sinh_evalSet_correct](declarations/sinh-evalset-correct.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cosh_evalSet_correct](declarations/cosh-evalset-correct.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [asinh_evalSet_correct](declarations/asinh-evalset-correct.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sinc_evalSet_correct](declarations/sinc-evalset-correct.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tanh_mem_Icc](declarations/tanh-mem-icc.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bound_contains_neg_one_one](declarations/bound-contains-neg-one-one.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [tanh_evalSet_correct](declarations/tanh-evalset-correct.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [atanh_evalSet_correct'](declarations/atanh-evalset-correct.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fromExpr?_domain](declarations/fromexpr-domain.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [fromExpr_evalSet_correct](declarations/fromexpr-evalset-correct.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fromExpr_correct](declarations/fromexpr-correct.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [expIntervalRefined](declarations/expintervalrefined.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_expIntervalRefined](declarations/mem-expintervalrefined.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05d196d75d3829214994e141f1742911d6d7eacad09176d60461ffffd81bfa73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
