# Comm Bialg Cat Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Variant9e526cafd6e4a9743c9d2a04014f7f2aec9e762fc88b2aeed7daaaf572ccd216.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7630ad250a58d1c99d4cdcc0e530b1d60f975e28`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommBialgCatNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CommBialgCat](declarations/commbialgcat.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [of](declarations/of.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [delabOf](declarations/delabof.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [coe_of](declarations/coe-of.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Hom](declarations/hom.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [Hom.hom](declarations/hom-hom.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [ofHom](declarations/ofhom.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Hom.Simps.hom](declarations/hom-simps-hom.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hom_id](declarations/hom-id.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [hom_comp](declarations/hom-comp.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [id_apply](declarations/id-apply.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [comp_apply](declarations/comp-apply.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [hom_ext](declarations/hom-ext.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [hom_ofHom](declarations/hom-ofhom.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [ofHom_hom](declarations/ofhom-hom.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [ofHom_id](declarations/ofhom-id.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [ofHom_comp](declarations/ofhom-comp.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [ofHom_apply](declarations/ofhom-apply.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [inv_hom_apply](declarations/inv-hom-apply.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [hom_inv_apply](declarations/hom-inv-apply.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [forget_obj](declarations/forget-obj.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [forget_map](declarations/forget-map.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [hasForgetToCommAlgCat](declarations/hasforgettocommalgcat.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [forget₂_commAlgCat_obj](declarations/forget-commalgcat-obj.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [forget₂_commAlgCat_map](declarations/forget-commalgcat-map.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [ofIsoSelf](declarations/ofisoself.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [isoMk](declarations/isomk.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [bialgEquivOfIso](declarations/bialgequivofiso.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [isoEquivBialgEquiv](declarations/isoequivbialgequiv.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [reflectsIsomorphisms_forget](declarations/reflectsisomorphisms-forget.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [CommAlgCat.monObjOpOf](declarations/commalgcat-monobjopof.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [CommAlgCat.one_op_of_unop_hom](declarations/commalgcat-one-op-of-unop-hom.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [CommAlgCat.mul_op_of_unop_hom](declarations/commalgcat-mul-op-of-unop-hom.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [commBialgCatEquivComonCommAlgCat](declarations/commbialgcatequivcomoncommalgcat.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [commBialgCatEquivComonCommAlgCat_functor_map_unop_hom](declarations/commbialgcatequivcomoncommalgcat-functor-map-unop-hom.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [commBialgCatEquivComonCommAlgCat_inverse_map_unop_hom](declarations/commbialgcatequivcomoncommalgcat-inverse-map-unop-hom.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdfb9a695f64eb8a8e753d99e52e34c518eefd6f12f26545ee126974b3fa0122 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Variant9e526cafd6e4a9743c9d2a04014f7f2aec9e762fc88b2aeed7daaaf572ccd216.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
