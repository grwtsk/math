# Reflective Reflector

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0438f47effee11c3b2f4a52eb194af2abef0f4f4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Reflective](declarations/reflective.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [reflector](declarations/reflector.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [reflectorAdjunction](declarations/reflectoradjunction.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Functor.fullyFaithfulOfReflective](declarations/functor-fullyfaithfulofreflective.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [unit_obj_eq_map_unit](declarations/unit-obj-eq-map-unit.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Functor.essImage.unit_isIso](declarations/functor-essimage-unit-isiso.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_essImage_of_unit_isSplitMono](declarations/mem-essimage-of-unit-issplitmono.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [Reflective.comp](declarations/reflective-comp.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [unitCompPartialBijectiveAux](declarations/unitcomppartialbijectiveaux.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unitCompPartialBijectiveAux_symm_apply](declarations/unitcomppartialbijectiveaux-symm-apply.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [unitCompPartialBijective](declarations/unitcomppartialbijective.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unitCompPartialBijective_symm_apply](declarations/unitcomppartialbijective-symm-apply.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [unitCompPartialBijective_symm_natural](declarations/unitcomppartialbijective-symm-natural.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [unitCompPartialBijective_natural](declarations/unitcomppartialbijective-natural.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [equivEssImageOfReflective](declarations/equivessimageofreflective.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `class` | [Coreflective](declarations/coreflective.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [coreflector](declarations/coreflector.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [coreflectorAdjunction](declarations/coreflectoradjunction.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Functor.fullyFaithfulOfCoreflective](declarations/functor-fullyfaithfulofcoreflective.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [counit_obj_eq_map_counit](declarations/counit-obj-eq-map-counit.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `example` | [(anonymous)](declarations/example.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Functor.essImage.counit_isIso](declarations/functor-essimage-counit-isiso.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mem_essImage_of_counit_isSplitEpi](declarations/mem-essimage-of-counit-issplitepi.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Coreflective.comp](declarations/coreflective-comp.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb560af18b8a2eeeaaf4a8f525eaf5a4702c5bed3dc50bb6320dbb22135a3f51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
