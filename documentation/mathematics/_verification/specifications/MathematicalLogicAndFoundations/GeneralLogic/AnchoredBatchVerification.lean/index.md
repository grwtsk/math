# Verification target: GRWTSK.Logic.Certificates.AnchoredBatchVerification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09de70ad4e6666cc1477deed1f96c3d1af4503c8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Certificates/AnchoredBatchVerification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09de70ad4e6666cc1477deed1f96c3d1af4503c8`.

Source path: `GRWTSK/Logic/Certificates/AnchoredBatchVerification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Certificates/AnchoredBatchVerification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Locality.AnchoredCertificates`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredCertificatesHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.Certificates.BatchVerification`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BatchVerificationHistoricalSourceEdition2.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReplayArchivedClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replayarchivedclaim.md) | 31 | `declaration-track:5558dc235ddbeb52c86c11c1fe6657586ef418f776050832e63d72e0822bb988` |
| 2 | `structure` | [ReplayLedger](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replayledger.md) | 38 | `declaration-track:8707866999396ce23395788407e5c1c6412ad117e87864277b73e41463a8b207` |
| 3 | `structure` | [ReplayAdmission](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replayadmission.md) | 55 | `declaration-track:d9c14e20e90de4079594eaa903e420bfbe60ae7c3e2fca53ff6a940415d69506` |
| 4 | `def` | [ReplayLedger.ofRevision](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replayledger-ofrevision.md) | 69 | `declaration-track:886a1c93b91982405322f8c4d92a54be35cc9c9f058864ae3be529dfc5b761a8` |
| 5 | `def` | [ReplayLedger.admit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replayledger-admit.md) | 74 | `declaration-track:01f6f7f17fcc03afff946df91cf21e4ae27286d7bc6b64f7d5743a0606758c4a` |
| 6 | `theorem` | [supplied_replay_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/supplied-replay-accepted.md) | 88 | `result-track:ed407d77043b639b84778b0c8c8f218fa234e04806dfa489d14bc553505d8dcc` |
| 7 | `theorem` | [admitted_replay_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/admitted-replay-target.md) | 95 | `result-track:59601ef9d623e0feaa32e8bed0f1604f48805766bbeba9867459ae406f535043` |
| 8 | `structure` | [ReplaySafe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replaysafe.md) | 109 | `declaration-track:0802361bf7ac92b063c49c1809c3c1cf8428692581e86aa6318214c79bda6912` |
| 9 | `theorem` | [replay_safe_of_revision](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replay-safe-of-revision.md) | 130 | `result-track:2538527ad7644031accf1f185c0a5a9fbb2ff66e85b0bb08f73113da435dd53f` |
| 10 | `theorem` | [replay_admission_preserves_safe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replay-admission-preserves-safe.md) | 145 | `result-track:fdfcccfc96ce092cc1417f0b7235614b1218591ed30f32356093afb61a664adc` |
| 11 | `theorem` | [replay_verified_current_target](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replay-verified-current-target.md) | 187 | `result-track:137813e5e447661a0aac77e5afbb45ad239b54d137dddfd7c01c5d55645c3b5e` |
| 12 | `theorem` | [replay_verified_to_terminal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replay-verified-to-terminal.md) | 200 | `result-track:ed5b5cc74787e4db06df94fa95f9fde6432a9b1b3e5d81ae0b9b4a515b0b30f5` |
| 13 | `theorem` | [replay_admission_histories](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replay-admission-histories.md) | 209 | `result-track:c2d2f24765b8afd78253d07f6eee14957165ec328b1bd06aa62b5f9b1cc47199` |
| 14 | `theorem` | [replay_admission_archive_prefix](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replay-admission-archive-prefix.md) | 218 | `result-track:90bf2dbc7fb0c4c62faa15c56bd3bb639a84ef253a8a62465330d0c3546afb82` |
| 15 | `theorem` | [replay_admission_source_issued_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replay-admission-source-issued-preserved.md) | 223 | `result-track:44d128868b35ad4b5892d9fed8ce78f907b09c9e6b69ba9301cdf055908e50d4` |
| 16 | `theorem` | [replay_admission_pending_accounted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/replay-admission-pending-accounted.md) | 230 | `result-track:f62c1a2987ace2feeb59a34481f42e187b595a04f2cd48da6e92c451286cb13f` |
| 17 | `theorem` | [false_target_blocks_replay_admission](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/false-target-blocks-replay-admission.md) | 243 | `result-track:51b0612875041b755aaa78495231ad893da92963ad1a335363cc27c4cab66e4e` |
| 18 | `theorem` | [stale_supplied_record_blocks_admission](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/stale-supplied-record-blocks-admission.md) | 251 | `result-track:f3fc6ec6149641f8a3abc50fb318985586bd9a5241f565bdbc743a75a4c29855` |
| 19 | `theorem` | [original_archive_same_footprint_blocker](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/declarations/original-archive-same-footprint-blocker.md) | 263 | `result-track:58804d752d4caf6dfb74d53505e81cda5e3ddd37587245abd41e66a13c2123d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba50bc7129207abae2b401a30853d7c517e2d395e4c84dfcf5f2522936ca73db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Logic/Certificates/AnchoredBatchVerification.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrence76b2abe780b70eab9c96ca93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
