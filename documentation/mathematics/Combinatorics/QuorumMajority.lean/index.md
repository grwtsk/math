# Quorum Majority

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**12 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/FiniteVoting/QuorumMajority.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3877b4d0029ed2e20620ee5eb7f3ef6168b16f2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/QuorumMajority.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasQuorum](declarations/hasquorum.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [StrictMajority](declarations/strictmajority.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [quorum_monotone](declarations/quorum-monotone.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [majority_iff_twice](declarations/majority-iff-twice.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [majority_iff_threshold](declarations/majority-iff-threshold.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tie_not_majority](declarations/tie-not-majority.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [opposing_majorities_impossible](declarations/opposing-majorities-impossible.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [empty_vote_not_majority](declarations/empty-vote-not-majority.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Attendance](declarations/attendance.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [attendance_bounds_cast_votes](declarations/attendance-bounds-cast-votes.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [quorum_and_majority_iff](declarations/quorum-and-majority-iff.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [majority_subsets_intersect](declarations/majority-subsets-intersect.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=892ea164ce5e53207e1974346b69656d0aba10387a8023b92e19d555b7835909 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/FiniteVoting/QuorumMajority.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
