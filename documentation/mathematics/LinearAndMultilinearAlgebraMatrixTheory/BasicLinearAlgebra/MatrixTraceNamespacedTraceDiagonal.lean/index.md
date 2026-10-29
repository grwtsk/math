# Matrix Trace Namespaced Trace Diagonal

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8643645622477280f75afeef4c26b20668f5cbf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [trace](declarations/trace.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [trace_diagonal](declarations/trace-diagonal.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [trace_zero](declarations/trace-zero.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [trace_eq_zero_of_isEmpty](declarations/trace-eq-zero-of-isempty.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [trace_add](declarations/trace-add.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [trace_smul](declarations/trace-smul.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [trace_transpose](declarations/trace-transpose.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [trace_conjTranspose](declarations/trace-conjtranspose.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [traceAddMonoidHom](declarations/traceaddmonoidhom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [traceLinearMap](declarations/tracelinearmap.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [trace_list_sum](declarations/trace-list-sum.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [trace_multiset_sum](declarations/trace-multiset-sum.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [trace_sum](declarations/trace-sum.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Matrix Trace Namespaced Trace Diagonal](declarations/map-trace.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [trace_blockDiagonal](declarations/trace-blockdiagonal-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [trace_blockDiagonal'](declarations/trace-blockdiagonal.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [trace_sub](declarations/trace-sub.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [trace_neg](declarations/trace-neg.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [trace_one](declarations/trace-one.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [trace_transpose_mul](declarations/trace-transpose-mul.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [trace_mul_comm](declarations/trace-mul-comm.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [trace_mul_cycle](declarations/trace-mul-cycle.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [trace_mul_cycle'](declarations/trace-mul-cycle-source-edition-2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [trace_replicateCol_mul_replicateRow](declarations/trace-replicatecol-mul-replicaterow.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [trace_submatrix_succ](declarations/trace-submatrix-succ.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [trace_units_conj](declarations/trace-units-conj.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [trace_units_conj'](declarations/trace-units-conj-source-edition-2.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [trace_fin_zero](declarations/trace-fin-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [trace_fin_one](declarations/trace-fin-one.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [trace_fin_two](declarations/trace-fin-two.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [trace_fin_three](declarations/trace-fin-three.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [trace_fin_one_of](declarations/trace-fin-one-of.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [trace_fin_two_of](declarations/trace-fin-two-of.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [trace_fin_three_of](declarations/trace-fin-three-of.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [trace_single_eq_of_ne](declarations/trace-single-eq-of-ne.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [trace_single_eq_same](declarations/trace-single-eq-same.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67d34ba94870f49b90366f640259d8c959ed05e9e7a27ac2798f3627cab757d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
