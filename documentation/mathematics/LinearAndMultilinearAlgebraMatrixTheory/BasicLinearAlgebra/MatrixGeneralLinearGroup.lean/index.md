# Matrix General Linear Group

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `239453269e74946cb315ca33a44d789328d6dc4c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroup.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](declarations/generallineargroup.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instCoeFun](declarations/instcoefun.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [det](declarations/det.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toLin](declarations/tolin.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mk'](declarations/mk.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mk''](declarations/mk-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mkOfDetNeZero](declarations/mkofdetnezero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext_iff](declarations/ext-iff.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_mul](declarations/coe-mul.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_one](declarations/coe-one.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_inv](declarations/coe-inv.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toLinear](declarations/tolinear.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_toLinear](declarations/coe-tolinear.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toLinear_apply](declarations/tolinear-apply.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coeToGL](declarations/coetogl.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [hasCoeToGeneralLinearGroup](declarations/hascoetogenerallineargroup.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coeToGL_det](declarations/coetogl-det.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [GLPos](declarations/glpos.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_glpos](declarations/mem-glpos.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [GLPos.det_ne_zero](declarations/glpos-det-ne-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [GLPos.coe_neg_GL](declarations/glpos-coe-neg-gl.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [GLPos.coe_neg](declarations/glpos-coe-neg.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [GLPos.coe_neg_apply](declarations/glpos-coe-neg-apply.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toGLPos](declarations/toglpos.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toGLPos_injective](declarations/toglpos-injective.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](declarations/coe-glpos-coe-gl-coe-matrix.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_to_GLPos_to_GL_det](declarations/coe-to-glpos-to-gl-det.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_GLPos_neg](declarations/coe-glpos-neg.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [planeConformalMatrix](declarations/planeconformalmatrix.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c20c7c0778dda443a1e96bb64d92fde7c1c388a8182adceeab857c68d4106cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
