# Post Turing Machine

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**108 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ee1a79ce54aa340ecbff62a956332bd6748fbf8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PostTuringMachine.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [eval](declarations/eval-source-edition-3.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Reaches](declarations/reaches-source-edition-2.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Reaches₁](declarations/reaches-source-edition-4.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [reaches₁_eq](declarations/reaches-eq-source-edition-2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reaches_total](declarations/reaches-total.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reaches₁_fwd](declarations/reaches-fwd.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Reaches₀](declarations/reaches.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Reaches₀.trans](declarations/reaches-trans.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Reaches₀.refl](declarations/reaches-refl.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Reaches₀.single](declarations/reaches-single.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Reaches₀.head](declarations/reaches-head.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Reaches₀.tail](declarations/reaches-tail.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [reaches₀_eq](declarations/reaches-eq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Reaches₁.to₀](declarations/reaches-to-source-edition-2.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Reaches.to₀](declarations/reaches-to.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Reaches₀.tail'](declarations/reaches-tail-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [evalInduction](declarations/evalinduction.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_eval](declarations/mem-eval.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_maximal₁](declarations/eval-maximal.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval_maximal](declarations/eval-maximal-source-edition-2.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [reaches_eval](declarations/reaches-eval.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Respects](declarations/respects.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tr_reaches₁](declarations/tr-reaches.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tr_reaches](declarations/tr-reaches-source-edition-2.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tr_reaches_rev](declarations/tr-reaches-rev.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tr_eval](declarations/tr-eval.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tr_eval_rev](declarations/tr-eval-rev.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tr_eval_dom](declarations/tr-eval-dom.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FRespects](declarations/frespects.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [frespects_eq](declarations/frespects-eq.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fun_respects](declarations/fun-respects.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tr_eval'](declarations/tr-eval-source-edition-3.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [Stmt](declarations/stmt.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [Stmt.inhabited](declarations/stmt-inhabited-source-edition-2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Machine](declarations/machine.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [Machine.inhabited](declarations/machine-inhabited.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [Cfg](declarations/cfg.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Cfg.inhabited](declarations/cfg-inhabited.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [step](declarations/step.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Reaches](declarations/reaches-source-edition-3.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [init](declarations/init-source-edition-2.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [eval](declarations/eval.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [Supports](declarations/supports.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [step_supports](declarations/step-supports-source-edition-2.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [univ_supports](declarations/univ-supports.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [Stmt.map](declarations/stmt-map.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Cfg.map](declarations/cfg-map.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [Machine.map](declarations/machine-map.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Machine.map_step](declarations/machine-map-step.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [map_init](declarations/map-init.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Machine.map_respects](declarations/machine-map-respects.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `inductive` | [Stmt](declarations/stmt-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [Stmt.inhabited](declarations/stmt-inhabited.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [Cfg](declarations/cfg-source-edition-2.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [Cfg.inhabited](declarations/cfg-inhabited-source-edition-2.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [stepAux](declarations/stepaux.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [step](declarations/step-source-edition-2.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [SupportsStmt](declarations/supportsstmt.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [stmts₁](declarations/stmts-source-edition-2.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [stmts₁_self](declarations/stmts-self.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [stmts₁_trans](declarations/stmts-trans-source-edition-2.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [stmts₁_supportsStmt_mono](declarations/stmts-supportsstmt-mono.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [stmts](declarations/stmts.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [stmts_trans](declarations/stmts-trans.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [Supports](declarations/supports-source-edition-2.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [stmts_supportsStmt](declarations/stmts-supportsstmt.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [step_supports](declarations/step-supports.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [init](declarations/init.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [eval](declarations/eval-source-edition-2.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [Λ'](declarations/anonymous.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [trAux](declarations/traux.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [tr](declarations/tr.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [trCfg](declarations/trcfg.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [tr_respects](declarations/tr-respects-source-edition-2.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [tr_eval](declarations/tr-eval-source-edition-2.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [trStmts](declarations/trstmts.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [tr_supports](declarations/tr-supports.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [exists_enc_dec](declarations/exists-enc-dec.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `inductive` | [Λ'](declarations/anonymous-source-edition-3.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [readAux](declarations/readaux.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [move](declarations/move.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [read](declarations/read.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [write](declarations/write.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [trNormal](declarations/trnormal.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [stepAux_move](declarations/stepaux-move.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [supportsStmt_move](declarations/supportsstmt-move.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [supportsStmt_write](declarations/supportsstmt-write.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [supportsStmt_read](declarations/supportsstmt-read.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [trTape'](declarations/trtape-source-edition-2.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [trTape](declarations/trtape.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [trTape_mk'](declarations/trtape-mk.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [tr](declarations/tr-source-edition-2.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [trCfg](declarations/trcfg-source-edition-2.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [trTape'_move_left](declarations/trtape-move-left.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [trTape'_move_right](declarations/trtape-move-right.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [stepAux_write](declarations/stepaux-write.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [stepAux_read](declarations/stepaux-read.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [tr_respects](declarations/tr-respects.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [writes](declarations/writes.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [trSupp](declarations/trsupp.md) | 1112 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [tr_supports](declarations/tr-supports-source-edition-2.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `inductive` | [Λ'](declarations/anonymous-source-edition-2.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1191 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [tr](declarations/tr-source-edition-3.md) | 1199 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [trCfg](declarations/trcfg-source-edition-3.md) | 1209 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [tr_respects](declarations/tr-respects-source-edition-3.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0445c05b605bf29dbc6c5110c0ec93762de02af037d3435fda68da038031876 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
