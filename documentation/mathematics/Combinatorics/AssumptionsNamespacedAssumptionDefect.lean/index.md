# Assumptions Namespaced Assumption Defect

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variantffad75db4bc5bc1c1210954217ca00f6ca7bbeab0a5ee60041ecf034d92403df.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8567b3671fa3ea32426cca8f23355ccf9e8abc9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/AssumptionsNamespacedAssumptionDefect.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [JudgmentLanguage](declarations/judgmentlanguage.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AssumptionObligation](declarations/assumptionobligation.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [AssumptionObligation.Holds](declarations/assumptionobligation-holds.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ConditionalProposal](declarations/conditionalproposal.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [InventoryPremises](declarations/inventorypremises.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ConditionalDerivation](declarations/conditionalderivation.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [DischargedAssumption](declarations/dischargedassumption.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [DischargeInventory](declarations/dischargeinventory.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [RemainingPremises](declarations/remainingpremises.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [assembleInventory](declarations/assembleinventory.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [FreshReplay](declarations/freshreplay.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [RecheckedResult](declarations/recheckedresult.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [recheck](declarations/recheck.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [RecheckedResult.conclusion](declarations/recheckedresult-conclusion.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [RecheckedResult.closed_conclusion](declarations/recheckedresult-closed-conclusion.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [false_remaining_blocks_closure](declarations/false-remaining-blocks-closure.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [false_obligation_has_no_discharge](declarations/false-obligation-has-no-discharge.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [wrong_source_blocks_binding](declarations/wrong-source-blocks-binding.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [wrong_scope_blocks_binding](declarations/wrong-scope-blocks-binding.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [wrong_statement_blocks_binding](declarations/wrong-statement-blocks-binding.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [discharge_event_cannot_be_replay](declarations/discharge-event-cannot-be-replay.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `inductive` | [Source](declarations/source-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [Statement](declarations/statement.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [language](declarations/language-source-edition-2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [obligation](declarations/obligation.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [square_certificate](declarations/square-certificate.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [positive_certificate](declarations/positive-certificate.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [proposal](declarations/proposal-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [dependentDerivation](declarations/dependentderivation-source-edition-2.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [discharges](declarations/discharges-source-edition-2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [replay](declarations/replay-source-edition-2.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [replayed_consequence](declarations/replayed-consequence.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [wrong_scope_has_no_discharge](declarations/wrong-scope-has-no-discharge.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [changed_source_is_not_original](declarations/changed-source-is-not-original.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [square_is_not_negative](declarations/square-is-not-negative.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [blockedProposal](declarations/blockedproposal.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [blockedDerivation](declarations/blockedderivation.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [partialDischarges](declarations/partialdischarges.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [partialReplay](declarations/partialreplay.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [partial_replay_still_blocked](declarations/partial-replay-still-blocked.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [blocked_proposal_has_no_full_discharge](declarations/blocked-proposal-has-no-full-discharge.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [partial_replay_is_not_unconditional](declarations/partial-replay-is-not-unconditional.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [stale_replay_rejected](declarations/stale-replay-rejected.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `inductive` | [Source](declarations/source.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `inductive` | [Statement](declarations/statement-source-edition-2.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [language](declarations/language.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [obligation](declarations/obligation-source-edition-2.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [zero_extension_certificate](declarations/zero-extension-certificate.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [proposal](declarations/proposal.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [dependentDerivation](declarations/dependentderivation.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [discharges](declarations/discharges.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [replay](declarations/replay.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [point_evaluation_replayed](declarations/point-evaluation-replayed.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [radius_change_requires_rebinding](declarations/radius-change-requires-rebinding.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [AssumptionDefect](declarations/assumptiondefect.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mem_assumptionDefect](declarations/mem-assumptiondefect.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [assumptionDefect_eq_empty_iff](declarations/assumptiondefect-eq-empty-iff.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [nonempty_assumptionDefect_iff](declarations/nonempty-assumptiondefect-iff.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [RecheckedResult.closed_conclusion_of_empty_defect](declarations/recheckedresult-closed-conclusion-of-empty-defect.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [true_target_with_nonempty_defect](declarations/true-target-with-nonempty-defect.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [falseLanguage](declarations/falselanguage.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [falseProposal](declarations/falseproposal.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [emptyDischarges](declarations/emptydischarges.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [false_target_has_empty_defect](declarations/false-target-has-empty-defect.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [false_target_has_no_rechecked_result](declarations/false-target-has-no-rechecked-result.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50277f84efbe4c3be9a2eef822a47995fa88f5779f3557bb83e15f212bd30c88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Assumptions/Variantffad75db4bc5bc1c1210954217ca00f6ca7bbeab0a5ee60041ecf034d92403df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
