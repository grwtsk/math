# Game Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Game/Variant5410382a8a0f7efbe2e116aab9bc259d7867e5f9195470482bd1bfd1368e7e68.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2644f3d5c906151d02f4949d9e38096a6640249e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/GamePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GameDecision](declarations/gamedecision.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [NetworkSurgeryGameState](declarations/networksurgerygamestate.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [draftSelection](declarations/draftselection.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [selection_does_not_change_sourceSnapshot](declarations/selection-does-not-change-sourcesnapshot.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [applyProposalDecision](declarations/applyproposaldecision.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rejectedMove_leavesGameStateUnchanged](declarations/rejectedmove-leavesgamestateunchanged.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [staleMove_leavesGameStateUnchanged](declarations/stalemove-leavesgamestateunchanged.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [equalRevisionConflict_leavesGameStateUnchanged](declarations/equalrevisionconflict-leavesgamestateunchanged.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [advanceRepairRound](declarations/advancerepairround.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [repair_round_bounded](declarations/repair-round-bounded.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [HardPolicyVector](declarations/hardpolicyvector.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [StructuralDefectVector](declarations/structuraldefectvector.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [LanguageDiagnosticVector](declarations/languagediagnosticvector.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ChangeCostVector](declarations/changecostvector.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [StructuralDefectVector.components](declarations/structuraldefectvector-components.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [StructuralDefectVector.total](declarations/structuraldefectvector-total.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [StructuralDefectVector.AllFiniteChecksPass](declarations/structuraldefectvector-allfinitecheckspass.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [LanguageDiagnosticVector.components](declarations/languagediagnosticvector-components.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [LanguageDiagnosticVector.AllChecksPass](declarations/languagediagnosticvector-allcheckspass.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FiniteValidationRecord](declarations/finitevalidationrecord.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zeroStructuralEnergy_iff_allFiniteStructuralChecksPass](declarations/zerostructuralenergy-iff-allfinitestructuralcheckspass.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zeroStructuralEnergy_does_not_imply_languageValidity](declarations/zerostructuralenergy-does-not-imply-languagevalidity.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [RepairEnergy](declarations/repairenergy.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [RepairEnergy.vector](declarations/repairenergy-vector.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [RepairEnergy.Less](declarations/repairenergy-less.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [RepairCandidate](declarations/repaircandidate.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [BoundedRepairCandidate](declarations/boundedrepaircandidate.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `inductive` | [RepairSelectionRejection](declarations/repairselectionrejection.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `inductive` | [RepairSelectionResult](declarations/repairselectionresult.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [hasAmbiguousSourceRecovery](declarations/hasambiguoussourcerecovery.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [firstHardPolicySafe](declarations/firsthardpolicysafe.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [selectRepairCandidate](declarations/selectrepaircandidate.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ambiguousRepair_is_rejected_before_selection](declarations/ambiguousrepair-is-rejected-before-selection.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [emptyRepairSet_has_no_safe_candidate](declarations/emptyrepairset-has-no-safe-candidate.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [AcceptedRepairStep](declarations/acceptedrepairstep.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [repairStep_preserves_hardPolicy_ceiling](declarations/repairstep-preserves-hardpolicy-ceiling.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [acceptedRepair_strictlyImproves_or_consumesBudget](declarations/acceptedrepair-strictlyimproves-or-consumesbudget.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [repairTrace](declarations/repairtrace.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [repairTrace_no_duplicateCandidate](declarations/repairtrace-no-duplicatecandidate.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [repairLoop_length_le_budget_or_candidateCount](declarations/repairloop-length-le-budget-or-candidatecount.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [repairLoop_terminates](declarations/repairloop-terminates.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [GameRepositoryModel](declarations/gamerepositorymodel.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [PreparedGameCommit](declarations/preparedgamecommit.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `inductive` | [GameCommitRejection](declarations/gamecommitrejection.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `inductive` | [GameCommitResult](declarations/gamecommitresult.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [GameCommitResult.model](declarations/gamecommitresult-model.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [commitPreparedGameMove](declarations/commitpreparedgamemove.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sourceSnapshotRace_leavesRepositoryModelUnchanged](declarations/sourcesnapshotrace-leavesrepositorymodelunchanged.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [targetRevisionRace_leavesRepositoryModelUnchanged](declarations/targetrevisionrace-leavesrepositorymodelunchanged.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [successfulCommit_preserves_admitted_revision](declarations/successfulcommit-preserves-admitted-revision.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [successfulCommit_projects_exactPreparedSnapshot](declarations/successfulcommit-projects-exactpreparedsnapshot.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [successfulCommit_records_reverseBundle](declarations/successfulcommit-records-reversebundle.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [quantizedCandidateSelection](declarations/quantizedcandidateselection.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [rounding_does_not_mutate_gameState](declarations/rounding-does-not-mutate-gamestate.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e8757554990e2b7fbd76adad59c3d3ec6ec9075a7e1ac1b1c2c59e68de2f19f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Game/Variant5410382a8a0f7efbe2e116aab9bc259d7867e5f9195470482bd1bfd1368e7e68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
