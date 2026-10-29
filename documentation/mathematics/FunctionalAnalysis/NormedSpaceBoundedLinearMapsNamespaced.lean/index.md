# Normed Space Bounded Linear Maps Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant6c5fbe35d181af2ece8a4b2927ab5043a091c741de4ca75a82cb92dcc472095b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37d71acde5dc46c9c8bd1dc72868db8e1cc791f2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/NormedSpaceBoundedLinearMapsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsBoundedLinearMap](declarations/isboundedlinearmap.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsLinearMap.with_bound](declarations/islinearmap-with-bound.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap](declarations/continuouslinearmap-isboundedlinearmap.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toLinearMap](declarations/tolinearmap.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toContinuousLinearMap](declarations/tocontinuouslinearmap.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zero](declarations/zero.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [id](declarations/id.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fst](declarations/fst.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [snd](declarations/snd.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smul](declarations/smul.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [neg](declarations/neg.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [add](declarations/add.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sub](declarations/sub.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [comp](declarations/comp.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tendsto](declarations/tendsto.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuous](declarations/continuous.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lim_zero_bounded_linear_map](declarations/lim-zero-bounded-linear-map.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isBigO_id](declarations/isbigo-id.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isBigO_comp](declarations/isbigo-comp.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isBigO_sub](declarations/isbigo-sub.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isBoundedLinearMap_prod_multilinear](declarations/isboundedlinearmap-prod-multilinear.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isBoundedLinearMap_continuousMultilinearMap_comp_linear](declarations/isboundedlinearmap-continuousmultilinearmap-comp-linear.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_add₂](declarations/map-add.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_zero₂](declarations/map-zero.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_smulₛₗ₂](declarations/map-smul.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_sub₂](declarations/map-sub.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_neg₂](declarations/map-neg.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_smul₂](declarations/map-smul-source-edition-2.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [IsBoundedBilinearMap](declarations/isboundedbilinearmap.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ContinuousLinearMap.isBoundedBilinearMap](declarations/continuouslinearmap-isboundedbilinearmap.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [IsBoundedBilinearMap.toContinuousLinearMap](declarations/isboundedbilinearmap-tocontinuouslinearmap.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsBoundedBilinearMap.isBigO](declarations/isboundedbilinearmap-isbigo.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsBoundedBilinearMap.isBigO_comp](declarations/isboundedbilinearmap-isbigo-comp.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsBoundedBilinearMap.isBigO'](declarations/isboundedbilinearmap-isbigo-source-edition-2.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsBoundedBilinearMap.map_sub_left](declarations/isboundedbilinearmap-map-sub-left.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsBoundedBilinearMap.map_sub_right](declarations/isboundedbilinearmap-map-sub-right.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsBoundedBilinearMap.continuous](declarations/isboundedbilinearmap-continuous.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsBoundedBilinearMap.continuous_left](declarations/isboundedbilinearmap-continuous-left.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsBoundedBilinearMap.continuous_right](declarations/isboundedbilinearmap-continuous-right.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ContinuousLinearMap.continuous₂](declarations/continuouslinearmap-continuous.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_left](declarations/isboundedbilinearmap-isboundedlinearmap-left.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_right](declarations/isboundedbilinearmap-isboundedlinearmap-right.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [isBoundedBilinearMap_smul](declarations/isboundedbilinearmap-smul.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isBoundedBilinearMap_mul](declarations/isboundedbilinearmap-mul.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isBoundedBilinearMap_comp](declarations/isboundedbilinearmap-comp.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_left](declarations/continuouslinearmap-isboundedlinearmap-comp-left.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_right](declarations/continuouslinearmap-isboundedlinearmap-comp-right.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isBoundedBilinearMapApply](declarations/isboundedbilinearmapapply.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isBoundedBilinearMap_smulRight](declarations/isboundedbilinearmap-smulright.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isBoundedBilinearMap_compMultilinear](declarations/isboundedbilinearmap-compmultilinear.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [IsBoundedBilinearMap.linearDeriv](declarations/isboundedbilinearmap-linearderiv.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [IsBoundedBilinearMap.deriv](declarations/isboundedbilinearmap-deriv.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsBoundedBilinearMap.deriv_apply](declarations/isboundedbilinearmap-deriv-apply.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [ContinuousLinearMap.mulLeftRight_isBoundedBilinear](declarations/continuouslinearmap-mulleftright-isboundedbilinear.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_deriv](declarations/isboundedbilinearmap-isboundedlinearmap-deriv.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Continuous.clm_comp](declarations/continuous-clm-comp.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ContinuousOn.clm_comp](declarations/continuouson-clm-comp.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isOpen](declarations/isopen.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [nhds](declarations/nhds.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e01a854e6e9c5ff5a168615da7ddd314de3b7f3ea8ed06974997c1104441eb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant6c5fbe35d181af2ece8a4b2927ab5043a091c741de4ca75a82cb92dcc472095b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
