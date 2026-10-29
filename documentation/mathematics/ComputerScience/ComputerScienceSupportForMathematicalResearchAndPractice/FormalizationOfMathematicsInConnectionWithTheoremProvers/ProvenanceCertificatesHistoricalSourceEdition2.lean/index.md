# Provenance Certificates Historical Source Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/ProofEvidence/ProvenanceCertificates.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79b6aa7521b17e86e657c3310bbff263c8174d4c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ProvenanceCertificatesHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [EvidenceGrade](declarations/evidencegrade.md) | 10 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [SourceKind](declarations/sourcekind.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [CircularityRisk](declarations/circularityrisk.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [PacketMetadata](declarations/packetmetadata.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [ExternalEvidence](declarations/externalevidence.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ExternalEvidence.grade](declarations/externalevidence-grade.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ExternalEvidence.proof?](declarations/externalevidence-proof.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ExternalResearchPacket](declarations/externalresearchpacket.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [ApplicabilityCertificate](declarations/applicabilitycertificate.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [consume](declarations/consume.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reference_cannot_be_consumed](declarations/reference-cannot-be-consumed.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finite_fixture_cannot_be_consumed](declarations/finite-fixture-cannot-be-consumed.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [invalidated_cannot_be_consumed](declarations/invalidated-cannot-be-consumed.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [consumption_supplies_native_proof](declarations/consumption-supplies-native-proof.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [RegisteredPacket](declarations/registeredpacket.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [Registry](declarations/registry.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Registry.register](declarations/registry-register.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Registry.invalidate](declarations/registry-invalidate.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Registry.supersede](declarations/registry-supersede.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Registry.active](declarations/registry-active.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Registry.activeEntry](declarations/registry-activeentry.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Registry.consumeEntry](declarations/registry-consumeentry.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [invalidation_preserves_packets](declarations/invalidation-preserves-packets.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [supersession_preserves_packets](declarations/supersession-preserves-packets.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [invalidation_disables](declarations/invalidation-disables.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [supersession_disables_old](declarations/supersession-disables-old.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [invalidation_blocks_registered_consumption](declarations/invalidation-blocks-registered-consumption.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dependency_invalidation_blocks_consumption](declarations/dependency-invalidation-blocks-consumption.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [registration_preserves_old](declarations/registration-preserves-old.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [invalidation_preserves_evidence_grade](declarations/invalidation-preserves-evidence-grade.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6d9e4003f05fe8e086eac85d5dd1923c26bf46031ce9c89d9b5eb1c90ee511b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/ProvenanceCertificates__SourceOccurrencef369217f78bcdc73e676ab5d.lean","GRWTSK/Logic/ProofEvidence/ProvenanceCertificates.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
