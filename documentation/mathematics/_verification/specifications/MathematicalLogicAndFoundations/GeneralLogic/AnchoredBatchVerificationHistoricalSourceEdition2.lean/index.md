# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.AnchoredBatchVerification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab7168cc31e1614279ce9ac3b74bd3d7696b34ba",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab7168cc31e1614279ce9ac3b74bd3d7696b34ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Locality.AnchoredCertificates`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificates.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.BatchVerification`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BatchVerification.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReplayArchivedClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replayarchivedclaim.md) | 31 | `declaration-track:c4dbebc28638d4c9033b6933e519c4ae8830695246d61ca29ae3bab4575a4f44` |
| 2 | `structure` | [ReplayLedger](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replayledger.md) | 38 | `declaration-track:5e2d2f80a3c29c1fc96c5f0828c91ab6525c7a93d7089606b85af48b77eb31b5` |
| 3 | `structure` | [ReplayAdmission](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replayadmission.md) | 55 | `declaration-track:1f9784de9c84914f10f23bbc247d9ffc56565da06327982951bcbaffd2e2dcfd` |
| 4 | `def` | [ReplayLedger.ofRevision](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replayledger-ofrevision.md) | 69 | `declaration-track:819547774941ff5cacd42cf3447209f5b9fd6f50e6db7cb6391d02f1a2e1a817` |
| 5 | `def` | [ReplayLedger.admit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replayledger-admit.md) | 74 | `declaration-track:7daba72f0aec04c9d787c98b582ebf0c4b1868cf7ff275e23a923103686d731a` |
| 6 | `theorem` | [supplied_replay_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/supplied-replay-accepted.md) | 88 | `result-track:86a554f77113a1e6ffe2895464b973299dd15e10bd92d819cfd7a5cda57d6afc` |
| 7 | `theorem` | [admitted_replay_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/admitted-replay-target.md) | 95 | `result-track:7732e5bab906dadebae743d43bb6b26ffebfae5268d0861afd23b8ec52b16db8` |
| 8 | `structure` | [ReplaySafe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replaysafe.md) | 109 | `declaration-track:f9a532e09acdc1d1ac059e42e18c89b76e3b0534643302ccb0024e97955b9ee2` |
| 9 | `theorem` | [replay_safe_of_revision](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replay-safe-of-revision.md) | 130 | `result-track:f082b27b162379abbf510c96f55b39cde6a9ffcc04b0b8c097661dfc86d7c1fe` |
| 10 | `theorem` | [replay_admission_preserves_safe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replay-admission-preserves-safe.md) | 145 | `result-track:8a36b53f20d06df70286e19b6a0dee24425d3942c0c30118c89ff8071012e072` |
| 11 | `theorem` | [replay_verified_current_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replay-verified-current-target.md) | 187 | `result-track:48984cc1f286bddcddbccea7db6a5bc01163e882cbc33e5a027b474fd0de63e3` |
| 12 | `theorem` | [replay_verified_to_terminal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replay-verified-to-terminal.md) | 200 | `result-track:b809f0dd7d756d0a20993c2e403f31d95b9d0635616b24e70b4a4dd990037b1d` |
| 13 | `theorem` | [replay_admission_histories](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replay-admission-histories.md) | 209 | `result-track:2e45cba28e0da8ca1643ea4d695df76c30cc4e7b4f286ea28e306aecb5257c72` |
| 14 | `theorem` | [replay_admission_archive_prefix](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replay-admission-archive-prefix.md) | 218 | `result-track:38d00bf569a4e5a487bd97dd60d7ad96281b613f9116b591d354b9e4b4197511` |
| 15 | `theorem` | [replay_admission_source_issued_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replay-admission-source-issued-preserved.md) | 223 | `result-track:c5b249370bf81471ccedb1ca5e5a3c6405fa75323f37969b2619885caf519849` |
| 16 | `theorem` | [replay_admission_pending_accounted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/replay-admission-pending-accounted.md) | 230 | `result-track:24a917d5c3f773699480f281bef067d5a57dcc8430cb76335c6fcc51b9bceb8e` |
| 17 | `theorem` | [false_target_blocks_replay_admission](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/false-target-blocks-replay-admission.md) | 243 | `result-track:1d18d81c19003f8ded4f14661459e429f7759a06bd199cd2f1ec14fba3325259` |
| 18 | `theorem` | [stale_supplied_record_blocks_admission](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/stale-supplied-record-blocks-admission.md) | 251 | `result-track:10e39ad305b7c3dcc7c5ee7698ed0efc72df6e3c3046f9b4028cd7b9d343b93a` |
| 19 | `theorem` | [original_archive_same_footprint_blocker](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerificationHistoricalSourceEdition2.lean/declarations/original-archive-same-footprint-blocker.md) | 263 | `result-track:22f0406e73ef79877b01200ce19b380a717d43fb5b336d624d7dba413e12cfbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc55fb7ad31947b8d9db1649ea90626f6572d2f44dac6e40e9dc3a80712c4ee4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrenced6e36faffda4f3eb7e1d39ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
