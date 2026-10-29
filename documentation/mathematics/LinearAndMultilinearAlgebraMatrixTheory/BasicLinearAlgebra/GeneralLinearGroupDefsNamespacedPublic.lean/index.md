# General Linear Group Defs Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c7f4155b3ea3c3f4938691c2d63b60e054a6c3b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](declarations/generallineargroup.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [scalar](declarations/scalar.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instCoeFun](declarations/instcoefun.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coe_scalar](declarations/coe-scalar.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [smul_def](declarations/smul-def.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [scalar_commute](declarations/scalar-commute.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [det](declarations/det.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [det_ne_zero](declarations/det-ne-zero.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [det_scalar](declarations/det-scalar.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [det_surjective](declarations/det-surjective.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toLin](declarations/tolin-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [toLin'](declarations/tolin.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toLin'_apply](declarations/tolin-apply-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mk'](declarations/mk.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mk''](declarations/mk-source-edition-2.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkOfDetNeZero](declarations/mkofdetnezero.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ext_iff](declarations/ext-iff.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ext](declarations/ext.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_mul](declarations/coe-mul.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_one](declarations/coe-one.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_inv](declarations/coe-inv.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_toLin](declarations/coe-tolin.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toLin_apply](declarations/tolin-apply.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [map](declarations/map.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_id](declarations/map-id.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [map_apply](declarations/map-apply.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_comp](declarations/map-comp.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_comp_apply](declarations/map-comp-apply.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [map_one](declarations/map-one.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [map_mul](declarations/map-mul.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [map_inv](declarations/map-inv.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [map_det](declarations/map-det.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [map_mul_map_inv](declarations/map-mul-map-inv.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [map_inv_mul_map](declarations/map-inv-mul-map.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coe_map_mul_map_inv](declarations/coe-map-mul-map-inv.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [coe_map_inv_mul_map](declarations/coe-map-inv-mul-map.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [map_scalar](declarations/map-scalar.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [kronecker](declarations/kronecker.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [General Linear Group Defs Namespaced Public](declarations/kronecker-source-line-268-occurrence-2.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [toGL](declarations/togl.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [hasCoeToGeneralLinearGroup](declarations/hascoetogenerallineargroup.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [toGL_injective](declarations/togl-injective.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [toGL_inj](declarations/togl-inj.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coeToGL_det](declarations/coetogl-det.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [coe_GL_coe_matrix](declarations/coe-gl-coe-matrix.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [range_toGL_eq_ker_det](declarations/range-togl-eq-ker-det.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [toGLKerEquiv](declarations/toglkerequiv.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [mapGL](declarations/mapgl.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [mapGL_inj](declarations/mapgl-inj.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [mapGL_injective](declarations/mapgl-injective.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [mapGL_coe_matrix](declarations/mapgl-coe-matrix.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [map_mapGL](declarations/map-mapgl.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [det_mapGL](declarations/det-mapgl.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [GLPos](declarations/glpos.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_glpos](declarations/mem-glpos.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [GLPos.det_ne_zero](declarations/glpos-det-ne-zero.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [GLPos.coe_neg_GL](declarations/glpos-coe-neg-gl.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [GLPos.coe_neg](declarations/glpos-coe-neg.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [GLPos.coe_neg_apply](declarations/glpos-coe-neg-apply.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toGLPos](declarations/toglpos.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [toGLPos_injective](declarations/toglpos-injective.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](declarations/coe-glpos-coe-gl-coe-matrix.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coe_to_GLPos_to_GL_det](declarations/coe-to-glpos-to-gl-det.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coe_GLPos_neg](declarations/coe-glpos-neg.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbd938b565818ae29628f99cddccb5c065d9e80e541e4fa51669a69c37531997 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant2bbcaa08b5a913ab9827239bb9f4eb1c352631caeebc1ead6a649777ba4cd73f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
