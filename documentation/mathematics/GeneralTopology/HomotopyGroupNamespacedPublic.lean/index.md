# Homotopy Group Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8e10a052b13cd9076637537a1c01aedae2a2cae`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HomotopyGroupNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](declarations/boundary-source-edition-2.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [splitAt](declarations/splitat.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [insertAt](declarations/insertat.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [insertAt_boundary](declarations/insertat-boundary.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [LoopSpace](declarations/loopspace.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [LoopSpace.inhabited](declarations/loopspace-inhabited.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GenLoop](declarations/genloop.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instFunLike](declarations/instfunlike.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_coe](declarations/coe-coe.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mk_apply](declarations/mk-apply.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instContinuousEval](declarations/instcontinuouseval.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instContinuousEvalConst](declarations/instcontinuousevalconst.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [copy](declarations/copy.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_copy](declarations/coe-copy.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [copy_eq](declarations/copy-eq.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [boundary](declarations/boundary.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [const](declarations/const.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [const_apply](declarations/const-apply.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [inhabited](declarations/inhabited.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [congr](declarations/congr.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Homotopy Group Namespaced Public](declarations/boundary-sum-iff.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [apply_inl_apply_inr_eq_of_mem_boundary_sum](declarations/apply-inl-apply-inr-eq-of-mem-boundary-sum.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [currySum](declarations/currysum.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [currySum_apply_inl_inr](declarations/currysum-apply-inl-inr.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [continuous_currySum](declarations/continuous-currysum.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [uncurry](declarations/uncurry.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [uncurry_apply](declarations/uncurry-apply.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [genLoopGenLoopEquiv](declarations/genloopgenloopequiv.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Homotopic](declarations/homotopic.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [refl](declarations/refl.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [symm](declarations/symm.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [trans](declarations/trans.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [equiv](declarations/equiv.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [setoid](declarations/setoid.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [toLoop](declarations/toloop.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [continuous_toLoop](declarations/continuous-toloop.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [fromLoop](declarations/fromloop.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [continuous_fromLoop](declarations/continuous-fromloop.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [to_from](declarations/to-from.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [loopHomeo](declarations/loophomeo.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toLoop_apply](declarations/toloop-apply.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fromLoop_apply](declarations/fromloop-apply.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `abbrev` | [cCompInsert](declarations/ccompinsert.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homotopyTo](declarations/homotopyto.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [homotopyTo_apply](declarations/homotopyto-apply.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [homotopicTo](declarations/homotopicto.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [homotopyFrom](declarations/homotopyfrom.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [homotopicFrom](declarations/homotopicfrom.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [transAt](declarations/transat.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [symmAt](declarations/symmat.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [transAt_distrib](declarations/transat-distrib.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [fromLoop_trans_toLoop](declarations/fromloop-trans-toloop.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [fromLoop_symm_toLoop](declarations/fromloop-symm-toloop.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [HomotopyGroup](declarations/homotopygroup.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [homotopyGroupEquivFundamentalGroup](declarations/homotopygroupequivfundamentalgroup.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `abbrev` | [HomotopyGroup.Pi](declarations/homotopygroup-pi.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [genLoopHomeoOfIsEmpty](declarations/genloophomeoofisempty.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](declarations/homotopygroupequivzerothhomotopyofisempty.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](declarations/homotopygroup-pi0equivzerothhomotopy.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [genLoopEquivOfUnique](declarations/genloopequivofunique.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](declarations/homotopygroupequivfundamentalgroupofunique.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](declarations/homotopygroup-pi1equivfundamentalgroup.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [HomotopyGroup.genLoopEquivOfUnique_transAt](declarations/homotopygroup-genloopequivofunique-transat.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [group](declarations/group.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [auxGroup](declarations/auxgroup.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isUnital_auxGroup](declarations/isunital-auxgroup.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [auxGroup_indep](declarations/auxgroup-indep.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [transAt_indep](declarations/transat-indep.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [symmAt_indep](declarations/symmat-indep.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [one_def](declarations/one-def.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mul_spec](declarations/mul-spec.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [inv_spec](declarations/inv-spec.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [commGroup](declarations/commgroup.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [homotopyGroupOfUniqueMulEquivFundamentalGroup](declarations/homotopygroupofuniquemulequivfundamentalgroup.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [pi1MulEquivFundamentalGroup](declarations/pi1mulequivfundamentalgroup.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c452de59d63cfdb0e451a327f37108b6a8c873596419956602f6f0bbfc36f22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
