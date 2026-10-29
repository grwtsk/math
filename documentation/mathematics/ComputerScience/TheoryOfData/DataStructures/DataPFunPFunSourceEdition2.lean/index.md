# Data PFun PFun Source Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 76 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bd2825be72e64cf08fdbc48520df16c11ef7e7d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DataPFunPFunSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PFun](declarations/pfun.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [inhabited](declarations/inhabited.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Dom](declarations/dom.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_dom](declarations/mem-dom.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [dom_mk](declarations/dom-mk.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dom_eq](declarations/dom-eq.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fn](declarations/fn.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fn_apply](declarations/fn-apply.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [evalOpt](declarations/evalopt.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext'](declarations/ext.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [asSubtype](declarations/assubtype.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [equivSubtype](declarations/equivsubtype.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [asSubtype_eq_of_mem](declarations/assubtype-eq-of-mem.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [lift](declarations/lift.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [coe](declarations/coe.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_val](declarations/coe-val.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [dom_coe](declarations/dom-coe.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lift_injective](declarations/lift-injective.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [graph](declarations/graph.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [graph'](declarations/graph-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ran](declarations/ran.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [restrict](declarations/restrict.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_restrict](declarations/mem-restrict.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [res](declarations/res.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_res](declarations/mem-res.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [res_univ](declarations/res-univ.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dom_iff_graph](declarations/dom-iff-graph.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lift_graph](declarations/lift-graph.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [pure](declarations/pure.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [bind](declarations/bind.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bind_apply](declarations/bind-apply.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [map](declarations/map.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [monad](declarations/monad.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [lawfulMonad](declarations/lawfulmonad.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pure_defined](declarations/pure-defined.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [bind_defined](declarations/bind-defined.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [fix](declarations/fix.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dom_of_mem_fix](declarations/dom-of-mem-fix.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_fix_iff](declarations/mem-fix-iff.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [fix_stop](declarations/fix-stop.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fix_fwd_eq](declarations/fix-fwd-eq.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fix_fwd](declarations/fix-fwd.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [fixInduction](declarations/fixinduction.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [fixInduction_spec](declarations/fixinduction-spec.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [fixInduction'](declarations/fixinduction-source-edition-2.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fixInduction'_stop](declarations/fixinduction-stop.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [fixInduction'_fwd](declarations/fixinduction-fwd.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [image](declarations/image.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [image_def](declarations/image-def.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_image](declarations/mem-image.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [image_mono](declarations/image-mono.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [image_inter](declarations/image-inter.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [image_union](declarations/image-union.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [preimage](declarations/preimage.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Preimage_def](declarations/preimage-def.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_preimage](declarations/mem-preimage.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [preimage_subset_dom](declarations/preimage-subset-dom.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [preimage_mono](declarations/preimage-mono.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [preimage_inter](declarations/preimage-inter.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [preimage_union](declarations/preimage-union.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [preimage_univ](declarations/preimage-univ.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_preimage](declarations/coe-preimage.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [core](declarations/core.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [core_def](declarations/core-def.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mem_core](declarations/mem-core.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [compl_dom_subset_core](declarations/compl-dom-subset-core.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [core_mono](declarations/core-mono.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [core_inter](declarations/core-inter.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_core_res](declarations/mem-core-res.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [core_res](declarations/core-res.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [core_restrict](declarations/core-restrict.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [preimage_subset_core](declarations/preimage-subset-core.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [preimage_eq](declarations/preimage-eq.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [core_eq](declarations/core-eq.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [preimage_asSubtype](declarations/preimage-assubtype.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [toSubtype](declarations/tosubtype.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [dom_toSubtype](declarations/dom-tosubtype.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [toSubtype_apply](declarations/tosubtype-apply.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [dom_toSubtype_apply_iff](declarations/dom-tosubtype-apply-iff.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_toSubtype_iff](declarations/mem-tosubtype-iff.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [id](declarations/id.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [coe_id](declarations/coe-id.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [id_apply](declarations/id-apply.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [comp](declarations/comp.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [comp_apply](declarations/comp-apply.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [id_comp](declarations/id-comp.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_id](declarations/comp-id.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [dom_comp](declarations/dom-comp.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [preimage_comp](declarations/preimage-comp.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Part.bind_comp](declarations/part-bind-comp.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coe_comp](declarations/coe-comp.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [prodLift](declarations/prodlift.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [dom_prodLift](declarations/dom-prodlift.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [get_prodLift](declarations/get-prodlift.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [prodLift_apply](declarations/prodlift-apply.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [mem_prodLift](declarations/mem-prodlift.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [prodMap](declarations/prodmap.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [dom_prodMap](declarations/dom-prodmap.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [get_prodMap](declarations/get-prodmap.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [prodMap_apply](declarations/prodmap-apply.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mem_prodMap](declarations/mem-prodmap.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [prodLift_fst_comp_snd_comp](declarations/prodlift-fst-comp-snd-comp.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [prodMap_id_id](declarations/prodmap-id-id.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [prodMap_comp_comp](declarations/prodmap-comp-comp.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a379556fec51455ffd6494f01282de5c17b0cf03f23aa8d229424eff67661f40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variantca5494d7e1101fa1a84664e7ae04fc0a35451c84b856d4a13fe5ffb4005c74f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
