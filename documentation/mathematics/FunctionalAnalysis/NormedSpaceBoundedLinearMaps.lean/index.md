# Normed Space Bounded Linear Maps

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89f1036badeac4e4df6ebf3d8d033ebd0492a9cc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/NormedSpaceBoundedLinearMaps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsBoundedLinearMap](declarations/isboundedlinearmap.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsLinearMap.with_bound](declarations/islinearmap-with-bound.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap](declarations/continuouslinearmap-isboundedlinearmap.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toLinearMap](declarations/tolinearmap.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toContinuousLinearMap](declarations/tocontinuouslinearmap.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zero](declarations/zero.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [id](declarations/id.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fst](declarations/fst.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [snd](declarations/snd.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smul](declarations/smul.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [neg](declarations/neg.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [add](declarations/add.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sub](declarations/sub.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [comp](declarations/comp.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tendsto](declarations/tendsto.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuous](declarations/continuous.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lim_zero_bounded_linear_map](declarations/lim-zero-bounded-linear-map.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isBigO_id](declarations/isbigo-id.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isBigO_comp](declarations/isbigo-comp.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isBigO_sub](declarations/isbigo-sub.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isBoundedLinearMap_prod_multilinear](declarations/isboundedlinearmap-prod-multilinear.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isBoundedLinearMap_continuousMultilinearMap_comp_linear](declarations/isboundedlinearmap-continuousmultilinearmap-comp-linear.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_add₂](declarations/map-add.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_zero₂](declarations/map-zero.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_smulₛₗ₂](declarations/map-smul.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_sub₂](declarations/map-sub.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_neg₂](declarations/map-neg.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_smul₂](declarations/map-smul-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [IsBoundedBilinearMap](declarations/isboundedbilinearmap.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ContinuousLinearMap.isBoundedBilinearMap](declarations/continuouslinearmap-isboundedbilinearmap.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [IsBoundedBilinearMap.toContinuousLinearMap](declarations/isboundedbilinearmap-tocontinuouslinearmap.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsBoundedBilinearMap.isBigO](declarations/isboundedbilinearmap-isbigo-source-edition-2.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsBoundedBilinearMap.isBigO_comp](declarations/isboundedbilinearmap-isbigo-comp.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsBoundedBilinearMap.isBigO'](declarations/isboundedbilinearmap-isbigo.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsBoundedBilinearMap.map_sub_left](declarations/isboundedbilinearmap-map-sub-left.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsBoundedBilinearMap.map_sub_right](declarations/isboundedbilinearmap-map-sub-right.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsBoundedBilinearMap.continuous](declarations/isboundedbilinearmap-continuous.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsBoundedBilinearMap.continuous_left](declarations/isboundedbilinearmap-continuous-left.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsBoundedBilinearMap.continuous_right](declarations/isboundedbilinearmap-continuous-right.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ContinuousLinearMap.continuous₂](declarations/continuouslinearmap-continuous.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_left](declarations/isboundedbilinearmap-isboundedlinearmap-left.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_right](declarations/isboundedbilinearmap-isboundedlinearmap-right.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [isBoundedBilinearMap_smul](declarations/isboundedbilinearmap-smul.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isBoundedBilinearMap_mul](declarations/isboundedbilinearmap-mul.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isBoundedBilinearMap_comp](declarations/isboundedbilinearmap-comp.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_left](declarations/continuouslinearmap-isboundedlinearmap-comp-left.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_right](declarations/continuouslinearmap-isboundedlinearmap-comp-right.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isBoundedBilinearMapApply](declarations/isboundedbilinearmapapply.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isBoundedBilinearMap_smulRight](declarations/isboundedbilinearmap-smulright.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isBoundedBilinearMap_compMultilinear](declarations/isboundedbilinearmap-compmultilinear.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [IsBoundedBilinearMap.linearDeriv](declarations/isboundedbilinearmap-linearderiv.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [IsBoundedBilinearMap.deriv](declarations/isboundedbilinearmap-deriv.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsBoundedBilinearMap.deriv_apply](declarations/isboundedbilinearmap-deriv-apply.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [ContinuousLinearMap.mulLeftRight_isBoundedBilinear](declarations/continuouslinearmap-mulleftright-isboundedbilinear.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_deriv](declarations/isboundedbilinearmap-isboundedlinearmap-deriv.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Continuous.clm_comp](declarations/continuous-clm-comp.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ContinuousOn.clm_comp](declarations/continuouson-clm-comp.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isOpen](declarations/isopen.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [nhds](declarations/nhds.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6afbee2acf252044a1495724bd17cffc9417ae52d9013cfa2d94967668f2441 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant988459bf6cfbd9e1499e8284037476f5f0b993d776f08aa16379195f3291f85d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
