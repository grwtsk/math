# Bialg Cat Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae20655e26b9deae18a5bd9142daea8582c90e5d0202f70abb6aa8439d750356.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ac3c38a63c7853bd1493b2c2571a39af2e73cb1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgCat](declarations/bialgcat.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [of](declarations/of.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [of_comul](declarations/of-comul.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [of_counit](declarations/of-counit.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Hom](declarations/hom.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [category](declarations/category.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [concreteCategory](declarations/concretecategory.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [Hom.toBialgHom](declarations/hom-tobialghom.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [ofHom](declarations/ofhom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [Hom.toBialgHom_injective](declarations/hom-tobialghom-injective.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hom_ext](declarations/hom-ext.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toBialgHom_comp](declarations/tobialghom-comp.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toBialgHom_id](declarations/tobialghom-id.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [hasForget](declarations/hasforget.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [hasForgetToAlgebra](declarations/hasforgettoalgebra.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forget₂_algebra_obj](declarations/forget-algebra-obj.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forget₂_algebra_map](declarations/forget-algebra-map.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [hasForgetToCoalgebra](declarations/hasforgettocoalgebra.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forget₂_coalgebra_obj](declarations/forget-coalgebra-obj.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forget₂_coalgebra_map](declarations/forget-coalgebra-map.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toBialgIso](declarations/tobialgiso.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toBialgIso_refl](declarations/tobialgiso-refl.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toBialgIso_symm](declarations/tobialgiso-symm.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toBialgIso_trans](declarations/tobialgiso-trans.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toBialgEquiv](declarations/tobialgequiv.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toBialgEquiv_toBialgHom](declarations/tobialgequiv-tobialghom.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toBialgEquiv_refl](declarations/tobialgequiv-refl.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toBialgEquiv_symm](declarations/tobialgequiv-symm.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toBialgEquiv_trans](declarations/tobialgequiv-trans.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [BialgCat.forget_reflects_isos](declarations/bialgcat-forget-reflects-isos.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b92071232da6f26203203fe89c3c21db75264d6c8fc5a5d7c8c1ea7b6107ee6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae20655e26b9deae18a5bd9142daea8582c90e5d0202f70abb6aa8439d750356.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
