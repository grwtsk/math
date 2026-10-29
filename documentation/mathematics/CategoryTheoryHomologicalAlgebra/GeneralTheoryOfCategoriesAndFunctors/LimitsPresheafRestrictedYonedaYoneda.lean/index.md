# Limits Presheaf Restricted Yoneda Yoneda

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `104a53364fb26ec17e68f203011982483175b5ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPresheafRestrictedYonedaYoneda.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [restrictedYoneda](declarations/restrictedyoneda.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [restrictedYonedaYoneda](declarations/restrictedyonedayoneda.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [restrictYonedaHomEquiv](declarations/restrictyonedahomequiv.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [restrictYonedaHomEquiv_natural](declarations/restrictyonedahomequiv-natural.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [extendAlongYoneda](declarations/extendalongyoneda.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [extendAlongYoneda_obj](declarations/extendalongyoneda-obj.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [extendAlongYoneda_obj.hom_ext](declarations/extendalongyoneda-obj-hom-ext.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [extendAlongYoneda_map](declarations/extendalongyoneda-map.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [yonedaAdjunction](declarations/yonedaadjunction.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Elements.initial](declarations/elements-initial.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [isInitial](declarations/isinitial.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [isExtensionAlongYoneda](declarations/isextensionalongyoneda.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [extendAlongYonedaIsoKanApp](declarations/extendalongyonedaisokanapp.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [extendAlongYonedaIsoKan](declarations/extendalongyonedaisokan.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [extendOfCompYonedaIsoLan](declarations/extendofcompyonedaisolan.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [compYonedaIsoYonedaCompLan](declarations/compyonedaisoyonedacomplan.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [extendAlongYonedaYoneda](declarations/extendalongyonedayoneda.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [functorToRepresentables](declarations/functortorepresentables.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [coconeOfRepresentable](declarations/coconeofrepresentable.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coconeOfRepresentable_pt](declarations/coconeofrepresentable-pt.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coconeOfRepresentable_ι_app](declarations/coconeofrepresentable-app.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coconeOfRepresentable_naturality](declarations/coconeofrepresentable-naturality.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [colimitOfRepresentable](declarations/colimitofrepresentable.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [natIsoOfNatIsoOnRepresentables](declarations/natisoofnatisoonrepresentables.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [uniqueExtensionAlongYoneda](declarations/uniqueextensionalongyoneda.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [isLeftAdjointOfPreservesColimitsAux](declarations/isleftadjointofpreservescolimitsaux.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [isLeftAdjointOfPreservesColimits](declarations/isleftadjointofpreservescolimits.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [tautologicalCocone](declarations/tautologicalcocone.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [isColimitTautologicalCocone](declarations/iscolimittautologicalcocone.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b539ec6108164f848aec39c3c8a9b4a44b1f360548f193d9d5b8493b395fc087 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant44dab371da774c5da4fe6197c39c4ef91231ca0a02b2ab9720adcbb86487607a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
