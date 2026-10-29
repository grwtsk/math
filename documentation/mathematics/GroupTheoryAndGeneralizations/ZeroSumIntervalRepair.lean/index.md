# Zero Sum Interval Repair

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8e696666b5fcdb3d5a0493e2001361069a5209c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/ZeroSumIntervalRepair.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [positionIntervalSum](declarations/positionintervalsum.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BadRightEndpoints](declarations/badrightendpoints.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_badRightEndpoints](declarations/mem-badrightendpoints.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Blocked](declarations/blocked.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [repairWindow](declarations/repairwindow.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [blockedCandidates](declarations/blockedcandidates.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [badNeighborhood](declarations/badneighborhood.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [AdmissiblePermutation](declarations/admissiblepermutation.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [GoodRepairGeometry](declarations/goodrepairgeometry.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [positionIntervalSum_swap](declarations/positionintervalsum-swap.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [unblocked_swap_bad_subset](declarations/unblocked-swap-bad-subset.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [unblocked_swap_preserves_repair_invariant](declarations/unblocked-swap-preserves-repair-invariant.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [repairWindow_card](declarations/repairwindow-card.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [repairWindow_available](declarations/repairwindow-available.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [repair_capacity_arithmetic](declarations/repair-capacity-arithmetic.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zero_capacity_has_no_partner](declarations/zero-capacity-has-no-partner.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [usedRepairPositions](declarations/usedrepairpositions.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [trace_left_injective](declarations/trace-left-injective.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [usedRepairPositions_window_card](declarations/usedrepairpositions-window-card.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [originalBad_window_card](declarations/originalbad-window-card.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [trace_fixes_before](declarations/trace-fixes-before.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [supportsDisjoint_append_swap](declarations/supportsdisjoint-append-swap.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [bounded_repair_trace_aux](declarations/bounded-repair-trace-aux.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [goodRepairGeometry_exists_trace](declarations/goodrepairgeometry-exists-trace.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [goodRepairGeometry_valid_permutation](declarations/goodrepairgeometry-valid-permutation.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [local_swap_can_create_collision](declarations/local-swap-can-create-collision.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intersecting_trace_rejected](declarations/intersecting-trace-rejected.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b758a6c140e10d396306e48e1e3a1c093e73022a71720c776d1565c0f0c5e15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/ZeroSumIntervalRepair.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
