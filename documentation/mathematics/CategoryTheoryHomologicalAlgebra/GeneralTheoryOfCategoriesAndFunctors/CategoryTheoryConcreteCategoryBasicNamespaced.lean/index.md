# Category Theory Concrete Category Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47e38e5bfb0f3a78a44f8284334a3c8257a51e7a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryConcreteCategoryBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [ConcreteCategory](declarations/concretecategory.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [forget](declarations/forget.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [ConcreteCategory.types](declarations/concretecategory-types.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ConcreteCategory.hasCoeToSort](declarations/concretecategory-hascoetosort.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ConcreteCategory.funLike](declarations/concretecategory-funlike.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ConcreteCategory.hom_ext](declarations/concretecategory-hom-ext.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [forget_map_eq_coe](declarations/forget-map-eq-coe.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [congr_hom](declarations/congr-hom.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_id](declarations/coe-id.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_comp](declarations/coe-comp.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [id_apply](declarations/id-apply.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp_apply](declarations/comp-apply.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comp_apply'](declarations/comp-apply-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ConcreteCategory.congr_hom](declarations/concretecategory-congr-hom.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ConcreteCategory.congr_arg](declarations/concretecategory-congr-arg.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ConcreteCategory.mono_of_injective](declarations/concretecategory-mono-of-injective.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ConcreteCategory.injective_of_mono_of_preservesPullback](declarations/concretecategory-injective-of-mono-of-preservespullback.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ConcreteCategory.mono_iff_injective_of_preservesPullback](declarations/concretecategory-mono-iff-injective-of-preservespullback.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ConcreteCategory.epi_of_surjective](declarations/concretecategory-epi-of-surjective.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ConcreteCategory.surjective_of_epi_of_preservesPushout](declarations/concretecategory-surjective-of-epi-of-preservespushout.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ConcreteCategory.epi_iff_surjective_of_preservesPushout](declarations/concretecategory-epi-iff-surjective-of-preservespushout.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ConcreteCategory.bijective_of_isIso](declarations/concretecategory-bijective-of-isiso.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ConcreteCategory.hasCoeToFun_Type](declarations/concretecategory-hascoetofun-type.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [HasForget₂](declarations/hasforget.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [forget₂](declarations/forget-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [forget₂_faithful](declarations/forget-faithful.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [forget₂_preservesMonomorphisms](declarations/forget-preservesmonomorphisms.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [forget₂_preservesEpimorphisms](declarations/forget-preservesepimorphisms.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [InducedCategory.concreteCategory](declarations/inducedcategory-concretecategory.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [InducedCategory.hasForget₂](declarations/inducedcategory-hasforget.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [FullSubcategory.concreteCategory](declarations/fullsubcategory-concretecategory.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [FullSubcategory.hasForget₂](declarations/fullsubcategory-hasforget.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [HasForget₂.mk'](declarations/hasforget-mk.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [hasForgetToType](declarations/hasforgettotype.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32cabab63ae6fc0ba03df4e0bef067242103f83b6fde98a8f11731c74331aa6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant21ed9035cc2ff122aa2bc186fafbe4ce13bc700604a1570e96264bf457583586.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
