# Homotopy Homotopy Group Homotopy Group Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f8e6500b836927d0425c1820f907956a8cf2aff`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](declarations/boundary.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [splitAt](declarations/splitat.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [insertAt](declarations/insertat.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [insertAt_boundary](declarations/insertat-boundary.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [LoopSpace](declarations/loopspace.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [LoopSpace.inhabited](declarations/loopspace-inhabited.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GenLoop](declarations/genloop.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instFunLike](declarations/instfunlike.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mk_apply](declarations/mk-apply.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instContinuousEval](declarations/instcontinuouseval.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instContinuousEvalConst](declarations/instcontinuousevalconst.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [copy](declarations/copy.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_copy](declarations/coe-copy.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [copy_eq](declarations/copy-eq.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [boundary](declarations/boundary-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [const](declarations/const.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [const_apply](declarations/const-apply.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [inhabited](declarations/inhabited.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Homotopic](declarations/homotopic.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [refl](declarations/refl.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [symm](declarations/symm.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [trans](declarations/trans.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [equiv](declarations/equiv.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [setoid](declarations/setoid.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toLoop](declarations/toloop.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [continuous_toLoop](declarations/continuous-toloop.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [fromLoop](declarations/fromloop.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [continuous_fromLoop](declarations/continuous-fromloop.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [to_from](declarations/to-from.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [loopHomeo](declarations/loophomeo.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toLoop_apply](declarations/toloop-apply.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [fromLoop_apply](declarations/fromloop-apply.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [cCompInsert](declarations/ccompinsert.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [homotopyTo](declarations/homotopyto.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [homotopyTo_apply](declarations/homotopyto-apply.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [homotopicTo](declarations/homotopicto.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [homotopyFrom](declarations/homotopyfrom.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [homotopicFrom](declarations/homotopicfrom.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [transAt](declarations/transat.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [symmAt](declarations/symmat.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [transAt_distrib](declarations/transat-distrib.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fromLoop_trans_toLoop](declarations/fromloop-trans-toloop.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [fromLoop_symm_toLoop](declarations/fromloop-symm-toloop.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [HomotopyGroup](declarations/homotopygroup.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [homotopyGroupEquivFundamentalGroup](declarations/homotopygroupequivfundamentalgroup.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `abbrev` | [HomotopyGroup.Pi](declarations/homotopygroup-pi.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [genLoopHomeoOfIsEmpty](declarations/genloophomeoofisempty.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](declarations/homotopygroupequivzerothhomotopyofisempty.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](declarations/homotopygroup-pi0equivzerothhomotopy.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [genLoopEquivOfUnique](declarations/genloopequivofunique.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](declarations/homotopygroupequivfundamentalgroupofunique.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](declarations/homotopygroup-pi1equivfundamentalgroup.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [group](declarations/group.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `abbrev` | [auxGroup](declarations/auxgroup.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isUnital_auxGroup](declarations/isunital-auxgroup.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [auxGroup_indep](declarations/auxgroup-indep.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [transAt_indep](declarations/transat-indep.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [symmAt_indep](declarations/symmat-indep.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [one_def](declarations/one-def.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mul_spec](declarations/mul-spec.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [inv_spec](declarations/inv-spec.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [commGroup](declarations/commgroup.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac8230cdd143851bb612eb872a72635115bf1d8a645390df555f5dcc06885441 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant39bde724784f347bcfa8d0af34578853739c2e3e7656a6456ca68aa9590a94e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
