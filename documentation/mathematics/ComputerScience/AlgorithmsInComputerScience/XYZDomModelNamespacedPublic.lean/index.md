# XYZDom Model Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c05cfe00e0a8d859f09a73d6c0e4aa6cee26934c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DomNode](declarations/domnode.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [DomModel](declarations/dommodel.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [targetHostCode](declarations/targethostcode.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [DomNode.withRevisionedXYZ](declarations/domnode-withrevisionedxyz.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [DomNode.fromRevisionedXYZ](declarations/domnode-fromrevisionedxyz.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [applyAdmittedProjection](declarations/applyadmittedprojection.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [applyAdmittedProjection_publishes_output_revision](declarations/applyadmittedprojection-publishes-output-revision.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [applyAdmittedProjection_preserves_sourceSnapshotHash](declarations/applyadmittedprojection-preserves-sourcesnapshothash.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [applyAdmittedProjection_target_present](declarations/applyadmittedprojection-target-present.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [DomModel.revisionAt?](declarations/dommodel-revisionat.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [verifiedTargetRevision?](declarations/verifiedtargetrevision.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [precommitStateMatches](declarations/precommitstatematches.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [commitAfterRecheck](declarations/commitafterrecheck.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [commitAfterRecheck_eq_some_iff](declarations/commitafterrecheck-eq-some-iff.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sourceSnapshotRace_preventsCommit](declarations/sourcesnapshotrace-preventscommit.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [targetRevisionRace_preventsCommit](declarations/targetrevisionrace-preventscommit.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [commitAdmitted](declarations/commitadmitted.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [commitAdmitted_of_precommitStateMatches](declarations/commitadmitted-of-precommitstatematches.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [commitAdmitted_of_precommitStateMismatch](declarations/commitadmitted-of-precommitstatemismatch.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [commitAdmitted_target_present](declarations/commitadmitted-target-present.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [commitAdmitted_publishes_output_revision](declarations/commitadmitted-publishes-output-revision.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [commitAdmitted_preserves_sourceSnapshotHash](declarations/commitadmitted-preserves-sourcesnapshothash.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [handleVerificationResult](declarations/handleverificationresult.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rejectedProposal_leavesDomModelUnchanged](declarations/rejectedproposal-leavesdommodelunchanged.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [admittedSourceSnapshotRace_leavesDomModelUnchanged](declarations/admittedsourcesnapshotrace-leavesdommodelunchanged.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [admittedTargetRevisionRace_leavesDomModelUnchanged](declarations/admittedtargetrevisionrace-leavesdommodelunchanged.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f49acac425c72f27aabd41f9be27debbcacd137a2d77c27248b8d298222c1bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
