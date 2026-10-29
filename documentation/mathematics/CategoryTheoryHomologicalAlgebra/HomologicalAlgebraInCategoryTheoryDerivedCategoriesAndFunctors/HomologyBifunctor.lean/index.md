# Homology Bifunctor

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `587b5e562a1e3f696b91943fb6c286fd7e5d61c2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyBifunctor.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mapBifunctorHomologicalComplexObj](declarations/mapbifunctorhomologicalcomplexobj.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mapBifunctorHomologicalComplex](declarations/mapbifunctorhomologicalcomplex.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mapBifunctorHomologicalComplex_obj_obj_toGradedObject](declarations/mapbifunctorhomologicalcomplex-obj-obj-togradedobject.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [HasMapBifunctor](declarations/hasmapbifunctor.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [mapBifunctor](declarations/mapbifunctor.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [ιMapBifunctor](declarations/mapbifunctor-source-edition-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [ιMapBifunctorOrZero](declarations/mapbifunctororzero.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [ιMapBifunctorOrZero_eq](declarations/mapbifunctororzero-eq.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [ιMapBifunctorOrZero_eq_zero](declarations/mapbifunctororzero-eq-zero.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mapBifunctorDesc](declarations/mapbifunctordesc.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [ι_mapBifunctorDesc](declarations/mapbifunctordesc-source-edition-2.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hom_ext](declarations/hom-ext.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [D₁](declarations/d-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [D₂](declarations/d.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [d_eq](declarations/d-eq-source-edition-3.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [d₁](declarations/d-source-edition-3.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [d₂](declarations/d-source-edition-5.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [d₁_eq_zero](declarations/d-eq-zero.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [d₂_eq_zero](declarations/d-eq-zero-source-edition-3.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [d₁_eq_zero'](declarations/d-eq-zero-source-edition-4.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [d₂_eq_zero'](declarations/d-eq-zero-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [d₁_eq'](declarations/d-eq-source-edition-5.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [d₂_eq'](declarations/d-eq-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [d₁_eq](declarations/d-eq.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [d₂_eq](declarations/d-eq-source-edition-4.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [ι_D₁](declarations/d-source-edition-6.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [ι_D₂](declarations/d-source-edition-4.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mapBifunctorMap](declarations/mapbifunctormap.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [ι_mapBifunctorMap](declarations/mapbifunctormap-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de8c33ed7b942771a7f4a2880b8b351be61788247a1c0f09c09bca679e4064e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
