# Finite Counted Euler Degree Balance

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**18 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `348c0913ceb094c6e774cab53e6dfe8f5213162f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/FiniteCountedEulerDegreeBalance.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [countedOutDegree](declarations/countedoutdegree.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [countedInDegree](declarations/countedindegree.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [CountedDegreeBalanced](declarations/counteddegreebalanced.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [countedUsedOutDegree](declarations/countedusedoutdegree.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [countedUsedInDegree](declarations/countedusedindegree.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [countedOutDegree_used_unused](declarations/countedoutdegree-used-unused.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [countedInDegree_used_unused](declarations/countedindegree-used-unused.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [countedUsedOutDegree_insert](declarations/countedusedoutdegree-insert.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [countedUsedInDegree_insert](declarations/countedusedindegree-insert.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [FreshCountedTrail.used_degree_imbalance](declarations/freshcountedtrail-used-degree-imbalance.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [FreshCountedTrail.unused_out_zero_of_maximal](declarations/freshcountedtrail-unused-out-zero-of-maximal.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [FreshCountedTrail.maximal_finish_imbalance](declarations/freshcountedtrail-maximal-finish-imbalance.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [FreshCountedTrail.closed_of_balanced_maximal](declarations/freshcountedtrail-closed-of-balanced-maximal.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [FreshCountedTrail.closed_used_balanced](declarations/freshcountedtrail-closed-used-balanced.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [FreshCountedTrail.closed_unused_balanced](declarations/freshcountedtrail-closed-unused-balanced.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [FreshCountedTrail.unused_in_pos_iff_out_pos](declarations/freshcountedtrail-unused-in-pos-iff-out-pos.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [FreshCountedTrail.unused_out_edge_of_unused_in_edge](declarations/freshcountedtrail-unused-out-edge-of-unused-in-edge.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [FreshCountedTrail.unused_out_edge_of_incident](declarations/freshcountedtrail-unused-out-edge-of-incident.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc59fe25e0f6c2ec567272532ee2d07a5fcee330230677aa0df5ecc28f04dce7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerDegreeBalance.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
