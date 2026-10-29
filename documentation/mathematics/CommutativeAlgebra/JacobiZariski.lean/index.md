# Jacobi Zariski

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf0f6ea882e602ecdf39c8b7a061880ff38eda37`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/JacobiZariski.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [Cotangent.surjective_map_ofComp](declarations/cotangent-surjective-map-ofcomp.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [Cotangent.exact](declarations/cotangent-exact.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [CotangentSpace.compEquiv](declarations/cotangentspace-compequiv.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [CotangentSpace.compEquiv_symm_inr](declarations/cotangentspace-compequiv-symm-inr.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [CotangentSpace.compEquiv_symm_zero](declarations/cotangentspace-compequiv-symm-zero.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [CotangentSpace.fst_compEquiv](declarations/cotangentspace-fst-compequiv.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [CotangentSpace.fst_compEquiv_apply](declarations/cotangentspace-fst-compequiv-apply.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [CotangentSpace.map_toComp_injective](declarations/cotangentspace-map-tocomp-injective.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [CotangentSpace.map_ofComp_surjective](declarations/cotangentspace-map-ofcomp-surjective.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [CotangentSpace.exact](declarations/cotangentspace-exact.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [δAux](declarations/aux.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [δAux_monomial](declarations/aux-monomial.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [δAux_X](declarations/aux-x.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [δAux_mul](declarations/aux-mul.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [δAux_C](declarations/aux-c.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [δAux_toAlgHom](declarations/aux-toalghom.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [δAux_ofComp](declarations/aux-ofcomp.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [map_comp_cotangentComplex_baseChange](declarations/map-comp-cotangentcomplex-basechange.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [δ](declarations/anonymous.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [exact_δ_map](declarations/exact-map-source-edition-3.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [δ_eq](declarations/eq-source-edition-2.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [δ_eq_δAux](declarations/eq-aux.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [δ_eq_δ](declarations/eq.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [exact_map_δ](declarations/exact-map.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [δ_map](declarations/map.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [δ_comp_equiv](declarations/comp-equiv.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [exact_map_δ'](declarations/exact-map-source-edition-2.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [H1Cotangent.δ](declarations/h1cotangent.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [H1Cotangent.exact_map_δ](declarations/h1cotangent-exact-map.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [H1Cotangent.exact_δ_mapBaseChange](declarations/h1cotangent-exact-mapbasechange.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32f925d7188130d366617ebceaec23546bc96805adc5f99d7c37397a37d24820 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/JacobiZariski/Variant6d6eae5d7b58370e6370b92a5a7b4ac64912c456bdaf77fb6d29077ff4bd18e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
