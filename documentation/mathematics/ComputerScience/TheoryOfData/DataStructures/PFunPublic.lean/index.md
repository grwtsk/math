# PFun Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 76 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Variantc7aa5e5a6e107d4defbe12e1ad8ada1c5ec1b8c1ae7790c807a3cb8625b7abb8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e33dd0cc29da5e183a2fec0f8eef1e90d84b605`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PFunPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PFun](declarations/pfun.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [inhabited](declarations/inhabited.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Dom](declarations/dom.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_dom](declarations/mem-dom.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [dom_mk](declarations/dom-mk.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dom_eq](declarations/dom-eq.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fn](declarations/fn.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fn_apply](declarations/fn-apply.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [evalOpt](declarations/evalopt.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext'](declarations/ext.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [asSubtype](declarations/assubtype.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [equivSubtype](declarations/equivsubtype.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [asSubtype_eq_of_mem](declarations/assubtype-eq-of-mem.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [lift](declarations/lift.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [coe](declarations/coe.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_val](declarations/coe-val.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [dom_coe](declarations/dom-coe.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lift_injective](declarations/lift-injective.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [graph](declarations/graph-source-edition-2.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [graph'](declarations/graph.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ran](declarations/ran.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [restrict](declarations/restrict.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_restrict](declarations/mem-restrict.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [res](declarations/res.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_res](declarations/mem-res.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [res_univ](declarations/res-univ.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dom_iff_graph](declarations/dom-iff-graph.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lift_graph](declarations/lift-graph.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [pure](declarations/pure.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [bind](declarations/bind.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bind_apply](declarations/bind-apply.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [map](declarations/map.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [monad](declarations/monad.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [lawfulMonad](declarations/lawfulmonad.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pure_defined](declarations/pure-defined.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [bind_defined](declarations/bind-defined.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [fix](declarations/fix.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dom_of_mem_fix](declarations/dom-of-mem-fix.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_fix_iff](declarations/mem-fix-iff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [fix_stop](declarations/fix-stop.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fix_fwd_eq](declarations/fix-fwd-eq.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fix_fwd](declarations/fix-fwd.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [fixInduction](declarations/fixinduction.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [fixInduction_spec](declarations/fixinduction-spec.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [fixInduction'](declarations/fixinduction-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fixInduction'_stop](declarations/fixinduction-stop.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [fixInduction'_fwd](declarations/fixinduction-fwd.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [image](declarations/image.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [image_def](declarations/image-def.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_image](declarations/mem-image.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [image_mono](declarations/image-mono.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [image_inter](declarations/image-inter.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [image_union](declarations/image-union.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [preimage](declarations/preimage.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Preimage_def](declarations/preimage-def.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_preimage](declarations/mem-preimage.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [preimage_subset_dom](declarations/preimage-subset-dom.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [preimage_mono](declarations/preimage-mono.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [preimage_inter](declarations/preimage-inter.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [preimage_union](declarations/preimage-union.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [preimage_univ](declarations/preimage-univ.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_preimage](declarations/coe-preimage.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [core](declarations/core.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [core_def](declarations/core-def.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mem_core](declarations/mem-core.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [compl_dom_subset_core](declarations/compl-dom-subset-core.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [core_mono](declarations/core-mono.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [core_inter](declarations/core-inter.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_core_res](declarations/mem-core-res.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [core_res](declarations/core-res.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [core_restrict](declarations/core-restrict.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [preimage_subset_core](declarations/preimage-subset-core.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [preimage_eq](declarations/preimage-eq.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [core_eq](declarations/core-eq.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [preimage_asSubtype](declarations/preimage-assubtype.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [toSubtype](declarations/tosubtype.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [dom_toSubtype](declarations/dom-tosubtype.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [toSubtype_apply](declarations/tosubtype-apply.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [dom_toSubtype_apply_iff](declarations/dom-tosubtype-apply-iff.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_toSubtype_iff](declarations/mem-tosubtype-iff.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [id](declarations/id.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [coe_id](declarations/coe-id.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [id_apply](declarations/id-apply.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [comp](declarations/comp.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [comp_apply](declarations/comp-apply.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [id_comp](declarations/id-comp.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_id](declarations/comp-id.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [dom_comp](declarations/dom-comp.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [preimage_comp](declarations/preimage-comp.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Part.bind_comp](declarations/part-bind-comp.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coe_comp](declarations/coe-comp.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [prodLift](declarations/prodlift.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [dom_prodLift](declarations/dom-prodlift.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [get_prodLift](declarations/get-prodlift.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [prodLift_apply](declarations/prodlift-apply.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [mem_prodLift](declarations/mem-prodlift.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [prodMap](declarations/prodmap.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [dom_prodMap](declarations/dom-prodmap.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [get_prodMap](declarations/get-prodmap.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [prodMap_apply](declarations/prodmap-apply.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mem_prodMap](declarations/mem-prodmap.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [prodLift_fst_comp_snd_comp](declarations/prodlift-fst-comp-snd-comp.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [prodMap_id_id](declarations/prodmap-id-id.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [prodMap_comp_comp](declarations/prodmap-comp-comp.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a1b5bf1dda72a85b46ca45210fd9fe1b18cffb5aff37e755dc85a47ba253348 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Variantc7aa5e5a6e107d4defbe12e1ad8ada1c5ec1b8c1ae7790c807a3cb8625b7abb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
