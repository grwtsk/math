# Gram Schmidt Ortho

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f8c1cedb41e36f33d25c075f1658548d4e585d8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/GramSchmidtOrtho.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [gramSchmidt](declarations/gramschmidt.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [gramSchmidt_def](declarations/gramschmidt-def-source-edition-3.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [gramSchmidt_def'](declarations/gramschmidt-def.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [gramSchmidt_def''](declarations/gramschmidt-def-source-edition-2.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [gramSchmidt_zero](declarations/gramschmidt-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gramSchmidt_orthogonal](declarations/gramschmidt-orthogonal.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gramSchmidt_pairwise_orthogonal](declarations/gramschmidt-pairwise-orthogonal.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gramSchmidt_inv_triangular](declarations/gramschmidt-inv-triangular.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_span_gramSchmidt](declarations/mem-span-gramschmidt.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gramSchmidt_mem_span](declarations/gramschmidt-mem-span.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [span_gramSchmidt_Iic](declarations/span-gramschmidt-iic.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [span_gramSchmidt_Iio](declarations/span-gramschmidt-iio.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [span_gramSchmidt](declarations/span-gramschmidt.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gramSchmidt_of_orthogonal](declarations/gramschmidt-of-orthogonal.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [gramSchmidt_ne_zero_coe](declarations/gramschmidt-ne-zero-coe.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gramSchmidt_ne_zero](declarations/gramschmidt-ne-zero.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [gramSchmidt_triangular](declarations/gramschmidt-triangular.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [gramSchmidt_linearIndependent](declarations/gramschmidt-linearindependent.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [gramSchmidtBasis](declarations/gramschmidtbasis.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_gramSchmidtBasis](declarations/coe-gramschmidtbasis.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [gramSchmidtNormed](declarations/gramschmidtnormed.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gramSchmidtNormed_unit_length_coe](declarations/gramschmidtnormed-unit-length-coe.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [gramSchmidtNormed_unit_length](declarations/gramschmidtnormed-unit-length.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gramSchmidtNormed_unit_length'](declarations/gramschmidtnormed-unit-length-source-edition-2.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gramSchmidt_orthonormal](declarations/gramschmidt-orthonormal.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gramSchmidt_orthonormal'](declarations/gramschmidt-orthonormal-source-edition-2.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [span_gramSchmidtNormed](declarations/span-gramschmidtnormed.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [span_gramSchmidtNormed_range](declarations/span-gramschmidtnormed-range.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [gramSchmidtOrthonormalBasis](declarations/gramschmidtorthonormalbasis.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gramSchmidtOrthonormalBasis_apply](declarations/gramschmidtorthonormalbasis-apply.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [gramSchmidtOrthonormalBasis_apply_of_orthogonal](declarations/gramschmidtorthonormalbasis-apply-of-orthogonal.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inner_gramSchmidtOrthonormalBasis_eq_zero](declarations/inner-gramschmidtorthonormalbasis-eq-zero.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular](declarations/gramschmidtorthonormalbasis-inv-triangular.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular'](declarations/gramschmidtorthonormalbasis-inv-triangular-source-edition-2.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gramSchmidtOrthonormalBasis_inv_blockTriangular](declarations/gramschmidtorthonormalbasis-inv-blocktriangular.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [gramSchmidtOrthonormalBasis_det](declarations/gramschmidtorthonormalbasis-det.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a927ba1c0120eee3fe5a597c9e097bffc0cc826ee09f0514b8a142877e9440cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variante27b6040cd763e495d7ab90f59fdfe4aa3a86e6ed7a4f289efa7f550817c8591.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
