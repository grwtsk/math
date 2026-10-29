# Homotopy Homotopy Group Homotopy Group Source Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ddbdb339b960500de4981a24e9c3fe1156b294d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](declarations/boundary.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [splitAt](declarations/splitat.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [insertAt](declarations/insertat.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [insertAt_boundary](declarations/insertat-boundary.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [LoopSpace](declarations/loopspace.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [LoopSpace.inhabited](declarations/loopspace-inhabited.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GenLoop](declarations/genloop.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [funLike](declarations/funlike.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mk_apply](declarations/mk-apply.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [copy](declarations/copy.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_copy](declarations/coe-copy.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [copy_eq](declarations/copy-eq.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [boundary](declarations/boundary-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [const](declarations/const.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [const_apply](declarations/const-apply.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [inhabited](declarations/inhabited.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Homotopic](declarations/homotopic.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [refl](declarations/refl.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [symm](declarations/symm.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [trans](declarations/trans.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [equiv](declarations/equiv.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [setoid](declarations/setoid.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [toLoop](declarations/toloop.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [continuous_toLoop](declarations/continuous-toloop.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [fromLoop](declarations/fromloop.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [continuous_fromLoop](declarations/continuous-fromloop.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [to_from](declarations/to-from.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [loopHomeo](declarations/loophomeo.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toLoop_apply](declarations/toloop-apply.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fromLoop_apply](declarations/fromloop-apply.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [cCompInsert](declarations/ccompinsert.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [homotopyTo](declarations/homotopyto.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [homotopyTo_apply](declarations/homotopyto-apply.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [homotopicTo](declarations/homotopicto.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [homotopyFrom](declarations/homotopyfrom.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [homotopicFrom](declarations/homotopicfrom.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [transAt](declarations/transat.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [symmAt](declarations/symmat.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [transAt_distrib](declarations/transat-distrib.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [fromLoop_trans_toLoop](declarations/fromloop-trans-toloop.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fromLoop_symm_toLoop](declarations/fromloop-symm-toloop.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [HomotopyGroup](declarations/homotopygroup.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homotopyGroupEquivFundamentalGroup](declarations/homotopygroupequivfundamentalgroup.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [HomotopyGroup.Pi](declarations/homotopygroup-pi.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [genLoopHomeoOfIsEmpty](declarations/genloophomeoofisempty.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](declarations/homotopygroupequivzerothhomotopyofisempty.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](declarations/homotopygroup-pi0equivzerothhomotopy.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [genLoopEquivOfUnique](declarations/genloopequivofunique.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](declarations/homotopygroupequivfundamentalgroupofunique.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](declarations/homotopygroup-pi1equivfundamentalgroup.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [group](declarations/group.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [auxGroup](declarations/auxgroup.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isUnital_auxGroup](declarations/isunital-auxgroup.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [auxGroup_indep](declarations/auxgroup-indep.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [transAt_indep](declarations/transat-indep.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [symmAt_indep](declarations/symmat-indep.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [one_def](declarations/one-def.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mul_spec](declarations/mul-spec.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [inv_spec](declarations/inv-spec.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [commGroup](declarations/commgroup.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64817c4100fbde18e752129055fb550de767d97a7cd7c1a7bebbf706dc86156c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
