# Matrix General Linear Group Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0eb70ed5b32e4a556c3b491753a4187a21b8bc36`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](declarations/generallineargroup.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instCoeFun](declarations/instcoefun.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [det](declarations/det.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toLin](declarations/tolin.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mk'](declarations/mk-source-edition-2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mk''](declarations/mk.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mkOfDetNeZero](declarations/mkofdetnezero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext_iff](declarations/ext-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_mul](declarations/coe-mul.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_one](declarations/coe-one.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_inv](declarations/coe-inv.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toLinear](declarations/tolinear.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_toLinear](declarations/coe-tolinear.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toLinear_apply](declarations/tolinear-apply.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coeToGL](declarations/coetogl.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [hasCoeToGeneralLinearGroup](declarations/hascoetogenerallineargroup.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coeToGL_det](declarations/coetogl-det.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [GLPos](declarations/glpos.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_glpos](declarations/mem-glpos.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [GLPos.det_ne_zero](declarations/glpos-det-ne-zero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [GLPos.coe_neg_GL](declarations/glpos-coe-neg-gl.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [GLPos.coe_neg](declarations/glpos-coe-neg.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [GLPos.coe_neg_apply](declarations/glpos-coe-neg-apply.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toGLPos](declarations/toglpos.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toGLPos_injective](declarations/toglpos-injective.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](declarations/coe-glpos-coe-gl-coe-matrix.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_to_GLPos_to_GL_det](declarations/coe-to-glpos-to-gl-det.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_GLPos_neg](declarations/coe-glpos-neg.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [planeConformalMatrix](declarations/planeconformalmatrix.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bcfc6a9327527d89b61d8f6d921a87d4a9d5aa2e4345a451b4bc6ebd60d1294 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
