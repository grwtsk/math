# Unitary Group

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c46ea6b75e96655396ea675b8c0dfef4260b969`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroup.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [unitaryGroup](declarations/unitarygroup.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_unitaryGroup_iff](declarations/mem-unitarygroup-iff.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_unitaryGroup_iff'](declarations/mem-unitarygroup-iff-source-edition-2.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [det_of_mem_unitary](declarations/det-of-mem-unitary.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [coeMatrix](declarations/coematrix.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [coeFun](declarations/coefun.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toLin'](declarations/tolin.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext_iff](declarations/ext-iff.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [star_mul_self](declarations/star-mul-self.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [det_isUnit](declarations/det-isunit.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inv_val](declarations/inv-val.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inv_apply](declarations/inv-apply.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_val](declarations/mul-val.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul_apply](declarations/mul-apply.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [one_val](declarations/one-val.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [one_apply](declarations/one-apply.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toLin'_mul](declarations/tolin-mul.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toLin'_one](declarations/tolin-one.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `example` | [(anonymous)](declarations/example.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toLinearEquiv](declarations/tolinearequiv.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toGL](declarations/togl.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_toGL](declarations/coe-togl.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toGL_one](declarations/togl-one.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toGL_mul](declarations/togl-mul.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [embeddingGL](declarations/embeddinggl.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [specialUnitaryGroup](declarations/specialunitarygroup.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_specialUnitaryGroup_iff](declarations/mem-specialunitarygroup-iff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `abbrev` | [orthogonalGroup](declarations/orthogonalgroup.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_orthogonalGroup_iff](declarations/mem-orthogonalgroup-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_orthogonalGroup_iff'](declarations/mem-orthogonalgroup-iff-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [specialOrthogonalGroup](declarations/specialorthogonalgroup.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_specialOrthogonalGroup_iff](declarations/mem-specialorthogonalgroup-iff.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b45e8c6b5ef43c872c358aa19af686e41b93ca760f3a67bd0d8831610501a75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
