# Verification target: GRWTSK.Logic.Certificates.DependencyRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f21c84fcb80892a5ba4a1da7df0e89e78a73c37",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Certificates/DependencyRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f21c84fcb80892a5ba4a1da7df0e89e78a73c37`.

Source path: `GRWTSK/Logic/Certificates/DependencyRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Certificates/DependencyRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget`](../../../../../DynamicalSystemsAndErgodicTheory/GuardedFiniteBudget.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Order.Closure.FiniteDependencyClosure`](../../../../../Combinatorics/FiniteDependencyClosureHistoricalSourceEdition2.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Logic.Locality.RevisionCertificates`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RevisionCertificates.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DependencySchema](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/dependencyschema.md) | 33 | `declaration-track:1a404a0e40684302c0ad41e77b038672dd93085e0e63a195f724ef5a019a5efb` |
| 2 | `structure` | [ArchivedClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/archivedclaim.md) | 38 | `declaration-track:f9a1680d34b63beb2ecfecafd0554cb55ef7e371d2e97a788f7aa3da0a47d6b8` |
| 3 | `structure` | [CorrectionRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correctionrecord.md) | 44 | `declaration-track:d56a371e5b1ef7052fa934cdb38fc6bb211e0233556b021f12fc6993aa5758f8` |
| 4 | `structure` | [RevisionLedger](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/revisionledger.md) | 51 | `declaration-track:5d0840c383af30f3c37cd6b0bda2794a0fd0a16b9731eef9297faca85c81ec8f` |
| 5 | `def` | [directChanged](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/directchanged.md) | 73 | `declaration-track:fb8b704c230e21533a2c26d72bb53aca04c62c38ee94302563f8845dd877f38d` |
| 6 | `theorem` | [mem_directChanged](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/mem-directchanged.md) | 80 | `result-track:5b36f9442740c4201c52923e6d57851e9d7223541426d0b9ac3fa590c7e3650a` |
| 7 | `def` | [correctionAffected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correctionaffected.md) | 87 | `declaration-track:aa03c9ec0c400eabbb60211fc0eae418531b0a57dd08641aff739fc28384049a` |
| 8 | `theorem` | [directChanged_subset_correctionAffected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/directchanged-subset-correctionaffected.md) | 91 | `result-track:f58844468333acd538cb805065256569b835d3b5d392045a476f9492e91cdd9a` |
| 9 | `theorem` | [mem_correctionAffected_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/mem-correctionaffected-iff.md) | 97 | `result-track:da10e88712ccf1a74706ecc453ee20c7505b668f5203c860d2fd3fb8f1f7bf3a` |
| 10 | `theorem` | [directChanged_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/directchanged-self.md) | 106 | `result-track:44e2245b579c50429fea81e7e125fb406562632bcb9946f31bc747a88248b387` |
| 11 | `theorem` | [correctionAffected_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correctionaffected-self.md) | 112 | `result-track:59891b77a2f6b1f92eb72a42d4de2398a96f6cb8fdc6cd201046e856d4220c36` |
| 12 | `theorem` | [unchanged_reads_of_unaffected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/unchanged-reads-of-unaffected.md) | 117 | `result-track:47ccf42449abafeebf46013f13b3c06d8542eedb06012036a053e389c6a1f83f` |
| 13 | `structure` | [RevisionSafe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/revisionsafe.md) | 127 | `declaration-track:dd8b4a113214cbb08df495b890df3ed22d5bda6108deb78a4d0bc50cf2d18fe8` |
| 14 | `def` | [RevisionLedger.correct](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/revisionledger-correct.md) | 145 | `declaration-track:131b2a7ab90df2502f8175f37f0a2a34022c296a642d9bb1b983be6499e11ad2` |
| 15 | `theorem` | [correction_same_snapshot_status](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correction-same-snapshot-status.md) | 162 | `result-track:16ce17273f16159281b57184d1d0cf1c878a7102a0fc240451ecbcb72d005f3f` |
| 16 | `theorem` | [correction_records_append](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correction-records-append.md) | 169 | `result-track:90bfb125fcdd875ea81a7bd1bfe9062c2d6b949fb7ee88a74dbfabba1a6fd8a5` |
| 17 | `theorem` | [correction_archive_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correction-archive-preserved.md) | 180 | `result-track:36a215a22a104bad0b7413bf8557b4c2ca92e029e659c38b9ab3e752fd70b2c0` |
| 18 | `theorem` | [correction_receipts_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correction-receipts-preserved.md) | 185 | `result-track:c2936a79cf186f623e3924549917fe09cb6c2bd52edf328d9a458ea009c0ef69` |
| 19 | `theorem` | [correction_issued_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correction-issued-preserved.md) | 190 | `result-track:3e490580f8cd1d9e468d2129a242578391463a453aeb527a6dbc53367944ae41` |
| 20 | `theorem` | [correction_verified_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correction-verified-iff.md) | 196 | `result-track:89e889356492fd13acb6edd54d005a74a0b71de62c87379abcf4cc20a4d74684` |
| 21 | `theorem` | [affected_verified_reopened](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/affected-verified-reopened.md) | 205 | `result-track:4d4ea211568afc8f0d88b429ad774f8ae287ec1efcf4be80c187de2283a7c790` |
| 22 | `theorem` | [correction_preserves_safe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/correction-preserves-safe.md) | 216 | `result-track:26a1ce38ba56350b9cba22c77826ffffaaacc5db23f883b23abbafdfd0263a6f` |
| 23 | `theorem` | [revision_verified_to_terminal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/revision-verified-to-terminal.md) | 271 | `result-track:409477bd37a4f9b59ba47895cde66986fc8ffc4e8f36259d93f015419d1ed425` |
| 24 | `def` | [CurrentReceiptValid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/currentreceiptvalid.md) | 280 | `declaration-track:5bd69c15f57e721d0d5ab0bd5a345c428797034217268c18a27c3b8049e2c115` |
| 25 | `theorem` | [changed_snapshot_receipt_not_current](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DependencyRevisionHistoricalSourceEdition2.lean/declarations/changed-snapshot-receipt-not-current.md) | 285 | `result-track:b88e7604ec58e8f2ff637faaf50c24a77c6ba79b487948675106f7c3b6184e6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d9fa08609686cd72caf91136f5005f71ccae59f9b7791aa48abc619a2d9f4cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/Certificates/DependencyRevision.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
