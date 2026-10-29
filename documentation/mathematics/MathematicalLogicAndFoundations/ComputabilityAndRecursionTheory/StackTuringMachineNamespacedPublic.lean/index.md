# Stack Turing Machine Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4ba02815758cfb9698061c15a805920126e3787`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/StackTuringMachineNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Stmt](declarations/stmt.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Stmt.inhabited](declarations/stmt-inhabited.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Cfg](declarations/cfg.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [Cfg.inhabited](declarations/cfg-inhabited.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [stepAux](declarations/stepaux.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [step](declarations/step.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reaches](declarations/reaches.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SupportsStmt](declarations/supportsstmt.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [stmts₁](declarations/stmts.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stmts₁_self](declarations/stmts-self.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [stmts₁_trans](declarations/stmts-trans-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stmts₁_supportsStmt_mono](declarations/stmts-supportsstmt-mono.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stmts](declarations/stmts-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stmts_trans](declarations/stmts-trans.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Supports](declarations/supports.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [stmts_supportsStmt](declarations/stmts-supportsstmt.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [step_supports](declarations/step-supports.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [init](declarations/init.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [eval](declarations/eval.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [stk_nth_val](declarations/stk-nth-val.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Γ'](declarations/anonymous-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Γ'.inhabited](declarations/inhabited-source-edition-2.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Γ'.fintype](declarations/fintype.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [addBottom](declarations/addbottom.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [addBottom_map](declarations/addbottom-map.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [addBottom_modifyNth](declarations/addbottom-modifynth.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [addBottom_nth_snd](declarations/addbottom-nth-snd.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [addBottom_nth_succ_fst](declarations/addbottom-nth-succ-fst.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [addBottom_head_fst](declarations/addbottom-head-fst.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `inductive` | [StAct](declarations/stact.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [StAct.inhabited](declarations/stact-inhabited.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stRun](declarations/strun.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [stVar](declarations/stvar.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [stWrite](declarations/stwrite.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [stmtStRec.](declarations/stmtstrec.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [supports_run](declarations/supports-run.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [Λ'](declarations/anonymous.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Λ'.inhabited](declarations/inhabited.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [trStAct](declarations/trstact.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trInit](declarations/trinit.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [step_run](declarations/step-run.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [trNormal](declarations/trnormal.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [trNormal_run](declarations/trnormal-run.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [trStmts₁](declarations/trstmts.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [trStmts₁_run](declarations/trstmts-run.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tr_respects_aux₂](declarations/tr-respects-aux-source-edition-3.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [tr](declarations/tr.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [TrCfg](declarations/trcfg.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [tr_respects_aux₁](declarations/tr-respects-aux-source-edition-4.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [tr_respects_aux₃](declarations/tr-respects-aux-source-edition-2.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [tr_respects_aux](declarations/tr-respects-aux.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [tr_respects](declarations/tr-respects.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [trCfg_init](declarations/trcfg-init.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tr_eval_dom](declarations/tr-eval-dom.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tr_eval](declarations/tr-eval.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [trSupp](declarations/trsupp.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [tr_supports](declarations/tr-supports.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66fb09d8dfe39165d408463baff7f3543c5f9d097e9e701d438ae9f0001b21a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/StackTuringMachine/Variante98390a2c66ed44680c425c4ceddca6ff2bddb32dc7aeeba48ccc596e7f06398.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
