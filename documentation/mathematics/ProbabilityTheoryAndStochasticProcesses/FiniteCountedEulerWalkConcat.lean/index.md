# Finite Counted Euler Walk Concat

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3aaa6b1f7b042d1548fb141708399427e99b3b5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/FiniteCountedEulerWalkConcat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [CountedWalk.concat](declarations/countedwalk-concat.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [CountedWalk.concat_edges](declarations/countedwalk-concat-edges.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [CountedWalk.insertClosedAtEnd](declarations/countedwalk-insertclosedatend.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [CountedWalk.concat_used](declarations/countedwalk-concat-used.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [CountedWalk.concat_nodup](declarations/countedwalk-concat-nodup.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [FreshCountedTrail.concat](declarations/freshcountedtrail-concat.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [FreshCountedTrail.concat_used](declarations/freshcountedtrail-concat-used.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [FreshCountedTrail.concat_used_card](declarations/freshcountedtrail-concat-used-card.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [FreshCountedTrail.concat_unused_card](declarations/freshcountedtrail-concat-unused-card.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [FreshCountedTrail.spliceClosedAtFinish](declarations/freshcountedtrail-spliceclosedatfinish.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [FreshCountedTrail.spliceClosedAtFinish_used](declarations/freshcountedtrail-spliceclosedatfinish-used.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [FreshCountedTrail.spliceClosedAtFinish_strict](declarations/freshcountedtrail-spliceclosedatfinish-strict.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [FreshCountedTrail.spliceAtFactorization](declarations/freshcountedtrail-spliceatfactorization.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [FreshCountedTrail.spliceAtFactorization_used](declarations/freshcountedtrail-spliceatfactorization-used.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [FreshCountedTrail.spliceAtFactorization_strict](declarations/freshcountedtrail-spliceatfactorization-strict.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [FreshCountedTrail.spliceAtFactorization_endpoint](declarations/freshcountedtrail-spliceatfactorization-endpoint.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [FreshCountedTrail.spliceAtFactorization_closed](declarations/freshcountedtrail-spliceatfactorization-closed.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [FreshCountedTrail.factorAtStart](declarations/freshcountedtrail-factoratstart.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [FreshCountedTrail.factorAtStart_used](declarations/freshcountedtrail-factoratstart-used.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [FreshCountedTrail.factorAtFinish](declarations/freshcountedtrail-factoratfinish.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [FreshCountedTrail.factorAtFinish_used](declarations/freshcountedtrail-factoratfinish-used.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [CountedWalk.Visits](declarations/countedwalk-visits.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [CountedWalk.factor_of_visits](declarations/countedwalk-factor-of-visits.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [CountedWalk.visits_finish](declarations/countedwalk-visits-finish.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [CountedWalk.visits_start](declarations/countedwalk-visits-start.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [CountedWalk.visits_append_of_visits](declarations/countedwalk-visits-append-of-visits.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [CountedWalk.visits_previous_finish](declarations/countedwalk-visits-previous-finish.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [FreshCountedTrail.factor_of_visits](declarations/freshcountedtrail-factor-of-visits.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [FreshCountedTrail.exists_splice_of_visit](declarations/freshcountedtrail-exists-splice-of-visit.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [FreshCountedTrail.exists_strict_splice_of_visit](declarations/freshcountedtrail-exists-strict-splice-of-visit.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20206bc10c64abf70be22409f6d6a6848d698197cfb0be98b2c49711f1cf025e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerWalkConcat.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
