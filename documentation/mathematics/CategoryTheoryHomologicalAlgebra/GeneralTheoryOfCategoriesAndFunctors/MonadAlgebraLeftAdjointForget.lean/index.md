# Monad Algebra Left Adjoint Forget

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0edc2705521d97ed13f9b42d2cec0362d86bfee0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadAlgebraLeftAdjointForget.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](declarations/algebra.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Hom](declarations/hom.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [id](declarations/id-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [comp](declarations/comp-source-edition-2.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [Hom.ext'](declarations/hom-ext-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [comp_eq_comp](declarations/comp-eq-comp.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [id_eq_id](declarations/id-eq-id-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [id_f](declarations/id-f-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [comp_f](declarations/comp-f-source-edition-2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [eilenbergMoore](declarations/eilenbergmoore.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [isoMk](declarations/isomk.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [forget](declarations/forget-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [free](declarations/free.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [adj](declarations/adj.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [algebra_iso_of_iso](declarations/algebra-iso-of-iso.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [forget_reflects_iso](declarations/forget-reflects-iso.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [forget_faithful](declarations/forget-faithful.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [algebra_epi_of_epi](declarations/algebra-epi-of-epi-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [algebra_mono_of_mono](declarations/algebra-mono-of-mono-source-edition-2.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [leftAdjoint_forget](declarations/leftadjoint-forget.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ofRightAdjoint_forget](declarations/ofrightadjoint-forget.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [algebraFunctorOfMonadHom](declarations/algebrafunctorofmonadhom.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [algebraFunctorOfMonadHomId](declarations/algebrafunctorofmonadhomid.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [algebraFunctorOfMonadHomComp](declarations/algebrafunctorofmonadhomcomp.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [algebraFunctorOfMonadHomEq](declarations/algebrafunctorofmonadhomeq.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [algebraEquivOfIsoMonads](declarations/algebraequivofisomonads.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [algebra_equiv_of_iso_monads_comp_forget](declarations/algebra-equiv-of-iso-monads-comp-forget.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [Coalgebra](declarations/coalgebra.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [Hom](declarations/hom-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [id](declarations/id.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [comp](declarations/comp.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Hom.ext'](declarations/hom-ext.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [comp_eq_comp](declarations/comp-eq-comp-source-edition-2.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [id_eq_id](declarations/id-eq-id.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [id_f](declarations/id-f.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comp_f](declarations/comp-f.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [eilenbergMoore](declarations/eilenbergmoore-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [isoMk](declarations/isomk-source-edition-2.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [forget](declarations/forget.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [cofree](declarations/cofree.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [adj](declarations/adj-source-edition-2.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coalgebra_iso_of_iso](declarations/coalgebra-iso-of-iso.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [forget_reflects_iso](declarations/forget-reflects-iso-source-edition-2.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [forget_faithful](declarations/forget-faithful-source-edition-2.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [algebra_epi_of_epi](declarations/algebra-epi-of-epi.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [algebra_mono_of_mono](declarations/algebra-mono-of-mono.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rightAdjoint_forget](declarations/rightadjoint-forget.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [ofLeftAdjoint_forget](declarations/ofleftadjoint-forget.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18e58423508226a2666d11d22ca31cdbf6ae458ea27e254d486fde0236ae851b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant247f0aa3162be5a151b0712a90f77e8866e4c04253c0ccd0b0a2e0f5dd8eb668.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
