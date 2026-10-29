# Affine Space Continuous Affine Equiv Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7627a73917ef9453e1e477b42dc86094e15cc8ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceContinuousAffineEquivNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAffineEquiv](declarations/continuousaffineequiv.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toHomeomorph](declarations/tohomeomorph.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toAffineEquiv_injective](declarations/toaffineequiv-injective.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instEquivLike](declarations/instequivlike.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [coe](declarations/coe.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_injective](declarations/coe-injective.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instFunLike](declarations/instfunlike.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_coe](declarations/coe-coe.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_toEquiv](declarations/coe-toequiv.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Simps.apply](declarations/simps-apply.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext](declarations/ext.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [continuous](declarations/continuous.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [toContinuousAffineMap](declarations/tocontinuousaffinemap.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coe_toContinuousAffineMap](declarations/coe-tocontinuousaffinemap.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toContinuousAffineMap_injective](declarations/tocontinuousaffinemap-injective.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toContinuousAffineMap_toAffineMap](declarations/tocontinuousaffinemap-toaffinemap.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [toContinuousAffineMap_toContinuousMap](declarations/tocontinuousaffinemap-tocontinuousmap.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [refl](declarations/refl.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_refl](declarations/coe-refl.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [refl_apply](declarations/refl-apply.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toAffineEquiv_refl](declarations/toaffineequiv-refl.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toEquiv_refl](declarations/toequiv-refl.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [symm](declarations/symm.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [symm_toAffineEquiv](declarations/symm-toaffineequiv.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [symm_toEquiv](declarations/symm-toequiv.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [apply_eq_iff_eq_symm_apply](declarations/apply-eq-iff-eq-symm-apply.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [apply_eq_iff_eq](declarations/apply-eq-iff-eq.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [symm_symm](declarations/symm-symm.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [symm_symm_apply](declarations/symm-symm-apply.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [symm_apply_eq](declarations/symm-apply-eq.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eq_symm_apply](declarations/eq-symm-apply.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [image_symm](declarations/image-symm.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [preimage_symm](declarations/preimage-symm.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [bijective](declarations/bijective.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [surjective](declarations/surjective.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [injective](declarations/injective.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [image_eq_preimage](declarations/image-eq-preimage.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [image_symm_eq_preimage](declarations/image-symm-eq-preimage.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [image_preimage](declarations/image-preimage.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [preimage_image](declarations/preimage-image.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [symm_image_image](declarations/symm-image-image.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [image_symm_image](declarations/image-symm-image.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [refl_symm](declarations/refl-symm.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [symm_refl](declarations/symm-refl.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [trans](declarations/trans.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_trans](declarations/coe-trans.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [trans_apply](declarations/trans-apply.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [trans_assoc](declarations/trans-assoc.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [trans_refl](declarations/trans-refl.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [refl_trans](declarations/refl-trans.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [trans_toContinuousAffineMap](declarations/trans-tocontinuousaffinemap.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [Affine Space Continuous Affine Equiv Namespaced](declarations/tocontinuousaffineequiv.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Affine Space Continuous Affine Equiv Namespaced](declarations/coe-tocontinuousaffineequiv.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [Affine Space Continuous Affine Equiv Namespaced](declarations/tocontinuousaffineequiv-tocontinuousaffinemap.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [constVAdd](declarations/constvadd.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [constVAdd_coe](declarations/constvadd-coe.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=951826d3c22b89619ea1725330f4948215a415ae31a9607c6a03066201423ba0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
