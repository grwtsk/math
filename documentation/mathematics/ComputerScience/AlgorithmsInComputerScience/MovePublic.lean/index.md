# Move Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `551f4f6b5029625f9608b1c1c1478512d5979b06`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GamePhase](declarations/gamephase.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [GamePhase.rank](declarations/gamephase-rank.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [GamePhaseStep](declarations/gamephasestep.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [gamePhase_rank_nonDecreasing](declarations/gamephase-rank-nondecreasing.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [committed_requires_reviewReady_and_commitRequest](declarations/committed-requires-reviewready-and-commitrequest.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rejected_terminal](declarations/rejected-terminal.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [cancelled_terminal](declarations/cancelled-terminal.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [committed_terminal](declarations/committed-terminal.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [MoveKind](declarations/movekind.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [RepositoryBoard.containsPiece](declarations/repositoryboard-containspiece.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [NetworkSurgeryAdmissionContext](declarations/networksurgeryadmissioncontext.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [PreparedNetworkSurgeryProposal](declarations/preparednetworksurgeryproposal.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [PreparedNetworkSurgeryProposal.IsReplay](declarations/preparednetworksurgeryproposal-isreplay.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict](declarations/preparednetworksurgeryproposal-hasequalrevisionconflict.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [PreparedNetworkSurgeryProposal.PiecesDeclared](declarations/preparednetworksurgeryproposal-piecesdeclared.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [PreparedNetworkSurgeryProposal.EdgesDeclared](declarations/preparednetworksurgeryproposal-edgesdeclared.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [PreparedNetworkSurgeryProposal.Valid](declarations/preparednetworksurgeryproposal-valid.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [NetworkSurgeryRejectionCode](declarations/networksurgeryrejectioncode.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [firstProposalFailure](declarations/firstproposalfailure.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [firstProposalFailure_of_internalContractInvalid](declarations/firstproposalfailure-of-internalcontractinvalid.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [firstProposalFailure_of_invalidContractHash](declarations/firstproposalfailure-of-invalidcontracthash.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [firstProposalFailure_of_invalidSession](declarations/firstproposalfailure-of-invalidsession.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [firstProposalFailure_of_equalRevisionConflict](declarations/firstproposalfailure-of-equalrevisionconflict.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [firstProposalFailure_of_invalidSourceSnapshotHash](declarations/firstproposalfailure-of-invalidsourcesnapshothash.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [firstProposalFailure_of_unknownPiece](declarations/firstproposalfailure-of-unknownpiece.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [firstProposalFailure_of_unknownEdge](declarations/firstproposalfailure-of-unknownedge.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [firstProposalFailure_of_sourceRangeMismatch](declarations/firstproposalfailure-of-sourcerangemismatch.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [firstProposalFailure_of_overlappingEdits](declarations/firstproposalfailure-of-overlappingedits.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [firstProposalFailure_of_capacityExceeded](declarations/firstproposalfailure-of-capacityexceeded.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [firstProposalFailure_of_boundaryLedgerUnbalanced](declarations/firstproposalfailure-of-boundaryledgerunbalanced.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [firstProposalFailure_of_identityChange](declarations/firstproposalfailure-of-identitychange.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [firstProposalFailure_of_classificationChange](declarations/firstproposalfailure-of-classificationchange.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [firstProposalFailure_of_languageValidationError](declarations/firstproposalfailure-of-languagevalidationerror.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [firstProposalFailure_of_deterministicResultMismatch](declarations/firstproposalfailure-of-deterministicresultmismatch.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [firstProposalFailure_of_bracketProjectionInvalid](declarations/firstproposalfailure-of-bracketprojectioninvalid.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [firstProposalFailure_of_publicApiChange](declarations/firstproposalfailure-of-publicapichange.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [firstProposalFailure_of_statementChange](declarations/firstproposalfailure-of-statementchange.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [firstProposalFailure_of_axiomGrowth](declarations/firstproposalfailure-of-axiomgrowth.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [AdmittedMove](declarations/admittedmove.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `inductive` | [NetworkSurgeryVerificationResult](declarations/networksurgeryverificationresult.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [verifyNetworkSurgeryProposal](declarations/verifynetworksurgeryproposal.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [verifyNetworkSurgeryProposal_sound](declarations/verifynetworksurgeryproposal-sound.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [verifyNetworkSurgeryProposal_rejected_of_invalid](declarations/verifynetworksurgeryproposal-rejected-of-invalid.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [legalMove_preserves_sourceSnapshotIdentity](declarations/legalmove-preserves-sourcesnapshotidentity.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [legalMove_preserves_declarationIdentity](declarations/legalmove-preserves-declarationidentity.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [legalTheoremMove_preserves_statementIdentity](declarations/legaltheoremmove-preserves-statementidentity.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3aac100ea85570ad064507981c97f07d4b46f2a4c8e7dcf1247d6d4702f98a37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
