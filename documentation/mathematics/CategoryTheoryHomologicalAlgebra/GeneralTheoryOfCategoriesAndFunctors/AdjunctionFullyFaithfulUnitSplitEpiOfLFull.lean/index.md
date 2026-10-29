# Adjunction Fully Faithful Unit Split Epi Of LFull

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `567ff9766655bc1977b53f915fa2a5c1aa34c978`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AdjunctionFullyFaithfulUnitSplitEpiOfLFull.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [unit_mono_of_L_faithful](declarations/unit-mono-of-l-faithful.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [unitSplitEpiOfLFull](declarations/unitsplitepioflfull.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [unit_isSplitEpi_of_L_full](declarations/unit-issplitepi-of-l-full.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [unit_isIso_of_L_fully_faithful](declarations/unit-isiso-of-l-fully-faithful.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [counit_epi_of_R_faithful](declarations/counit-epi-of-r-faithful.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [counitSplitMonoOfRFull](declarations/counitsplitmonoofrfull.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [counit_isSplitMono_of_R_full](declarations/counit-issplitmono-of-r-full.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [counit_isIso_of_R_fully_faithful](declarations/counit-isiso-of-r-fully-faithful.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inv_map_unit](declarations/inv-map-unit.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [whiskerLeftLCounitIsoOfIsIsoUnit](declarations/whiskerleftlcounitisoofisisounit.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inv_counit_map](declarations/inv-counit-map.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [whiskerLeftRUnitIsoOfIsIsoCounit](declarations/whiskerleftrunitisoofisisocounit.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [faithful_L_of_mono_unit_app](declarations/faithful-l-of-mono-unit-app.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [full_L_of_isSplitEpi_unit_app](declarations/full-l-of-issplitepi-unit-app.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [fullyFaithfulLOfIsIsoUnit](declarations/fullyfaithfullofisisounit.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [faithful_R_of_epi_counit_app](declarations/faithful-r-of-epi-counit-app.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [full_R_of_isSplitMono_counit_app](declarations/full-r-of-issplitmono-counit-app.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fullyFaithfulROfIsIsoCounit](declarations/fullyfaithfulrofisisocounit.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [whiskerLeft_counit_iso_of_L_fully_faithful](declarations/whiskerleft-counit-iso-of-l-fully-faithful.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [whiskerRight_counit_iso_of_L_fully_faithful](declarations/whiskerright-counit-iso-of-l-fully-faithful.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [whiskerLeft_unit_iso_of_R_fully_faithful](declarations/whiskerleft-unit-iso-of-r-fully-faithful.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [whiskerRight_unit_iso_of_R_fully_faithful](declarations/whiskerright-unit-iso-of-r-fully-faithful.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isIso_counit_app_iff_mem_essImage](declarations/isiso-counit-app-iff-mem-essimage.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mem_essImage_of_counit_isIso](declarations/mem-essimage-of-counit-isiso.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isIso_counit_app_of_iso](declarations/isiso-counit-app-of-iso.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [isIso_unit_app_iff_mem_essImage](declarations/isiso-unit-app-iff-mem-essimage.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_essImage_of_unit_isIso](declarations/mem-essimage-of-unit-isiso.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isIso_unit_app_of_iso](declarations/isiso-unit-app-of-iso.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [isEquivalence_left_of_isEquivalence_right](declarations/isequivalence-left-of-isequivalence-right.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [isEquivalence_right_of_isEquivalence_left](declarations/isequivalence-right-of-isequivalence-left.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6289a0eb9f8a36c0edfbab8bbc759e2211d0ad7286401834a1d107b041a97f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
