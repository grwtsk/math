# Bialg Cat Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8de45312e92bd1ee58e54bdafe3352118aa7812c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgCat](declarations/bialgcat.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [of](declarations/of.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [delabOf](declarations/delabof.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [of_comul](declarations/of-comul.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [of_counit](declarations/of-counit.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Hom](declarations/hom.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [category](declarations/category.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [concreteCategory](declarations/concretecategory.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [Hom.toBialgHom](declarations/hom-tobialghom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [ofHom](declarations/ofhom.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Hom.toBialgHom_injective](declarations/hom-tobialghom-injective.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [hom_ext](declarations/hom-ext.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toBialgHom_comp](declarations/tobialghom-comp.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toBialgHom_id](declarations/tobialghom-id.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [hasForgetToAlgebra](declarations/hasforgettoalgebra.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forget₂_algebra_obj](declarations/forget-algebra-obj.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forget₂_algebra_map](declarations/forget-algebra-map.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [hasForgetToCoalgebra](declarations/hasforgettocoalgebra.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forget₂_coalgebra_obj](declarations/forget-coalgebra-obj.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forget₂_coalgebra_map](declarations/forget-coalgebra-map.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toBialgIso](declarations/tobialgiso.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toBialgIso_refl](declarations/tobialgiso-refl.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toBialgIso_symm](declarations/tobialgiso-symm.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toBialgIso_trans](declarations/tobialgiso-trans.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toBialgEquiv](declarations/tobialgequiv.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toBialgEquiv_toBialgHom](declarations/tobialgequiv-tobialghom.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toBialgEquiv_refl](declarations/tobialgequiv-refl.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toBialgEquiv_symm](declarations/tobialgequiv-symm.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toBialgEquiv_trans](declarations/tobialgequiv-trans.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [BialgCat.forget_reflects_isos](declarations/bialgcat-forget-reflects-isos.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8ae48c3d33dd0af8a02e7e21c5a2d0560636b3f920fc509d40f8b24f4f44494 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
