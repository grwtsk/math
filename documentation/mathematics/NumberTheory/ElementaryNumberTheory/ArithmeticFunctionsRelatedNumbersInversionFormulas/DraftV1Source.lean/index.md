# Draft V1 Source

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6dde3609e76077b2ff9c10125c9fa762ec5633fb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DraftV1Source.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtLogPrefix](declarations/mangoldtlogprefix.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mangoldtLogSum](declarations/mangoldtlogsum.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mangoldtLogWindow](declarations/mangoldtlogwindow.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [mangoldtLogError](declarations/mangoldtlogerror.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [criticalMangoldtWork](declarations/criticalmangoldtwork.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [MangoldtWorkTailLowerBound](declarations/mangoldtworktaillowerbound.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mangoldtLogPrefix_eq_sum](declarations/mangoldtlogprefix-eq-sum.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [primePowerInventory_filter_log](declarations/primepowerinventory-filter-log.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mangoldtLogPrefix_eq_steps](declarations/mangoldtlogprefix-eq-steps.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mangoldtInventory_log_bounds](declarations/mangoldtinventory-log-bounds.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mangoldtLogPrefix_zero](declarations/mangoldtlogprefix-zero.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mangoldtLogPrefix_mul_deriv_intervalIntegrable](declarations/mangoldtlogprefix-mul-deriv-intervalintegrable.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mangoldtLogSum_abel](declarations/mangoldtlogsum-abel.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mangoldtLogWindow_abel](declarations/mangoldtlogwindow-abel.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mangoldtLogWindow_eq_filter](declarations/mangoldtlogwindow-eq-filter.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mangoldtLogWindow_eq_interval_sum](declarations/mangoldtlogwindow-eq-interval-sum.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mangoldtLogError_mul_deriv_intervalIntegrable](declarations/mangoldtlogerror-mul-deriv-intervalintegrable.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mangoldtLogWindow_sub_integral](declarations/mangoldtlogwindow-sub-integral.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [natural_source_coefficient_eq_critical_test](declarations/natural-source-coefficient-eq-critical-test.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [closedPrimeMoment_eq_mangoldtLogSum](declarations/closedprimemoment-eq-mangoldtlogsum.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mangoldtLogWindow_zero](declarations/mangoldtlogwindow-zero.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [closedPrimeMoment_eq_continuous_sub_Mangoldt_work](declarations/closedprimemoment-eq-continuous-sub-mangoldt-work.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mertensResidual_eq_continuous_sub_Mangoldt_work](declarations/mertensresidual-eq-continuous-sub-mangoldt-work.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [primeWork_eq_Mangoldt_work_add_square_higher](declarations/primework-eq-mangoldt-work-add-square-higher.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mangoldt_work_tail_iff_residual_tail](declarations/mangoldt-work-tail-iff-residual-tail.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mangoldtLogError_below_first_atom](declarations/mangoldtlogerror-below-first-atom.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=426ccd69ad265c74df4ea27163c592ef19f58c074ea087f8269b67027c2d085b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV1Source/Variant7e1996bbf9b2df30818e84eca84b26e6d2968531a8ec0f2d51930588d578e1af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
