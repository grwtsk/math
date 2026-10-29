# Bialg Cat Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant123ab57e25e4722f01976002f809497e09581ece2324df308830f411599f4595.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fb0c40163da3d722ede0dd4a026fe19ae6465a9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgCat](declarations/bialgcat.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [of](declarations/of.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [delabOf](declarations/delabof.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [of_comul](declarations/of-comul.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [of_counit](declarations/of-counit.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Hom](declarations/hom.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [category](declarations/category.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [concreteCategory](declarations/concretecategory.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [Hom.toBialgHom](declarations/hom-tobialghom.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [ofHom](declarations/ofhom.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Hom.toBialgHom_injective](declarations/hom-tobialghom-injective.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [hom_ext](declarations/hom-ext.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toBialgHom_comp](declarations/tobialghom-comp.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toBialgHom_id](declarations/tobialghom-id.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [hasForgetToAlgebra](declarations/hasforgettoalgebra.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forget₂_algebra_obj](declarations/forget-algebra-obj.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forget₂_algebra_map](declarations/forget-algebra-map.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [hasForgetToCoalgebra](declarations/hasforgettocoalgebra.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forget₂_coalgebra_obj](declarations/forget-coalgebra-obj.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forget₂_coalgebra_map](declarations/forget-coalgebra-map.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toBialgIso](declarations/tobialgiso.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toBialgIso_refl](declarations/tobialgiso-refl.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toBialgIso_symm](declarations/tobialgiso-symm.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toBialgIso_trans](declarations/tobialgiso-trans.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toBialgEquiv](declarations/tobialgequiv.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toBialgEquiv_toBialgHom](declarations/tobialgequiv-tobialghom.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toBialgEquiv_refl](declarations/tobialgequiv-refl.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toBialgEquiv_symm](declarations/tobialgequiv-symm.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toBialgEquiv_trans](declarations/tobialgequiv-trans.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [BialgCat.forget_reflects_isos](declarations/bialgcat-forget-reflects-isos.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb89d374e61ea96ad8583be20426bec39ce4a8eb1e5e2de75c5c57062bdac8c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant123ab57e25e4722f01976002f809497e09581ece2324df308830f411599f4595.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
