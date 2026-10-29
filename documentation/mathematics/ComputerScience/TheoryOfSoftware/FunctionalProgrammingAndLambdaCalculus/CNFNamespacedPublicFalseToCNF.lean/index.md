# CNFNamespaced Public False To CNF

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0184a078c2239ae7e1588b9d627c3fe939fbc5e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CNFNamespacedPublicFalseToCNF.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [falseToCNF](declarations/falsetocnf.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [atomToCNF](declarations/atomtocnf.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gateToCNF](declarations/gatetocnf.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [falseToCNF_eval](declarations/falsetocnf-eval.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [atomToCNF_eval](declarations/atomtocnf-eval.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gateToCNF_eval](declarations/gatetocnf-eval.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mixAssigns](declarations/mixassigns.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [projectLeftAssign](declarations/projectleftassign.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [projectRightAssign](declarations/projectrightassign.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [projectLeftAssign_property](declarations/projectleftassign-property.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [projectRightAssign_property](declarations/projectrightassign-property.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [cnfSatAssignment](declarations/cnfsatassignment.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [satAssignment_inl](declarations/satassignment-inl.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [satAssignment_inr](declarations/satassignment-inr.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Cache.Inv](declarations/cache-inv.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Cache.Inv_init](declarations/cache-inv-init.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [Cache](declarations/cache.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [Cache.IsExtensionBy](declarations/cache-isextensionby.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Cache.IsExtensionBy_trans_left](declarations/cache-isextensionby-trans-left.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Cache.IsExtensionBy_trans_right](declarations/cache-isextensionby-trans-right.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Cache.IsExtensionBy_rfl](declarations/cache-isextensionby-rfl.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Cache.IsExtensionBy_set](declarations/cache-isextensionby-set.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Cache.init](declarations/cache-init.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Cache.addFalse](declarations/cache-addfalse.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Cache.addAtom](declarations/cache-addatom.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Cache.addGate](declarations/cache-addgate.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [State.Inv](declarations/state-inv.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [State.Inv_nil](declarations/state-inv-nil.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [State.Inv_append](declarations/state-inv-append.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [State.Inv_falseToCNF](declarations/state-inv-falsetocnf.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [State.Inv_atomToCNF](declarations/state-inv-atomtocnf.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [State.Inv_gateToCNF](declarations/state-inv-gatetocnf.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [State](declarations/state.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [State.empty](declarations/state-empty.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [State.IsExtensionBy](declarations/state-isextensionby.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [State.IsExtensionBy_trans_left](declarations/state-isextensionby-trans-left.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [State.IsExtensionBy_trans_right](declarations/state-isextensionby-trans-right.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [State.IsExtensionBy_rfl](declarations/state-isextensionby-rfl.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [State.addFalse](declarations/state-addfalse.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [State.addAtom](declarations/state-addatom.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [State.addGate](declarations/state-addgate.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [State.eval](declarations/state-eval.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [State.Sat](declarations/state-sat.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [State.Unsat](declarations/state-unsat.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [State.eval_eq](declarations/state-eval-eq.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [State.sat_iff](declarations/state-sat-iff.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [State.unsat_iff](declarations/state-unsat-iff.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [toCNF](declarations/tocnf.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toCNF.go_marks](declarations/tocnf-go-marks.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toCNF.go_sat](declarations/tocnf-go-sat.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toCNF.go_as_denote'](declarations/tocnf-go-as-denote.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toCNF.go_as_denote](declarations/tocnf-go-as-denote-source-edition-2.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toCNF.denote_as_go](declarations/tocnf-denote-as-go.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toCNF_equisat](declarations/tocnf-equisat.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e25d5926aafbd9cc1f1eaccbf9008a9b5a03d6293688d0303250ad7b869be287 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
