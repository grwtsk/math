# Shift Adjunction Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6649e4a5cd3a05dc44fff0034451d62549787f49`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftAdjunctionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompatibilityUnit](declarations/compatibilityunit.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [CompatibilityCounit](declarations/compatibilitycounit.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [compatibilityCounit_of_compatibilityUnit](declarations/compatibilitycounit-of-compatibilityunit.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [compatibilityUnit_right](declarations/compatibilityunit-right.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [compatibilityCounit_left](declarations/compatibilitycounit-left.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [compatibilityUnit_unique_right](declarations/compatibilityunit-unique-right.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [compatibilityUnit_unique_left](declarations/compatibilityunit-unique-left.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [compatibilityUnit_isoZero](declarations/compatibilityunit-isozero.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [compatibilityUnit_isoAdd](declarations/compatibilityunit-isoadd.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `class` | [CommShift](declarations/commshift-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [unit_app_commShiftIso_hom_app](declarations/unit-app-commshiftiso-hom-app.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [unit_app_shift_commShiftIso_inv_app](declarations/unit-app-shift-commshiftiso-inv-app.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [commShiftIso_hom_app_counit_app_shift](declarations/commshiftiso-hom-app-counit-app-shift.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [commShiftIso_inv_app_counit_app](declarations/commshiftiso-inv-app-counit-app.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mk'](declarations/mk.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instId](declarations/instid.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instComp](declarations/instcomp.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [shift_unit_app](declarations/shift-unit-app.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [shift_counit_app](declarations/shift-counit-app.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [iso'](declarations/iso-source-edition-2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [iso](declarations/iso-source-edition-3.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [iso_hom_app](declarations/iso-hom-app-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [iso_inv_app](declarations/iso-inv-app-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [compatibilityUnit_iso](declarations/compatibilityunit-iso.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rightAdjointCommShift](declarations/rightadjointcommshift.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [commShift_of_leftAdjoint](declarations/commshift-of-leftadjoint.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [iso'](declarations/iso.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [iso](declarations/iso-source-edition-4.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [iso_hom_app](declarations/iso-hom-app.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [iso_inv_app](declarations/iso-inv-app.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [compatibilityUnit_iso](declarations/compatibilityunit-iso-source-edition-2.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [leftAdjointCommShift](declarations/leftadjointcommshift.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [commShift_of_rightAdjoint](declarations/commshift-of-rightadjoint.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [CommShift](declarations/commshift.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mk'](declarations/mk-source-edition-2.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [mk''](declarations/mk-source-edition-3.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [commShiftInverse](declarations/commshiftinverse.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [commShift_of_functor](declarations/commshift-of-functor.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [commShiftFunctor](declarations/commshiftfunctor.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [commShift_of_inverse](declarations/commshift-of-inverse.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcb54bfb8aaae2daad8c4b0f054b87318665039c845ca1a0aef14c17e393d797 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
