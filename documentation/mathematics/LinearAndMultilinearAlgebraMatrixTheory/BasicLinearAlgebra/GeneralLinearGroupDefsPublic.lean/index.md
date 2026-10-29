# General Linear Group Defs Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1509ff29b9c44f9461ce8ffdca475dab6a6897dc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](declarations/generallineargroup.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [scalar](declarations/scalar.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instCoeFun](declarations/instcoefun.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coe_scalar](declarations/coe-scalar.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [smul_def](declarations/smul-def.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [scalar_commute](declarations/scalar-commute.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [det](declarations/det.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [det_ne_zero](declarations/det-ne-zero.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [det_scalar](declarations/det-scalar.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [det_surjective](declarations/det-surjective.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toLin](declarations/tolin-source-edition-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [toLin'](declarations/tolin.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toLin'_apply](declarations/tolin-apply.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mk'](declarations/mk.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mk''](declarations/mk-source-edition-2.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkOfDetNeZero](declarations/mkofdetnezero.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ext_iff](declarations/ext-iff.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ext](declarations/ext.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_mul](declarations/coe-mul.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_one](declarations/coe-one.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_inv](declarations/coe-inv.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_toLin](declarations/coe-tolin.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toLin_apply](declarations/tolin-apply-source-edition-2.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [map](declarations/map.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_id](declarations/map-id.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [map_apply](declarations/map-apply.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_comp](declarations/map-comp.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_comp_apply](declarations/map-comp-apply.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [map_one](declarations/map-one.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [map_mul](declarations/map-mul.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [map_inv](declarations/map-inv.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [map_det](declarations/map-det.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [map_mul_map_inv](declarations/map-mul-map-inv.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [map_inv_mul_map](declarations/map-inv-mul-map.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coe_map_mul_map_inv](declarations/coe-map-mul-map-inv.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [coe_map_inv_mul_map](declarations/coe-map-inv-mul-map.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [map_scalar](declarations/map-scalar.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [kronecker](declarations/kronecker.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [_root_.Matrix.IsUnit.kronecker](declarations/root-matrix-isunit-kronecker.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [toGL](declarations/togl.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [hasCoeToGeneralLinearGroup](declarations/hascoetogenerallineargroup.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [toGL_injective](declarations/togl-injective.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [toGL_inj](declarations/togl-inj.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coeToGL_det](declarations/coetogl-det.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [coe_GL_coe_matrix](declarations/coe-gl-coe-matrix.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [range_toGL_eq_ker_det](declarations/range-togl-eq-ker-det.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [toGLKerEquiv](declarations/toglkerequiv.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [mapGL](declarations/mapgl.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [mapGL_inj](declarations/mapgl-inj.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [mapGL_injective](declarations/mapgl-injective.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [mapGL_coe_matrix](declarations/mapgl-coe-matrix.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [map_mapGL](declarations/map-mapgl.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [det_mapGL](declarations/det-mapgl.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [GLPos](declarations/glpos.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_glpos](declarations/mem-glpos.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [GLPos.det_ne_zero](declarations/glpos-det-ne-zero.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [GLPos.coe_neg_GL](declarations/glpos-coe-neg-gl.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [GLPos.coe_neg](declarations/glpos-coe-neg.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [GLPos.coe_neg_apply](declarations/glpos-coe-neg-apply.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toGLPos](declarations/toglpos.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [toGLPos_injective](declarations/toglpos-injective.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](declarations/coe-glpos-coe-gl-coe-matrix.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coe_to_GLPos_to_GL_det](declarations/coe-to-glpos-to-gl-det.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coe_GLPos_neg](declarations/coe-glpos-neg.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78fb6329d101db31208d993675dc530a59751f8fecd6f87cd9a932c985ba00e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant7ebcb372b2e3d685522c7b191246ccce616c80150c86489c091fc4e7adac5f1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
