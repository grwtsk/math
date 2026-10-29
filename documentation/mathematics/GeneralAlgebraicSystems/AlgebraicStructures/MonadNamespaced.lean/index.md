# Monad Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54b0a0bca9480ead2161e5fc58ab0de4cccdb96a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/MonadNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [bind₁](declarations/bind.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [bind₂](declarations/bind-source-edition-2.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [join₁](declarations/join-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [join₂](declarations/join.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [aeval_eq_bind₁](declarations/aeval-eq-bind.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eval₂Hom_C_eq_bind₁](declarations/eval-hom-c-eq-bind.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [eval₂Hom_eq_bind₂](declarations/eval-hom-eq-bind.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [aeval_id_eq_join₁](declarations/aeval-id-eq-join.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eval₂Hom_C_id_eq_join₁](declarations/eval-hom-c-id-eq-join.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval₂Hom_id_X_eq_join₂](declarations/eval-hom-id-x-eq-join.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [bind₁_X_right](declarations/bind-x-right.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [bind₂_X_right](declarations/bind-x-right-source-edition-2.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bind₁_X_left](declarations/bind-x-left.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bind₁_C_right](declarations/bind-c-right-source-edition-2.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [bind₂_C_right](declarations/bind-c-right.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [bind₂_C_left](declarations/bind-c-left.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bind₂_comp_C](declarations/bind-comp-c.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [join₂_map](declarations/join-map.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [join₂_comp_map](declarations/join-comp-map.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [aeval_id_rename](declarations/aeval-id-rename.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [join₁_rename](declarations/join-rename.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [bind₁_id](declarations/bind-id.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [bind₂_id](declarations/bind-id-source-edition-2.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [bind₁_bind₁](declarations/bind-bind.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [bind₁_comp_bind₁](declarations/bind-comp-bind-source-edition-2.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [bind₂_comp_bind₂](declarations/bind-comp-bind.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bind₂_bind₂](declarations/bind-bind-source-edition-2.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rename_comp_bind₁](declarations/rename-comp-bind.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rename_bind₁](declarations/rename-bind.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_bind₂](declarations/map-bind.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [bind₁_comp_rename](declarations/bind-comp-rename.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bind₁_rename](declarations/bind-rename.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bind₂_map](declarations/bind-map.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [map_comp_C](declarations/map-comp-c.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [hom_bind₁](declarations/hom-bind.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [map_bind₁](declarations/map-bind-source-edition-2.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [eval₂Hom_comp_C](declarations/eval-hom-comp-c.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [eval₂Hom_bind₁](declarations/eval-hom-bind.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [aeval_bind₁](declarations/aeval-bind-source-edition-2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [aeval_comp_bind₁](declarations/aeval-comp-bind.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eval₂Hom_comp_bind₂](declarations/eval-hom-comp-bind.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eval₂Hom_bind₂](declarations/eval-hom-bind-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [aeval_bind₂](declarations/aeval-bind.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [bind₁_monomial](declarations/bind-monomial-source-edition-2.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [bind₂_monomial](declarations/bind-monomial.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [bind₂_monomial_one](declarations/bind-monomial-one.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [vars_bind₁](declarations/vars-bind.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mem_vars_bind₁](declarations/mem-vars-bind.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [monad](declarations/monad.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [lawfulFunctor](declarations/lawfulfunctor.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [lawfulMonad](declarations/lawfulmonad.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82c7cb240ce9fdfc60ea03e035737679ef9041d80786dc36848b779a247f4536 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Monad/Variante01b0793d93a5f922a873d8a62f1d7d126441916a0a5c471204bbf6cc35526ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
