# Integration

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `311dd7c19f7fb27658208c4be11e77820aa7f316`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/Integration.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [uniformPartitionCore](declarations/uniformpartitioncore.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sumIntervalBoundsCore](declarations/sumintervalboundscore.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [integrateIntervalCore](declarations/integrateintervalcore.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [integrateInterval1Core](declarations/integrateinterval1core.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [exprSupportedCore_intervalIntegrable](declarations/exprsupportedcore-intervalintegrable.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integrateInterval1Core_correct](declarations/integrateinterval1core-correct.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [checkIntegralBoundsCore](declarations/checkintegralboundscore.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [verify_integral_bound](declarations/verify-integral-bound.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [getIntegralBound](declarations/getintegralbound.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [integral_in_bound](declarations/integral-in-bound.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [integrateInterval1WithInv](declarations/integrateinterval1withinv.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [integrateInterval1WithInv_correct](declarations/integrateinterval1withinv-correct.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [checkIntegralBoundsWithInv](declarations/checkintegralboundswithinv.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [verify_integral_bound_withInv](declarations/verify-integral-bound-withinv.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [collectBoundsWithInv](declarations/collectboundswithinv.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [integratePartitionWithInv](declarations/integratepartitionwithinv.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [collectBoundsWithInv_length](declarations/collectboundswithinv-length.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [collectBoundsWithInv_getElem](declarations/collectboundswithinv-getelem.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [integral_subinterval_bounded_withInv](declarations/integral-subinterval-bounded-withinv.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [integratePartitionWithInv_correct](declarations/integratepartitionwithinv-correct.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [AdaptiveResultWithInv](declarations/adaptiveresultwithinv.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [adaptiveErrorEstimate](declarations/adaptiveerrorestimate.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [integrateRefinedWithInv](declarations/integraterefinedwithinv.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [integrateAdaptiveAuxWithInv](declarations/integrateadaptiveauxwithinv.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [integrateAdaptiveWithInv](declarations/integrateadaptivewithinv.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [integrateRefinedWithInv_correct](declarations/integraterefinedwithinv-correct.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intervalIntegrable_splitMid_left_withInv](declarations/intervalintegrable-splitmid-left-withinv.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [intervalIntegrable_splitMid_right_withInv](declarations/intervalintegrable-splitmid-right-withinv.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_split_mid_withInv](declarations/integral-split-mid-withinv.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integrateAdaptiveAuxWithInv_correct](declarations/integrateadaptiveauxwithinv-correct.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [integrateAdaptiveWithInv_correct](declarations/integrateadaptivewithinv-correct.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [checkIntegralAdaptiveLowerBound](declarations/checkintegraladaptivelowerbound.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [checkIntegralAdaptiveUpperBound](declarations/checkintegraladaptiveupperbound.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_adaptive_lower_of_check](declarations/integral-adaptive-lower-of-check.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integral_adaptive_upper_of_check](declarations/integral-adaptive-upper-of-check.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [searchPartitionLowerAux](declarations/searchpartitionloweraux.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [searchPartitionLower](declarations/searchpartitionlower.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [searchPartitionUpperAux](declarations/searchpartitionupperaux.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [searchPartitionUpper](declarations/searchpartitionupper.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [checkIntegralSearchLowerBound](declarations/checkintegralsearchlowerbound.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [checkIntegralSearchUpperBound](declarations/checkintegralsearchupperbound.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [searchPartitionLowerAux_spec](declarations/searchpartitionloweraux-spec.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [searchPartitionUpperAux_spec](declarations/searchpartitionupperaux-spec.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [searchPartitionLowerAux_valid](declarations/searchpartitionloweraux-valid.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [searchPartitionUpperAux_valid](declarations/searchpartitionupperaux-valid.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [integral_search_lower_of_check](declarations/integral-search-lower-of-check.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [integral_search_upper_of_check](declarations/integral-search-upper-of-check.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39ee187b3bcdf0a122606d12f36b464b1c105631ecf44930d3082c828ea7000c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
