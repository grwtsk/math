# Slope Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Slope/Variantdd2debd5ba6bbf001ff26845e54bb80899f16ed6eb219320bda1d8e279ece547.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b58c9f97de00c95896a849a12b251079f61f5d9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SlopeNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [slope](declarations/slope.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [slope_fun_def](declarations/slope-fun-def.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [slope_def_field](declarations/slope-def-field.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [slope_fun_def_field](declarations/slope-fun-def-field.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [slope_same](declarations/slope-same.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [slope_def_module](declarations/slope-def-module.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sub_smul_slope](declarations/sub-smul-slope.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sub_smul_slope_vadd](declarations/sub-smul-slope-vadd.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [slope_vadd_const](declarations/slope-vadd-const.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [slope_sub_smul](declarations/slope-sub-smul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eq_of_slope_eq_zero](declarations/eq-of-slope-eq-zero.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [AffineMap.slope_comp](declarations/affinemap-slope-comp.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [LinearMap.slope_comp](declarations/linearmap-slope-comp.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [slope_comm](declarations/slope-comm.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [slope_neg](declarations/slope-neg.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [slope_neg_fun](declarations/slope-neg-fun.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [slope_eq_zero_iff](declarations/slope-eq-zero-iff.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sub_div_sub_smul_slope_add_sub_div_sub_smul_slope](declarations/sub-div-sub-smul-slope-add-sub-div-sub-smul-slope.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lineMap_slope_slope_sub_div_sub](declarations/linemap-slope-slope-sub-div-sub.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [lineMap_slope_lineMap_slope_lineMap](declarations/linemap-slope-linemap-slope-linemap.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [slope_nonneg_iff_of_le](declarations/slope-nonneg-iff-of-le.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [MonotoneOn.slope_nonneg](declarations/monotoneon-slope-nonneg.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [slope_nonpos_iff_of_le](declarations/slope-nonpos-iff-of-le.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [AntitoneOn.slope_nonpos](declarations/antitoneon-slope-nonpos.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [slope_pos_iff_of_le](declarations/slope-pos-iff-of-le.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [StrictMonoOn.slope_pos](declarations/strictmonoon-slope-pos.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [slope_neg_iff_of_le](declarations/slope-neg-iff-of-le.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [StrictAntiOn.slope_neg](declarations/strictantion-slope-neg.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51bed5c89c450b0da9e3ea301ee53e363ab648366a0c6284fe2b4866a8d7731e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Slope/Variantdd2debd5ba6bbf001ff26845e54bb80899f16ed6eb219320bda1d8e279ece547.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
