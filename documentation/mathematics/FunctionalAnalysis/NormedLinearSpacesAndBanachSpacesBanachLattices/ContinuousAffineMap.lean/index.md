# Continuous Affine Map

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e1ee3c37d614e9ef13ac23d89f160671c0f063d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ContinuousAffineMap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [contLinear](declarations/contlinear.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_contLinear](declarations/coe-contlinear.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_contLinear_eq_linear](declarations/coe-contlinear-eq-linear.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_mk_const_linear_eq_linear](declarations/coe-mk-const-linear-eq-linear.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_linear_eq_coe_contLinear](declarations/coe-linear-eq-coe-contlinear.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comp_contLinear](declarations/comp-contlinear.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_vadd](declarations/map-vadd.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [contLinear_map_vsub](declarations/contlinear-map-vsub.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [const_contLinear](declarations/const-contlinear.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [contLinear_eq_zero_iff_exists_const](declarations/contlinear-eq-zero-iff-exists-const.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [to_affine_map_contLinear](declarations/to-affine-map-contlinear.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [zero_contLinear](declarations/zero-contlinear.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [add_contLinear](declarations/add-contlinear.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sub_contLinear](declarations/sub-contlinear.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [neg_contLinear](declarations/neg-contlinear.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [smul_contLinear](declarations/smul-contlinear.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [decomp](declarations/decomp.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [vadd_apply](declarations/vadd-apply.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [vsub_apply](declarations/vsub-apply.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [vadd_toAffineMap](declarations/vadd-toaffinemap.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [vsub_toAffineMap](declarations/vsub-toaffinemap.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [hasNorm](declarations/hasnorm.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [norm_def](declarations/norm-def.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [norm_contLinear_le](declarations/norm-contlinear-le.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [norm_image_zero_le](declarations/norm-image-zero-le.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [norm_eq](declarations/norm-eq.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [norm_comp_le](declarations/norm-comp-le.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [toConstProdContinuousLinearMap](declarations/toconstprodcontinuouslinearmap.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toConstProdContinuousLinearMap_fst](declarations/toconstprodcontinuouslinearmap-fst.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toConstProdContinuousLinearMap_snd](declarations/toconstprodcontinuouslinearmap-snd.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abf259837030c492857a358ba22cd4bc5b4e673727b3bc3615737db2f1efd52c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/ContinuousAffineMap/Variantfac0bd059e3e2badcb18bb030fa6fa65669219a4806d2ebcf067861819c5a9b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
