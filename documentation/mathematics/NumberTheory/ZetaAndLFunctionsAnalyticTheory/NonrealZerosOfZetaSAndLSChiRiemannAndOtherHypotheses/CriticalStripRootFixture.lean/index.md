# Critical Strip Root Fixture

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRootFixture.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0b1a2504278fe418e1b62f39e45907f38c7f795`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ChartIndex](declarations/chartindex.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [selfTransition](declarations/selftransition.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [selfTransition_isEquivalent](declarations/selftransition-isequivalent.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [selfOutcome](declarations/selfoutcome.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [atlas](declarations/atlas.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [atlas_root_status](declarations/atlas-root-status.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [not_hasForward](declarations/not-hasforward.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasReverse](declarations/hasreverse.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [forwardGap](declarations/forwardgap.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [reverseGap](declarations/reversegap.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [replayGap](declarations/replaygap.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [gaps](declarations/gaps.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [hasOpenForwardGap](declarations/hasopenforwardgap.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasNoOpenReverseGap](declarations/hasnoopenreversegap.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [auditEntry](declarations/auditentry.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [report](declarations/report.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [rootStep](declarations/rootstep.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [rootPath](declarations/rootpath.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [atlas_not_gapFree](declarations/atlas-not-gapfree.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [report_not_directionalGapsDischarged](declarations/report-not-directionalgapsdischarged.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [no_completeVerticalCoverage](declarations/no-completeverticalcoverage.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [targetChart](declarations/targetchart.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [binding_matches_targetChart](declarations/binding-matches-targetchart.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [targetProfile](declarations/targetprofile.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [targetProfile_status](declarations/targetprofile-status.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [rootToTargetTransition](declarations/roottotargettransition.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rootToTarget_notEquivalent](declarations/roottotarget-notequivalent.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rootToTargetOutcome](declarations/roottotargetoutcome.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rootToTarget_coordinate_admitted](declarations/roottotarget-coordinate-admitted.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rootToTarget_logical_not_admitted](declarations/roottotarget-logical-not-admitted.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `inductive` | [BoundaryChartIndex](declarations/boundarychartindex.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [boundaryChart](declarations/boundarychart.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [boundaryCoordinateTransition](declarations/boundarycoordinatetransition.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [boundaryAtlas](declarations/boundaryatlas.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [boundaryAtlas_root_status](declarations/boundaryatlas-root-status.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [boundaryAtlas_target_status](declarations/boundaryatlas-target-status.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [boundaryAtlas_not_gapFree](declarations/boundaryatlas-not-gapfree.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f334e54bb31a598d89f8fb55a3c93f3a72cc3225e09a15e942cb06268149552b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRootFixture.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
