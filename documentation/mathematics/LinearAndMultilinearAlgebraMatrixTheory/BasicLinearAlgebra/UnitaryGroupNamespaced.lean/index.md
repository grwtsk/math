# Unitary Group Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ef947b4246a5bf0e0f587ce002a77156e8cf70a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [unitaryGroup](declarations/unitarygroup.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_unitaryGroup_iff](declarations/mem-unitarygroup-iff-source-edition-2.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_unitaryGroup_iff'](declarations/mem-unitarygroup-iff.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [det_of_mem_unitary](declarations/det-of-mem-unitary.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [coeMatrix](declarations/coematrix.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [coeFun](declarations/coefun.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toLin'](declarations/tolin.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext_iff](declarations/ext-iff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [star_mul_self](declarations/star-mul-self.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [det_isUnit](declarations/det-isunit.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inv_val](declarations/inv-val.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inv_apply](declarations/inv-apply.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_val](declarations/mul-val.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul_apply](declarations/mul-apply.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [one_val](declarations/one-val.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [one_apply](declarations/one-apply.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toLin'_mul](declarations/tolin-mul.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toLin'_one](declarations/tolin-one.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `example` | [(anonymous)](declarations/example.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toLinearEquiv](declarations/tolinearequiv.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toGL](declarations/togl.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_toGL](declarations/coe-togl.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toGL_one](declarations/togl-one.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toGL_mul](declarations/togl-mul.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [embeddingGL](declarations/embeddinggl.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [specialUnitaryGroup](declarations/specialunitarygroup.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_specialUnitaryGroup_iff](declarations/mem-specialunitarygroup-iff.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `abbrev` | [orthogonalGroup](declarations/orthogonalgroup.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_orthogonalGroup_iff](declarations/mem-orthogonalgroup-iff.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_orthogonalGroup_iff'](declarations/mem-orthogonalgroup-iff-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [specialOrthogonalGroup](declarations/specialorthogonalgroup.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_specialOrthogonalGroup_iff](declarations/mem-specialorthogonalgroup-iff.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e174253164c74e19cfc74a0ba8c20fc1c47745baa84d06a384a70fa59aa10c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
