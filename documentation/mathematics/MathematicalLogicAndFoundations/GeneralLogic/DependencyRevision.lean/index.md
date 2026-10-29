# Dependency Revision

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f90223e0fed9002fe251d78f9c73f84044f2f46`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/DependencyRevision.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DependencySchema](declarations/dependencyschema.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ArchivedClaim](declarations/archivedclaim.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CorrectionRecord](declarations/correctionrecord.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [RevisionLedger](declarations/revisionledger.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [directChanged](declarations/directchanged.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_directChanged](declarations/mem-directchanged.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [correctionAffected](declarations/correctionaffected.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [directChanged_subset_correctionAffected](declarations/directchanged-subset-correctionaffected.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_correctionAffected_iff](declarations/mem-correctionaffected-iff.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [directChanged_self](declarations/directchanged-self.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [correctionAffected_self](declarations/correctionaffected-self.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [unchanged_reads_of_unaffected](declarations/unchanged-reads-of-unaffected.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [RevisionSafe](declarations/revisionsafe.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [RevisionLedger.correct](declarations/revisionledger-correct.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [correction_same_snapshot_status](declarations/correction-same-snapshot-status.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [correction_records_append](declarations/correction-records-append.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [correction_archive_preserved](declarations/correction-archive-preserved.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [correction_receipts_preserved](declarations/correction-receipts-preserved.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [correction_issued_preserved](declarations/correction-issued-preserved.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [correction_verified_iff](declarations/correction-verified-iff.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [affected_verified_reopened](declarations/affected-verified-reopened.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [correction_preserves_safe](declarations/correction-preserves-safe.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [revision_verified_to_terminal](declarations/revision-verified-to-terminal.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [CurrentReceiptValid](declarations/currentreceiptvalid.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [changed_snapshot_receipt_not_current](declarations/changed-snapshot-receipt-not-current.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4f69957872d56b65c358ba51dba70470d7f58b0d55092d9eba9ee0538037f00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision.lean","GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence22718498a8106883d8613c60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
