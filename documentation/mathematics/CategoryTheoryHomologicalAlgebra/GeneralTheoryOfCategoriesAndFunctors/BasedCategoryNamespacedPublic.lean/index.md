# Based Category Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variantf5e369398ce9379fca0a279d5e08952a8263e0b5d032f545d725e4cab0ee163a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b6c019d70ed69b0ff39daaf8c7c8ee081566e72`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BasedCategory](declarations/basedcategory.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BasedCategory.ofFunctor](declarations/basedcategory-offunctor.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [BasedFunctor](declarations/basedfunctor.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [id](declarations/id-source-edition-3.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [comp](declarations/comp.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [comp_id](declarations/comp-id.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [id_comp](declarations/id-comp.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [comp_assoc](declarations/comp-assoc.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [w_obj](declarations/w-obj.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [preserves_isHomLift](declarations/preserves-ishomlift.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [isHomLift_map](declarations/ishomlift-map.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [isHomLift_iff](declarations/ishomlift-iff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [BasedNatTrans](declarations/basednattrans.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [ext](declarations/ext.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [app_isHomLift](declarations/app-ishomlift.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [isHomLift](declarations/ishomlift.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [id](declarations/id-source-edition-2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [comp](declarations/comp-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [homCategory](declarations/homcategory.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [homCategory.ext](declarations/homcategory-ext.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [forgetful](declarations/forgetful.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [id](declarations/id.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkNatIso](declarations/mknatiso.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isIso_of_toNatTrans_isIso](declarations/isiso-of-tonattrans-isiso.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [whiskerLeft](declarations/whiskerleft.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [whiskerRight](declarations/whiskerright.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [bicategory](declarations/bicategory.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=badfed5adad3567330aa04ccd0c73cf69a18f1d1b37fa0a6c609eaddde628ca1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variantf5e369398ce9379fca0a279d5e08952a8263e0b5d032f545d725e4cab0ee163a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
