# Hermitian Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4bb233827d8193d97553501617e0e0402a53377`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HermitianNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsHermitian](declarations/ishermitian.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsHermitian.eq](declarations/ishermitian-eq.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsHermitian.isSelfAdjoint](declarations/ishermitian-isselfadjoint.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsHermitian.ext](declarations/ishermitian-ext.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsHermitian.apply](declarations/ishermitian-apply.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsHermitian.ext_iff](declarations/ishermitian-ext-iff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsHermitian.map](declarations/ishermitian-map.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsHermitian.transpose](declarations/ishermitian-transpose.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isHermitian_transpose_iff](declarations/ishermitian-transpose-iff.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsHermitian.conjTranspose](declarations/ishermitian-conjtranspose.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsHermitian.submatrix](declarations/ishermitian-submatrix.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isHermitian_submatrix_equiv](declarations/ishermitian-submatrix-equiv.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isHermitian_conjTranspose_iff](declarations/ishermitian-conjtranspose-iff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsHermitian.fromBlocks](declarations/ishermitian-fromblocks.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isHermitian_fromBlocks_iff](declarations/ishermitian-fromblocks-iff.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isHermitian_diagonal_of_self_adjoint](declarations/ishermitian-diagonal-of-self-adjoint.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [isHermitian_diagonal_iff](declarations/ishermitian-diagonal-iff.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isHermitian_diagonal](declarations/ishermitian-diagonal.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isHermitian_zero](declarations/ishermitian-zero.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsHermitian.add](declarations/ishermitian-add.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isHermitian_add_transpose_self](declarations/ishermitian-add-transpose-self.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isHermitian_transpose_add_self](declarations/ishermitian-transpose-add-self.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsHermitian.neg](declarations/ishermitian-neg.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsHermitian.sub](declarations/ishermitian-sub.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isHermitian_mul_conjTranspose_self](declarations/ishermitian-mul-conjtranspose-self.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isHermitian_transpose_mul_self](declarations/ishermitian-transpose-mul-self.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isHermitian_conjTranspose_mul_mul](declarations/ishermitian-conjtranspose-mul-mul.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isHermitian_mul_mul_conjTranspose](declarations/ishermitian-mul-mul-conjtranspose.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [commute_iff](declarations/commute-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isHermitian_one](declarations/ishermitian-one.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isHermitian_natCast](declarations/ishermitian-natcast.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsHermitian.pow](declarations/ishermitian-pow.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isHermitian_intCast](declarations/ishermitian-intcast.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsHermitian.inv](declarations/ishermitian-inv-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isHermitian_inv](declarations/ishermitian-inv.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsHermitian.adjugate](declarations/ishermitian-adjugate.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsHermitian.zpow](declarations/ishermitian-zpow.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsHermitian.coe_re_apply_self](declarations/ishermitian-coe-re-apply-self.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsHermitian.coe_re_diag](declarations/ishermitian-coe-re-diag.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isHermitian_iff_isSymmetric](declarations/ishermitian-iff-issymmetric.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94d9ed90947f667305239035a414567c86ced90551bd21462ed1bf1542abfc55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
