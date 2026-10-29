# Normed Space Multilinear Curry Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 50 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7545ddbf7d61010ec072997ff60732e1551289f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/NormedSpaceMultilinearCurryNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousLinearMap.norm_map_removeNth_le](declarations/continuouslinearmap-norm-map-removenth-le.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ContinuousLinearMap.norm_map_tail_le](declarations/continuouslinearmap-norm-map-tail-le.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ContinuousMultilinearMap.norm_map_init_le](declarations/continuousmultilinearmap-norm-map-init-le.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ContinuousMultilinearMap.norm_map_insertNth_le](declarations/continuousmultilinearmap-norm-map-insertnth-le.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ContinuousMultilinearMap.norm_map_cons_le](declarations/continuousmultilinearmap-norm-map-cons-le.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ContinuousMultilinearMap.norm_map_snoc_le](declarations/continuousmultilinearmap-norm-map-snoc-le.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ContinuousLinearMap.uncurryLeft](declarations/continuouslinearmap-uncurryleft.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ContinuousLinearMap.uncurryLeft_apply](declarations/continuouslinearmap-uncurryleft-apply.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ContinuousMultilinearMap.curryLeft](declarations/continuousmultilinearmap-curryleft.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ContinuousMultilinearMap.curryLeft_apply](declarations/continuousmultilinearmap-curryleft-apply.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ContinuousLinearMap.curry_uncurryLeft](declarations/continuouslinearmap-curry-uncurryleft.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ContinuousMultilinearMap.uncurry_curryLeft](declarations/continuousmultilinearmap-uncurry-curryleft.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [continuousMultilinearCurryLeftEquiv](declarations/continuousmultilinearcurryleftequiv.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [continuousMultilinearCurryLeftEquiv_apply](declarations/continuousmultilinearcurryleftequiv-apply.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuousMultilinearCurryLeftEquiv_symm_apply](declarations/continuousmultilinearcurryleftequiv-symm-apply.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ContinuousMultilinearMap.curryLeft_norm](declarations/continuousmultilinearmap-curryleft-norm.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ContinuousLinearMap.uncurryLeft_norm](declarations/continuouslinearmap-uncurryleft-norm.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ContinuousMultilinearMap.uncurryRight](declarations/continuousmultilinearmap-uncurryright.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ContinuousMultilinearMap.uncurryRight_apply](declarations/continuousmultilinearmap-uncurryright-apply.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ContinuousMultilinearMap.curryRight](declarations/continuousmultilinearmap-curryright.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ContinuousMultilinearMap.curryRight_apply](declarations/continuousmultilinearmap-curryright-apply.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ContinuousMultilinearMap.curry_uncurryRight](declarations/continuousmultilinearmap-curry-uncurryright.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ContinuousMultilinearMap.uncurry_curryRight](declarations/continuousmultilinearmap-uncurry-curryright.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [continuousMultilinearCurryRightEquiv](declarations/continuousmultilinearcurryrightequiv.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [continuousMultilinearCurryRightEquiv'](declarations/continuousmultilinearcurryrightequiv-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [continuousMultilinearCurryRightEquiv_apply](declarations/continuousmultilinearcurryrightequiv-apply.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [continuousMultilinearCurryRightEquiv_symm_apply](declarations/continuousmultilinearcurryrightequiv-symm-apply-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [continuousMultilinearCurryRightEquiv_apply'](declarations/continuousmultilinearcurryrightequiv-apply-source-edition-2.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [continuousMultilinearCurryRightEquiv_symm_apply'](declarations/continuousmultilinearcurryrightequiv-symm-apply.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ContinuousMultilinearMap.curryRight_norm](declarations/continuousmultilinearmap-curryright-norm.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ContinuousMultilinearMap.uncurryRight_norm](declarations/continuousmultilinearmap-uncurryright-norm.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [ContinuousLinearMap.uncurryMid](declarations/continuouslinearmap-uncurrymid.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [ContinuousMultilinearMap.curryMid](declarations/continuousmultilinearmap-currymid.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ContinuousMultilinearMap.curryMid_apply](declarations/continuousmultilinearmap-currymid-apply.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ContinuousLinearMap.curryMid_uncurryMid](declarations/continuouslinearmap-currymid-uncurrymid.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ContinuousMultilinearMap.uncurryMid_curryMid](declarations/continuousmultilinearmap-uncurrymid-currymid.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ContinuousMultilinearMap.curryMidEquiv](declarations/continuousmultilinearmap-currymidequiv.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ContinuousMultilinearMap.norm_curryMid](declarations/continuousmultilinearmap-norm-currymid.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ContinuousLinearMap.norm_uncurryMid](declarations/continuouslinearmap-norm-uncurrymid.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ContinuousMultilinearMap.curry0](declarations/continuousmultilinearmap-curry0.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ContinuousMultilinearMap.uncurry0](declarations/continuousmultilinearmap-uncurry0.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ContinuousMultilinearMap.uncurry0_apply](declarations/continuousmultilinearmap-uncurry0-apply.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ContinuousMultilinearMap.curry0_apply](declarations/continuousmultilinearmap-curry0-apply.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ContinuousMultilinearMap.apply_zero_uncurry0](declarations/continuousmultilinearmap-apply-zero-uncurry0.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ContinuousMultilinearMap.uncurry0_curry0](declarations/continuousmultilinearmap-uncurry0-curry0.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ContinuousMultilinearMap.curry0_uncurry0](declarations/continuousmultilinearmap-curry0-uncurry0.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ContinuousMultilinearMap.uncurry0_norm](declarations/continuousmultilinearmap-uncurry0-norm.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ContinuousMultilinearMap.fin0_apply_norm](declarations/continuousmultilinearmap-fin0-apply-norm.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ContinuousMultilinearMap.curry0_norm](declarations/continuousmultilinearmap-curry0-norm.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [continuousMultilinearCurryFin0](declarations/continuousmultilinearcurryfin0.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [continuousMultilinearCurryFin0_apply](declarations/continuousmultilinearcurryfin0-apply.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [continuousMultilinearCurryFin0_symm_apply](declarations/continuousmultilinearcurryfin0-symm-apply.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [continuousMultilinearCurryFin1](declarations/continuousmultilinearcurryfin1.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [continuousMultilinearCurryFin1_apply](declarations/continuousmultilinearcurryfin1-apply.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [continuousMultilinearCurryFin1_symm_apply](declarations/continuousmultilinearcurryfin1-symm-apply.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [norm_domDomCongr](declarations/norm-domdomcongr.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [domDomCongrₗᵢ](declarations/domdomcongr.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [currySum](declarations/currysum.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [currySum_apply](declarations/currysum-apply.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [uncurrySum](declarations/uncurrysum.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [uncurrySum_apply](declarations/uncurrysum-apply.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [currySumEquiv](declarations/currysumequiv.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [curryFinFinset](declarations/curryfinfinset.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [curryFinFinset_apply](declarations/curryfinfinset-apply.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [curryFinFinset_symm_apply](declarations/curryfinfinset-symm-apply.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](declarations/curryfinfinset-symm-apply-piecewise-const.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [curryFinFinset_symm_apply_const](declarations/curryfinfinset-symm-apply-const.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [curryFinFinset_apply_const](declarations/curryfinfinset-apply-const.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [continuousMultilinearMapOption](declarations/continuousmultilinearmapoption.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [continuousMultilinearMapOption_apply_eq_self](declarations/continuousmultilinearmapoption-apply-eq-self.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f20650649ab1fb058453a27d130c18f005e319fd20aa50ceafde2cb39b217bf2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
