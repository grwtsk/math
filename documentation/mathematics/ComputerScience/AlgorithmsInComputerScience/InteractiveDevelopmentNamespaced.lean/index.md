# Interactive Development Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveDevelopment/Variant8001fab53088b19306d20c603bb6e9a6220d1df9c063ccb7b585d8f646f6868b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b2af7e827b313765bc691b413e2bda1c380df96`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/InteractiveDevelopmentNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PropositionIdentity](declarations/propositionidentity.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [CategoryId](declarations/categoryid.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [HumanIdentity](declarations/humanidentity.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SubjectIdentity](declarations/subjectidentity.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [ChangeKind](declarations/changekind.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [AutomatedCheckable](declarations/automatedcheckable.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [statementProposal_not_automated](declarations/statementproposal-not-automated.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [interfaceProposal_not_automated](declarations/interfaceproposal-not-automated.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ObligationBounds](declarations/obligationbounds.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [HumanDevelopmentRequest](declarations/humandevelopmentrequest.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [InteractiveDeadlinePolicy](declarations/interactivedeadlinepolicy.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [interactiveDeadline](declarations/interactivedeadline.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [interactiveDeadline_le_model](declarations/interactivedeadline-le-model.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [interactiveDeadline_le_policy](declarations/interactivedeadline-le-policy.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [shutdownGrace_le_250](declarations/shutdowngrace-le-250.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [ProofObligation](declarations/proofobligation.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ObligationGraph](declarations/obligationgraph.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [obligationGraph_bounded_and_finite](declarations/obligationgraph-bounded-and-finite.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [obligationGraph_root_target](declarations/obligationgraph-root-target.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [LocalModelOutput](declarations/localmodeloutput.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [external_model_output_cannot_establish_proposition](declarations/external-model-output-cannot-establish-proposition.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [ProofCandidate](declarations/proofcandidate.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [requestedProposition](declarations/requestedproposition.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [requestedCategory](declarations/requestedcategory.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cannot_change_requested_proposition](declarations/cannot-change-requested-proposition.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cannot_change_human_category](declarations/cannot-change-human-category.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [request_kind_is_automated](declarations/request-kind-is-automated.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [CheckedCandidate](declarations/checkedcandidate.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [proof](declarations/proof.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [verifiedCertificate](declarations/verifiedcertificate.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [requires_verified_certificate](declarations/requires-verified-certificate.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [assurance_level](declarations/assurance-level.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [ProjectAdoptionStatus](declarations/projectadoptionstatus.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [DevelopmentProposal](declarations/developmentproposal.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [CheckedCandidate.toDevelopmentProposal](declarations/checkedcandidate-todevelopmentproposal.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [checked_candidate_not_project_adoption](declarations/checked-candidate-not-project-adoption.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84bdbc85761ea0c1fe390687e7cf6137803cc00606336a9e4f4998d778bf0702 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveDevelopment/Variant8001fab53088b19306d20c603bb6e9a6220d1df9c063ccb7b585d8f646f6868b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
