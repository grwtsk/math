# Affine Space Continuous Affine Equiv

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `075aebb978e9bd0765645a4b4f0bfe140df3225c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAffineEquiv](declarations/continuousaffineequiv.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toHomeomorph](declarations/tohomeomorph.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toAffineEquiv_injective](declarations/toaffineequiv-injective.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instEquivLike](declarations/instequivlike.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [coe](declarations/coe.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_injective](declarations/coe-injective.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instFunLike](declarations/instfunlike.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_coe](declarations/coe-coe.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_toEquiv](declarations/coe-toequiv.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Simps.apply](declarations/simps-apply.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext](declarations/ext.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [continuous](declarations/continuous.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [toContinuousAffineMap](declarations/tocontinuousaffinemap.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coe_toContinuousAffineMap](declarations/coe-tocontinuousaffinemap.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toContinuousAffineMap_injective](declarations/tocontinuousaffinemap-injective.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toContinuousAffineMap_toAffineMap](declarations/tocontinuousaffinemap-toaffinemap.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [toContinuousAffineMap_toContinuousMap](declarations/tocontinuousaffinemap-tocontinuousmap.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [refl](declarations/refl.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_refl](declarations/coe-refl.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [refl_apply](declarations/refl-apply.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toAffineEquiv_refl](declarations/toaffineequiv-refl.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toEquiv_refl](declarations/toequiv-refl.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [symm](declarations/symm.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [symm_toAffineEquiv](declarations/symm-toaffineequiv.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [symm_toEquiv](declarations/symm-toequiv.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [apply_eq_iff_eq_symm_apply](declarations/apply-eq-iff-eq-symm-apply.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [apply_eq_iff_eq](declarations/apply-eq-iff-eq.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [symm_symm](declarations/symm-symm.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [symm_symm_apply](declarations/symm-symm-apply.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [symm_apply_eq](declarations/symm-apply-eq.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eq_symm_apply](declarations/eq-symm-apply.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [image_symm](declarations/image-symm.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [preimage_symm](declarations/preimage-symm.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [bijective](declarations/bijective.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [surjective](declarations/surjective.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [injective](declarations/injective.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [image_eq_preimage](declarations/image-eq-preimage.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [image_symm_eq_preimage](declarations/image-symm-eq-preimage.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [image_preimage](declarations/image-preimage.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [preimage_image](declarations/preimage-image.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [symm_image_image](declarations/symm-image-image.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [image_symm_image](declarations/image-symm-image.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [refl_symm](declarations/refl-symm.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [symm_refl](declarations/symm-refl.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [trans](declarations/trans.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_trans](declarations/coe-trans.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [trans_apply](declarations/trans-apply.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [trans_assoc](declarations/trans-assoc.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [trans_refl](declarations/trans-refl.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [refl_trans](declarations/refl-trans.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [trans_toContinuousAffineMap](declarations/trans-tocontinuousaffinemap.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [_root_.ContinuousLinearEquiv.toContinuousAffineEquiv](declarations/root-continuouslinearequiv-tocontinuousaffineequiv.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [_root_.ContinuousLinearEquiv.coe_toContinuousAffineEquiv](declarations/root-continuouslinearequiv-coe-tocontinuousaffineequiv.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [_root_.ContinuousLinearEquiv.toContinuousAffineEquiv_toContinuousAffineMap](declarations/root-continuouslinearequiv-tocontinuousaffineequiv-tocontinuousaffinemap.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [constVAdd](declarations/constvadd.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [constVAdd_coe](declarations/constvadd-coe.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43c75ade35c5dd762c8364601e40d3c5c304db4254698bda1905a2bbab558ead -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant9fc644e40dc4530498d87413ecae26139acf65e13f7c872cf1c82c1258b862d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
