# Turing Machine Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c14e91790357aeb78628835fe8af4a3d1cad9f8c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TuringMachineNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Stmt](declarations/stmt.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Stmt.inhabited](declarations/stmt-inhabited.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Cfg](declarations/cfg.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [Cfg.inhabited](declarations/cfg-inhabited.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [stepAux](declarations/stepaux.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [step](declarations/step.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reaches](declarations/reaches.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SupportsStmt](declarations/supportsstmt.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [stmts₁](declarations/stmts.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stmts₁_self](declarations/stmts-self.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [stmts₁_trans](declarations/stmts-trans.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stmts₁_supportsStmt_mono](declarations/stmts-supportsstmt-mono.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stmts](declarations/stmts-source-edition-2.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stmts_trans](declarations/stmts-trans-source-edition-2.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Supports](declarations/supports.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [stmts_supportsStmt](declarations/stmts-supportsstmt.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [step_supports](declarations/step-supports.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [init](declarations/init.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [eval](declarations/eval.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [stk_nth_val](declarations/stk-nth-val.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Γ'](declarations/anonymous-source-edition-2.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Γ'.inhabited](declarations/inhabited.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Γ'.fintype](declarations/fintype.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [addBottom](declarations/addbottom.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [addBottom_map](declarations/addbottom-map.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [addBottom_modifyNth](declarations/addbottom-modifynth.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [addBottom_nth_snd](declarations/addbottom-nth-snd.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [addBottom_nth_succ_fst](declarations/addbottom-nth-succ-fst.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [addBottom_head_fst](declarations/addbottom-head-fst.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `inductive` | [StAct](declarations/stact.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [StAct.inhabited](declarations/stact-inhabited.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stRun](declarations/strun.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [stVar](declarations/stvar.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [stWrite](declarations/stwrite.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [stmtStRec.](declarations/stmtstrec.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [supports_run](declarations/supports-run.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [Λ'](declarations/anonymous.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Λ'.inhabited](declarations/inhabited-source-edition-2.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [trStAct](declarations/trstact.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trInit](declarations/trinit.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [step_run](declarations/step-run.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [trNormal](declarations/trnormal.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [trNormal_run](declarations/trnormal-run.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [trStmts₁](declarations/trstmts.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [trStmts₁_run](declarations/trstmts-run.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tr_respects_aux₂](declarations/tr-respects-aux-source-edition-4.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [tr](declarations/tr.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [TrCfg](declarations/trcfg.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [tr_respects_aux₁](declarations/tr-respects-aux-source-edition-2.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [tr_respects_aux₃](declarations/tr-respects-aux-source-edition-3.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [tr_respects_aux](declarations/tr-respects-aux.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [tr_respects](declarations/tr-respects.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [trCfg_init](declarations/trcfg-init.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tr_eval_dom](declarations/tr-eval-dom.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tr_eval](declarations/tr-eval.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [trSupp](declarations/trsupp.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [tr_supports](declarations/tr-supports.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2583e83fc736e10e9549459c35596cbeb6028182d783bcf4667ea8d66203a311 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Varianta02eb2375b25369c3181b879eb6f790b91b442aa5c10730373682efc115f9107.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
