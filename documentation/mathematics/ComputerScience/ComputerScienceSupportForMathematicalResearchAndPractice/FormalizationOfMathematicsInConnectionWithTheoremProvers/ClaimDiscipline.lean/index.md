# Claim Discipline

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `190a90fd09ba488d2630007d46b30d8d14373584`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDiscipline.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AdmissibilityRecord](declarations/admissibilityrecord.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [FullyEstablished](declarations/fullyestablished.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fullyEstablished_authorized](declarations/fullyestablished-authorized.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [fullyEstablished_safe](declarations/fullyestablished-safe.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [fullyEstablished_correct](declarations/fullyestablished-correct.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [fullyEstablished_useful](declarations/fullyestablished-useful.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fullyEstablished_ethically_acceptable](declarations/fullyestablished-ethically-acceptable.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reachability_does_not_entail_authorization](declarations/reachability-does-not-entail-authorization.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reachability_does_not_entail_full_admissibility](declarations/reachability-does-not-entail-full-admissibility.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [CandidateAdmissionStatus](declarations/candidateadmissionstatus.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [CandidateTermObservation](declarations/candidatetermobservation.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IsMerelyObserved](declarations/ismerelyobserved.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [observed_not_admitted](declarations/observed-not-admitted.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [VectorCandidateObservation](declarations/vectorcandidateobservation.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [SemanticallyAdmitted](declarations/semanticallyadmitted.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [proximity_does_not_entail_semantic_admission](declarations/proximity-does-not-entail-semantic-admission.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [TextOccurrenceObservation](declarations/textoccurrenceobservation.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [occurrence_does_not_entail_term_declaration](declarations/occurrence-does-not-entail-term-declaration.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ValidationEvidenceRecord](declarations/validationevidencerecord.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [EstablishesProof](declarations/establishesproof.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [establishesProof_result](declarations/establishesproof-result.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [establishesProof_complete](declarations/establishesproof-complete.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [establishesProof_has_certificate](declarations/establishesproof-has-certificate.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [certified_complete_validation_establishes_proof](declarations/certified-complete-validation-establishes-proof.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [validation_pass_does_not_entail_proof](declarations/validation-pass-does-not-entail-proof.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [ReceiptScopeRecord](declarations/receiptscoperecord.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [TruthQualified](declarations/truthqualified.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [truthQualified_has_receipt](declarations/truthqualified-has-receipt.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [truthQualified_has_truth_status](declarations/truthqualified-has-truth-status.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [receipt_does_not_entail_truth](declarations/receipt-does-not-entail-truth.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bf81d6b07b22e18229d9249add34a029aa95dbd321c8e18be8d4761230223e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant8b61c71250037c16f2640e5bd416831dc589bdd0237ada5414429d0099488300.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
