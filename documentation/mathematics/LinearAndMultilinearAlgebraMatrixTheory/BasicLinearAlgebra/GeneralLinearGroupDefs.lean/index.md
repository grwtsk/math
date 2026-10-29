# General Linear Group Defs

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4f0685567c7fec1610b995c02f5e67b668c692c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GeneralLinearGroupDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](declarations/generallineargroup.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instCoeFun](declarations/instcoefun.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [det](declarations/det.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [det_ne_zero](declarations/det-ne-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toLin](declarations/tolin.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mk'](declarations/mk-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mk''](declarations/mk.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mkOfDetNeZero](declarations/mkofdetnezero.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext_iff](declarations/ext-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_mul](declarations/coe-mul.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_one](declarations/coe-one.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_inv](declarations/coe-inv.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_toLin](declarations/coe-tolin.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toLin_apply](declarations/tolin-apply.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [map](declarations/map.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_id](declarations/map-id.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [map_apply](declarations/map-apply.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_comp](declarations/map-comp.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_comp_apply](declarations/map-comp-apply.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [map_one](declarations/map-one.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [map_mul](declarations/map-mul.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [map_inv](declarations/map-inv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [map_det](declarations/map-det.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [map_mul_map_inv](declarations/map-mul-map-inv.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [map_inv_mul_map](declarations/map-inv-mul-map.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [coe_map_mul_map_inv](declarations/coe-map-mul-map-inv.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [coe_map_inv_mul_map](declarations/coe-map-inv-mul-map.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [toGL](declarations/togl.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [hasCoeToGeneralLinearGroup](declarations/hascoetogenerallineargroup.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [toGL_injective](declarations/togl-injective.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [toGL_inj](declarations/togl-inj.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coeToGL_det](declarations/coetogl-det.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [coe_GL_coe_matrix](declarations/coe-gl-coe-matrix.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mapGL](declarations/mapgl.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mapGL_inj](declarations/mapgl-inj.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [mapGL_injective](declarations/mapgl-injective.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [mapGL_coe_matrix](declarations/mapgl-coe-matrix.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [GLPos](declarations/glpos.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_glpos](declarations/mem-glpos.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [GLPos.det_ne_zero](declarations/glpos-det-ne-zero.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [GLPos.coe_neg_GL](declarations/glpos-coe-neg-gl.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [GLPos.coe_neg](declarations/glpos-coe-neg.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [GLPos.coe_neg_apply](declarations/glpos-coe-neg-apply.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toGLPos](declarations/toglpos.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toGLPos_injective](declarations/toglpos-injective.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](declarations/coe-glpos-coe-gl-coe-matrix.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_to_GLPos_to_GL_det](declarations/coe-to-glpos-to-gl-det.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_GLPos_neg](declarations/coe-glpos-neg.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb061c4935fc73a482713dd316ce64fba2e7aaff06421ecd42b589e165ac220f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variantf1e958e3680bf7178c59f0423620807cf09cbd9cf011ceb43672fbea5ee8084b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
