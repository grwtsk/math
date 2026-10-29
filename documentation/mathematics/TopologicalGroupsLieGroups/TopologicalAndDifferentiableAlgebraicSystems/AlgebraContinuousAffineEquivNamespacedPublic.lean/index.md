# Algebra Continuous Affine Equiv Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f85f59d935ff6e18fb339824c4dfe1ab428fbdd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraContinuousAffineEquivNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAffineEquiv](declarations/continuousaffineequiv.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toHomeomorph](declarations/tohomeomorph.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toAffineEquiv_injective](declarations/toaffineequiv-injective.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instEquivLike](declarations/instequivlike.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [coe](declarations/coe.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instFunLike](declarations/instfunlike.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_coe](declarations/coe-coe.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_toEquiv](declarations/coe-toequiv.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [continuous](declarations/continuous.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [toContinuousAffineMap](declarations/tocontinuousaffinemap.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [ContinuousAffineMap.coe](declarations/continuousaffinemap-coe.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [coe_toContinuousAffineMap](declarations/coe-tocontinuousaffinemap.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toContinuousAffineMap_injective](declarations/tocontinuousaffinemap-injective.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toContinuousAffineMap_toAffineMap](declarations/tocontinuousaffinemap-toaffinemap.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toContinuousAffineMap_toContinuousMap](declarations/tocontinuousaffinemap-tocontinuousmap.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [refl](declarations/refl.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_refl](declarations/coe-refl.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [refl_apply](declarations/refl-apply.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toAffineEquiv_refl](declarations/toaffineequiv-refl.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toEquiv_refl](declarations/toequiv-refl.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [symm](declarations/symm.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Simps.apply](declarations/simps-apply.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toAffineEquiv_symm](declarations/toaffineequiv-symm.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_symm_toAffineEquiv](declarations/coe-symm-toaffineequiv.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toEquiv_symm](declarations/toequiv-symm.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_symm_toEquiv](declarations/coe-symm-toequiv.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [apply_eq_iff_eq](declarations/apply-eq-iff-eq.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [symm_symm](declarations/symm-symm.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [symm_symm_apply](declarations/symm-symm-apply.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [symm_apply_eq](declarations/symm-apply-eq.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [eq_symm_apply](declarations/eq-symm-apply.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [apply_eq_iff_eq_symm_apply](declarations/apply-eq-iff-eq-symm-apply.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [image_symm](declarations/image-symm.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [preimage_symm](declarations/preimage-symm.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [bijective](declarations/bijective.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [surjective](declarations/surjective.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [injective](declarations/injective.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [image_eq_preimage_symm](declarations/image-eq-preimage-symm.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [image_symm_eq_preimage](declarations/image-symm-eq-preimage.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [image_preimage](declarations/image-preimage.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [preimage_image](declarations/preimage-image.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [symm_image_image](declarations/symm-image-image.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [image_symm_image](declarations/image-symm-image.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [refl_symm](declarations/refl-symm.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [symm_refl](declarations/symm-refl.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [trans](declarations/trans.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coe_trans](declarations/coe-trans.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [trans_apply](declarations/trans-apply.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [trans_assoc](declarations/trans-assoc.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [trans_refl](declarations/trans-refl.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [refl_trans](declarations/refl-trans.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [trans_toContinuousAffineMap](declarations/trans-tocontinuousaffinemap.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [vaddConst](declarations/vaddconst.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [toAffineEquiv_vaddConst](declarations/toaffineequiv-vaddconst.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [constVSub](declarations/constvsub.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [toAffineEquiv_constVSub](declarations/toaffineequiv-constvsub.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [pointReflection](declarations/pointreflection.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [coe_pointReflection](declarations/coe-pointreflection.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [pointReflection_apply](declarations/pointreflection-apply.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [pointReflection_symm](declarations/pointreflection-symm.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [toAffineEquiv_pointReflection](declarations/toaffineequiv-pointreflection.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [pointReflection_self](declarations/pointreflection-self.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [pointReflection_involutive](declarations/pointreflection-involutive.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [Algebra Continuous Affine Equiv Namespaced Public](declarations/tocontinuousaffineequiv.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Algebra Continuous Affine Equiv Namespaced Public](declarations/coe-tocontinuousaffineequiv.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [Algebra Continuous Affine Equiv Namespaced Public](declarations/tocontinuousaffineequiv-tocontinuousaffinemap.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [constVAdd](declarations/constvadd.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [constVAdd_coe](declarations/constvadd-coe.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [prodCongr](declarations/prodcongr.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [prodCongr_symm](declarations/prodcongr-symm.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [prodCongr_apply](declarations/prodcongr-apply.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [prodCongr_toContinuousAffineMap](declarations/prodcongr-tocontinuousaffinemap.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [prodComm](declarations/prodcomm.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [prodComm_symm](declarations/prodcomm-symm.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [prodAssoc](declarations/prodassoc.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0243b51da3f8311e7b8b4ea2cdc2f4d494992159dd1ae6e097078e6033b1ca99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantf0e48b3a9e62f869b9af0c2f06a6e8a8f066c105f3d254f4ee0bfec9af83665d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
