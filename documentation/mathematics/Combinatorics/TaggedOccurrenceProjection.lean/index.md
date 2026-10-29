# Tagged Occurrence Projection

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7fa9d7f09fa74e3919f2f869bb1111073c37c8a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/TaggedOccurrenceProjection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Placement](declarations/placement.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [place](declarations/place.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [project](declarations/project.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [place_injective](declarations/place-injective.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [original_place](declarations/original-place.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [forget_project](declarations/forget-project.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [project_length](declarations/project-length.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [project_append](declarations/project-append.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [project_position](declarations/project-position.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [project_multiplicity](declarations/project-multiplicity.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [project_placed_multiplicity](declarations/project-placed-multiplicity.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [project_coverage](declarations/project-coverage.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [project_injective](declarations/project-injective.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [projectPartial](declarations/projectpartial.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [projectPartial_total](declarations/projectpartial-total.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [projectPartial_isSome](declarations/projectpartial-issome.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [projectPartial_missing](declarations/projectpartial-missing.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forget_projectPartial](declarations/forget-projectpartial.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [projectPartial_multiplicity](declarations/projectpartial-multiplicity.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [inventoryGuard](declarations/inventoryguard.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inventoryGuard_spec](declarations/inventoryguard-spec.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inventoryGuard_actual](declarations/inventoryguard-actual.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inventoryGuard_rejects_invalid_actual](declarations/inventoryguard-rejects-invalid-actual.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [registered_only_guard_is_insufficient](declarations/registered-only-guard-is-insufficient.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [SourceRole](declarations/sourcerole.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [roleGuard](declarations/roleguard.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [roleGuard_spec](declarations/roleguard-spec.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [roleGuard_original](declarations/roleguard-original.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [roleGuard_rejects_original_mismatch](declarations/roleguard-rejects-original-mismatch.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [destination_role_alone_is_insufficient](declarations/destination-role-alone-is-insufficient.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [Folder](declarations/folder.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [planGitkeep](declarations/plangitkeep.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [planGitkeep_iff](declarations/plangitkeep-iff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [empty_direct_folder_requires_gitkeep](declarations/empty-direct-folder-requires-gitkeep.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [child_directories_do_not_change_gitkeep](declarations/child-directories-do-not-change-gitkeep.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [interior_folder_placeholder_example](declarations/interior-folder-placeholder-example.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [validGitkeep](declarations/validgitkeep.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [validGitkeep_presence_iff](declarations/validgitkeep-presence-iff.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [validGitkeep_empty_bytes](declarations/validgitkeep-empty-bytes.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58da7bd28803b6e2a5abbedf8a7c40aba1c993cbddd612544d8f418b54502017 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/TaggedOccurrenceProjection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
