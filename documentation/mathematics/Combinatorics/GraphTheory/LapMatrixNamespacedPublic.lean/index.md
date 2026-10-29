# Lap Matrix Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f211046e228ee9f5ae10ef17a259a3df5c378792`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/LapMatrixNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [isHermitian](declarations/ishermitian.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isHermitian_adjMatrix](declarations/ishermitian-adjmatrix.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsRegularOfDegree.mem_spectrum_adjMatrix](declarations/isregularofdegree-mem-spectrum-adjmatrix.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [degree_eq_sum_if_adj](declarations/degree-eq-sum-if-adj.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [degMatrix](declarations/degmatrix.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lapMatrix](declarations/lapmatrix.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isSymm_degMatrix](declarations/issymm-degmatrix.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isHermitian_degMatrix](declarations/ishermitian-degmatrix.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isSymm_lapMatrix](declarations/issymm-lapmatrix.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isHermitian_lapMatrix](declarations/ishermitian-lapmatrix.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [degMatrix_mulVec_apply](declarations/degmatrix-mulvec-apply.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsRegularOfDegree.degMatrix_eq](declarations/isregularofdegree-degmatrix-eq.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [degMatrix_bot](declarations/degmatrix-bot.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [degMatrix_top](declarations/degmatrix-top.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsIsolated.not_isUnit_degMatrix](declarations/isisolated-not-isunit-degmatrix.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lapMatrix_mulVec_apply](declarations/lapmatrix-mulvec-apply-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lapMatrix_mulVec_apply'](declarations/lapmatrix-mulvec-apply.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lapMatrix_mulVec_one_eq_zero](declarations/lapmatrix-mulvec-one-eq-zero.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [det_lapMatrix_eq_zero](declarations/det-lapmatrix-eq-zero.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [not_isUnit_lapMatrix](declarations/not-isunit-lapmatrix.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zero_mem_spectrum_lapMatrix](declarations/zero-mem-spectrum-lapmatrix.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lapMatrix_bot](declarations/lapmatrix-bot.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lapMatrix_top](declarations/lapmatrix-top.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dotProduct_mulVec_degMatrix](declarations/dotproduct-mulvec-degmatrix.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [lapMatrix_toLinearMap₂'](declarations/lapmatrix-tolinearmap.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [posSemidef_lapMatrix](declarations/possemidef-lapmatrix.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_adj](declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-adj.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_adj](declarations/lapmatrix-mulvec-eq-zero-iff-forall-adj.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lapMatrix_toLinearMap₂'_apply'_eq_zero_iff_forall_reachable](declarations/lapmatrix-tolinearmap-apply-eq-zero-iff-forall-reachable.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lapMatrix_mulVec_eq_zero_iff_forall_reachable](declarations/lapmatrix-mulvec-eq-zero-iff-forall-reachable.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [mem_ker_toLin'_lapMatrix_of_connectedComponent](declarations/mem-ker-tolin-lapmatrix-of-connectedcomponent.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [lapMatrix_ker_basis_aux](declarations/lapmatrix-ker-basis-aux.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [linearIndependent_lapMatrix_ker_basis_aux](declarations/linearindependent-lapmatrix-ker-basis-aux.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [top_le_span_range_lapMatrix_ker_basis_aux](declarations/top-le-span-range-lapmatrix-ker-basis-aux.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [lapMatrix_ker_basis](declarations/lapmatrix-ker-basis.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [card_connectedComponent_eq_finrank_ker_toLin'_lapMatrix](declarations/card-connectedcomponent-eq-finrank-ker-tolin-lapmatrix.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e38d7ab52c40ac00eaaf0164fc57f26fd3bcefd4fdfccffaa571fb64b36adf12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
