# Reflective Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant994aaf0f9bfe22792c400aeac72b20837d4109d2488225cbc2b9ec8d65540f15.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c634addd1e784ed12c3aa10e8f74cfa94047d31`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Reflective](declarations/reflective.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [reflector](declarations/reflector.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [reflectorAdjunction](declarations/reflectoradjunction.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Functor.fullyFaithfulOfReflective](declarations/functor-fullyfaithfulofreflective.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [unit_obj_eq_map_unit](declarations/unit-obj-eq-map-unit.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Functor.essImage.unit_isIso](declarations/functor-essimage-unit-isiso.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_essImage_of_unit_isSplitMono](declarations/mem-essimage-of-unit-issplitmono.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [Reflective.comp](declarations/reflective-comp.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [unitCompPartialBijectiveAux](declarations/unitcomppartialbijectiveaux.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unitCompPartialBijectiveAux_symm_apply](declarations/unitcomppartialbijectiveaux-symm-apply.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [unitCompPartialBijective](declarations/unitcomppartialbijective.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unitCompPartialBijective_symm_apply](declarations/unitcomppartialbijective-symm-apply.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [unitCompPartialBijective_symm_natural](declarations/unitcomppartialbijective-symm-natural.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [unitCompPartialBijective_natural](declarations/unitcomppartialbijective-natural.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [equivEssImageOfReflective](declarations/equivessimageofreflective.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `class` | [Coreflective](declarations/coreflective.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [coreflector](declarations/coreflector.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [coreflectorAdjunction](declarations/coreflectoradjunction.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Functor.fullyFaithfulOfCoreflective](declarations/functor-fullyfaithfulofcoreflective.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [counit_obj_eq_map_counit](declarations/counit-obj-eq-map-counit.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `example` | [(anonymous)](declarations/example.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Functor.essImage.counit_isIso](declarations/functor-essimage-counit-isiso.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mem_essImage_of_counit_isSplitEpi](declarations/mem-essimage-of-counit-issplitepi.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Coreflective.comp](declarations/coreflective-comp.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ddc2d6b279167f74520aef3d3b67f78ae8a608c09f43181f30dd709427df18f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant994aaf0f9bfe22792c400aeac72b20837d4109d2488225cbc2b9ec8d65540f15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
