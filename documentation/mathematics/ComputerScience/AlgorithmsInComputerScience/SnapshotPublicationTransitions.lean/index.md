# Snapshot Publication Transitions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60e3f7e460fecdd85cf65556e5998f023c1c9270`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SnapshotPublicationTransitions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Snapshot](declarations/snapshot.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Context](declarations/context.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Phase](declarations/phase.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [Operation](declarations/operation.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [State](declarations/state.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [initial](declarations/initial.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Step](declarations/step.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Reachable](declarations/reachable.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [retain_requires_expected_destination](declarations/retain-requires-expected-destination.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [destination_drift_blocks_retain](declarations/destination-drift-blocks-retain.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [retire_requires_readback](declarations/retire-requires-readback.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [no_retire_before_readback](declarations/no-retire-before-readback.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [retire_requires_external_grant](declarations/retire-requires-external-grant.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [retire_preserves_source_as_preimage](declarations/retire-preserves-source-as-preimage.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [publish_requires_empty_destination](declarations/publish-requires-empty-destination.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [publish_never_overwrites](declarations/publish-never-overwrites.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [restore_requires_empty_destination](declarations/restore-requires-empty-destination.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [restore_never_overwrites](declarations/restore-never-overwrites.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [destination_change_invalidates_current_verification](declarations/destination-change-invalidates-current-verification.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [destination_change_blocks_retirement](declarations/destination-change-blocks-retirement.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [restore_returns_the_exact_moved_tree](declarations/restore-returns-the-exact-moved-tree.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [conflict_preserves_names_and_preimages](declarations/conflict-preserves-names-and-preimages.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [failure_preserves_names_and_preimages](declarations/failure-preserves-names-and-preimages.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [raw_source_preimage_is_monotone](declarations/raw-source-preimage-is-monotone.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [raw_destination_preimage_is_monotone](declarations/raw-destination-preimage-is-monotone.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [retired_source_is_monotone](declarations/retired-source-is-monotone.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [readback_seen_origin](declarations/readback-seen-origin.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [reachable_source_absent_has_retained_preimage](declarations/reachable-source-absent-has-retained-preimage.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [reachable_readback_seen_has_readback_transition](declarations/reachable-readback-seen-has-readback-transition.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [reachable_source_absence_requires_prior_readback](declarations/reachable-source-absence-requires-prior-readback.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [initial_cannot_retire](declarations/initial-cannot-retire.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stagedState](declarations/stagedstate.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [retainedState](declarations/retainedstate.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [publishedState](declarations/publishedstate.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [checkedState](declarations/checkedstate.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [retiredState](declarations/retiredstate.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [reachable_destination_drift_blocks_retain](declarations/reachable-destination-drift-blocks-retain.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [successful_retirement_reachable](declarations/successful-retirement-reachable.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [successful_retirement_retains_both_raw_preimages](declarations/successful-retirement-retains-both-raw-preimages.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [halted_blocks_host_effects](declarations/halted-blocks-host-effects.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3169dc6da16e5680b8a00cd1bca57f6739363e1c9bb3e6905093611f5c35fe2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SnapshotPublicationTransitions.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
