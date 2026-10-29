# Tag Reduction Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dda9b2c122e73bc974535fb3ea379f898accc971`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/TagReductionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [TagStep](declarations/tagstep.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [tagRootNext](declarations/tagrootnext.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [tagNext](declarations/tagnext.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [tag_root_next_sound](declarations/tag-root-next-sound.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tag_next_sound](declarations/tag-next-sound.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tag_next_complete](declarations/tag-next-complete.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tag_next_correct](declarations/tag-next-correct.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tag_step_preserves_typing](declarations/tag-step-preserves-typing.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tag_step_size](declarations/tag-step-size.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tag_step_size_decreases](declarations/tag-step-size-decreases.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [tag_size_strict_simulation](declarations/tag-size-strict-simulation.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tag_strongly_normalizing_by_simulation](declarations/tag-strongly-normalizing-by-simulation.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tagReducer](declarations/tagreducer.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [tagHeight](declarations/tagheight.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tag_height_eq_mathematical_height](declarations/tag-height-eq-mathematical-height.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [tag_strongly_normalizing](declarations/tag-strongly-normalizing.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [tag_longest_trace](declarations/tag-longest-trace.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [tag_trace_preserves_typing](declarations/tag-trace-preserves-typing.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tag_trace_size](declarations/tag-trace-size.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tag_step_representation_derivable](declarations/tag-step-representation-derivable.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [tag_table_output_bounded](declarations/tag-table-output-bounded.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [TagAssignmentValid](declarations/tagassignmentvalid.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tag_evaluation_bounded](declarations/tag-evaluation-bounded.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tag_cancel_evaluation](declarations/tag-cancel-evaluation.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tag_step_preserves_evaluation](declarations/tag-step-preserves-evaluation.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tag_invalid_assignment_changes_readout](declarations/tag-invalid-assignment-changes-readout.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [tagNormalize](declarations/tagnormalize.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tag_normalize_spec](declarations/tag-normalize-spec.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tag_normalize_preserves_typing](declarations/tag-normalize-preserves-typing.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tag_normalize_preserves_evaluation](declarations/tag-normalize-preserves-evaluation.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tag_catalogue_normalization_budget](declarations/tag-catalogue-normalization-budget.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tag_refl_step_under](declarations/tag-refl-step-under.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tag_root_diamond](declarations/tag-root-diamond.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [tag_local_diamond](declarations/tag-local-diamond.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tag_confluent](declarations/tag-confluent.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [tag_trace_to_reachability](declarations/tag-trace-to-reachability.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tag_reachable_normal_forms_unique](declarations/tag-reachable-normal-forms-unique.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [tag_normalize_step_invariant](declarations/tag-normalize-step-invariant.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [tag_step_substitution](declarations/tag-step-substitution.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [tag_substitution_size_bound](declarations/tag-substitution-size-bound.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [tag_height_size_bound](declarations/tag-height-size-bound.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [tag_substitution_height_bound](declarations/tag-substitution-height-bound.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tag_substitution_creates_redex](declarations/tag-substitution-creates-redex.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [checked_tag_tag_reduces](declarations/checked-tag-tag-reduces.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [checked_tag_tag_normalizes](declarations/checked-tag-tag-normalizes.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [checked_tag_tag_height](declarations/checked-tag-tag-height.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [checked_reduction_endpoints_valid](declarations/checked-reduction-endpoints-valid.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [outside_catalogue_normalizes](declarations/outside-catalogue-normalizes.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd16d74a61fe5ae7dc5197933b811b2daa64e7637d0f53c68ee6da06888f2d0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagReduction/Variant863366d2bb3d961ebc059b56decd0f1578136babccc2d435049428c7a9e0df27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
