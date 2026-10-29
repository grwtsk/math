# Operator Bounded Linear Maps Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ae0ea87026778970e97be71402c752d5a59db13`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsBoundedLinearMap](declarations/isboundedlinearmap.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [isBoundedLinearMap_iff](declarations/isboundedlinearmap-iff.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsLinearMap.with_bound](declarations/islinearmap-with-bound.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap](declarations/continuouslinearmap-isboundedlinearmap.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toLinearMap](declarations/tolinearmap.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toContinuousLinearMap](declarations/tocontinuouslinearmap.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [zero](declarations/zero.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [id](declarations/id.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [fst](declarations/fst.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [snd](declarations/snd.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smul](declarations/smul.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [neg](declarations/neg.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [add](declarations/add.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sub](declarations/sub.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comp](declarations/comp.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [tendsto](declarations/tendsto.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [continuous](declarations/continuous.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isLinearMap_and_continuous_iff_isBoundedLinearMap](declarations/islinearmap-and-continuous-iff-isboundedlinearmap.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lim_zero_bounded_linear_map](declarations/lim-zero-bounded-linear-map.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isBigO_id](declarations/isbigo-id.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isBigO_comp](declarations/isbigo-comp.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isBigO_sub](declarations/isbigo-sub.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isBoundedLinearMap_prod_multilinear](declarations/isboundedlinearmap-prod-multilinear.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isBoundedLinearMap_continuousMultilinearMap_comp_linear](declarations/isboundedlinearmap-continuousmultilinearmap-comp-linear.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_add₂](declarations/map-add.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_zero₂](declarations/map-zero.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_smulₛₗ₂](declarations/map-smul.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_sub₂](declarations/map-sub.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_neg₂](declarations/map-neg.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_smul₂](declarations/map-smul-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [IsBoundedBilinearMap](declarations/isboundedbilinearmap.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsBoundedBilinearMap.symm](declarations/isboundedbilinearmap-symm.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ContinuousLinearMap.isBoundedBilinearMap](declarations/continuouslinearmap-isboundedbilinearmap.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [IsBoundedBilinearMap.toContinuousLinearMap](declarations/isboundedbilinearmap-tocontinuouslinearmap.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsBoundedBilinearMap.isBigO](declarations/isboundedbilinearmap-isbigo-source-edition-2.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsBoundedBilinearMap.isBigO_comp](declarations/isboundedbilinearmap-isbigo-comp.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsBoundedBilinearMap.isBigO'](declarations/isboundedbilinearmap-isbigo.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsBoundedBilinearMap.map_sub_left](declarations/isboundedbilinearmap-map-sub-left.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsBoundedBilinearMap.map_sub_right](declarations/isboundedbilinearmap-map-sub-right.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsBoundedBilinearMap.continuous](declarations/isboundedbilinearmap-continuous.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsBoundedBilinearMap.continuous_left](declarations/isboundedbilinearmap-continuous-left.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsBoundedBilinearMap.continuous_right](declarations/isboundedbilinearmap-continuous-right.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ContinuousLinearMap.continuous₂](declarations/continuouslinearmap-continuous.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_left](declarations/isboundedbilinearmap-isboundedlinearmap-left.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_right](declarations/isboundedbilinearmap-isboundedlinearmap-right.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isBoundedBilinearMap_smul](declarations/isboundedbilinearmap-smul.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isBoundedBilinearMap_mul](declarations/isboundedbilinearmap-mul.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isBoundedBilinearMap_comp](declarations/isboundedbilinearmap-comp.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_left](declarations/continuouslinearmap-isboundedlinearmap-comp-left.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_right](declarations/continuouslinearmap-isboundedlinearmap-comp-right.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isBoundedBilinearMap_apply](declarations/isboundedbilinearmap-apply.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isBoundedBilinearMap_smulRight](declarations/isboundedbilinearmap-smulright.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isBoundedBilinearMap_compMultilinear](declarations/isboundedbilinearmap-compmultilinear.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [IsBoundedBilinearMap.linearDeriv](declarations/isboundedbilinearmap-linearderiv.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [IsBoundedBilinearMap.deriv](declarations/isboundedbilinearmap-deriv.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [IsBoundedBilinearMap.deriv_apply](declarations/isboundedbilinearmap-deriv-apply.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ContinuousLinearMap.mulLeftRight_isBoundedBilinear](declarations/continuouslinearmap-mulleftright-isboundedbilinear.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_deriv](declarations/isboundedbilinearmap-isboundedlinearmap-deriv.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Continuous.clm_comp](declarations/continuous-clm-comp.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ContinuousOn.clm_comp](declarations/continuouson-clm-comp.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Continuous.clm_apply](declarations/continuous-clm-apply.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ContinuousOn.clm_apply](declarations/continuouson-clm-apply.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [isOpen](declarations/isopen.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [nhds](declarations/nhds.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fff64f9f7e7aae16ba498d6fdcd5a0e04722afa5f30d5163cdb5c4c36f76c4f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant04477af7edc9d42c5eecc55ccbdaa2c01ea4070a796bf9cd014a05b7fe4823dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
