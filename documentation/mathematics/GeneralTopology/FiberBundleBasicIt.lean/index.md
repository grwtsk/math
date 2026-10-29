# Fiber Bundle Basic It

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**75 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62f52c858209bd7327725cd8de80aaa8f529d990`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/FiberBundleBasicIt.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [FiberBundle](declarations/fiberbundle.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [totalSpaceMk_inducing](declarations/totalspacemk-inducing.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [trivializationAtlas](declarations/trivializationatlas.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [trivializationAt](declarations/trivializationat.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_baseSet_trivializationAt](declarations/mem-baseset-trivializationat.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [trivialization_mem_atlas](declarations/trivialization-mem-atlas.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [MemTrivializationAtlas](declarations/memtrivializationatlas.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_proj_nhds](declarations/map-proj-nhds.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [continuous_proj](declarations/continuous-proj.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isOpenMap_proj](declarations/isopenmap-proj-source-edition-2.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [surjective_proj](declarations/surjective-proj.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [quotientMap_proj](declarations/quotientmap-proj.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [continuous_totalSpaceMk](declarations/continuous-totalspacemk.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [totalSpaceMk_embedding](declarations/totalspacemk-embedding.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [totalSpaceMk_closedEmbedding](declarations/totalspacemk-closedembedding.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_trivializationAt_proj_source](declarations/mem-trivializationat-proj-source.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [trivializationAt_proj_fst](declarations/trivializationat-proj-fst.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [continuousWithinAt_totalSpace](declarations/continuouswithinat-totalspace.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [continuousAt_totalSpace](declarations/continuousat-totalspace.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [FiberBundle.exists_trivialization_Icc_subset](declarations/fiberbundle-exists-trivialization-icc-subset.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [FiberBundleCore](declarations/fiberbundlecore.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Index](declarations/index.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Base](declarations/base.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Fiber](declarations/fiber.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [topologicalSpaceFiber](declarations/topologicalspacefiber.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [TotalSpace](declarations/totalspace.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [proj](declarations/proj.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [trivChange](declarations/trivchange.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_trivChange_source](declarations/mem-trivchange-source.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [localTrivAsLocalEquiv](declarations/localtrivaslocalequiv.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_localTrivAsLocalEquiv_source](declarations/mem-localtrivaslocalequiv-source.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_localTrivAsLocalEquiv_target](declarations/mem-localtrivaslocalequiv-target.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [localTrivAsLocalEquiv_apply](declarations/localtrivaslocalequiv-apply.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [localTrivAsLocalEquiv_trans](declarations/localtrivaslocalequiv-trans.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [toTopologicalSpace](declarations/totopologicalspace.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [open_source'](declarations/open-source.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [localTriv](declarations/localtriv.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [localTrivAt](declarations/localtrivat.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [localTrivAt_def](declarations/localtrivat-def.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [localTrivAt_snd](declarations/localtrivat-snd.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [continuous_const_section](declarations/continuous-const-section.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [localTrivAsLocalEquiv_coe](declarations/localtrivaslocalequiv-coe.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [localTrivAsLocalEquiv_source](declarations/localtrivaslocalequiv-source.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [localTrivAsLocalEquiv_target](declarations/localtrivaslocalequiv-target.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [localTrivAsLocalEquiv_symm](declarations/localtrivaslocalequiv-symm.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [baseSet_at](declarations/baseset-at.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [localTriv_apply](declarations/localtriv-apply.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [localTrivAt_apply](declarations/localtrivat-apply.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [localTrivAt_apply_mk](declarations/localtrivat-apply-mk.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_localTriv_source](declarations/mem-localtriv-source.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mem_localTrivAt_source](declarations/mem-localtrivat-source.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_localTriv_target](declarations/mem-localtriv-target.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mem_localTrivAt_target](declarations/mem-localtrivat-target.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [localTriv_symm_apply](declarations/localtriv-symm-apply.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mem_localTrivAt_baseSet](declarations/mem-localtrivat-baseset.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mk_mem_localTrivAt_source](declarations/mk-mem-localtrivat-source.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [fiberBundle](declarations/fiberbundle-source-edition-2.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [continuous_totalSpaceMk](declarations/continuous-totalspacemk-source-edition-2.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [continuous_proj](declarations/continuous-proj-source-edition-3.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isOpenMap_proj](declarations/isopenmap-proj.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `structure` | [FiberPrebundle](declarations/fiberprebundle.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [totalSpaceTopology](declarations/totalspacetopology.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [continuous_symm_of_mem_pretrivializationAtlas](declarations/continuous-symm-of-mem-pretrivializationatlas.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [isOpen_source](declarations/isopen-source.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isOpen_target_of_mem_pretrivializationAtlas_inter](declarations/isopen-target-of-mem-pretrivializationatlas-inter.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [trivializationOfMemPretrivializationAtlas](declarations/trivializationofmempretrivializationatlas.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_pretrivializationAt_source](declarations/mem-pretrivializationat-source.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [totalSpaceMk_preimage_source](declarations/totalspacemk-preimage-source.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [continuous_totalSpaceMk](declarations/continuous-totalspacemk-source-edition-3.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [inducing_totalSpaceMk_of_inducing_comp](declarations/inducing-totalspacemk-of-inducing-comp.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [toFiberBundle](declarations/tofiberbundle.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [continuous_proj](declarations/continuous-proj-source-edition-2.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [continuousOn_of_comp_right](declarations/continuouson-of-comp-right.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dc0fa44931ea17a8d801537d8a27bcc62baab76836f418e80fb1e6c703ccba2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantc40de2f641f0d2c5ad5db917ae02ed2237e77369edd531592ea29ce5d4e837ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
