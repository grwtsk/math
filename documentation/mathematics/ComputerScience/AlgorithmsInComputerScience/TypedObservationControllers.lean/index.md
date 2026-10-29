# Typed Observation Controllers

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant678961efd9d79ed2d5b6647301ef88511baf61ab46eb690b6b5a69eb6adf907f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfd069b61308492c0205c2613faee6b7492fdf4b`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/TypedObservationControllers.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Header](declarations/header.md) | 15 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `abbrev` | [Inventory](declarations/inventory.md) | 22 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `def` | [header](declarations/header-source-edition-2.md) | 24 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `inductive` | [Rejected](declarations/rejected.md) | 27 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `def` | [rejectionCode](declarations/rejectioncode.md) | 31 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `structure` | [Mutation](declarations/mutation.md) | 40 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `def` | [rootCheck](declarations/rootcheck.md) | 45 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [pathCheck](declarations/pathcheck.md) | 48 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `def` | [entryCheck](declarations/entrycheck.md) | 53 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `def` | [directoryPush](declarations/directorypush.md) | 58 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `structure` | [FileState](declarations/filestate.md) | 62 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `def` | [filePush](declarations/filepush.md) | 67 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `def` | [directoryCheck](declarations/directorycheck.md) | 72 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `def` | [absentCheck](declarations/absentcheck.md) | 75 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [header_schema](declarations/header-schema.md) | 78 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [header_root](declarations/header-root.md) | 81 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `theorem` | [header_exists](declarations/header-exists.md) | 83 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [header_empty](declarations/header-empty.md) | 85 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [rootCheck_exact](declarations/rootcheck-exact.md) | 89 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [rootCheck_rejection](declarations/rootcheck-rejection.md) | 92 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [pathCheck_invalid](declarations/pathcheck-invalid.md) | 94 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [pathCheck_collision](declarations/pathcheck-collision.md) | 97 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `theorem` | [pathCheck_fresh](declarations/pathcheck-fresh.md) | 100 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [pathCheck_success_iff](declarations/pathcheck-success-iff.md) | 103 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `theorem` | [pathCheck_failure_preserves](declarations/pathcheck-failure-preserves.md) | 107 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [pathCheck_success_membership](declarations/pathcheck-success-membership.md) | 112 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [entryCheck_symlink_first](declarations/entrycheck-symlink-first.md) | 118 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [entryCheck_directory](declarations/entrycheck-directory.md) | 121 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `theorem` | [entryCheck_regular](declarations/entrycheck-regular.md) | 123 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `theorem` | [entryCheck_nonregular](declarations/entrycheck-nonregular.md) | 125 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `theorem` | [entryCheck_success_iff](declarations/entrycheck-success-iff.md) | 127 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [directoryPush_success](declarations/directorypush-success.md) | 132 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [directoryPush_failure](declarations/directorypush-failure.md) | 136 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [directoryPush_success_iff](declarations/directorypush-success-iff.md) | 141 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `theorem` | [directoryPush_success_bound](declarations/directorypush-success-bound.md) | 146 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `theorem` | [directoryPush_failure_preserves](declarations/directorypush-failure-preserves.md) | 153 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [filePush_success_iff](declarations/filepush-success-iff.md) | 160 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [filePush_success_exact](declarations/filepush-success-exact.md) | 167 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [filePush_failure_preserves](declarations/filepush-failure-preserves.md) | 173 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [filePush_success_count](declarations/filepush-success-count.md) | 179 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [filePush_success_literal_total](declarations/filepush-success-literal-total.md) | 184 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `theorem` | [filePush_success_nonwrapping](declarations/filepush-success-nonwrapping.md) | 191 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `theorem` | [filePush_preserves_observation_history](declarations/filepush-preserves-observation-history.md) | 200 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `theorem` | [directoryCheck_exact](declarations/directorycheck-exact.md) | 206 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `theorem` | [directoryCheck_failure_exact](declarations/directorycheck-failure-exact.md) | 210 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `theorem` | [absentCheck_exact](declarations/absentcheck-exact.md) | 215 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `theorem` | [absentCheck_failure](declarations/absentcheck-failure.md) | 218 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `theorem` | [rejectionCode_limit](declarations/rejectioncode-limit.md) | 220 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `theorem` | [rejectionCode_snapshot_errors](declarations/rejectioncode-snapshot-errors.md) | 222 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `structure` | [Primitives](declarations/primitives.md) | 228 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `def` | [prepare](declarations/prepare.md) | 235 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `def` | [host](declarations/host.md) | 243 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `theorem` | [prepare_success_exact](declarations/prepare-success-exact.md) | 250 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `theorem` | [prepare_root_error_stops](declarations/prepare-root-error-stops.md) | 269 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `theorem` | [prepare_exists_error_exact](declarations/prepare-exists-error-exact.md) | 273 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `theorem` | [host_observe_arguments](declarations/host-observe-arguments.md) | 279 | `BLOCKED_SOURCE_DEPENDENCY` |
| 57 | `theorem` | [host_digest_arguments](declarations/host-digest-arguments.md) | 283 | `BLOCKED_SOURCE_DEPENDENCY` |
| 58 | `theorem` | [host_validate_arguments](declarations/host-validate-arguments.md) | 287 | `BLOCKED_SOURCE_DEPENDENCY` |
| 59 | `theorem` | [concrete_capture_success_literal_constructor](declarations/concrete-capture-success-literal-constructor.md) | 291 | `BLOCKED_SOURCE_DEPENDENCY` |
| 60 | `theorem` | [concrete_capture_success_literal_bounds](declarations/concrete-capture-success-literal-bounds.md) | 298 | `BLOCKED_SOURCE_DEPENDENCY` |
| 61 | `theorem` | [concrete_capture_success_validation](declarations/concrete-capture-success-validation.md) | 306 | `BLOCKED_SOURCE_DEPENDENCY` |
| 62 | `theorem` | [fixture_header_absent](declarations/fixture-header-absent.md) | 313 | `BLOCKED_SOURCE_DEPENDENCY` |
| 63 | `theorem` | [fixture_empty_file_accepts](declarations/fixture-empty-file-accepts.md) | 316 | `BLOCKED_SOURCE_DEPENDENCY` |
| 64 | `theorem` | [fixture_directory_limit_unchanged](declarations/fixture-directory-limit-unchanged.md) | 319 | `BLOCKED_SOURCE_DEPENDENCY` |
| 65 | `def` | [acceptingPrimitives](declarations/acceptingprimitives.md) | 326 | `BLOCKED_SOURCE_DEPENDENCY` |
| 66 | `theorem` | [fixture_concrete_capture_nonvacuous](declarations/fixture-concrete-capture-nonvacuous.md) | 333 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1792c072438d24bb5cb2a12932263cd221c5cad569e498a0a612ec782ba358e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant678961efd9d79ed2d5b6647301ef88511baf61ab46eb690b6b5a69eb6adf907f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
