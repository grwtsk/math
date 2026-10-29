# Runtime Trace Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1d6688e2546382505a31947d4bc4ed050c1897e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [identityMatrix](declarations/identitymatrix.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [pointVector](declarations/pointvector.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [matrixWire](declarations/matrixwire.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [operatorId](declarations/operatorid.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [manifest](declarations/manifest.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [manifestWire](declarations/manifestwire.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [request](declarations/request.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [requestWire](declarations/requestwire.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [outputWire](declarations/outputwire.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [trace](declarations/trace.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [traceWire](declarations/tracewire.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [submission](declarations/submission.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [canonicalCommitment](declarations/canonicalcommitment.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sha256_empty_matches_standard](declarations/sha256-empty-matches-standard.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sha256_abc_matches_standard](declarations/sha256-abc-matches-standard.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exactSubmissionAccepted](declarations/exactsubmissionaccepted.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exactCanonicalSubmissionAccepted](declarations/exactcanonicalsubmissionaccepted.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exactCanonicalManifestBytesPinned](declarations/exactcanonicalmanifestbytespinned.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exactSubmissionRepresents](declarations/exactsubmissionrepresents.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exactOperationPreserved](declarations/exactoperationpreserved.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [alternateManifest](declarations/alternatemanifest.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [alternateManifestWire](declarations/alternatemanifestwire.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [alternateRequest](declarations/alternaterequest.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [alternateRequestWire](declarations/alternaterequestwire.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [alternateTrace](declarations/alternatetrace.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [alternateTraceWire](declarations/alternatetracewire.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [alternateSubmission](declarations/alternatesubmission.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [alternateBundleIsSelfContainedAccepted](declarations/alternatebundleisselfcontainedaccepted.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [alternateBundleRejectedByCanonicalCommitment](declarations/alternatebundlerejectedbycanonicalcommitment.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [wrongWireDigestCommitment](declarations/wrongwiredigestcommitment.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [wrongSnapshotCommitment](declarations/wrongsnapshotcommitment.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [wrongTerrainCommitment](declarations/wrongterraincommitment.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [wrongCharacterRegistryCommitment](declarations/wrongcharacterregistrycommitment.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rejects_wrong_committed_wire_digest](declarations/rejects-wrong-committed-wire-digest.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rejects_wrong_committed_snapshot_digest](declarations/rejects-wrong-committed-snapshot-digest.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [rejects_wrong_committed_terrain_digest](declarations/rejects-wrong-committed-terrain-digest.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rejects_wrong_committed_character_registry_digest](declarations/rejects-wrong-committed-character-registry-digest.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [badMagic](declarations/badmagic.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [badVersion](declarations/badversion.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [unknownTag](declarations/unknowntag.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [badReserved](declarations/badreserved.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [badPayloadDigest](declarations/badpayloaddigest.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [trailingByte](declarations/trailingbyte.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [truncatedFrame](declarations/truncatedframe.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [excessiveDeclaredPayload](declarations/excessivedeclaredpayload.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [rejects_bad_magic](declarations/rejects-bad-magic.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rejects_bad_version](declarations/rejects-bad-version.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [rejects_unknown_tag](declarations/rejects-unknown-tag.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [rejects_reserved_byte](declarations/rejects-reserved-byte.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [rejects_digest_mismatch](declarations/rejects-digest-mismatch.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rejects_trailing_byte](declarations/rejects-trailing-byte.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rejects_truncation](declarations/rejects-truncation.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rejects_excessive_declared_payload](declarations/rejects-excessive-declared-payload.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [wrongOutput](declarations/wrongoutput.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [wrongOutputWire](declarations/wrongoutputwire.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [selfConsistentButWrongTrace](declarations/selfconsistentbutwrongtrace.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [wrongSubmission](declarations/wrongsubmission.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [changed_expected_value_cannot_bless_runtime](declarations/changed-expected-value-cannot-bless-runtime.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b981797717381b7a21c94d5b1764b663bfff7a20437326ed2d98de76562dc7e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
