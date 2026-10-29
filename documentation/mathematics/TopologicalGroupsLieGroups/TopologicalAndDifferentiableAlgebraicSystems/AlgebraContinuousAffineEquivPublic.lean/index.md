# Algebra Continuous Affine Equiv Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantb8f308a8bed0216f45e199360621d3276012488ab24a841dd015a486c7ed3c5c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8f5c13cf9dc8cfd3c6fed54b1d9e51af6e66181`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraContinuousAffineEquivPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAffineEquiv](declarations/continuousaffineequiv.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toHomeomorph](declarations/tohomeomorph.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toAffineEquiv_injective](declarations/toaffineequiv-injective.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instEquivLike](declarations/instequivlike.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [coe](declarations/coe.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instFunLike](declarations/instfunlike.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_coe](declarations/coe-coe.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_toEquiv](declarations/coe-toequiv.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [continuous](declarations/continuous.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [toContinuousAffineMap](declarations/tocontinuousaffinemap.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [ContinuousAffineMap.coe](declarations/continuousaffinemap-coe.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [coe_toContinuousAffineMap](declarations/coe-tocontinuousaffinemap.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toContinuousAffineMap_injective](declarations/tocontinuousaffinemap-injective.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toContinuousAffineMap_toAffineMap](declarations/tocontinuousaffinemap-toaffinemap.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toContinuousAffineMap_toContinuousMap](declarations/tocontinuousaffinemap-tocontinuousmap.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [refl](declarations/refl.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_refl](declarations/coe-refl.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [refl_apply](declarations/refl-apply.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toAffineEquiv_refl](declarations/toaffineequiv-refl.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toEquiv_refl](declarations/toequiv-refl.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [symm](declarations/symm.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Simps.apply](declarations/simps-apply.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toAffineEquiv_symm](declarations/toaffineequiv-symm.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_symm_toAffineEquiv](declarations/coe-symm-toaffineequiv.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toEquiv_symm](declarations/toequiv-symm.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_symm_toEquiv](declarations/coe-symm-toequiv.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [apply_eq_iff_eq](declarations/apply-eq-iff-eq.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [symm_symm](declarations/symm-symm.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [symm_symm_apply](declarations/symm-symm-apply.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [symm_apply_eq](declarations/symm-apply-eq.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [eq_symm_apply](declarations/eq-symm-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [apply_eq_iff_eq_symm_apply](declarations/apply-eq-iff-eq-symm-apply.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [image_symm](declarations/image-symm.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [preimage_symm](declarations/preimage-symm.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [bijective](declarations/bijective.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [surjective](declarations/surjective.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [injective](declarations/injective.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [image_eq_preimage_symm](declarations/image-eq-preimage-symm.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [image_symm_eq_preimage](declarations/image-symm-eq-preimage.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [image_preimage](declarations/image-preimage.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [preimage_image](declarations/preimage-image.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [symm_image_image](declarations/symm-image-image.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [image_symm_image](declarations/image-symm-image.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [refl_symm](declarations/refl-symm.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [symm_refl](declarations/symm-refl.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [trans](declarations/trans.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coe_trans](declarations/coe-trans.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [trans_apply](declarations/trans-apply.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [trans_assoc](declarations/trans-assoc.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [trans_refl](declarations/trans-refl.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [refl_trans](declarations/refl-trans.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [trans_toContinuousAffineMap](declarations/trans-tocontinuousaffinemap.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [vaddConst](declarations/vaddconst.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [toAffineEquiv_vaddConst](declarations/toaffineequiv-vaddconst.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [constVSub](declarations/constvsub.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [toAffineEquiv_constVSub](declarations/toaffineequiv-constvsub.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [pointReflection](declarations/pointreflection.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [coe_pointReflection](declarations/coe-pointreflection.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [pointReflection_apply](declarations/pointreflection-apply.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [pointReflection_symm](declarations/pointreflection-symm.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [toAffineEquiv_pointReflection](declarations/toaffineequiv-pointreflection.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [pointReflection_self](declarations/pointreflection-self.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [pointReflection_involutive](declarations/pointreflection-involutive.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [_root_.ContinuousLinearEquiv.toContinuousAffineEquiv](declarations/root-continuouslinearequiv-tocontinuousaffineequiv.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [_root_.ContinuousLinearEquiv.coe_toContinuousAffineEquiv](declarations/root-continuouslinearequiv-coe-tocontinuousaffineequiv.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [_root_.ContinuousLinearEquiv.toContinuousAffineEquiv_toContinuousAffineMap](declarations/root-continuouslinearequiv-tocontinuousaffineequiv-tocontinuousaffinemap.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [constVAdd](declarations/constvadd.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [constVAdd_coe](declarations/constvadd-coe.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [prodCongr](declarations/prodcongr.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [prodCongr_symm](declarations/prodcongr-symm.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [prodCongr_apply](declarations/prodcongr-apply.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [prodCongr_toContinuousAffineMap](declarations/prodcongr-tocontinuousaffinemap.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [prodComm](declarations/prodcomm.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [prodComm_symm](declarations/prodcomm-symm.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [prodAssoc](declarations/prodassoc.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca9b04e2d06f34530e5f1825b83497c8f3f02ad3089f6a53b732e6045a01c797 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variantb8f308a8bed0216f45e199360621d3276012488ab24a841dd015a486c7ed3c5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
