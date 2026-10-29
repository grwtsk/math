# Runtime Trace

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variantf46c79805a4d73d6834184d0fbd77c9f24e195641ff01d2dc30c8bc9e7adfb9b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21335f7a1d4390b4275d8018185ad90a3fdab6a6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/RuntimeTrace.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [identityMatrix](declarations/identitymatrix.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [pointVector](declarations/pointvector.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [matrixWire](declarations/matrixwire.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [operatorId](declarations/operatorid.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [manifest](declarations/manifest.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [manifestWire](declarations/manifestwire.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [request](declarations/request.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [requestWire](declarations/requestwire.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [outputWire](declarations/outputwire.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [trace](declarations/trace.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [traceWire](declarations/tracewire.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [submission](declarations/submission.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [canonicalCommitment](declarations/canonicalcommitment.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sha256_empty_matches_standard](declarations/sha256-empty-matches-standard.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sha256_abc_matches_standard](declarations/sha256-abc-matches-standard.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exactSubmissionAccepted](declarations/exactsubmissionaccepted.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exactCanonicalSubmissionAccepted](declarations/exactcanonicalsubmissionaccepted.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exactCanonicalManifestBytesPinned](declarations/exactcanonicalmanifestbytespinned.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exactSubmissionRepresents](declarations/exactsubmissionrepresents.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exactOperationPreserved](declarations/exactoperationpreserved.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [alternateManifest](declarations/alternatemanifest.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [alternateManifestWire](declarations/alternatemanifestwire.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [alternateRequest](declarations/alternaterequest.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [alternateRequestWire](declarations/alternaterequestwire.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [alternateTrace](declarations/alternatetrace.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [alternateTraceWire](declarations/alternatetracewire.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [alternateSubmission](declarations/alternatesubmission.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [alternateBundleIsSelfContainedAccepted](declarations/alternatebundleisselfcontainedaccepted.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [alternateBundleRejectedByCanonicalCommitment](declarations/alternatebundlerejectedbycanonicalcommitment.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [wrongWireDigestCommitment](declarations/wrongwiredigestcommitment.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [wrongSnapshotCommitment](declarations/wrongsnapshotcommitment.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [wrongTerrainCommitment](declarations/wrongterraincommitment.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [wrongCharacterRegistryCommitment](declarations/wrongcharacterregistrycommitment.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rejects_wrong_committed_wire_digest](declarations/rejects-wrong-committed-wire-digest.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rejects_wrong_committed_snapshot_digest](declarations/rejects-wrong-committed-snapshot-digest.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [rejects_wrong_committed_terrain_digest](declarations/rejects-wrong-committed-terrain-digest.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rejects_wrong_committed_character_registry_digest](declarations/rejects-wrong-committed-character-registry-digest.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [badMagic](declarations/badmagic.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [badVersion](declarations/badversion.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [unknownTag](declarations/unknowntag.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [badReserved](declarations/badreserved.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [badPayloadDigest](declarations/badpayloaddigest.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [trailingByte](declarations/trailingbyte.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [truncatedFrame](declarations/truncatedframe.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [excessiveDeclaredPayload](declarations/excessivedeclaredpayload.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [rejects_bad_magic](declarations/rejects-bad-magic.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rejects_bad_version](declarations/rejects-bad-version.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [rejects_unknown_tag](declarations/rejects-unknown-tag.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [rejects_reserved_byte](declarations/rejects-reserved-byte.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [rejects_digest_mismatch](declarations/rejects-digest-mismatch.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rejects_trailing_byte](declarations/rejects-trailing-byte.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rejects_truncation](declarations/rejects-truncation.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rejects_excessive_declared_payload](declarations/rejects-excessive-declared-payload.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [wrongOutput](declarations/wrongoutput.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [wrongOutputWire](declarations/wrongoutputwire.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [selfConsistentButWrongTrace](declarations/selfconsistentbutwrongtrace.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [wrongSubmission](declarations/wrongsubmission.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [changed_expected_value_cannot_bless_runtime](declarations/changed-expected-value-cannot-bless-runtime.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44ca46eccd2d99ab6f2a8a359a1c687da7a440d3c3285b6efe5641a5f697c957 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variantf46c79805a4d73d6834184d0fbd77c9f24e195641ff01d2dc30c8bc9e7adfb9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
