# Lap Matrix Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f10d839092faf111a3b5f469ff69905ed56a66b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/LapMatrixNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [degree_eq_sum_if_adj](declarations/degree-eq-sum-if-adj.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [degMatrix](declarations/degmatrix.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [lapMatrix](declarations/lapmatrix.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isSymm_degMatrix](declarations/issymm-degmatrix.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isSymm_lapMatrix](declarations/issymm-lapmatrix.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [degMatrix_mulVec_apply](declarations/degmatrix-mulvec-apply.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lapMatrix_mulVec_apply](declarations/lapmatrix-mulvec-apply.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lapMatrix_mulVec_const_eq_zero](declarations/lapmatrix-mulvec-const-eq-zero.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dotProduct_mulVec_degMatrix](declarations/dotproduct-mulvec-degmatrix.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lapMatrix_toLinearMap₂'](declarations/lapmatrix-tolinearmap.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [posSemidef_lapMatrix](declarations/possemidef-lapmatrix.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_adj](declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-adj.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_adj](declarations/lapmatrix-mulvec-eq-zero-iff-forall-adj.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lapMatrix_toLin'_apply_eq_zero_iff_forall_adj](declarations/lapmatrix-tolin-apply-eq-zero-iff-forall-adj.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_reachable](declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-reachable.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_reachable](declarations/lapmatrix-mulvec-eq-zero-iff-forall-reachable.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lapMatrix_toLin'_apply_eq_zero_iff_forall_reachable](declarations/lapmatrix-tolin-apply-eq-zero-iff-forall-reachable.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mem_ker_toLin'_lapMatrix_of_connectedComponent](declarations/mem-ker-tolin-lapmatrix-of-connectedcomponent.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [lapMatrix_ker_basis_aux](declarations/lapmatrix-ker-basis-aux.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [linearIndependent_lapMatrix_ker_basis_aux](declarations/linearindependent-lapmatrix-ker-basis-aux.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [top_le_span_range_lapMatrix_ker_basis_aux](declarations/top-le-span-range-lapmatrix-ker-basis-aux.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [lapMatrix_ker_basis](declarations/lapmatrix-ker-basis.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix](declarations/card-connectedcomponent-eq-finrank-ker-tolin-lapmatrix.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c11279e3aa23f6a9d134c798efae90dd54fa34c018309f4a12a60c0c96b5eae0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
