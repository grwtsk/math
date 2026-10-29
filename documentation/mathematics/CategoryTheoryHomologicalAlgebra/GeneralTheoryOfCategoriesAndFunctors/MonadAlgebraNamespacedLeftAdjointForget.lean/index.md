# Monad Algebra Namespaced Left Adjoint Forget

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `938ea87943bb0c45cbc945f5808e98f37060fa2e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraNamespacedLeftAdjointForget.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](declarations/algebra.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Hom](declarations/hom-source-edition-2.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [id](declarations/id.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [comp](declarations/comp-source-edition-2.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [Hom.ext'](declarations/hom-ext-source-edition-2.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [comp_eq_comp](declarations/comp-eq-comp.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [id_eq_id](declarations/id-eq-id.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [id_f](declarations/id-f.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [comp_f](declarations/comp-f.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [eilenbergMoore](declarations/eilenbergmoore-source-edition-2.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [isoMk](declarations/isomk.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [forget](declarations/forget-source-edition-2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [free](declarations/free.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [adj](declarations/adj-source-edition-2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [algebra_iso_of_iso](declarations/algebra-iso-of-iso.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [forget_reflects_iso](declarations/forget-reflects-iso-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [forget_faithful](declarations/forget-faithful-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [algebra_epi_of_epi](declarations/algebra-epi-of-epi-source-edition-2.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [algebra_mono_of_mono](declarations/algebra-mono-of-mono.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [leftAdjoint_forget](declarations/leftadjoint-forget.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ofRightAdjoint_forget](declarations/ofrightadjoint-forget.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [algebraFunctorOfMonadHom](declarations/algebrafunctorofmonadhom.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [algebraFunctorOfMonadHomId](declarations/algebrafunctorofmonadhomid.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [algebraFunctorOfMonadHomComp](declarations/algebrafunctorofmonadhomcomp.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [algebraFunctorOfMonadHomEq](declarations/algebrafunctorofmonadhomeq.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [algebraEquivOfIsoMonads](declarations/algebraequivofisomonads.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [algebra_equiv_of_iso_monads_comp_forget](declarations/algebra-equiv-of-iso-monads-comp-forget.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [Coalgebra](declarations/coalgebra.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [Hom](declarations/hom.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [id](declarations/id-source-edition-2.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [comp](declarations/comp.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Hom.ext'](declarations/hom-ext.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [comp_eq_comp](declarations/comp-eq-comp-source-edition-2.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [id_eq_id](declarations/id-eq-id-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [id_f](declarations/id-f-source-edition-2.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comp_f](declarations/comp-f-source-edition-2.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [eilenbergMoore](declarations/eilenbergmoore.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [isoMk](declarations/isomk-source-edition-2.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [forget](declarations/forget.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [cofree](declarations/cofree.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [adj](declarations/adj.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coalgebra_iso_of_iso](declarations/coalgebra-iso-of-iso.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [forget_reflects_iso](declarations/forget-reflects-iso.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [forget_faithful](declarations/forget-faithful.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [algebra_epi_of_epi](declarations/algebra-epi-of-epi.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [algebra_mono_of_mono](declarations/algebra-mono-of-mono-source-edition-2.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rightAdjoint_forget](declarations/rightadjoint-forget.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [ofLeftAdjoint_forget](declarations/ofleftadjoint-forget.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=effc0a27f45fe8a4573482ae73f169cbf1b5265ff431983db39fccd6d2e4f60d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
