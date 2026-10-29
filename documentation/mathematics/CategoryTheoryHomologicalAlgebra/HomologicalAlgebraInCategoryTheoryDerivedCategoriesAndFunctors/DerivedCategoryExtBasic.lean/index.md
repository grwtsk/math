# Derived Category Ext Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57f9ce42a88b19dab1ecb49691051714427785bf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/DerivedCategoryExtBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasExt](declarations/hasext.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [hasExt_iff](declarations/hasext-iff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [hasExt_of_hasDerivedCategory](declarations/hasext-of-hasderivedcategory.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [HasExt.standard](declarations/hasext-standard.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Ext](declarations/ext.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [comp](declarations/comp.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [comp_assoc](declarations/comp-assoc.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [comp_assoc_of_second_deg_zero](declarations/comp-assoc-of-second-deg-zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [comp_assoc_of_third_deg_zero](declarations/comp-assoc-of-third-deg-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [homEquiv](declarations/homequiv.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [hom](declarations/hom-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [comp_hom](declarations/comp-hom.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ext](declarations/ext-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mk₀](declarations/mk.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mk₀_hom](declarations/mk-hom.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mk₀_comp_mk₀](declarations/mk-comp-mk.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mk₀_comp_mk₀_assoc](declarations/mk-comp-mk-assoc.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mk₀_bijective](declarations/mk-bijective.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [homEquiv₀](declarations/homequiv-source-edition-2.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [mk₀_homEquiv₀_apply](declarations/mk-homequiv-apply.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [hom'](declarations/hom.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [add_hom'](declarations/add-hom.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [neg_hom'](declarations/neg-hom.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [zero_hom'](declarations/zero-hom-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [add_comp](declarations/add-comp.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [comp_add](declarations/comp-add.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [neg_comp](declarations/neg-comp.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [comp_neg](declarations/comp-neg.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [zero_comp](declarations/zero-comp.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [comp_zero](declarations/comp-zero.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mk₀_id_comp](declarations/mk-id-comp.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [comp_mk₀_id](declarations/comp-mk-id.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [mk₀_zero](declarations/mk-zero.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [mk₀_add](declarations/mk-add.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [addEquiv₀](declarations/addequiv.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [mk₀_addEquiv₀_apply](declarations/mk-addequiv-apply.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [biprod_ext](declarations/biprod-ext.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [zero_hom](declarations/zero-hom.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [add_hom](declarations/add-hom-source-edition-2.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [neg_hom](declarations/neg-hom-source-edition-2.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [homAddEquiv](declarations/homaddequiv.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [homAddEquiv_apply](declarations/homaddequiv-apply.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [bilinearComp](declarations/bilinearcomp.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `abbrev` | [postcomp](declarations/postcomp.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `abbrev` | [precomp](declarations/precomp.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [extFunctorObj](declarations/extfunctorobj.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [extFunctor](declarations/extfunctor.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Ext.comp_sum](declarations/ext-comp-sum.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Ext.sum_comp](declarations/ext-sum-comp.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Ext.mk₀_sum](declarations/ext-mk-sum.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Ext.biproductAddEquiv](declarations/ext-biproductaddequiv.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [Ext.addEquivBiproduct](declarations/ext-addequivbiproduct.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [chgUniv](declarations/chguniv.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [homEquiv_chgUniv](declarations/homequiv-chguniv.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [hasExt_iff_small_ext](declarations/hasext-iff-small-ext.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=471e0cbb208ce478174d8aede74353e32f56e875224ac86799489a1611d0f0b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianteaab2919daaac68fded19b47097bb3a76773ccfa1cb878ce685372b63097db52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
