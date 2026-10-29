# External Obligation Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalObligation/Variant4bcc530b15c3620398a8f2f43ac8f997cfe1bc6d57769b87f8b4f34dce48560d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7425d22bda11d64ac388714214d6218915d4bf3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ExternalObligationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ExternalObligationSpec](declarations/externalobligationspec.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ExternalTheoremObligation](declarations/externaltheoremobligation.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [obligationId](declarations/obligationid.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [statement](declarations/statement.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [leanDeclarationName](declarations/leandeclarationname.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [obligationId_is_specification](declarations/obligationid-is-specification.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [leanDeclarationName_is_specification](declarations/leandeclarationname-is-specification.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [ExternalObligationStatus](declarations/externalobligationstatus.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [ExternalObligationVersionDisposition](declarations/externalobligationversiondisposition.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [EvidenceOnlyProducer](declarations/evidenceonlyproducer.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ExternalEvidenceArtifact](declarations/externalevidenceartifact.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [AcceptedExternalTheoremCertificate](declarations/acceptedexternaltheoremcertificate.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [provesSpecification](declarations/provesspecification.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [statement_digest_is_canonical](declarations/statement-digest-is-canonical.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [declaration_name_is_canonical](declarations/declaration-name-is-canonical.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [environment_digest_is_obligation_environment](declarations/environment-digest-is-obligation-environment.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [obligation_id_is_specification](declarations/obligation-id-is-specification.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ExternalObligationHistory](declarations/externalobligationhistory.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsCurrent](declarations/iscurrent.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [superseded_not_current](declarations/superseded-not-current.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [current_not_superseded](declarations/current-not-superseded.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `inductive` | [ExternalObligationState](declarations/externalobligationstate.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [history](declarations/history.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [beginProof](declarations/beginproof.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [retryProof](declarations/retryproof.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [rejectProof](declarations/rejectproof.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [certify](declarations/certify.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [underProof_version_current](declarations/underproof-version-current.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [proofRejected_version_current](declarations/proofrejected-version-current.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [proved_version_current](declarations/proved-version-current.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [underProof_version_not_superseded](declarations/underproof-version-not-superseded.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [proofRejected_version_not_superseded](declarations/proofrejected-version-not-superseded.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [proved_version_not_superseded](declarations/proved-version-not-superseded.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [proved_implies_specification](declarations/proved-implies-specification.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [attachEvidence](declarations/attachevidence.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [attachEvidence_preserves_version_disposition](declarations/attachevidence-preserves-version-disposition.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [ExternalObligationSupersession](declarations/externalobligationsupersession.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c076d26ab58e8d74c7f3f4532fde3ab18896e59cd666ae1db6fc302f79343354 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExternalObligation/Variant4bcc530b15c3620398a8f2f43ac8f997cfe1bc6d57769b87f8b4f34dce48560d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
