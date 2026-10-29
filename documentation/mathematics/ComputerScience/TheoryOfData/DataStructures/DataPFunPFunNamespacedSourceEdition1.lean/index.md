# Data PFun PFun Namespaced Source Edition1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 76 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c45c5bbe2548b32d92ed119fc05397273cf7ee73`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PFun](declarations/pfun.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [inhabited](declarations/inhabited.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Dom](declarations/dom.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_dom](declarations/mem-dom.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [dom_mk](declarations/dom-mk.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dom_eq](declarations/dom-eq.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fn](declarations/fn.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fn_apply](declarations/fn-apply.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [evalOpt](declarations/evalopt.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext'](declarations/ext.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [asSubtype](declarations/assubtype.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [equivSubtype](declarations/equivsubtype.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [asSubtype_eq_of_mem](declarations/assubtype-eq-of-mem.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [lift](declarations/lift.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [coe](declarations/coe.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_val](declarations/coe-val.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [dom_coe](declarations/dom-coe.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lift_injective](declarations/lift-injective.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [graph](declarations/graph.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [graph'](declarations/graph-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ran](declarations/ran.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [restrict](declarations/restrict.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_restrict](declarations/mem-restrict.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [res](declarations/res.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_res](declarations/mem-res.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [res_univ](declarations/res-univ.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dom_iff_graph](declarations/dom-iff-graph.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lift_graph](declarations/lift-graph.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [pure](declarations/pure.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [bind](declarations/bind.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bind_apply](declarations/bind-apply.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [map](declarations/map.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [monad](declarations/monad.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [lawfulMonad](declarations/lawfulmonad.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pure_defined](declarations/pure-defined.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [bind_defined](declarations/bind-defined.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [fix](declarations/fix.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dom_of_mem_fix](declarations/dom-of-mem-fix.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_fix_iff](declarations/mem-fix-iff.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [fix_stop](declarations/fix-stop.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fix_fwd_eq](declarations/fix-fwd-eq.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fix_fwd](declarations/fix-fwd.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [fixInduction](declarations/fixinduction-source-edition-2.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [fixInduction_spec](declarations/fixinduction-spec.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [fixInduction'](declarations/fixinduction.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fixInduction'_stop](declarations/fixinduction-stop.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [fixInduction'_fwd](declarations/fixinduction-fwd.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [image](declarations/image.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [image_def](declarations/image-def.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_image](declarations/mem-image.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [image_mono](declarations/image-mono.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [image_inter](declarations/image-inter.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [image_union](declarations/image-union.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [preimage](declarations/preimage.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Preimage_def](declarations/preimage-def.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_preimage](declarations/mem-preimage.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [preimage_subset_dom](declarations/preimage-subset-dom.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [preimage_mono](declarations/preimage-mono.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [preimage_inter](declarations/preimage-inter.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [preimage_union](declarations/preimage-union.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [preimage_univ](declarations/preimage-univ.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_preimage](declarations/coe-preimage.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [core](declarations/core.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [core_def](declarations/core-def.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mem_core](declarations/mem-core.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [compl_dom_subset_core](declarations/compl-dom-subset-core.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [core_mono](declarations/core-mono.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [core_inter](declarations/core-inter.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_core_res](declarations/mem-core-res.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [core_res](declarations/core-res.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [core_restrict](declarations/core-restrict.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [preimage_subset_core](declarations/preimage-subset-core.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [preimage_eq](declarations/preimage-eq.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [core_eq](declarations/core-eq.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [preimage_asSubtype](declarations/preimage-assubtype.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [toSubtype](declarations/tosubtype.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [dom_toSubtype](declarations/dom-tosubtype.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [toSubtype_apply](declarations/tosubtype-apply.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [dom_toSubtype_apply_iff](declarations/dom-tosubtype-apply-iff.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_toSubtype_iff](declarations/mem-tosubtype-iff.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [id](declarations/id.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [coe_id](declarations/coe-id.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [id_apply](declarations/id-apply.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [comp](declarations/comp.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [comp_apply](declarations/comp-apply.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [id_comp](declarations/id-comp.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_id](declarations/comp-id.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [dom_comp](declarations/dom-comp.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [preimage_comp](declarations/preimage-comp.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Part.bind_comp](declarations/part-bind-comp.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coe_comp](declarations/coe-comp.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [prodLift](declarations/prodlift.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [dom_prodLift](declarations/dom-prodlift.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [get_prodLift](declarations/get-prodlift.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [prodLift_apply](declarations/prodlift-apply.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [mem_prodLift](declarations/mem-prodlift.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [prodMap](declarations/prodmap.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [dom_prodMap](declarations/dom-prodmap.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [get_prodMap](declarations/get-prodmap.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [prodMap_apply](declarations/prodmap-apply.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mem_prodMap](declarations/mem-prodmap.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [prodLift_fst_comp_snd_comp](declarations/prodlift-fst-comp-snd-comp.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [prodMap_id_id](declarations/prodmap-id-id.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [prodMap_comp_comp](declarations/prodmap-comp-comp.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5deb665d56c2bfa93df7a7a650a79bdaab5826ebf88eb6ec108995f7fca856c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
