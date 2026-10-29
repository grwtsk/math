# Sheaf Of Types Namespaced Family Of Elements

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**101 observed declarations and anonymous commands**, 56 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `268f9c1f5276189c603b1987bfa1cb0111258b2b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafOfTypesNamespacedFamilyOfElements.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [FamilyOfElements](declarations/familyofelements.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [FamilyOfElements.restrict](declarations/familyofelements-restrict.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [FamilyOfElements.Compatible](declarations/familyofelements-compatible.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [FamilyOfElements.PullbackCompatible](declarations/familyofelements-pullbackcompatible.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [pullbackCompatible_iff](declarations/pullbackcompatible-iff.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [FamilyOfElements.Compatible.restrict](declarations/familyofelements-compatible-restrict.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [FamilyOfElements.sieveExtend](declarations/familyofelements-sieveextend.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [FamilyOfElements.Compatible.sieveExtend](declarations/familyofelements-compatible-sieveextend.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [extend_agrees](declarations/extend-agrees.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [restrict_extend](declarations/restrict-extend.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [FamilyOfElements.SieveCompatible](declarations/familyofelements-sievecompatible.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [compatible_iff_sieveCompatible](declarations/compatible-iff-sievecompatible.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [FamilyOfElements.Compatible.to_sieveCompatible](declarations/familyofelements-compatible-to-sievecompatible.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [extend_restrict](declarations/extend-restrict.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [restrict_inj](declarations/restrict-inj.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [compatibleEquivGenerateSieveCompatible](declarations/compatibleequivgeneratesievecompatible.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [FamilyOfElements.comp_of_compatible](declarations/familyofelements-comp-of-compatible.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [FamilyOfElements.functorPullback](declarations/familyofelements-functorpullback.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [FamilyOfElements.Compatible.functorPullback](declarations/familyofelements-compatible-functorpullback.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [FamilyOfElements.functorPushforward](declarations/familyofelements-functorpushforward.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [FamilyOfElements.pullback](declarations/familyofelements-pullback.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [FamilyOfElements.Compatible.pullback](declarations/familyofelements-compatible-pullback.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [FamilyOfElements.compPresheafMap](declarations/familyofelements-comppresheafmap.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [FamilyOfElements.compPresheafMap_id](declarations/familyofelements-comppresheafmap-id.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [FamilyOfElements.compPresheafMap_comp](declarations/familyofelements-comppresheafmap-comp.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [FamilyOfElements.Compatible.compPresheafMap](declarations/familyofelements-compatible-comppresheafmap.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [FamilyOfElements.IsAmalgamation](declarations/familyofelements-isamalgamation.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [FamilyOfElements.IsAmalgamation.compPresheafMap](declarations/familyofelements-isamalgamation-comppresheafmap.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [is_compatible_of_exists_amalgamation](declarations/is-compatible-of-exists-amalgamation.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isAmalgamation_restrict](declarations/isamalgamation-restrict.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isAmalgamation_sieveExtend](declarations/isamalgamation-sieveextend.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [IsSeparatedFor](declarations/isseparatedfor.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsSeparatedFor.ext](declarations/isseparatedfor-ext.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isSeparatedFor_iff_generate](declarations/isseparatedfor-iff-generate.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isSeparatedFor_top](declarations/isseparatedfor-top.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [IsSheafFor](declarations/issheaffor.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [YonedaSheafCondition](declarations/yonedasheafcondition.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [natTransEquivCompatibleFamily](declarations/nattransequivcompatiblefamily.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [extension_iff_amalgamation](declarations/extension-iff-amalgamation.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isSheafFor_iff_yonedaSheafCondition](declarations/issheaffor-iff-yonedasheafcondition.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IsSheafFor.extend](declarations/issheaffor-extend.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsSheafFor.functorInclusion_comp_extend](declarations/issheaffor-functorinclusion-comp-extend.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsSheafFor.unique_extend](declarations/issheaffor-unique-extend.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsSheafFor.hom_ext](declarations/issheaffor-hom-ext.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isSeparatedFor_and_exists_isAmalgamation_iff_isSheafFor](declarations/isseparatedfor-and-exists-isamalgamation-iff-issheaffor.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsSeparatedFor.isSheafFor](declarations/isseparatedfor-issheaffor.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsSheafFor.isSeparatedFor](declarations/issheaffor-isseparatedfor.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [IsSheafFor.amalgamate](declarations/issheaffor-amalgamate.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsSheafFor.isAmalgamation](declarations/issheaffor-isamalgamation.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsSheafFor.valid_glue](declarations/issheaffor-valid-glue.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isSheafFor_iff_generate](declarations/issheaffor-iff-generate.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isSheafFor_singleton_iso](declarations/issheaffor-singleton-iso.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isSheafFor_top_sieve](declarations/issheaffor-top-sieve.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isSheafFor_iso](declarations/issheaffor-iso.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isSheafFor_subsieve_aux](declarations/issheaffor-subsieve-aux.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isSheafFor_subsieve](declarations/issheaffor-subsieve.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [IsSeparated](declarations/isseparated.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [IsSheaf](declarations/issheaf.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsSheaf.isSheafFor](declarations/issheaf-issheaffor.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isSheaf_of_le](declarations/issheaf-of-le.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [isSeparated_of_isSheaf](declarations/isseparated-of-issheaf.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [isSheaf_iso](declarations/issheaf-iso.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isSheaf_of_yoneda](declarations/issheaf-of-yoneda.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [isSheaf_pretopology](declarations/issheaf-pretopology.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isSheaf_bot](declarations/issheaf-bot.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [compatibleYonedaFamily_toCocone](declarations/compatibleyonedafamily-tococone.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [yonedaFamilyOfElements_fromCocone](declarations/yonedafamilyofelements-fromcocone.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [yonedaFamily_fromCocone_compatible](declarations/yonedafamily-fromcocone-compatible.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [forallYonedaIsSheaf_iff_colimit](declarations/forallyonedaissheaf-iff-colimit.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [FirstObj](declarations/firstobj.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [FirstObj.ext](declarations/firstobj-ext.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [firstObjEqFamily](declarations/firstobjeqfamily.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [forkMap](declarations/forkmap.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [SecondObj](declarations/secondobj-source-edition-2.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [SecondObj.ext](declarations/secondobj-ext.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [firstMap](declarations/firstmap.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [secondMap](declarations/secondmap-source-edition-2.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [w](declarations/w-source-edition-2.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [compatible_iff](declarations/compatible-iff.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [equalizer_sheaf_condition](declarations/equalizer-sheaf-condition.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [SecondObj](declarations/secondobj.md) | 1032 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [firstMap](declarations/firstmap-source-edition-2.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [secondMap](declarations/secondmap.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [w](declarations/w.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [compatible_iff](declarations/compatible-iff-source-edition-2.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [sheaf_condition](declarations/sheaf-condition.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `structure` | [SheafOfTypes](declarations/sheafoftypes.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `structure` | [Hom](declarations/hom.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 1135 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Hom.ext'](declarations/hom-ext.md) | 1147 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1151 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [sheafOfTypesToPresheaf](declarations/sheafoftypestopresheaf.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [sheafOfTypesBotEquiv](declarations/sheafoftypesbotequiv.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1187 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d67ebc423a72066818bbe52c71d9f928cea1772617e29a063c1579830055e741 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant062863e81beae51f613d0c8e27a3d90de783fe05b229dc297a1f203122a7c050.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
