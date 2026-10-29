# Shift Adjunction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f6a5a6ddc1f965514678695afbd2aed545e9251`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftAdjunction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompatibilityUnit](declarations/compatibilityunit.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [CompatibilityCounit](declarations/compatibilitycounit.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [compatibilityCounit_of_compatibilityUnit](declarations/compatibilitycounit-of-compatibilityunit.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [compatibilityUnit_right](declarations/compatibilityunit-right.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [compatibilityCounit_left](declarations/compatibilitycounit-left.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [compatibilityUnit_unique_right](declarations/compatibilityunit-unique-right.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [compatibilityUnit_unique_left](declarations/compatibilityunit-unique-left.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [compatibilityUnit_isoZero](declarations/compatibilityunit-isozero.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [compatibilityUnit_isoAdd](declarations/compatibilityunit-isoadd.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `class` | [CommShift](declarations/commshift.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [unit_app_commShiftIso_hom_app](declarations/unit-app-commshiftiso-hom-app.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [unit_app_shift_commShiftIso_inv_app](declarations/unit-app-shift-commshiftiso-inv-app.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [commShiftIso_hom_app_counit_app_shift](declarations/commshiftiso-hom-app-counit-app-shift.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [commShiftIso_inv_app_counit_app](declarations/commshiftiso-inv-app-counit-app.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mk'](declarations/mk-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instId](declarations/instid.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instComp](declarations/instcomp.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [shift_unit_app](declarations/shift-unit-app.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [shift_counit_app](declarations/shift-counit-app.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [iso'](declarations/iso-source-edition-3.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [iso](declarations/iso-source-edition-2.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [iso_hom_app](declarations/iso-hom-app-source-edition-2.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [iso_inv_app](declarations/iso-inv-app-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [compatibilityUnit_iso](declarations/compatibilityunit-iso.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rightAdjointCommShift](declarations/rightadjointcommshift.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [commShift_of_leftAdjoint](declarations/commshift-of-leftadjoint.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [iso'](declarations/iso.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [iso](declarations/iso-source-edition-4.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [iso_hom_app](declarations/iso-hom-app.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [iso_inv_app](declarations/iso-inv-app.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [compatibilityUnit_iso](declarations/compatibilityunit-iso-source-edition-2.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [leftAdjointCommShift](declarations/leftadjointcommshift.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [commShift_of_rightAdjoint](declarations/commshift-of-rightadjoint.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [CommShift](declarations/commshift-source-edition-2.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mk'](declarations/mk.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [mk''](declarations/mk-source-edition-3.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [commShiftInverse](declarations/commshiftinverse.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [commShift_of_functor](declarations/commshift-of-functor.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [commShiftFunctor](declarations/commshiftfunctor.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [commShift_of_inverse](declarations/commshift-of-inverse.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4a525c02058c6e1aae273f3c6f674c4579dccd323d3690fd22697ecfc1c3dc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant91ce59b8a2298ca7e82a96e1c05a4f22b7a9ea46ff6e58bc6f48d058b1f14899.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
