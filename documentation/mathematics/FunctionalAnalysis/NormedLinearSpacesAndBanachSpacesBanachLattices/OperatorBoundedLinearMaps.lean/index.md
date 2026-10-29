# Operator Bounded Linear Maps

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b60a2c186c0a2aa44ea7c16ce0f23fc691d2a15`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsBoundedLinearMap](declarations/isboundedlinearmap.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [isBoundedLinearMap_iff](declarations/isboundedlinearmap-iff.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsLinearMap.with_bound](declarations/islinearmap-with-bound.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap](declarations/continuouslinearmap-isboundedlinearmap.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toLinearMap](declarations/tolinearmap.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toContinuousLinearMap](declarations/tocontinuouslinearmap.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [zero](declarations/zero.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [id](declarations/id.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [fst](declarations/fst.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [snd](declarations/snd.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smul](declarations/smul.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [neg](declarations/neg.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [add](declarations/add.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sub](declarations/sub.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comp](declarations/comp.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [tendsto](declarations/tendsto.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [continuous](declarations/continuous.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isLinearMap_and_continuous_iff_isBoundedLinearMap](declarations/islinearmap-and-continuous-iff-isboundedlinearmap.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lim_zero_bounded_linear_map](declarations/lim-zero-bounded-linear-map.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isBigO_id](declarations/isbigo-id.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isBigO_comp](declarations/isbigo-comp.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isBigO_sub](declarations/isbigo-sub.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isBoundedLinearMap_prod_multilinear](declarations/isboundedlinearmap-prod-multilinear.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isBoundedLinearMap_continuousMultilinearMap_comp_linear](declarations/isboundedlinearmap-continuousmultilinearmap-comp-linear.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_add₂](declarations/map-add.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_zero₂](declarations/map-zero.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_smulₛₗ₂](declarations/map-smul.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_sub₂](declarations/map-sub.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_neg₂](declarations/map-neg.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_smul₂](declarations/map-smul-source-edition-2.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [IsBoundedBilinearMap](declarations/isboundedbilinearmap.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsBoundedBilinearMap.symm](declarations/isboundedbilinearmap-symm.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ContinuousLinearMap.isBoundedBilinearMap](declarations/continuouslinearmap-isboundedbilinearmap.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [IsBoundedBilinearMap.toContinuousLinearMap](declarations/isboundedbilinearmap-tocontinuouslinearmap.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsBoundedBilinearMap.isBigO](declarations/isboundedbilinearmap-isbigo.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsBoundedBilinearMap.isBigO_comp](declarations/isboundedbilinearmap-isbigo-comp.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsBoundedBilinearMap.isBigO'](declarations/isboundedbilinearmap-isbigo-source-edition-2.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsBoundedBilinearMap.map_sub_left](declarations/isboundedbilinearmap-map-sub-left.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsBoundedBilinearMap.map_sub_right](declarations/isboundedbilinearmap-map-sub-right.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsBoundedBilinearMap.continuous](declarations/isboundedbilinearmap-continuous.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsBoundedBilinearMap.continuous_left](declarations/isboundedbilinearmap-continuous-left.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsBoundedBilinearMap.continuous_right](declarations/isboundedbilinearmap-continuous-right.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ContinuousLinearMap.continuous₂](declarations/continuouslinearmap-continuous.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_left](declarations/isboundedbilinearmap-isboundedlinearmap-left.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_right](declarations/isboundedbilinearmap-isboundedlinearmap-right.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isBoundedBilinearMap_smul](declarations/isboundedbilinearmap-smul.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isBoundedBilinearMap_mul](declarations/isboundedbilinearmap-mul.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isBoundedBilinearMap_comp](declarations/isboundedbilinearmap-comp.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_left](declarations/continuouslinearmap-isboundedlinearmap-comp-left.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_right](declarations/continuouslinearmap-isboundedlinearmap-comp-right.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isBoundedBilinearMap_apply](declarations/isboundedbilinearmap-apply.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isBoundedBilinearMap_smulRight](declarations/isboundedbilinearmap-smulright.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isBoundedBilinearMap_compMultilinear](declarations/isboundedbilinearmap-compmultilinear.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [IsBoundedBilinearMap.linearDeriv](declarations/isboundedbilinearmap-linearderiv.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [IsBoundedBilinearMap.deriv](declarations/isboundedbilinearmap-deriv.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [IsBoundedBilinearMap.deriv_apply](declarations/isboundedbilinearmap-deriv-apply.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ContinuousLinearMap.mulLeftRight_isBoundedBilinear](declarations/continuouslinearmap-mulleftright-isboundedbilinear.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_deriv](declarations/isboundedbilinearmap-isboundedlinearmap-deriv.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Continuous.clm_comp](declarations/continuous-clm-comp.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ContinuousOn.clm_comp](declarations/continuouson-clm-comp.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Continuous.clm_apply](declarations/continuous-clm-apply.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ContinuousOn.clm_apply](declarations/continuouson-clm-apply.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [isOpen](declarations/isopen.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [nhds](declarations/nhds.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa7f5912352e2cb6f9024b162e7f76a8c5abf58203fd2ac9be770bf9412d1f20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
