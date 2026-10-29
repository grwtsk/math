# Category Theory Monoidal Functor Namespaced Monoidal Functor

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `411c31fecbf3bc3d24ea318eaa0497586c23868d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CategoryTheoryMonoidalFunctorNamespacedMonoidalFunctor.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LaxMonoidalFunctor](declarations/laxmonoidalfunctor.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [LaxMonoidalFunctor.left_unitality_inv](declarations/laxmonoidalfunctor-left-unitality-inv.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [LaxMonoidalFunctor.right_unitality_inv](declarations/laxmonoidalfunctor-right-unitality-inv.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [LaxMonoidalFunctor.associativity_inv](declarations/laxmonoidalfunctor-associativity-inv.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [MonoidalFunctor](declarations/monoidalfunctor.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [MonoidalFunctor.εIso](declarations/monoidalfunctor-iso.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [MonoidalFunctor.μIso](declarations/monoidalfunctor-iso-source-edition-2.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [id](declarations/id.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [map_tensor](declarations/map-tensor.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_leftUnitor](declarations/map-leftunitor.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_rightUnitor](declarations/map-rightunitor.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [μNatIso](declarations/natiso.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [μIso_hom](declarations/iso-hom-source-edition-2.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [μ_inv_hom_id](declarations/inv-hom-id.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [μ_hom_inv_id](declarations/hom-inv-id.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [εIso_hom](declarations/iso-hom.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ε_inv_hom_id](declarations/inv-hom-id-source-edition-2.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ε_hom_inv_id](declarations/hom-inv-id-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [commTensorLeft](declarations/commtensorleft.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [commTensorRight](declarations/commtensorright.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [id](declarations/id-source-edition-2.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [comp](declarations/comp-source-edition-2.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [prod](declarations/prod.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [diag](declarations/diag.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [prod'](declarations/prod-source-edition-3.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [prod'_toFunctor](declarations/prod-tofunctor.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [prod'_ε](declarations/prod-source-edition-6.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [prod'_μ](declarations/prod-source-edition-4.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [comp](declarations/comp.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [prod](declarations/prod-source-edition-5.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [prod'](declarations/prod-source-edition-2.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [prod'_toLaxMonoidalFunctor](declarations/prod-tolaxmonoidalfunctor.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [monoidalAdjoint](declarations/monoidaladjoint.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [monoidalInverse](declarations/monoidalinverse.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db43505d7f18197b26b100bb225d8b9b57075240b669f539ff9532fe1b7e895d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
