# Descriptor Store Transitions Historical Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb50f19244d966fb9d3161f8db74d28cd760a1057470dcf48d4568209e0d82256.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc03a2e333298d4758af68312e48acfc28fb1ed8`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/DescriptorStoreTransitionsHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bytes](declarations/bytes.md) | 23 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `abbrev` | [Inode](declarations/inode.md) | 24 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `abbrev` | [Descriptor](declarations/descriptor.md) | 25 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `structure` | [Name](declarations/name.md) | 27 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `inductive` | [Node](declarations/node.md) | 32 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `structure` | [Store](declarations/store.md) | 38 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `structure` | [Host](declarations/host.md) | 42 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [resolveFrom](declarations/resolvefrom.md) | 48 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `def` | [Attached](declarations/attached.md) | 55 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [absent_descriptor_is_not_attached](declarations/absent-descriptor-is-not-attached.md) | 59 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `def` | [readAt](declarations/readat.md) | 64 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `theorem` | [resolveFrom_regular_rejects](declarations/resolvefrom-regular-rejects.md) | 72 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [resolveFrom_symbolic_rejects](declarations/resolvefrom-symbolic-rejects.md) | 78 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [readAt_exact](declarations/readat-exact.md) | 84 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [readAt_rejects_symbolic](declarations/readat-rejects-symbolic.md) | 93 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `def` | [renamed](declarations/renamed.md) | 103 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `def` | [renameExclusive](declarations/renameexclusive.md) | 108 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [occupied_target_blocks_rename](declarations/occupied-target-blocks-rename.md) | 114 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [absent_source_blocks_rename](declarations/absent-source-blocks-rename.md) | 119 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [exclusive_rename_moves_exact_inode](declarations/exclusive-rename-moves-exact-inode.md) | 124 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [exclusive_rename_preserves_other_names](declarations/exclusive-rename-preserves-other-names.md) | 132 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [exclusive_rename_preserves_all_inode_bytes](declarations/exclusive-rename-preserves-all-inode-bytes.md) | 137 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `def` | [syncFile](declarations/syncfile.md) | 142 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `def` | [syncDirectory](declarations/syncdirectory.md) | 147 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `def` | [crash](declarations/crash.md) | 151 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [crash_closes_descriptors](declarations/crash-closes-descriptors.md) | 154 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [crash_reads_only_durable_bytes](declarations/crash-reads-only-durable-bytes.md) | 157 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [synced_file_survives_crash](declarations/synced-file-survives-crash.md) | 160 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `theorem` | [synced_directory_survives_crash](declarations/synced-directory-survives-crash.md) | 164 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `theorem` | [rename_before_sync_retains_durable_source](declarations/rename-before-sync-retains-durable-source.md) | 169 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `theorem` | [target_first_sync_retains_exact_inode](declarations/target-first-sync-retains-exact-inode.md) | 176 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [completed_rename_syncs_persist_target](declarations/completed-rename-syncs-persist-target.md) | 183 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [source_first_sync_can_lose_both_names](declarations/source-first-sync-can-lose-both-names.md) | 191 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [descriptor_equality_does_not_imply_attachment](declarations/descriptor-equality-does-not-imply-attachment.md) | 200 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `def` | [retirementCheck](declarations/retirementcheck.md) | 215 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `theorem` | [retirementCheck_exact](declarations/retirementcheck-exact.md) | 222 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [checked_retirement_refines_guarded_step](declarations/checked-retirement-refines-guarded-step.md) | 234 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [stale_source_rejects_retirement](declarations/stale-source-rejects-retirement.md) | 245 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [stale_destination_rejects_retirement](declarations/stale-destination-rejects-retirement.md) | 250 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [no_readback_rejects_retirement](declarations/no-readback-rejects-retirement.md) | 255 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [checked_retirement_retains_literal_source](declarations/checked-retirement-retains-literal-source.md) | 260 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fd7e59be59197e199f312ba0fc8f893fdcb6adf32133098c546c981366c8b28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb50f19244d966fb9d3161f8db74d28cd760a1057470dcf48d4568209e0d82256.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
