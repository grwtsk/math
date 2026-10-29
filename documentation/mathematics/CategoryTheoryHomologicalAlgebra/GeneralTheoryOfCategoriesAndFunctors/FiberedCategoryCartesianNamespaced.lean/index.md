# Fibered Category Cartesian Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60e02e1479da3728ebfd05a8023f7b646d334fa4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FiberedCategoryCartesianNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsCartesian](declarations/iscartesian.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsStronglyCartesian](declarations/isstronglycartesian.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [map](declarations/map-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [map_isHomLift](declarations/map-ishomlift.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [fac](declarations/fac-source-edition-2.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [map_uniq](declarations/map-uniq.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [ext](declarations/ext-source-edition-2.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [map_self](declarations/map-self.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [domainUniqueUpToIso](declarations/domainuniqueuptoiso.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [domainUniqueUpToIso_inv_isHomLift](declarations/domainuniqueuptoiso-inv-ishomlift.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [domainUniqueUpToIso_hom_isHomLift](declarations/domainuniqueuptoiso-hom-ishomlift-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [of_iso_comp](declarations/of-iso-comp.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [of_comp_iso](declarations/of-comp-iso.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [universal_property](declarations/universal-property.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [isCartesian_of_isStronglyCartesian](declarations/iscartesian-of-isstronglycartesian.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [map](declarations/map.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [map_isHomLift](declarations/map-ishomlift-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [fac](declarations/fac.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [map_uniq](declarations/map-uniq-source-edition-2.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [ext](declarations/ext.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [map_self](declarations/map-self-source-edition-2.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [map_comp_map](declarations/map-comp-map.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [comp](declarations/comp.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [of_comp](declarations/of-comp.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [of_iso](declarations/of-iso.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [of_isIso](declarations/of-isiso.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isIso_of_base_isIso](declarations/isiso-of-base-isiso.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [domainIsoOfBaseIso](declarations/domainisoofbaseiso.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [domainUniqueUpToIso_inv_isHomLift](declarations/domainuniqueuptoiso-inv-ishomlift-source-edition-2.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [domainUniqueUpToIso_hom_isHomLift](declarations/domainuniqueuptoiso-hom-ishomlift.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d5cb579883b12f9d2741dcf20dfc284afe65e4e04ffba4faeeb25c65f1eed5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
