# Repository Conformance

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**19 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/ProofChecking/RepositoryConformance.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d20687ca58a9b947bb9c35c8a3b5f4d695de8799`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RepositoryConformance.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExecutionState](declarations/executionstate.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [GateStatus](declarations/gatestatus.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [GateStatus.Accepted](declarations/gatestatus-accepted.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [GateStatus.not_accepted_of_incomplete](declarations/gatestatus-not-accepted-of-incomplete.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ReconstructionEvidence](declarations/reconstructionevidence.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [FormalCorrectnessEvidence](declarations/formalcorrectnessevidence.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [FormalCorrectnessEvidence.meaning_of_coverage](declarations/formalcorrectnessevidence-meaning-of-coverage.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [EvidenceAvailability](declarations/evidenceavailability.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [EvidenceAvailability.HasReconstruction](declarations/evidenceavailability-hasreconstruction.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [EvidenceAvailability.HasFormalCorrectness](declarations/evidenceavailability-hasformalcorrectness.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [EvidenceAvailability.dimensions_are_independent](declarations/evidenceavailability-dimensions-are-independent.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [StatusVector](declarations/statusvector.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [StatusVector.Organized](declarations/statusvector-organized.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [StatusVector.Reconstructible](declarations/statusvector-reconstructible.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [StatusVector.FormallyChecked](declarations/statusvector-formallychecked.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [StatusVector.IndependentlyValidated](declarations/statusvector-independentlyvalidated.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [StatusVector.independentlyValidated_implies_formallyChecked](declarations/statusvector-independentlyvalidated-implies-formallychecked.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [StatusVector.formallyChecked_implies_reconstructible](declarations/statusvector-formallychecked-implies-reconstructible.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [StatusVector.reconstructible_implies_organized](declarations/statusvector-reconstructible-implies-organized.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac8b31999a483c737a96f27667e53678565e7f1e1cc8561ab476c5ce5671b04b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/RepositoryConformance__SourceOccurrencebec52c22b99a238822f9b8d1.lean","GRWTSK/Logic/ProofChecking/RepositoryConformance.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
