# General Linear Group Defs Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f250cef75700a85540d60fa10fc48e189b6eda22`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](declarations/generallineargroup.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instCoeFun](declarations/instcoefun.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [det](declarations/det.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [det_ne_zero](declarations/det-ne-zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toLin](declarations/tolin.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mk'](declarations/mk.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mk''](declarations/mk-source-edition-2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mkOfDetNeZero](declarations/mkofdetnezero.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext_iff](declarations/ext-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_mul](declarations/coe-mul.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_one](declarations/coe-one.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_inv](declarations/coe-inv.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_toLin](declarations/coe-tolin.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toLin_apply](declarations/tolin-apply.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [map](declarations/map.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_id](declarations/map-id.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [map_apply](declarations/map-apply.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_comp](declarations/map-comp.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_comp_apply](declarations/map-comp-apply.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [map_one](declarations/map-one.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [map_mul](declarations/map-mul.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [map_inv](declarations/map-inv.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [map_det](declarations/map-det.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [map_mul_map_inv](declarations/map-mul-map-inv.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [map_inv_mul_map](declarations/map-inv-mul-map.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [coe_map_mul_map_inv](declarations/coe-map-mul-map-inv.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [coe_map_inv_mul_map](declarations/coe-map-inv-mul-map.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [toGL](declarations/togl.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [hasCoeToGeneralLinearGroup](declarations/hascoetogenerallineargroup.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [toGL_injective](declarations/togl-injective.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [toGL_inj](declarations/togl-inj.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coeToGL_det](declarations/coetogl-det.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [coe_GL_coe_matrix](declarations/coe-gl-coe-matrix.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mapGL](declarations/mapgl.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mapGL_inj](declarations/mapgl-inj.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [mapGL_injective](declarations/mapgl-injective.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [mapGL_coe_matrix](declarations/mapgl-coe-matrix.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [GLPos](declarations/glpos.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_glpos](declarations/mem-glpos.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [GLPos.det_ne_zero](declarations/glpos-det-ne-zero.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [GLPos.coe_neg_GL](declarations/glpos-coe-neg-gl.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [GLPos.coe_neg](declarations/glpos-coe-neg.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [GLPos.coe_neg_apply](declarations/glpos-coe-neg-apply.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toGLPos](declarations/toglpos.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toGLPos_injective](declarations/toglpos-injective.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](declarations/coe-glpos-coe-gl-coe-matrix.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_to_GLPos_to_GL_det](declarations/coe-to-glpos-to-gl-det.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_GLPos_neg](declarations/coe-glpos-neg.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fbde1ca823d4de3a33bd050dce2158cd91ae0d509d41a75fa7fdabc983e10ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
