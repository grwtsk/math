# Module Cat Sheaf

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant014cfe6c11591e7ce19ec754eb3ac5a05f2085e87ff01f32cf2252a36012ff6c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d367cc61a8675210b08ab76f729bd218ce56512`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatSheaf.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SheafOfModules](declarations/sheafofmodules.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Hom](declarations/hom.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [hom_ext](declarations/hom-ext.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [id_val](declarations/id-val.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [comp_val](declarations/comp-val.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [forget](declarations/forget.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [fullyFaithfulForget](declarations/fullyfaithfulforget.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [evaluation](declarations/evaluation.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toSheaf](declarations/tosheaf.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [forgetToSheafModuleCat](declarations/forgettosheafmodulecat.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toSheafCompSheafToPresheafIso](declarations/tosheafcompsheaftopresheafiso.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [add_val](declarations/add-val.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [sections](declarations/sections.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [sectionsMap](declarations/sectionsmap.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [sectionsMap_comp](declarations/sectionsmap-comp.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [sectionsMap_id](declarations/sectionsmap-id.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [sectionsFunctor](declarations/sectionsfunctor.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [unit](declarations/unit.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [unitHomEquiv](declarations/unithomequiv.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [unitHomEquiv_apply_coe](declarations/unithomequiv-apply-coe.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [unitHomEquiv_comp_apply](declarations/unithomequiv-comp-apply.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [unitHomEquiv_symm_comp](declarations/unithomequiv-symm-comp.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [IsLocallySurjective](declarations/islocallysurjective.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [IsLocallyInjective](declarations/islocallyinjective.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [homEquivOfIsLocallyBijective](declarations/homequivofislocallybijective.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c62eb61700bd5a02c7f467c224cca2491f957f4410a7e80c62fae8edf7536878 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant014cfe6c11591e7ce19ec754eb3ac5a05f2085e87ff01f32cf2252a36012ff6c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
