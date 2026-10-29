# Homotopy Group Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HomotopyGroupPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](declarations/boundary-source-edition-2.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [splitAt](declarations/splitat.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [insertAt](declarations/insertat.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [insertAt_boundary](declarations/insertat-boundary.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [LoopSpace](declarations/loopspace.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [LoopSpace.inhabited](declarations/loopspace-inhabited.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [GenLoop](declarations/genloop.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instFunLike](declarations/instfunlike.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_coe](declarations/coe-coe.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mk_apply](declarations/mk-apply.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instContinuousEval](declarations/instcontinuouseval.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instContinuousEvalConst](declarations/instcontinuousevalconst.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [copy](declarations/copy.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_copy](declarations/coe-copy.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [copy_eq](declarations/copy-eq.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [boundary](declarations/boundary.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [const](declarations/const.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [const_apply](declarations/const-apply.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [inhabited](declarations/inhabited.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [congr](declarations/congr.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [_root_.Cube.boundary_sum_iff](declarations/root-cube-boundary-sum-iff.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [apply_inl_apply_inr_eq_of_mem_boundary_sum](declarations/apply-inl-apply-inr-eq-of-mem-boundary-sum.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [currySum](declarations/currysum.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [currySum_apply_inl_inr](declarations/currysum-apply-inl-inr.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [continuous_currySum](declarations/continuous-currysum.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [uncurry](declarations/uncurry.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [uncurry_apply](declarations/uncurry-apply.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [genLoopGenLoopEquiv](declarations/genloopgenloopequiv.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Homotopic](declarations/homotopic.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [refl](declarations/refl.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [symm](declarations/symm.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [trans](declarations/trans.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [equiv](declarations/equiv.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [setoid](declarations/setoid.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [toLoop](declarations/toloop.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [continuous_toLoop](declarations/continuous-toloop.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [fromLoop](declarations/fromloop.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [continuous_fromLoop](declarations/continuous-fromloop.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [to_from](declarations/to-from.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [loopHomeo](declarations/loophomeo.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toLoop_apply](declarations/toloop-apply.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fromLoop_apply](declarations/fromloop-apply.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `abbrev` | [cCompInsert](declarations/ccompinsert.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homotopyTo](declarations/homotopyto.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [homotopyTo_apply](declarations/homotopyto-apply.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [homotopicTo](declarations/homotopicto.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [homotopyFrom](declarations/homotopyfrom.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [homotopicFrom](declarations/homotopicfrom.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [transAt](declarations/transat.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [symmAt](declarations/symmat.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [transAt_distrib](declarations/transat-distrib.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [fromLoop_trans_toLoop](declarations/fromloop-trans-toloop.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [fromLoop_symm_toLoop](declarations/fromloop-symm-toloop.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [HomotopyGroup](declarations/homotopygroup.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [homotopyGroupEquivFundamentalGroup](declarations/homotopygroupequivfundamentalgroup.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `abbrev` | [HomotopyGroup.Pi](declarations/homotopygroup-pi.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [genLoopHomeoOfIsEmpty](declarations/genloophomeoofisempty.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](declarations/homotopygroupequivzerothhomotopyofisempty.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](declarations/homotopygroup-pi0equivzerothhomotopy.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [genLoopEquivOfUnique](declarations/genloopequivofunique.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](declarations/homotopygroupequivfundamentalgroupofunique.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](declarations/homotopygroup-pi1equivfundamentalgroup.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [HomotopyGroup.genLoopEquivOfUnique_transAt](declarations/homotopygroup-genloopequivofunique-transat.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [group](declarations/group.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [auxGroup](declarations/auxgroup.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isUnital_auxGroup](declarations/isunital-auxgroup.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [auxGroup_indep](declarations/auxgroup-indep.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [transAt_indep](declarations/transat-indep.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [symmAt_indep](declarations/symmat-indep.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [one_def](declarations/one-def.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mul_spec](declarations/mul-spec.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [inv_spec](declarations/inv-spec.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [commGroup](declarations/commgroup.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [homotopyGroupOfUniqueMulEquivFundamentalGroup](declarations/homotopygroupofuniquemulequivfundamentalgroup.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [pi1MulEquivFundamentalGroup](declarations/pi1mulequivfundamentalgroup.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9471d9f6f2244415934416da1f0fee176d2e687a78af7aa36295351de03ad4c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
