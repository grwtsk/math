# External Obligation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalObligation/Variant424b19eae137d75f64ac0404035063a3f2a199f34a99b855a625513685f92946.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `887ce849862ef3261425d9a0fd023f3b2dca609b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ExternalObligation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ExternalObligationSpec](declarations/externalobligationspec.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ExternalTheoremObligation](declarations/externaltheoremobligation.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [obligationId](declarations/obligationid.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [statement](declarations/statement.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [leanDeclarationName](declarations/leandeclarationname.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [obligationId_is_specification](declarations/obligationid-is-specification.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [leanDeclarationName_is_specification](declarations/leandeclarationname-is-specification.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [ExternalObligationStatus](declarations/externalobligationstatus.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [ExternalObligationVersionDisposition](declarations/externalobligationversiondisposition.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [EvidenceOnlyProducer](declarations/evidenceonlyproducer.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ExternalEvidenceArtifact](declarations/externalevidenceartifact.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [AcceptedExternalTheoremCertificate](declarations/acceptedexternaltheoremcertificate.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [provesSpecification](declarations/provesspecification.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [statement_digest_is_canonical](declarations/statement-digest-is-canonical.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [declaration_name_is_canonical](declarations/declaration-name-is-canonical.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [environment_digest_is_obligation_environment](declarations/environment-digest-is-obligation-environment.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [obligation_id_is_specification](declarations/obligation-id-is-specification.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ExternalObligationHistory](declarations/externalobligationhistory.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsCurrent](declarations/iscurrent.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [superseded_not_current](declarations/superseded-not-current.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [current_not_superseded](declarations/current-not-superseded.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `inductive` | [ExternalObligationState](declarations/externalobligationstate.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [history](declarations/history.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [beginProof](declarations/beginproof.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [retryProof](declarations/retryproof.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [rejectProof](declarations/rejectproof.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [certify](declarations/certify.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [underProof_version_current](declarations/underproof-version-current.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [proofRejected_version_current](declarations/proofrejected-version-current.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [proved_version_current](declarations/proved-version-current.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [underProof_version_not_superseded](declarations/underproof-version-not-superseded.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [proofRejected_version_not_superseded](declarations/proofrejected-version-not-superseded.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [proved_version_not_superseded](declarations/proved-version-not-superseded.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [proved_implies_specification](declarations/proved-implies-specification.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [attachEvidence](declarations/attachevidence.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [attachEvidence_preserves_version_disposition](declarations/attachevidence-preserves-version-disposition.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [ExternalObligationSupersession](declarations/externalobligationsupersession.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a79e302077fd223e3c64cd115be0f262c551bf69b3d874868c7dd7c5628ef7f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalObligation/Variant424b19eae137d75f64ac0404035063a3f2a199f34a99b855a625513685f92946.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
