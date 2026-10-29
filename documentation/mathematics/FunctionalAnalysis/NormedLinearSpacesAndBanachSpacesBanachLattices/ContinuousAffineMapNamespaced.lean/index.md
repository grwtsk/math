# Continuous Affine Map Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db5697e0496865bdde593d353024764a672c71b9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousAffineMapNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [contLinear](declarations/contlinear.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_contLinear](declarations/coe-contlinear.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_contLinear_eq_linear](declarations/coe-contlinear-eq-linear.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_mk_const_linear_eq_linear](declarations/coe-mk-const-linear-eq-linear.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_linear_eq_coe_contLinear](declarations/coe-linear-eq-coe-contlinear.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comp_contLinear](declarations/comp-contlinear.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_vadd](declarations/map-vadd.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [contLinear_map_vsub](declarations/contlinear-map-vsub.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [const_contLinear](declarations/const-contlinear.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [contLinear_eq_zero_iff_exists_const](declarations/contlinear-eq-zero-iff-exists-const.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [to_affine_map_contLinear](declarations/to-affine-map-contlinear.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [zero_contLinear](declarations/zero-contlinear.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [add_contLinear](declarations/add-contlinear.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sub_contLinear](declarations/sub-contlinear.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [neg_contLinear](declarations/neg-contlinear.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [smul_contLinear](declarations/smul-contlinear.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [decomp](declarations/decomp.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [vadd_apply](declarations/vadd-apply.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [vsub_apply](declarations/vsub-apply.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [vadd_toAffineMap](declarations/vadd-toaffinemap.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [vsub_toAffineMap](declarations/vsub-toaffinemap.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [hasNorm](declarations/hasnorm.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [norm_def](declarations/norm-def.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [norm_contLinear_le](declarations/norm-contlinear-le.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [norm_image_zero_le](declarations/norm-image-zero-le.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [norm_eq](declarations/norm-eq.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [norm_comp_le](declarations/norm-comp-le.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [toConstProdContinuousLinearMap](declarations/toconstprodcontinuouslinearmap.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toConstProdContinuousLinearMap_fst](declarations/toconstprodcontinuouslinearmap-fst.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toConstProdContinuousLinearMap_snd](declarations/toconstprodcontinuouslinearmap-snd.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f650643d482c970e4f3d8318beb13615412b19d94fde0d0e11740243b9e9748c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variant9d16aa048affea4bfb5d402e90ac5cf521fc3a41fbfdb61f9845c2888a5f91cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
