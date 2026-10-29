# TMTo Partrec

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**108 observed declarations and anonymous commands**, 71 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45e2e1c1402ad68f5565d835dd0262a54dd39694`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMToPartrec.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Γ'](declarations/anonymous-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [K'](declarations/k.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Cont'](declarations/cont.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [Λ'](declarations/anonymous.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [Λ'.instInhabited](declarations/instinhabited.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [Λ'.instDecidableEq](declarations/instdecidableeq.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Stmt'](declarations/stmt.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Cfg'](declarations/cfg.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [natEnd](declarations/natend.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [pop'](declarations/pop.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [peek'](declarations/peek.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [push'](declarations/push.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [unrev](declarations/unrev.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [moveExcl](declarations/moveexcl.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [move₂](declarations/move.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [head](declarations/head.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [trNormal](declarations/trnormal.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [tr](declarations/tr.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tr_move](declarations/tr-move.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tr_push](declarations/tr-push.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [tr_read](declarations/tr-read.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [tr_clear](declarations/tr-clear.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tr_copy](declarations/tr-copy.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tr_succ](declarations/tr-succ.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tr_pred](declarations/tr-pred.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tr_ret_cons₁](declarations/tr-ret-cons-source-edition-2.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tr_ret_cons₂](declarations/tr-ret-cons.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tr_ret_comp](declarations/tr-ret-comp.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tr_ret_fix](declarations/tr-ret-fix.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tr_ret_halt](declarations/tr-ret-halt.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [trCont](declarations/trcont.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [trPosNum](declarations/trposnum.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [trNum](declarations/trnum.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [trNat](declarations/trnat.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [trNat_zero](declarations/trnat-zero.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [trNat_default](declarations/trnat-default.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [trList](declarations/trlist.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [trLList](declarations/trllist.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [contStack](declarations/contstack.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [trContStack](declarations/trcontstack.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [K'.elim](declarations/k-elim.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [K'.elim_main](declarations/k-elim-main.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [K'.elim_rev](declarations/k-elim-rev.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [K'.elim_aux](declarations/k-elim-aux.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [K'.elim_stack](declarations/k-elim-stack.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [K'.elim_update_main](declarations/k-elim-update-main.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [K'.elim_update_rev](declarations/k-elim-update-rev.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [K'.elim_update_aux](declarations/k-elim-update-aux.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [K'.elim_update_stack](declarations/k-elim-update-stack.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [halt](declarations/halt.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [TrCfg](declarations/trcfg.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [splitAtPred](declarations/splitatpred.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [splitAtPred_eq](declarations/splitatpred-eq.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [splitAtPred_false](declarations/splitatpred-false.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [move_ok](declarations/move-ok.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [unrev_ok](declarations/unrev-ok.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [move₂_ok](declarations/move-ok-source-edition-2.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [clear_ok](declarations/clear-ok.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [copy_ok](declarations/copy-ok.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [trPosNum_natEnd](declarations/trposnum-natend.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [trNum_natEnd](declarations/trnum-natend.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [trNat_natEnd](declarations/trnat-natend.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [trList_ne_consₗ](declarations/trlist-ne-cons.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [head_main_ok](declarations/head-main-ok.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [head_stack_ok](declarations/head-stack-ok.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [succ_ok](declarations/succ-ok.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [pred_ok](declarations/pred-ok.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [trNormal_respects](declarations/trnormal-respects.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [tr_ret_respects](declarations/tr-ret-respects.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [tr_respects](declarations/tr-respects.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [init](declarations/init.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [tr_init](declarations/tr-init.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [tr_eval](declarations/tr-eval.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [trStmts₁](declarations/trstmts.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [trStmts₁_trans](declarations/trstmts-trans.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [trStmts₁_self](declarations/trstmts-self.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [codeSupp'](declarations/codesupp.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [codeSupp'_self](declarations/codesupp-self.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [contSupp](declarations/contsupp.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [codeSupp](declarations/codesupp-source-edition-2.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [codeSupp_self](declarations/codesupp-self-source-edition-2.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [codeSupp_zero](declarations/codesupp-zero.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [codeSupp_succ](declarations/codesupp-succ.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [codeSupp_tail](declarations/codesupp-tail.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [codeSupp_cons](declarations/codesupp-cons.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [codeSupp_comp](declarations/codesupp-comp.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [codeSupp_case](declarations/codesupp-case.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [codeSupp_fix](declarations/codesupp-fix.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [contSupp_cons₁](declarations/contsupp-cons.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [contSupp_cons₂](declarations/contsupp-cons-source-edition-2.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [contSupp_comp](declarations/contsupp-comp.md) | 1066 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [contSupp_fix](declarations/contsupp-fix.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [contSupp_halt](declarations/contsupp-halt.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [Λ'.Supports](declarations/supports.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [Supports](declarations/supports-source-edition-2.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [supports_insert](declarations/supports-insert.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [supports_singleton](declarations/supports-singleton.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [supports_union](declarations/supports-union.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [supports_biUnion](declarations/supports-biunion.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [head_supports](declarations/head-supports.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [ret_supports](declarations/ret-supports.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [trStmts₁_supports](declarations/trstmts-supports-source-edition-2.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [trStmts₁_supports'](declarations/trstmts-supports.md) | 1155 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [trNormal_supports](declarations/trnormal-supports.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [codeSupp'_supports](declarations/codesupp-supports-source-edition-2.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [contSupp_supports](declarations/contsupp-supports.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [codeSupp_supports](declarations/codesupp-supports.md) | 1232 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [tr_supports](declarations/tr-supports.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc1ba9186b3a788fd06b8c6ca3c4ce2cb58295f305da261ae897d3d870029178 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant2033002f59415d9e110ddd53adbd49c465eb1aac926df869ff1a8cccfe7bc5c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
