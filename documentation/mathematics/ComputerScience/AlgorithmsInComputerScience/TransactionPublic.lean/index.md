# Transaction Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 4 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f35c1f2827dcd3bd8ac0249efe6b715c8e296bb1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/TransactionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SurgeryJournalState](declarations/surgeryjournalstate.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RepositoryFileModel](declarations/repositoryfilemodel.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [RepositorySourceModel](declarations/repositorysourcemodel.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SurgeryJournalV1](declarations/surgeryjournalv1.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [SurgeryJournalV1.Valid](declarations/surgeryjournalv1-valid.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SurgeryTransactionIntentV1](declarations/surgerytransactionintentv1.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [SurgeryTransactionV1](declarations/surgerytransactionv1.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [SurgeryPrepareResult](declarations/surgeryprepareresult.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [SurgeryTransactionStep](declarations/surgerytransactionstep.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [SurgeryTransactionStep.model](declarations/surgerytransactionstep-model.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [initialSurgeryJournal](declarations/initialsurgeryjournal.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [prepareSurgeryTransaction](declarations/preparesurgerytransaction.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [recheckSurgeryTransaction](declarations/rechecksurgerytransaction.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [stageSurgeryFiles](declarations/stagesurgeryfiles.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [beginSurgeryRenaming](declarations/beginsurgeryrenaming.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [recordSurgeryRename](declarations/recordsurgeryrename.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [commitSurgeryTransaction](declarations/commitsurgerytransaction.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [rollbackSurgeryTransaction](declarations/rollbacksurgerytransaction.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [recoverSurgeryTransaction](declarations/recoversurgerytransaction.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [prepareSnapshotRace_leavesRepositoryUnchanged](declarations/preparesnapshotrace-leavesrepositoryunchanged.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [prepareRevisionRace_leavesRepositoryUnchanged](declarations/preparerevisionrace-leavesrepositoryunchanged.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rejectedTransactionStep_leavesRepositoryUnchanged](declarations/rejectedtransactionstep-leavesrepositoryunchanged.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [thirdPartyRollbackRace_leavesRepositoryUnchanged](declarations/thirdpartyrollbackrace-leavesrepositoryunchanged.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=535fba6539710d134efac1df9086654b55fc84874801e2a3888230bfa4ce1b77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transaction/Variant87b81c1c9593b57353dd3e07d7e21d7723ec1c69d2ec00faacc2d5a7a0f4bf6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
