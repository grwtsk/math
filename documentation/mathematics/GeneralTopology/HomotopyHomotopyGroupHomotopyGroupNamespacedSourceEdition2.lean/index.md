# Homotopy Homotopy Group Homotopy Group Namespaced Source Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4486de2bc267c81b7ddb3df318e39c428d07058`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HomotopyHomotopyGroupHomotopyGroupNamespacedSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](declarations/boundary.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [splitAt](declarations/splitat.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [insertAt](declarations/insertat.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [insertAt_boundary](declarations/insertat-boundary.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [LoopSpace](declarations/loopspace.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [LoopSpace.inhabited](declarations/loopspace-inhabited.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GenLoop](declarations/genloop.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [funLike](declarations/funlike.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mk_apply](declarations/mk-apply.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [copy](declarations/copy.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_copy](declarations/coe-copy.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [copy_eq](declarations/copy-eq.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [boundary](declarations/boundary-source-edition-2.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [const](declarations/const.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [const_apply](declarations/const-apply.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [inhabited](declarations/inhabited.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Homotopic](declarations/homotopic.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [refl](declarations/refl.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [symm](declarations/symm.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [trans](declarations/trans.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [equiv](declarations/equiv.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [setoid](declarations/setoid.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [toLoop](declarations/toloop.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [continuous_toLoop](declarations/continuous-toloop.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [fromLoop](declarations/fromloop.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [continuous_fromLoop](declarations/continuous-fromloop.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [to_from](declarations/to-from.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [loopHomeo](declarations/loophomeo.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toLoop_apply](declarations/toloop-apply.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fromLoop_apply](declarations/fromloop-apply.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [cCompInsert](declarations/ccompinsert.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [homotopyTo](declarations/homotopyto.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [homotopyTo_apply](declarations/homotopyto-apply.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [homotopicTo](declarations/homotopicto.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [homotopyFrom](declarations/homotopyfrom.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [homotopicFrom](declarations/homotopicfrom.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [transAt](declarations/transat.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [symmAt](declarations/symmat.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [transAt_distrib](declarations/transat-distrib.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [fromLoop_trans_toLoop](declarations/fromloop-trans-toloop.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fromLoop_symm_toLoop](declarations/fromloop-symm-toloop.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [HomotopyGroup](declarations/homotopygroup.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homotopyGroupEquivFundamentalGroup](declarations/homotopygroupequivfundamentalgroup.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [HomotopyGroup.Pi](declarations/homotopygroup-pi.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [genLoopHomeoOfIsEmpty](declarations/genloophomeoofisempty.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](declarations/homotopygroupequivzerothhomotopyofisempty.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](declarations/homotopygroup-pi0equivzerothhomotopy.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [genLoopEquivOfUnique](declarations/genloopequivofunique.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](declarations/homotopygroupequivfundamentalgroupofunique.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](declarations/homotopygroup-pi1equivfundamentalgroup.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [group](declarations/group.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [auxGroup](declarations/auxgroup.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isUnital_auxGroup](declarations/isunital-auxgroup.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [auxGroup_indep](declarations/auxgroup-indep.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [transAt_indep](declarations/transat-indep.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [symmAt_indep](declarations/symmat-indep.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [one_def](declarations/one-def.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mul_spec](declarations/mul-spec.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [inv_spec](declarations/inv-spec.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [commGroup](declarations/commgroup.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc98d5e8b597656ddb66848a76dd045e352edecf1155455a718a99afda1f9685 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
