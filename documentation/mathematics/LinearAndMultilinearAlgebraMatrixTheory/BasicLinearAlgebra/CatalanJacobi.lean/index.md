# Catalan Jacobi

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9932f6e6e407fe1e92bd16eace9ae5b6cdf5619a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CatalanJacobi.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [consEmbedding](declarations/consembedding.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [consEmbedding_apply](declarations/consembedding-apply.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [paths](declarations/paths.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Nonnegative](declarations/nonnegative.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [nonnegative_cons_U](declarations/nonnegative-cons-u.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [nonnegative_cons_D](declarations/nonnegative-cons-d.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [not_nonnegative_cons_D_zero](declarations/not-nonnegative-cons-d-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [mem_paths](declarations/mem-paths.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [paths_union_disjoint](declarations/paths-union-disjoint.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [card_paths_succ_zero](declarations/card-paths-succ-zero.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [card_paths_succ_succ](declarations/card-paths-succ-succ.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [length_eq_counts](declarations/length-eq-counts.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [returningPathsEquivDyck](declarations/returningpathsequivdyck.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [card_paths_even](declarations/card-paths-even.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [paths_odd_eq_empty](declarations/paths-odd-eq-empty.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [paths_eq_empty_of_length_lt_height](declarations/paths-eq-empty-of-length-lt-height.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Jfree](declarations/jfree.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Jfree_apply_zero](declarations/jfree-apply-zero.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Jfree_apply_succ](declarations/jfree-apply-succ.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [basisVector](declarations/basisvector.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Jfree_basis_zero](declarations/jfree-basis-zero.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Jfree_basis_succ](declarations/jfree-basis-succ.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [cyclicCoefficient](declarations/cycliccoefficient.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [power_basis_eq_card_paths](declarations/power-basis-eq-card-paths.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [cyclicCoefficient_even](declarations/cycliccoefficient-even.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [cyclicCoefficient_odd](declarations/cycliccoefficient-odd.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [cyclicCoefficient_one](declarations/cycliccoefficient-one.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [power_basis_support_bound](declarations/power-basis-support-bound.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [pairing](declarations/pairing.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [pairing_basis_zero](declarations/pairing-basis-zero.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [free_even_moment](declarations/free-even-moment.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [free_odd_moment](declarations/free-odd-moment.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [cyclicCoefficient_even_normalization](declarations/cycliccoefficient-even-normalization.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7adf379174937ce0054eb8f53bac8181e51ca59c3d32089eca0169903d5332d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CatalanJacobi/Variant924dd916f667ee954f7002fedcc4c9aa3df0ceaadae0fab51f13f4fa2b9fc371.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
