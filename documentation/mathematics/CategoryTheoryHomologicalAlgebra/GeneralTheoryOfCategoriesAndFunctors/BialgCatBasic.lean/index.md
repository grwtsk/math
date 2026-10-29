# Bialg Cat Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b1d17c51df853d6f7bebdbad8cd3ff0cd4a42c2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgCat](declarations/bialgcat.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [of](declarations/of.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [of_comul](declarations/of-comul.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [of_counit](declarations/of-counit.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Hom](declarations/hom.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [category](declarations/category.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [concreteCategory](declarations/concretecategory.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [Hom.toBialgHom](declarations/hom-tobialghom.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [ofHom](declarations/ofhom.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [Hom.toBialgHom_injective](declarations/hom-tobialghom-injective.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hom_ext](declarations/hom-ext.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toBialgHom_comp](declarations/tobialghom-comp.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toBialgHom_id](declarations/tobialghom-id.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [hasForget](declarations/hasforget.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [hasForgetToAlgebra](declarations/hasforgettoalgebra.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forget₂_algebra_obj](declarations/forget-algebra-obj.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forget₂_algebra_map](declarations/forget-algebra-map.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [hasForgetToCoalgebra](declarations/hasforgettocoalgebra.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forget₂_coalgebra_obj](declarations/forget-coalgebra-obj.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forget₂_coalgebra_map](declarations/forget-coalgebra-map.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toBialgIso](declarations/tobialgiso.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toBialgIso_refl](declarations/tobialgiso-refl.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toBialgIso_symm](declarations/tobialgiso-symm.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toBialgIso_trans](declarations/tobialgiso-trans.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toBialgEquiv](declarations/tobialgequiv.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toBialgEquiv_toBialgHom](declarations/tobialgequiv-tobialghom.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toBialgEquiv_refl](declarations/tobialgequiv-refl.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toBialgEquiv_symm](declarations/tobialgequiv-symm.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toBialgEquiv_trans](declarations/tobialgequiv-trans.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [BialgCat.forget_reflects_isos](declarations/bialgcat-forget-reflects-isos.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3df0108de67c839b153836ed53208d377ed047c4ff5b68e0d8da4ac3a5578134 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant37db1ab3208aaf6cee7cb50797c5de7d5cef59b8a317332fb485e9a7d4f13a4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
