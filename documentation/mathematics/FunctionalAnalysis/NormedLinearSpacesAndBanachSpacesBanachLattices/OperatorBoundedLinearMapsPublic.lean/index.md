# Operator Bounded Linear Maps Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant5edca0e233a81357a3d614f6bb3318e9e112b96e6d59d9e23a337ec043aa447d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bc162cf84aa20aad3e4b9b39ab26a43b4547dd6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsBoundedLinearMap](declarations/isboundedlinearmap.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [isBoundedLinearMap_iff](declarations/isboundedlinearmap-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsLinearMap.with_bound](declarations/islinearmap-with-bound.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toLinearMap](declarations/tolinearmap.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toContinuousLinearMap](declarations/tocontinuouslinearmap.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zero](declarations/zero.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [id](declarations/id.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fst](declarations/fst.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [snd](declarations/snd.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [smul](declarations/smul.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [neg](declarations/neg.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [add](declarations/add.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sub](declarations/sub.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [comp](declarations/comp.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tendsto](declarations/tendsto.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuous](declarations/continuous.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lim_zero_bounded_linear_map](declarations/lim-zero-bounded-linear-map.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isBigO_id](declarations/isbigo-id.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isBigO_comp](declarations/isbigo-comp-source-edition-2.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isBigO_sub](declarations/isbigo-sub.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [IsBoundedBilinearMap](declarations/isboundedbilinearmap.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [symm](declarations/symm.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isBoundedLinearMap_right](declarations/isboundedlinearmap-right.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isBoundedLinearMap_left](declarations/isboundedlinearmap-left.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_sub_left](declarations/map-sub-left.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_sub_right](declarations/map-sub-right.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isBigO](declarations/isbigo-source-edition-2.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isBigO_comp](declarations/isbigo-comp.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isBigO'](declarations/isbigo.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [continuous](declarations/continuous-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [continuous_left](declarations/continuous-left.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [continuous_right](declarations/continuous-right.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isBoundedBilinearMap_smul](declarations/isboundedbilinearmap-smul.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isBoundedBilinearMap_mul](declarations/isboundedbilinearmap-mul.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap](declarations/continuouslinearmap-isboundedlinearmap.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isLinearMap_and_continuous_iff_isBoundedLinearMap](declarations/islinearmap-and-continuous-iff-isboundedlinearmap.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isBoundedLinearMap_prod_multilinear](declarations/isboundedlinearmap-prod-multilinear.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isBoundedLinearMap_continuousMultilinearMap_comp_linear](declarations/isboundedlinearmap-continuousmultilinearmap-comp-linear.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ContinuousLinearMap.isBoundedBilinearMap](declarations/continuouslinearmap-isboundedbilinearmap.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [IsBoundedBilinearMap.toContinuousLinearMap](declarations/isboundedbilinearmap-tocontinuouslinearmap.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsBoundedBilinearMap.toContinuousLinearMap_apply](declarations/isboundedbilinearmap-tocontinuouslinearmap-apply.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ContinuousLinearMap.continuous₂](declarations/continuouslinearmap-continuous.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [isBoundedBilinearMap_comp](declarations/isboundedbilinearmap-comp.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_left](declarations/continuouslinearmap-isboundedlinearmap-comp-left.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_right](declarations/continuouslinearmap-isboundedlinearmap-comp-right.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isBoundedBilinearMap_apply](declarations/isboundedbilinearmap-apply.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isBoundedBilinearMap_smulRight](declarations/isboundedbilinearmap-smulright.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isBoundedBilinearMap_compMultilinear](declarations/isboundedbilinearmap-compmultilinear.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [IsBoundedBilinearMap.linearDeriv](declarations/isboundedbilinearmap-linearderiv.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [IsBoundedBilinearMap.deriv](declarations/isboundedbilinearmap-deriv.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsBoundedBilinearMap.deriv_apply](declarations/isboundedbilinearmap-deriv-apply.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ContinuousLinearMap.mulLeftRight_isBoundedBilinear](declarations/continuouslinearmap-mulleftright-isboundedbilinear.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_deriv](declarations/isboundedbilinearmap-isboundedlinearmap-deriv.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Continuous.clm_comp](declarations/continuous-clm-comp.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ContinuousOn.clm_comp](declarations/continuouson-clm-comp.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [ContinuousAt.clm_comp](declarations/continuousat-clm-comp.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ContinuousWithinAt.clm_comp](declarations/continuouswithinat-clm-comp.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Continuous.clm_apply](declarations/continuous-clm-apply.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ContinuousOn.clm_apply](declarations/continuouson-clm-apply.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ContinuousAt.clm_apply](declarations/continuousat-clm-apply.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ContinuousWithinAt.clm_apply](declarations/continuouswithinat-clm-apply.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ContinuousWithinAt.continuousLinearMapCoprod](declarations/continuouswithinat-continuouslinearmapcoprod.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ContinuousAt.continuousLinearMapCoprod](declarations/continuousat-continuouslinearmapcoprod.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ContinuousOn.continuousLinearMapCoprod](declarations/continuouson-continuouslinearmapcoprod.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Continuous.continuousLinearMapCoprod](declarations/continuous-continuouslinearmapcoprod.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [ContinuousLinearEquiv.isOpen](declarations/continuouslinearequiv-isopen.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [ContinuousLinearEquiv.nhds](declarations/continuouslinearequiv-nhds.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [ContinuousLinearMap.isOpen_setOfPred_isInvertible](declarations/continuouslinearmap-isopen-setofpred-isinvertible.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ContinuousLinearMap.IsInvertible.eventually_nhds](declarations/continuouslinearmap-isinvertible-eventually-nhds.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f66d5858e65694165b9c9fd7dae83eaf2bebb1b1a1edc804671c0345d71d11f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant5edca0e233a81357a3d614f6bb3318e9e112b96e6d59d9e23a337ec043aa447d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
