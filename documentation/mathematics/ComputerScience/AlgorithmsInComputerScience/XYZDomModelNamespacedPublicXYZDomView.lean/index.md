# XYZDom Model Namespaced Public XYZDom View

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variante087402cac7aaca07830b780276fefce486281b5cfa075038f0cc1f9261c44bd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27b73e8b2b37c8f1cec4d9daafb21b9a6e2d2038`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/XYZDomModelNamespacedPublicXYZDomView.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [XYZDomView](declarations/xyzdomview.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [xyzDomProjectionAdapter](declarations/xyzdomprojectionadapter.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [DomNode](declarations/domnode.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [DomModel](declarations/dommodel.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [DomNode.revision](declarations/domnode-revision.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [DomNode.xRaw](declarations/domnode-xraw.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [DomNode.yRaw](declarations/domnode-yraw.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [DomNode.zRaw](declarations/domnode-zraw.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [DomModel.publishedRevision](declarations/dommodel-publishedrevision.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [targetHostCode](declarations/targethostcode.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [preparedPublication](declarations/preparedpublication.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [DomNode.withRevisionedXYZ](declarations/domnode-withrevisionedxyz.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [DomNode.fromRevisionedXYZ](declarations/domnode-fromrevisionedxyz.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [applyAdmittedProjection](declarations/applyadmittedprojection.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [applyAdmittedProjection_publishes_output_revision](declarations/applyadmittedprojection-publishes-output-revision.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [applyAdmittedProjection_preserves_payload_identity_reference](declarations/applyadmittedprojection-preserves-payload-identity-reference.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [applyAdmittedProjection_preserves_sourceSnapshotHash](declarations/applyadmittedprojection-preserves-sourcesnapshothash.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [applyAdmittedProjection_target_present](declarations/applyadmittedprojection-target-present.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [DomModel.revisionAt?](declarations/dommodel-revisionat.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [verifiedTargetRevision?](declarations/verifiedtargetrevision.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [precommitStateMatches](declarations/precommitstatematches.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [commitAfterRecheck](declarations/commitafterrecheck.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [commitAfterRecheck_eq_some_iff](declarations/commitafterrecheck-eq-some-iff.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sourceSnapshotRace_preventsCommit](declarations/sourcesnapshotrace-preventscommit.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [targetRevisionRace_preventsCommit](declarations/targetrevisionrace-preventscommit.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [commitAdmitted](declarations/commitadmitted.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [commitAdmitted_of_precommitStateMatches](declarations/commitadmitted-of-precommitstatematches.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [commitAdmitted_of_precommitStateMismatch](declarations/commitadmitted-of-precommitstatemismatch.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [commitAdmitted_target_present](declarations/commitadmitted-target-present.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [commitAdmitted_publishes_output_revision](declarations/commitadmitted-publishes-output-revision.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [commitAdmitted_preserves_payload_identity_reference](declarations/commitadmitted-preserves-payload-identity-reference.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [commitAdmitted_preserves_sourceSnapshotHash](declarations/commitadmitted-preserves-sourcesnapshothash.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [handleVerificationResult](declarations/handleverificationresult.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rejectedProposal_leavesDomModelUnchanged](declarations/rejectedproposal-leavesdommodelunchanged.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [admittedSourceSnapshotRace_leavesDomModelUnchanged](declarations/admittedsourcesnapshotrace-leavesdommodelunchanged.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [admittedTargetRevisionRace_leavesDomModelUnchanged](declarations/admittedtargetrevisionrace-leavesdommodelunchanged.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d7a2345753411b0866cadaa6b04edd9242e49abe8f3a1e011e1827ba06f7f4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variante087402cac7aaca07830b780276fefce486281b5cfa075038f0cc1f9261c44bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
